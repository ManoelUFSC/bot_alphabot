unit TTFPrinc;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.Variants,
  System.Classes,
  System.SysUtils,
  System.DateUtils,
  System.Generics.Collections,
  System.JSON,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Menus,
  Vcl.Buttons,
  Vcl.StdCtrls,
  TTUConfig,
  IdSNTP,
  IniFiles,
  TTUAjuda;

type
  TfrmAutomatedAlphabot = class(TForm)
    mmMenuPrincipal: TMainMenu;
    Arquivo1: TMenuItem;
    Sobre1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Sobre2: TMenuItem;
    Wallets1: TMenuItem;
    pnPrincipal: TPanel;
    pnResposta: TPanel;
    btRegistrar: TSpeedButton;
    tm_Registra: TTimer;
    gbErros: TGroupBox;
    mmErrosOcorridos: TMemo;
    Panel1: TPanel;
    mmRetorno: TMemo;
    Label1: TLabel;
    pnConsultas: TPanel;
    mmConsultas: TMemo;
    bt_LimpaInformacoes: TButton;
    tm_Horario: TTimer;
    lb_Avaliacao: TLabel;
    procedure btRegistrarClick(Sender: TObject);
    procedure tm_RegistraTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Wallets1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bt_LimpaInformacoesClick(Sender: TObject);
    procedure tm_HorarioTimer(Sender: TObject);
    procedure Sobre2Click(Sender: TObject);
  private
    FConfiguracoesIni: TConfiguracoes;

    function Registra(pAPIKey: string): string;
    procedure AtualizaHora;
  public
    { Public declarations }
  end;

var
  frmAutomatedAlphabot: TfrmAutomatedAlphabot;

implementation

uses
  TTUComunicacao,
  TTURaffle;
{$R *.dfm}


procedure TfrmAutomatedAlphabot.AtualizaHora;
var
  IDSntp: TIDSntp;
begin
  IDSntp := TIDSntp.Create(nil);
  try
    IDSntp.Host := 'pool.ntp.br';

    //if IDSntp.DateTime > StrToDate('12/03/2024') then begin
    //  ShowMessage('Período de avaliação encerrado. Favor contatar Maneco.ETH no discord.');
    //  Application.Terminate;
    //end;

    //lb_Avaliacao.Caption := 'Período de Avaliação até: 11/03/2024.';
  finally
    IDSntp.Free;
  end;
end;

procedure TfrmAutomatedAlphabot.btRegistrarClick(Sender: TObject);
begin
  FConfiguracoesIni.AtualizaInformacoes;

  if (Trim(FConfiguracoesIni.APIKey1) = EmptyStr) and
     (Trim(FConfiguracoesIni.APIKey2) = EmptyStr) and
     (Trim(FConfiguracoesIni.APIKey3) = EmptyStr) then begin
    ShowMessage('Nenhuma API Key Cadastrada.');
    Exit;
  end;

  if FConfiguracoesIni.URLConsulta = '' then begin
    ShowMessage('URL de Consulta está vazia, favor preencher e tentar novamente.');
    Exit;
  end;

  if FConfiguracoesIni.URLRegistro = '' then begin
    ShowMessage('URL de Registro está vazia, favor preencher e tentar novamente.');
    Exit;
  end;

  if FConfiguracoesIni.TimeoutConsulta < 2 then begin
    ShowMessage('Timeout de Consulta não pode ser inferior a 02 minutos, pois irá gerar rejeição por excesso de consultas.');
    Exit;
  end;

  tm_Registra.Enabled := True;
  mmConsultas.Lines.Add('Registro automático nas Raffles iniciado...');

  if (Trim(FConfiguracoesIni.APIKey1) <> EmptyStr) then
    mmConsultas.Lines.Add('APIKEY #1 - Configurada;');

  if (Trim(FConfiguracoesIni.APIKey2) <> EmptyStr) then
    mmConsultas.Lines.Add('APIKEY #2 - Configurada;');

  if (Trim(FConfiguracoesIni.APIKey3) <> EmptyStr) then
    mmConsultas.Lines.Add('APIKEY #3 - Configurada;');
end;

procedure TfrmAutomatedAlphabot.bt_LimpaInformacoesClick(Sender: TObject);
begin
  mmRetorno.Lines.Clear;
  mmConsultas.Lines.Clear;
  mmErrosOcorridos.Lines.Clear;
end;

procedure TfrmAutomatedAlphabot.FormCreate(Sender: TObject);
begin
  FConfiguracoesIni := TConfiguracoes.Create;

  tm_Registra.Interval := 1000 * 60 * 3;
  tm_Registra.Enabled  := False;

  AtualizaHora;
end;

procedure TfrmAutomatedAlphabot.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FConfiguracoesIni);
end;

function TfrmAutomatedAlphabot.Registra(pAPIKey: string): string;
var
  oRaffle: TRaffle;
  cURLConsulta, cURLGet: string;
  cPostData: AnsiString;
  cRetornoGet, cRetornoPost: string;
  cRaffleLista: TObjectList<TRaffle>;
  oJSONRequisicao: TJsonObject;
  oComunicacao: TComunicacaoAlphabot;
