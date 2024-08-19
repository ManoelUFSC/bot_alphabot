program AutomatedAlphabot;

uses
  Vcl.Forms,
  TTFPrinc in 'TTFPrinc.pas' {frmAutomatedAlphabot},
  TTUComunicacao in 'TTUComunicacao.pas',
  TTUConsts in 'TTUConsts.pas',
  TTUEnumeradores in 'TTUEnumeradores.pas',
  TTUConversoesACBr in 'TTUConversoesACBr.pas',
  TTUFuncoes in 'TTUFuncoes.pas',
  TTURetorno in 'TTURetorno.pas',
  TTURaffle in 'TTURaffle.pas',
  TTUJSONUtil in 'TTUJSONUtil.pas',
  TTUConfig in 'TTUConfig.pas' {frmConfigura},
  TTUAjuda in 'TTUAjuda.pas' {frmAjuda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmAutomatedAlphabot, frmAutomatedAlphabot);
  Application.CreateForm(TfrmConfigura, frmConfigura);
  Application.CreateForm(TfrmAjuda, frmAjuda);
  Application.Run;
end.