begin
  Result := '';
  mmErrosOcorridos.Lines.Add('Registrando');

  if Trim(pAPIKey) = EmptyStr then
    Exit;

  oComunicacao := nil;

  mmErrosOcorridos.Lines.Add('Registrando - Comunicacao nil');

  try
    oComunicacao := TComunicacaoAlphabot.Create(nil);

    mmErrosOcorridos.Lines.Add('Registrando - Comunicacao create');

    oComunicacao.TimeOut := 10000;

    mmErrosOcorridos.Lines.Add('Registrando - Comunicacao timeout');

    //    oComunicacao.HTTPSend.MimeType := 'application/json';
    oComunicacao.HTTPSend.Headers.Add('Authorization: Bearer ' + pAPIKey);

    mmErrosOcorridos.Lines.Add('Registrando - Comunicacao Authorization - APIKey: ' + pAPIKey);

    try
      //mmErrosOcorridos.Lines.Add('Registra 2');

      if (FConfiguracoesIni = nil) or (Trim(FConfiguracoesIni.URLConsulta) = '') then begin
        cURLConsulta := 'https://api.alphabot.app/v1/raffles?status=active&filter=unregistered&reqOptions=f%26l%26t';
      end else begin
        cURLConsulta := FConfiguracoesIni.URLConsulta;
      end;

      oComunicacao.HTTPGet(cURLConsulta);
      mmErrosOcorridos.Lines.Add('Obtendo Lista de Raffles');

      cRetornoGet  := oComunicacao.RespHTTP.Text;
      cRaffleLista := TComunicacaoACBrHelper.fromJSON(cRetornoGet);
      //mmErrosOcorridos.Lines.Add('Registra 4');

      for oRaffle in cRaffleLista do begin
        //mmErrosOcorridos.Lines.Add('Registra 5');
        oComunicacao.HTTPSend.Clear;

        oComunicacao.HTTPSend.MimeType := 'application/json';
        oComunicacao.HTTPSend.Headers.Add('Authorization: Bearer ' + pAPIKey);

        oJSONRequisicao := TJSONObject.Create;
        oJSONRequisicao.AddPair('slug', oRaffle.slug);

        cPostData := AnsiString(oJSONRequisicao.ToJSON);

        oComunicacao.HTTPSend.Document.Clear;
        oComunicacao.HTTPSend.Document.Write(Pointer(cPostData)^, Length(cPostData));
        try
          if (FConfiguracoesIni = nil) or (Trim(FConfiguracoesIni.URLRegistro) = '') then begin
            cURLGet := 'https://api.alphabot.app/v1/register';
          end else begin
            cURLGet := FConfiguracoesIni.URLRegistro
          end;

          oComunicacao.HTTPPost(cURLGet);
          mmErrosOcorridos.Lines.Add('Registrando na Raffle: ' + oRaffle.slug);

          cRetornoPost := oComunicacao.RespHTTP.Text;

          Application.ProcessMessages;

          Result := Result + 'Registrado: ' + oRaffle.slug + #13#10;
        except
          on E: Exception do begin
            raise Exception.Create('Não foi possível realizar o registro de todas as Raffles.' + sLineBreak + E.Message);
          end;
        end;
      end;
    except
      on E: Exception do begin
        raise Exception.Create('Não foi possível realizar os registros nas raffles.' + sLineBreak + E.Message);
      end;
    end;
    //mmErrosOcorridos.Lines.Add('Registra 7');
  finally
    FreeAndNil(cRaffleLista);
    FreeAndNil(oComunicacao);
    Application.ProcessMessages;
  end;
end;

procedure TfrmAutomatedAlphabot.Sobre2Click(Sender: TObject);
begin
  frmAjuda.Show;
end;

procedure TfrmAutomatedAlphabot.tm_HorarioTimer(Sender: TObject);
begin
  //AtualizaHora;
end;

procedure TfrmAutomatedAlphabot.tm_RegistraTimer(Sender: TObject);
var
  cRetornoGet: string;
begin
  mmConsultas.Lines.Add('Consulta: ' + DateTimeToStr(Now()));
  mmErrosOcorridos.Lines.Clear;
  Application.ProcessMessages;

  try
    cRetornoGet := Registra(FConfiguracoesIni.APIKey1);
    cRetornoGet := cRetornoGet + Registra(FConfiguracoesIni.APIKey2);
    cRetornoGet := cRetornoGet + Registra(FConfiguracoesIni.APIKey3);
  except
    on E: Exception do begin
      mmErrosOcorridos.Lines.Add(E.Message);
    end;
  end;
  mmRetorno.Lines.Add(cRetornoGet);
end;

procedure TfrmAutomatedAlphabot.Wallets1Click(Sender: TObject);
begin
  frmConfigura.Configuracoes := FConfiguracoesIni;
  frmConfigura.ShowModal;
end;

end.
