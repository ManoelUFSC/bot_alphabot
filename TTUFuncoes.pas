{********************************************************
 * Empresa..: Totall Sistemas Ltda
 * Propósito: Funções Gerais
 * Nota.....: Essa Unit, deve conter funções independentes
 *            de outras Units. Não deve conter conexão com
 *            banco de dados. Apenas funções simples.
 **********************************************************}
unit TTUFuncoes;

interface

uses
  SysUtils,
  Classes,
  IdHTTP,
  TypInfo,
  TTUEnumeradores
{$IFDEF DELPHIXE},
  System.Zip,
  System.IOUtils,
  synacode,
  RegularExpressions
{$ENDIF}
     ;

function LPad(expressao: string; caractere: char; quantidade: integer): string;
function RPad(expressao: string; caractere: char; quantidade: integer): string;
function CPad(expressao: string; caractere: char; quantidade: integer): string;
function TruncWithDec(X: Extended; Dec: Integer): Extended;
function RoundWithDec(X: Extended; Dec: Integer): Extended;
function AppendTrailingBackslash(const S: string): string;
function TrazSomenteNumeros(pString: string): string;
function StrToChar(pExpressao: string): Char;
function PeriodoSQL(Campo: string; dtInicial, dtFinal: TDateTime): string;
function PeriodoSQLDate(Campo: string; dtInicial, dtFinal: TDateTime): string;
function Bool2Str(valor: Boolean): string;
function Str2Curr(pValor: string): Currency; overload;
function Str2Curr(pValor: string; pTam, pDec: Integer): Currency; overload;
function Str2IntDef(valor: string; default: integer): Integer;
function Str2Int(valor: string): Integer;
function Str2Int64(valor: string): Int64;
function Str2Bool(valor: string): Boolean;
function Str2BoolBanco(valor: string): Boolean;
function Bool2StrBanco(valor: boolean): string;
function XMLDate2DateTime(dataXML: string): TDateTime;
function AAAAMMDD2DateTime(pData: string): TDateTime;
function Str2DateTime(valor: string): TDateTime;
function IncludePathDate(const pDiretorio: string): string;
function GetDiretorioLogs(const pLiteral: string = ''; pIncludePathDate: Boolean = True): string;
function GetFileLogName: string;
procedure RegistraLogFile(pFileLogName: string; pLog: String; pGravar: Boolean = True);
procedure RegistraLog(log: string; pGravar: Boolean = true);
function ExtractBetween(const aValue, aBegin, aEnd: String; aDefault: String = ''; const aIgnoreCase: boolean = True): String;
function GetValorDadosNFSe(pListaDados, pCampoDado: String): String;
{$IFDEF DELPHIXE}
function RemoveCaracteresEspeciais(entrada: AnsiString): AnsiString;
procedure StringToList(pDelimiter: Char; pStr: string; pListaDeStrings: TStringList);
{$ENDIF}
function GetAppName: string;
function GetPathAtual: string;
function GetPathCompleto(const pPath: string): string;
function getFormatSettings: TFormatSettings;
function LetrasENumeros(pString: string): string;
function ApenasNumeros(pString: string): Boolean;
{$IFDEF DELPHIXE}
function StrToStringList(pString: string; pQuebraLinha: string): TStringList;
function HorarioVeraoAtivo: Boolean;
function FusoHorario: Integer;
function FileToStr(pArquivo: string; pQuebraLinha: string): string;
{$ENDIF}
function GetFileList(const Path, Extensao: string): TStringList;
{$IFDEF DELPHIXE}
function CompactFile(FZipFile, AFileName: string): Integer;
function DescompactFile(FZipFile, APath: string): Integer; overload;
function DescompactFile(FZipFile, APath: string; var ListFiles: TStringList): Integer; overload;
function GetFristCompactFile(pFileCodificado: string; pFileExt: string; var pFileName: string): string;
function GetFristXMLCompactFile(pFileCodificado: string; var pFileName: string): string;
function GetBase64File(const pFileName: string; const pArquivoCompactado: Boolean): string;
{$ENDIF}
function LaboratorioTotall(pRegistraErro: Boolean = true): Boolean;
function iif(pCondicao: Boolean; pExpressao1, pExpressao2: Integer): Integer; overload;
function iif(pCondicao: Boolean; pExpressao1, pExpressao2: string): string; overload;
function iif(pCondicao: Boolean; pExpressao1, pExpressao2: Double): Double; overload;
function iif(vm_ParBoo: Boolean; Expressao1, Expressao2: Variant): Variant; overload;
function CasasDecimais(Value: Currency): Integer;
function ValidaPath(pPath: string): Boolean;
function VerificaExtensaoArquivo(pNomeArquivo, pListaExtensoes: string): Boolean;
function TiraAcentos(pTexto: string): string;
function PercentualDiferencaString(pString1, pString2: string; bIgnoreCase: Boolean; pRetirarAcentos: Boolean = true): Double;
function SubstituiQuebraLinha(pConteudo: string; pQuebraLinha: string = ';'): string;
function ConteudoTag(pStr, pTag: string): string;
function AtributoGabarito(pEstrutura, pCodigo: string; pConteudo: TEnumGabaritoConteudo): string;
function ValidaDigitoEAN(pEAN: string; var pDigito: string): Boolean;
// Limpa memória residual da aplicação
procedure TrimAppMemorySize;
function UTF8FileBOM(const FileName: string): boolean;

// MN - Função recebe um ICMS/CSOSN e converte para CSOSN/ICMS quando a empresa é do simples.
// Se pRegimeTributario = False, o método retorna o valor de "pICMS"
// Utilizada pela classe de impostos (TTUCalculoImpostosVenda) e pelo PoS Mobi (TTUServicoPoSControle).
// TD_FIL.PERCRE - Permite Crédito Simples.
function CalculaICMS_CSOSN(pICMS: string; pRegimeTributario: EnumRegimeTributario; pAceitaCSOSN103: boolean = False; pPermiteCreditoSimples: boolean = False): string;
function RemoverExcessoPontoVirgula(const str: string): string;

// Converter data/hora "m/d/yyyy h:m:s AM/PM"
function ConverteDateFormatAMPM(const inputDateTime: string): string;

// Validar se é uma URL Válida
function EhURLValida(const URL: string): Boolean;

//Validar se o arquivo possui extensão de imagem
function PossuiExtensaoImagem(const FilePath: string): Boolean;

implementation

uses
  Math,
  DateUtils,
  StrUtils,
{$IFDEF SERVICE}
  Vcl.SvcMgr,
{$ELSE}
  Forms,
{$ENDIF}
  Windows,
  TTUConsts;

function GetValorDadosNFSe(pListaDados, pCampoDado: String): String;
var
 oSLDados: TStringList;
begin
  Result := '';
  try
    oSLDados := TStringList.Create;
    oSLDados.Text := pListaDados;
    try
      Result := oSLDados.Values[pCampoDado];
    except
      on E: Exception do begin
        if (Pos('index of', LowerCase(E.Message))>0) then begin
          raise Exception.Create('Campo "' + pCampoDado + '" não localizado na lista de dados.');
        end;
      end;
    end;
  finally
    if Assigned(oSLDados) then
      FreeAndNil(oSLDados);
  end;
end;

// Extrai uma string dentro dos limitadores de início e fim
function ExtractBetween(const aValue, aBegin, aEnd: string; aDefault: string = ''; const aIgnoreCase: boolean = True): string;
var
  aPos, bPos: Integer;
begin
  if aDefault = '' then
    Result := aDefault
  else
    Result := '';

  if aIgnoreCase then
    aPos := Pos(UpperCase(aBegin), UpperCase(aValue))
  else
    aPos := Pos(aBegin, aValue);

  if aPos > 0 then
  begin
    aPos := aPos + Length(aBegin);

    if aIgnoreCase then
      bPos := PosEx(UpperCase(aEnd), UpperCase(aValue), aPos)
    else
      bPos := PosEx(aEnd, aValue, aPos);

    if bPos > 0 then
      Result := Copy(aValue, aPos, bPos - aPos);
  end;
end;

// Substitui o(s) espaço(s) à esquerda de uma string por outro caractere
function LPad(expressao: string; caractere: char; quantidade: integer): string;
begin
  LPad := StringOfChar(caractere, quantidade - Length(Trim(expressao))) +
     Trim(expressao);
end;

// Substitui o(s) espaço(s) à direita de uma string por outro caractere
function RPad(expressao: string; caractere: char; quantidade: integer): string;
begin
  RPad := Trim(expressao) +
     StringOfChar(caractere, quantidade - Length(Trim(expressao)));
end;

// Cristian 22/03/2001
// Centraliza a "expressão", no tamanho "quantidade" prenchendo com "caractere"
function CPad(expressao: string; caractere: char; quantidade: integer): string;
var
  cStr: string;
begin
  cStr := StringOfChar(Caractere, (Quantidade - Length(Trim(expressao))) div 2) +
     Trim(expressao);
  CPad := cStr + StringOfChar(Caractere, Quantidade - Length(cStr));
end;

function TruncWithDec(X: Extended; Dec: Integer): Extended;
var
  VlrAux: Double;
begin
  VlrAux := Frac(X) * Power(10, Dec);
  Result := Int(X) + (Int(VlrAux) / Power(10, Dec));
end;

function RoundWithDec(X: Extended; Dec: Integer): Extended;
const
  ARREDONDA_PARA_CIMA = 0.00000000001; // RFMP 67169
var
  VlrAux: Double;
begin
  VlrAux := (Frac(X) + ARREDONDA_PARA_CIMA) * Power(10, Dec);
  Result := Int(X) + (Round(VlrAux) / Power(10, Dec));
end;

// cristian 7859
function AppendTrailingBackslash(const S: string): string;
begin
  Result := S;
  if not IsPathDelimiter(Result, Length(Result)) then
    Result := Result + '\';
end;

function TrazSomenteNumeros(pString: string): string;
var
  i: integer;
begin
  Result := '';

  for i := 1 to Length(pString) do begin
{$IFDEF DELPHIXE}
    if CharInSet(pString[i], ['0' .. '9']) then
{$ELSE}
    if pString[i] in ['0' .. '9'] then
{$ENDIF}
      Result := Result + pString[i];
  end;

end;

function StrToChar(pExpressao: string): Char;
begin
  if pExpressao = '' then begin
    Result := ' ';
  end else begin
    Result := pExpressao[1];
  end;
end;

// Retorna string para comparação de período entre datas.
function PeriodoSQL(Campo: string; dtInicial, dtFinal: TDateTime): string;
begin
  Result := Campo + ' BETWEEN TO_DATE('#39 + DateToStr(dtInicial) +
     ' 00:00:00'#39','#39'DD/MM/YYYY HH24:MI:SS'#39 +
     ') AND TO_DATE('#39 + DateToStr(dtFinal) + ' 23:59:59' +
     #39','#39'DD/MM/YYYY HH24:MI:SS'#39')';
end;

function PeriodoSQLDate(Campo: string; dtInicial, dtFinal: TDateTime): string;
begin
  Result := Format(
     'date_trunc(''day'', %s) BETWEEN TO_DATE(''%s'', ''DD/MM/YYYY'') AND TO_DATE(''%s'', ''DD/MM/YYYY'')',
     [Campo, DateToStr(dtInicial), DateToStr(dtFinal)]
  );
end;

function Bool2Str(valor: Boolean): string;
begin
  if valor then
    result := 'T'
  else
    result := 'F';
end;

function Str2Curr(pValor: string): Currency;
var
  Format: TFormatSettings;
begin
  Format                   := getFormatSettings;
  Format.DecimalSeparator  := '.';
  Format.ThousandSeparator := ',';

  if pValor = '' then
    result := 0
  else
    result := StrtoCurr(pValor, Format);
end;

function Str2Curr(pValor: string; pTam, pDec: Integer): Currency;
var
  cParteInt: string;
  cParteFrac: string;
begin
  if Length(pValor) <> pTam then begin
    raise Exception.Create(Format('Valor a ser convertido possui tamanho inválido. [pValor=%s pTam=%s pDec=%s]', [pValor, IntToStr(pTam), IntToStr(pDec)]));
  end;
  if pTam <= pDec then begin
    raise Exception.Create(Format('Tamanho utilizado na conversão deve ser maior que o número de casas decimais. [pTam=%s pDec=%s]', [IntToStr(pTam), IntToStr(pDec)]));
  end;
  if pTam <= 0 then begin
    raise Exception.Create(Format('Tamanho utilizado na conversão deve ser maior que zero. [pTam=%s]', [IntToStr(pTam)]));
  end;
  if pDec = 0 then begin
    raise Exception.Create(Format('Casas decimais utilizadas na conversão deve ser maior que zero. [pDec=%s]', [IntToStr(pDec)]));
  end;

  // Copia parte decimal do número.
  cParteInt := Copy(pValor, 1, pTam - pDec);

  // Copia parte fracionária. Currency suporta apenas 4 casas decimais.
  cParteFrac := Copy(pValor, pTam - pDec + 1, Length(pValor)); // Parâmetro final para manter compatibilidade com Delphi 7
  if Length(cParteFrac) > 4 then begin
    cParteFrac := Copy(cParteFrac, 1, 4);
  end;

  Result := Str2Curr(cParteInt + '.' + cParteFrac);
end;

function Str2IntDef(valor: string; default: integer): Integer;
begin
  if valor = '' then
    result := default
  else
    result := StrtoInt(valor);
end;

function Str2Int(valor: string): Integer;
begin
  result := Str2IntDef(valor, 0);
end;

function Str2Int64(valor: string): Int64;
begin
  if valor = '' then
    result := 0
  else
    result := StrtoInt64(valor);
end;

function Str2Bool(valor: string): Boolean;
begin
  if valor = '' then
    result := false
  else
    result := StrtoBool(valor);
end;

function Str2BoolBanco(valor: string): Boolean;
begin
  result := false;
  if UpperCase(valor) = 'T' then begin
      result := true;
  end;
end;

function XMLDate2DateTime(dataXML: string): TDateTime;
var
  nAno, nMes, nDia, nHora, nMinuto, nSegundo: Word;
begin

  if Length(trim(dataXML)) = 0 then begin
    result := 0;
    exit;
  end;

  nAno     := 0;
  nMes     := 0;
  nDia     := 0;
  nHora    := 0;
  nMinuto  := 0;
  nSegundo := 0;

  if Length(dataXML) >= 10 then begin
    nAno := Str2Int(copy(dataXML, 1, 4));
    nMes := Str2Int(copy(dataXML, 6, 2));
    nDia := Str2Int(copy(dataXML, 9, 2));
  end;
  if Length(dataXML) >= 19 then begin
    nHora    := Str2Int(copy(dataXML, 12, 2));
    nMinuto  := Str2Int(copy(dataXML, 15, 2));
    nSegundo := Str2Int(copy(dataXML, 18, 2));
  end;

  result := EncodeDateTime(nAno, nMes, nDia, nhora, nMinuto, nSegundo, 0);
end;

function AAAAMMDD2DateTime(pData: string): TDateTime;
var
  nAno, nMes, nDia, nHora, nMinuto, nSegundo: Word;
begin
  if Length(Trim(pData)) = 0 then begin
    Result := 0;
    Exit;
  end;

  nAno     := 0;
  nMes     := 0;
  nDia     := 0;
  nHora    := 0;
  nMinuto  := 0;
  nSegundo := 0;

  if Length(pData) = 8 then begin
    nAno := Str2Int(Copy(pData, 1, 4));
    nMes := Str2Int(Copy(pData, 5, 2));
    nDia := Str2Int(Copy(pData, 7, 2));
  end;

  Result := EncodeDateTime(nAno, nMes, nDia, nhora, nMinuto, nSegundo, 0);
end;

function IncludePathDate(const pDiretorio: string): string;
var
  wDia, wMes, wAno: Word;
  cDiretorioData: string;
begin
  DecodeDate(Now, wAno, wMes, wDia);
  // Gera Quebra por Data
  cDiretorioData := LPad(IntToStr(wAno), '0', 4) + PathDelim + LPad(IntToStr(wMes), '0', 2) + PathDelim + LPad(IntToStr(wDia), '0', 2);

  Result := pDiretorio + PathDelim + cDiretorioData + PathDelim;
end;

function ConverteDateFormatAMPM(const inputDateTime: string): string;
var
  dtencode, hrencode, dtInput, dtOutput: TDateTime;
  dateParts, sdata, shora: TStringList;
  hor, min, sec, mil,
  dia, mes, ano: word;
  ampm: string;
begin
 // Dividir a string de entrada em partes de data e hora
  dateParts := TStringList.Create;
  sdata     := TStringList.Create;
  shora     := TStringList.Create;
  try
    ExtractStrings([' '], [], PChar(inputDateTime), dateParts);

    if dateParts.Count = 0 then begin
      raise Exception.Create('Formato de data/hora inválido.');
      exit;
    end;

    if dateParts.Count >= 1 then begin
      ExtractStrings(['/', '-', ' '], [], PChar(dateParts[0]), sdata);

      // Obter as partes da data
      if (StrToInt(sdata[0]) in [1..31]) and (StrToInt(sdata[0]) > 12) then begin
        dia := StrToInt(sdata[0]);
      end else begin
        dia := StrToInt(sdata[1]);
      end;

      if StrToInt(sdata[1]) in [1..12] then begin
        mes := StrToInt(sdata[1]);
      end else begin
        mes := StrToInt(sdata[0]);
      end;

      if (StrToInt(sdata[0]) > 31) then begin
        ano := StrToInt(sdata[0]);
      end else begin
        ano := StrToInt(sdata[2]);
      end;

      dtencode := EncodeDate(ano,mes,dia);
    end;

    if dateParts.Count >= 2 then begin
      ExtractStrings([':', ' '], [], PChar(dateParts[1]), shora);

      // Obter as partes da hora e verificar AM/PM
      hor := StrToInt(shora[0]);
      min := StrToInt(shora[1]);
      sec := StrToInt(shora[2]);
      mil := 0;

      hrencode := EncodeTime(hor,min,sec,mil);
    end;

    if dateParts.Count >= 3 then begin
      ampm := dateParts[2];

      if SameText(UpperCase(ampm), 'PM') and (hor < 12) then
         hrencode := IncHour(hrencode,12);
    end;

    // Construir um valor TDateTime usando as partes da data e hora
    dtInput := dtencode + hrencode;

    // Converter para o formato desejado
    dtOutput := dtInput;

    Result := FormatDateTime('dd/mm/yyyy hh:nn:ss', dtOutput);
  finally
    dateParts.Free;
    sdata.Free;
    shora.Free;
  end;
end;


function EhURLValida(const URL: string): Boolean;
const
  URLPattern = '^(https?|ftp)://[-A-Za-z0-9+&@#/%?=~_|!:,.;]+[-A-Za-z0-9+&@#/%=~_|]';
begin
  {$IFDEF DELPHIXE}
  Result := TRegEx.IsMatch(URL, URLPattern);
  {$ELSE}
  Result := True;
  {$ENDIF}
end;


function PossuiExtensaoImagem(const FilePath: string): Boolean;
var
  LowerCasePath: string;
begin
  LowerCasePath := LowerCase(FilePath);
  {$IFDEF DELPHIXE}
  Result := (EndsStr('.jpg', LowerCasePath)) or
            (EndsStr('.png', LowerCasePath)) or
            (EndsStr('.bmp', LowerCasePath));
  {$ELSE}
  Result := True;
  {$ENDIF}
end;

function GetDiretorioLogs(const pLiteral: string; pIncludePathDate: Boolean): string;
var
  cDiretorio: string;
begin
  cDiretorio := '';
  cDiretorio := GetPathCompleto(DIRETORIO_LOGS);
  if (Trim(pLiteral) <> EmptyStr) then
    cDiretorio := cDiretorio + pLiteral + PathDelim;

  if pIncludePathDate then
    cDiretorio := IncludePathDate(cDiretorio);

  Result := cDiretorio;

  // Realiza Criação do Diretório
  ForceDirectories(Result);
end;

{$IFDEF SERVICE OR CONSOLE OR DLL}
function GetFileLogName: string;
var
  Test: string;
  Res: Longint;
  CurSize: Longint;
begin
  CurSize := 1024;
  SetLength(Test, CurSize);
  Res := GetModuleFilename(GetModuleHandle(nil), PChar(test), CurSize);
  if (res > curSize) then
  begin
    CurSize := res + 10;
    SetLength(Test, CurSize);
    Res := GetModuleFilename(GetModuleHandle(nil), PChar(test), CurSize);
  end;
  Setlength(Test, Res);
  test   := ExtractFileName(ChangeFileExt(Test, '.log'));
  Result := test;
end;
{$ELSE}
function GetFileLogName: string;
begin
  Result := ExtractFileName(ChangeFileExt(Application.ExeName, '.log'));
end;
{$ENDIF}

procedure RegistraLogFile(pFileLogName: string; pLog: String; pGravar: Boolean = True);
var
  F: TextFile;
  DirLog, NomeLog: string;
begin
  if pGravar then begin
    try
      DirLog := GetDiretorioLogs();
      NomeLog := IfThen(Trim(DirLog)=EmptyStr,'.\',DirLog) + pFileLogName;
      AssignFile(F, NomeLog);
      try
        if not FileExists(NomeLog) then
          Rewrite(F)
        else
          Append(F);
        Writeln(F, '');
        Writeln(F, DateTimetoStr(now));
        Writeln(F, pLog);
      finally
        CloseFile(F);
      end;
    except
      //Não fazer nada se não consegue gravar log
    end;
  end;
end;

procedure RegistraLog(log: string; pGravar: Boolean = true);
//var
//  F: TextFile;
//  NomeLog: string;
begin
  RegistraLogFile(GetFileLogName(), log, pGravar);
  {if pGravar then begin
    try
      NomeLog := GetDiretorioLogs() + GetFileLogName();
      AssignFile(F, NomeLog);
      try
        if not FileExists(NomeLog) then
          Rewrite(F)
        else
          Append(F);
        Writeln(F, '');
        Writeln(F, DateTimetoStr(now));
        Writeln(F, log);
      finally
        CloseFile(F);
      end;
    except
      //Não fazer nada se não consegue gravar log
    end;
  end;}
end;

{$IFDEF DELPHIXE}
function IsCharEspec(Chr: AnsiChar): Boolean;
const
  CharNorm: set of AnsiChar = ['a' .. 'z', 'A' .. 'Z', '1' .. '9', '0', ' ', '-', ':', '.',
    'á', 'à', 'ã', 'â', 'ä', 'Á', 'À', 'Ã', 'Â', 'Ä',
    'é', 'è', 'É', 'È', 'í', 'ì', 'Í', 'Ì',
    'ó', 'ò', 'ö', 'õ', 'ô', 'Ó', 'Ò', 'Ö', 'Õ', 'Ô',
    'ú', 'ù', 'ü', 'Ú', 'Ù', 'Ü', 'ç', 'Ç', 'ñ', 'Ñ'];
begin
  Result := not CharInSet(Chr, CharNorm);
end;
{$ENDIF}

{$IFDEF DELPHIXE}
function RemoveCaracteresEspeciais(entrada: AnsiString): AnsiString;
var
  i: Integer;
begin
  result := '';
  if entrada = '' then
    Exit;

  for i := 0 to High(entrada) do
  begin
    if not IsCharEspec(entrada[i]) then
      result := result + entrada[i];
  end;
end;

procedure StringToList(pDelimiter: Char; pStr: string; pListaDeStrings: TStringList);
begin
  if Assigned(pListaDeStrings) then begin
    pListaDeStrings.Clear;
    pListaDeStrings.Delimiter       := pDelimiter;
    pListaDeStrings.StrictDelimiter := True;
    pListaDeStrings.DelimitedText   := pStr;
  end else begin
    raise Exception.Create('Lista não informada [StringToList]');
  end;
end;
{$ENDIF}


function GetAppName: string;
  function GetModuleName(): string;
  var
    Test: string;
    Res: Longint;
    CurSize: Longint;
  begin
    CurSize := 1024;
    SetLength(Test, CurSize);
    Res := GetModuleFilename(GetModuleHandle(nil), PChar(test), CurSize);
    if (res > curSize) then begin
      CurSize := res + 10;
      SetLength(Test, CurSize);
      Res := GetModuleFilename(GetModuleHandle(nil), PChar(test), CurSize);
    end;
    Setlength(Test, Res);
    result := ExtractFileName(Test);
  end;

begin
{$IFDEF CONSOLE}
  Result := GetModuleName;
{$ELSE}
{$IFDEF SERVICE}
  Result := GetModuleName;
{$ELSE}
{$IFDEF DLL}
  Result := GetModuleName;
{$ELSE}
  result := ExtractFileName(Application.ExeName);
{$ENDIF}
{$ENDIF}
{$ENDIF}
end;

function GetPathAtual: string;
  function GetAppPath: string;
  var
    Test: string;
    Res: Longint;
    CurSize: Longint;
  begin
    CurSize := 1024;
    SetLength(Test, CurSize);
    Res := GetModuleFilename(GetModuleHandle(nil), PChar(test), CurSize);
    if (res > curSize) then
    begin
      CurSize := res + 10;
      SetLength(Test, CurSize);
      Res := GetModuleFilename(GetModuleHandle(nil), PChar(test), CurSize);
    end;
    Setlength(Test, Res);
    test := ExtractFileDir(Test);
    if (test[Length(test)] = '\') or (test[Length(test)] = '/') then
      SetLength(Test, Length(test) - 1);
    Result := test;
  end;

begin
{$IFDEF CONSOLE}
  Result := GetCurrentDir();
{$ELSE}
{$IFDEF SERVICE}
  Result := GetAppPath;
{$ELSE}
{$IFDEF DLL}
  Result := GetCurrentDir();
{$ELSE}
  result := ExtractFilePath(Application.ExeName);
{$ENDIF}
{$ENDIF}
{$ENDIF}

end;

function GetPathCompleto(const pPath: string): string;
begin
  Result := IncludeTrailingPathDelimiter(IncludeTrailingPathDelimiter(GetPathAtual()) + pPath);
  Result := StringReplace(Result, '//', '/', [rfReplaceAll]);
  Result := StringReplace(Result, '\\', '\', [rfReplaceAll]);
end;

function Bool2StrBanco(valor: boolean): string;
begin
  if valor then
    result := 'T'
  else
    result := 'F';
end;

function Str2DateTime(valor: string): TDateTime;
begin
  try
    Result := StrToDateTime(valor);
  except
    Result := XMLDate2DateTime(valor);
  end;
end;

function getFormatSettings: TFormatSettings;
var
  rFormatSettings: TFormatSettings;
begin
{$IFDEF DELPHIXE}rFormatSettings    := TFormatSettings.Create; {$ENDIF}
  rFormatSettings.DecimalSeparator  := ',';
  rFormatSettings.ThousandSeparator := '.'; // separador de milhar
  result                            := rFormatSettings;
end;

function LetraseNumeros(pString: string): string;
var
  i: integer;
begin
  Result := '';

  for i := 1 to Length(pString) do begin
    if pString[i] in ['0' .. '9', 'a' .. 'z', 'A' .. 'Z'] then
      Result := Result + pString[i];
  end;
end;

function ApenasNumeros(pString: string): Boolean;
var
  i: integer;
begin
  Result := True;

  for i := 1 to Length(pString) do begin
    if not(pString[i] in ['0' .. '9']) then begin
      Result := False;
      Break;
    end;
  end;
end;

{$IFDEF DELPHIXE}


// Transforma uma string em StringList.
// Método limpa quebras de linha definidas com #13 ou #10.
// Recomenda-se utilizar na string # para definir a quebra da linha.
function StrToStringList(pString: string; pQuebraLinha: string): TStringList;
var
  cBuffer: string;
  iOffset: Integer;
  iTamQuebraLinha: Integer;
  iPosIni, iPosFim: Integer;
begin
  Result := TStringList.Create;

  // Remove eventuais quebras de linha
  //cConteudoLimpo := pString;
  //cConteudoLimpo := StringReplace(cConteudoLimpo, #13, '', [rfReplaceAll]);
  //cConteudoLimpo := StringReplace(cConteudoLimpo, #10, '', [rfReplaceAll]);
  //cConteudoLimpo := StringReplace(cConteudoLimpo, pQuebraLinha, #10, [rfReplaceAll]);

  // Importa no StringList usando o delimitador
  //Result.Delimiter     := #10;
  //Result.DelimitedText := cConteudoLimpo;

  //WrapText(pString, #10#13, pQuebraLinha);

  iTamQuebraLinha := Length(pQuebraLinha);
  iOffset         := 1;
  while (Pos(pQuebraLinha, pString, iOffset) > 0) do begin
    iPosIni := iOffset;
    iPosFim := Pos(pQuebraLinha, pString, iOffset);
    cBuffer := Copy(pString, iPosIni, iPosFim - iPosIni);

    Result.Add(cBuffer);

    iOffset := Pos(pQuebraLinha, pString, iOffset) + iTamQuebraLinha;
  end;

  // Se última quebra de linha não estiver no fim do arquivo, leia da última até o fim
  if (iOffset < Length(pString)) then begin
    iPosIni := iOffset;
    iPosFim := Length(pString);
    cBuffer := Copy(pString, iPosIni, iPosFim - iPosIni);
    Result.Add(cBuffer);
  end;

end;

function HorarioVeraoAtivo: Boolean;
var
  TimeZoneInfo: TTimezoneinformation;
begin
  if (GetTimezoneInformation(TimeZoneInfo) in [TIME_ZONE_ID_DAYLIGHT]) then
    Result := True
  else
    Result := False;
end;

function FusoHorario: Integer;
var
  TimeZone: TTimeZoneInformation;
  Minutos: Integer;
begin
  GetTimeZoneInformation(TimeZone);

  Minutos := TimeZone.Bias;

  if HorarioVeraoAtivo then begin
    Minutos := Minutos - 60;
  end;

  Result := Minutos div -60;
end;

function FileToStr(pArquivo: string; pQuebraLinha: string): string;
var
  F: TextFile;
  cLinha: string;
begin
  Result := '';

  AssignFile(F, pArquivo);
  Reset(F);
  while not Eof(F) do begin
    Readln(F, cLinha);
    Result := Result + pQuebraLinha + StringReplace(cLinha, pQuebraLinha, '', [rfReplaceAll]);
  end;
  CloseFile(F);
end;

{$ENDIF}


function iif(pCondicao: Boolean; pExpressao1, pExpressao2: Integer): Integer;
begin
  if pCondicao then
    Result := pExpressao1
  else
    Result := pExpressao2;
end;

function iif(pCondicao: Boolean; pExpressao1, pExpressao2: string): string;
begin
  if pCondicao then
    Result := pExpressao1
  else
    Result := pExpressao2;
end;

function iif(pCondicao: Boolean; pExpressao1, pExpressao2: Double): Double;
begin
  if pCondicao then
    Result := pExpressao1
  else
    Result := pExpressao2;
end;

function iif(vm_ParBoo: Boolean; Expressao1, Expressao2:
     Variant): Variant;
begin
  if vm_ParBoo then
    iif := Expressao1
  else
    iif := Expressao2;
end;

function GetFileList(const Path, Extensao: string): TStringList;
var
  I: Integer;
  SearchRec: TSearchRec;
begin
  Result := TStringList.Create;
  try
    I := FindFirst(Path + '\*.' + Extensao, faArchive + faAnyFile, SearchRec);
    while I = 0 do
    begin
      if UpperCase(ExtractFileExt(SearchRec.Name)) = '.' + UpperCase(Extensao) then
        Result.Add(SearchRec.Name);
      I := FindNext(SearchRec);
    end;
    SysUtils.FindClose(SearchRec);
  except
    Result.Free;
    raise;
  end;
end;

{$IFDEF DELPHIXE}
function CompactFile(FZipFile, AFileName: string): Integer;
var
  z: TZipFile;
begin
  Result := 0;
  z      := TZipFile.Create;
  try
    if FileExists(FZipFile) then
      z.Open(FZipFile, zmReadWrite)
    else
      z.Open(FZipFile, zmWrite);
    z.Add(AFileName, ExtractFileName(AFileName));
    z.Close;
    Result := 1;
  finally
    z.Free;
  end;
end;

function DescompactFile(FZipFile, APath: string): Integer;
var
  z: TZipFile;
begin
  Result := 0;
  z      := TZipFile.Create;
  try
    if FileExists(FZipFile) then
      z.Open(FZipFile, zmReadWrite)
    else
      raise Exception.Create('Não encontrei: ' + FZipFile);
    z.ExtractAll(APath);
    z.Close;
    Result := 1;
  finally
    z.Free;
  end;
end;

function DescompactFile(FZipFile, APath: string; var ListFiles: TStringList): Integer;
var
  z: TZipFile;
  I: Integer;
  cFile: string;
begin
  Result := 0;
  z      := TZipFile.Create;
  try
    if FileExists(FZipFile) then
      z.Open(FZipFile, zmReadWrite)
    else
      raise Exception.Create('Não encontrei: ' + FZipFile);

    z.ExtractAll(APath);
    //Monta Lista de Arquivos Extraídos
    for I   := 0 to z.FileCount - 1 do begin
      cFile := AppendTrailingBackslash(APath) + Z.FileName[I];

      if FileExists(cFile) then begin
        ListFiles.Add(cFile);
      end;
    end;
    z.Close;
    Result := 1;
  finally
    z.Free;
  end;
end;

function GetFristCompactFile(pFileCodificado: string; pFileExt: string; var pFileName: string): string;
var
  cFileExt, cFileNameZip: string;

  oZIP, oXML: TStringStream;
  oListFile: TStringList;
  I: Integer;
begin
  pFileName := '';
  //Pega Nome de arquivo Temporário
  cFileNameZip := System.IOUtils.TPath.GetTempFileName;
  try
    // Decodifica Base 64 salva arquivo compactado
    oZIP := TStringStream.Create;
    oZIP.WriteString(DecodeBase64(pFileCodificado));
    oZIP.SaveToFile(cFileNameZip);
    oZIP.Free;

    // Descompacta arquivo e pegar primeiro arquivo xml da lista de arquivos descompactados
    oListFile := TStringList.Create;
    oListFile.Clear;
    if (DescompactFile(cFileNameZip, System.IOUtils.TPath.GetTempPath, oListFile) = 1) then begin
      if oListFile.Count > 0 then begin
        if (Trim(pFileExt) = '') then begin
          pFileName := oListFile.Strings[0];
        end else begin
          cFileExt := '.' + pFileExt;
          // Verifica lista de arquivos descompactados e pega o primeiro arquivo com a extenção informada
          for I := 0 to oListFile.Count - 1 do begin
            if (LowerCase(ExtractFileExt(oListFile.Strings[I])) = LowerCase(cFileExt)) then begin
              pFileName := oListFile.Strings[I];
              Break;
            end;
          end;
        end;

        // Carrega arquivo
        if (Trim(pFileName) > '') then begin
          oXML := TStringStream.Create;
          oXML.LoadFromFile(pFileName);
          Result := oXML.DataString;
          oXML.Free;
        end else begin
          raise Exception.Create('Não encontrado arquivo com a extenção informada!');
        end;
      end else begin
        raise Exception.Create('Arquivo descompactado não retornou nenhum arquivo!');
      end;
    end else begin
      raise Exception.Create('Erro ao descompactar arquivo!');
    end;
  finally
    // Deleta Arquivo gerados no processo
    System.SysUtils.DeleteFile(cFileNameZip);
    if Assigned(oListFile) then begin
      if oListFile.Count > 0 then begin
        for I := 0 to oListFile.Count - 1 do begin
          System.SysUtils.DeleteFile(oListFile.Strings[I]);
        end;
      end;
    end;
  end;
end;

function GetFristXMLCompactFile(pFileCodificado: string; var pFileName: string): string;
begin
  Result := GetFristCompactFile(pFileCodificado, 'xml', pFileName);
end;

function GetBase64File(const pFileName: string; const pArquivoCompactado: Boolean): string;
var
  oFile: TStringStream;
  cFileNameZip: string;
begin
  if pArquivoCompactado then begin
    //Compacta arquivo e gera Base64 sobre o Zip
    try
      cFileNameZip := ChangeFileExt(pFileName, '.zip');
      // Compacta arquivo xml e retorna Base64 sobre o arquivo compactado
      if (CompactFile(cFileNameZip, pFileName) = 1) then begin
        Result := GetBase64File(cFileNameZip, False);
      end else begin
        raise Exception.Create('Erro ao compactar arquivo de retorno!');
      end;
    finally
      if FileExists(cFileNameZip) then
        System.SysUtils.DeleteFile(cFileNameZip);
    end;
  end else begin
    //Gera Base64 sobre Arquivo
    oFile := TStringStream.Create;
    try
      oFile.LoadFromFile(pFileName);
      Result := EncodeBase64(oFile.DataString);
    finally
      oFile.Free;
    end;
  end;
end;

{$ENDIF}

function LaboratorioTotall(pRegistraErro: Boolean): Boolean;
  function _Protec_Verif(pIp: string; pPorta:Integer): Boolean;
  var
    oHTTP: TIdHTTP;
    oResponse: TStringStream;
    sResponse: string;
  begin
    Result    := False;
    oResponse := nil;
    oHTTP     := nil;
    try
      oResponse := TStringStream.Create{$IFDEF DELPHIXE}(){$ELSE}(''){$ENDIF};;

      // Faz a requisição da página para verificar Proteq.
      oHTTP                := TIdHTTP.Create(nil);
      oHTTP.Request.Method := {$IFDEF DELPHIXE}'GET'{$ELSE}hmGet{$ENDIF};
      {$IFDEF DELPHIXE}oHTTP.ConnectTimeout := 5000;{$ENDIF}
      oHTTP.ReadTimeout    := 5000;
      //oHTTP.Get('http://ttadm:8080/protec/verif.php', oResponse);
      oHTTP.Get(pIp + ':' + IntToStr(pPorta) + '/protec/verif.php', oResponse);

      oResponse.Position := 0;
      sResponse          := oResponse.DataString;

      // Se obteve uma resposta válida está no laboratório da Totall.
      if ((sResponse = 'TOTALL.COM') or ((sResponse = 'MONITOR.TOTALI.COM'))) then
        Result := True;
    finally
      if Assigned(oResponse) then
        FreeAndNil(oResponse);
      if Assigned(oHTTP) then
        FreeAndNil(oHTTP);
    end;
  end;
begin
  Result := False;

  try
    Result := _Protec_Verif(URL_TOTALI_ADM, PORTA_TOTALI_ADM);

{$IFDEF DESENVOLVIMENTO_TOTALI}
    // Quando diretiva Desenvolvimento Totali checa o Monitor também além da TTADM
    if (not Result) then
      Result := _Protec_Verif('http://'+ URL_DATAINFO_MONITOR, PORTA_DATAINFO_MONITOR);
{$ENDIF}
  except
    on e: Exception do begin
      if pRegistraErro then
        RegistraLog('Erro ao verificar Laboratório Totali: ' + e.Message);
    end;
  end;
end;

function CasasDecimais(Value: Currency): Integer;
var
  x: string;
  nValor: Currency;
begin
  Result := 0;

  // Pega apenas a parte decimal
  nValor := Value - Trunc(Value);

  if (nValor > 0) and (nValor < 1) then begin
    // Converte pra texto
    x := FloatToStr(nValor);

    // O resultado será o tamanho da string após a vírgula
    Result := Length(Copy(x, Pos(',', x) + 1, Length(x)));
  end;
end;

function ValidaPath(pPath: string): Boolean;
var
  sFileName: AnsiString;
  slArquivo: TStringList;
begin
  Result := True;
  try
    RegistraLog('ValidaPath - Inicio');
    try
      if Trim(pPath) = '' then
        raise Exception.Create('Diretório não definido.');

      if not DirectoryExists(pPath) then
        if not CreateDir(pPath) then
          raise Exception.Create('Diretório não encontrado.');

      try
        sFileName := pPath + '\FileValidaPath.tmp';
        if FileExists(sFileName) then
          SysUtils.DeleteFile(sFileName);

        slArquivo := TStringList.Create;
        try
          slArquivo.Clear;
          slArquivo.Add('Teste Gravação Diretório.');
          slArquivo.SaveToFile(sFileName);

          if FileExists(sFileName) then
            SysUtils.DeleteFile(sFileName);
        finally
          FreeAndNil(slArquivo);
        end;
      except
        on E: Exception do begin
          raise Exception.Create('Não foi possível realizar gravação no diretório.' + sLineBreak + E.Message);
        end;
      end;
    except
      on E: Exception do begin
        Result := False;
        RegistraLog('ValidaPath - ' + E.Message);
      end;
    end;
  finally
    RegistraLog('ValidaPath - Fim');
  end;
end;

// Verifica se o arquivo possui uma extensão que esteja na lista
// pNomeArquivo: 'teste.txt'
// pListaExtensoes: '.txt;.rtf;.doc'
function VerificaExtensaoArquivo(pNomeArquivo, pListaExtensoes: string): Boolean;
begin
  Result := Pos(UpperCase(ExtractFileExt(pNomeArquivo)), UpperCase(pListaExtensoes)) > 0;
end;

function TiraAcentos(pTexto: string): string;
var
  i, x: Integer;
  aAcentos: array [0 .. 46] of string;
  aAux: array [1 .. 2000] of string;
  cTexto: string;
begin
  //funcao retirada do componente totall cep
  for i     := 1 to length(pTexto) do
    aAux[i] := pTexto[i];

  aAcentos[00] := 'áa';
  aAcentos[01] := 'àa';
  aAcentos[02] := 'ãa';
  aAcentos[03] := 'âa';
  aAcentos[04] := 'äa';
  aAcentos[05] := 'ÁA';
  aAcentos[06] := 'ÀA';
  aAcentos[07] := 'ÃA';
  aAcentos[08] := 'ÂA';
  aAcentos[09] := 'ÄA';
  aAcentos[10] := 'ée';
  aAcentos[11] := 'èe';
  aAcentos[12] := 'êe';
  aAcentos[13] := 'ëe';
  aAcentos[14] := 'ÉE';
  aAcentos[15] := 'ÈE';
  aAcentos[16] := 'ÊE';
  aAcentos[17] := 'ËE';
  aAcentos[18] := 'íi';
  aAcentos[19] := 'ìi';
  aAcentos[20] := 'îi';
  aAcentos[21] := 'ïi';
  aAcentos[22] := 'ÍI';
  aAcentos[23] := 'ÌI';
  aAcentos[24] := 'ÎI';
  aAcentos[25] := 'ÏI';
  aAcentos[26] := 'óo';
  aAcentos[27] := 'òo';
  aAcentos[28] := 'ôo';
  aAcentos[29] := 'õo';
  aAcentos[30] := 'öo';
  aAcentos[31] := 'ÓO';
  aAcentos[32] := 'ÒO';
  aAcentos[33] := 'ÔO';
  aAcentos[34] := 'ÕO';
  aAcentos[35] := 'ÖO';
  aAcentos[36] := 'úu';
  aAcentos[37] := 'ùu';
  aAcentos[38] := 'ûu';
  aAcentos[39] := 'üu';
  aAcentos[40] := 'ÚU';
  aAcentos[41] := 'ÙU';
  aAcentos[42] := 'ÛU';
  aAcentos[43] := 'ÜU';
  aAcentos[44] := 'çc';
  aAcentos[45] := 'ÇC';
  aAcentos[46] := #39#39#39;

  for i   := 1 to length(pTexto) do
    for x := low(aAcentos) to high(aAcentos) do
      if aAux[i] = copy(aAcentos[x], 1, 1) then
        aAux[i] := copy(aAcentos[x], 2, 2);

  cTexto := '';

  for i    := 1 to length(pTexto) do
    cTexto := cTexto + aAux[i];

  Result := cTexto;
end;

function PercentualDiferencaString(pString1, pString2: string; bIgnoreCase: Boolean; pRetirarAcentos: Boolean = true): Double;
// MN - Algoritmo "Damerau Levenshtein Distance" para comparar strings
  function DamerauLevenshteinDistance(const Str1, Str2: string): Integer;

    function Min(const A, B, C: Integer): Integer;
    begin
      Result := A;
      if B < Result then
        Result := B;
      if C < Result then
        Result := C;
    end;

  var
    LenStr1, LenStr2: Integer;
    I, J, T, Cost, PrevCost: Integer;
    pStr1, pStr2, S1, S2: PChar;
    D: PIntegerArray;
  begin
    LenStr1 := Length(Str1);
    LenStr2 := Length(Str2);

    // save a bit memory by making the second index points to the shorter string
    if LenStr1 < LenStr2 then
    begin
      T       := LenStr1;
      LenStr1 := LenStr2;
      LenStr2 := T;
      pStr1   := PChar(Str2);
      pStr2   := PChar(Str1);
    end
    else
    begin
      pStr1 := PChar(Str1);
      pStr2 := PChar(Str2);
    end;

    // bypass leading identical characters
    while (LenStr2 <> 0) and (pStr1^ = pStr2^) do
    begin
      Inc(pStr1);
      Inc(pStr2);
      Dec(LenStr1);
      Dec(LenStr2);
    end;

    // bypass trailing identical characters
    while (LenStr2 <> 0) and ((pStr1 + LenStr1 - 1)^ = (pStr2 + LenStr2 - 1)^) do
    begin
      Dec(LenStr1);
      Dec(LenStr2);
    end;
    // is the shorter string empty? so, the edit distance is length of the longer one
    if LenStr2 = 0 then
    begin
      Result := LenStr1;
      Exit;
    end;
    // calculate the edit distance
    GetMem(D, (LenStr2 + 1) * SizeOf(Integer));

    for I  := 0 to LenStr2 do
      D[I] := I;

    S1    := pStr1;
    for I := 1 to LenStr1 do
    begin
      PrevCost := I - 1;
      Cost     := I;
      S2       := pStr2;
      for J    := 1 to LenStr2 do
      begin
        if (S1^ = S2^) or ((I > 1) and (J > 1) and (S1^ = (S2 - 1)^) and (S2^ = (S1 - 1)^)) then
          Cost := PrevCost
        else
          Cost   := 1 + Min(Cost, PrevCost, D[J]);
        PrevCost := D[J];
        D[J]     := Cost;
        Inc(S2);
      end;
      Inc(S1);
    end;
    Result := D[LenStr2];
    FreeMem(D);
  end;

var
  TamanhoMaximoString: Integer;
  DistanciaEntreStrings: Integer;
begin
  Result := 1.0;

  // MN - O algoritmo é baseado em algoritmo da língua inglesa, retirando acentos, aumenta a compatibilidade
  // entre strings, mas faz trazer mais resultados
  if pRetirarAcentos then begin
    pString1 := TiraAcentos(pString1);
    pString2 := TiraAcentos(pString2);
  end;

  if Length(pString1) > Length(pString2) then
    TamanhoMaximoString := Length(pString1)
  else
    TamanhoMaximoString := Length(pString2);

  if TamanhoMaximoString <> 0 then
  begin
    if bIgnoreCase then
      DistanciaEntreStrings := DamerauLevenshteinDistance(LowerCase(pString1), LowerCase(pString2))
    else
      DistanciaEntreStrings := DamerauLevenshteinDistance(pString1, pString2);

    Result := Result - (DistanciaEntreStrings / TamanhoMaximoString);
  end;
end;

function SubstituiQuebraLinha(pConteudo, pQuebraLinha: string): string;
begin
  Result := pConteudo;
  if Trim(Result) <> '' then begin
    // Troca todos CR+LF para apenas LF
    Result := StringReplace(Result, sLineBreak, #10, [rfReplaceAll]);

    // Se existe apenas CR, também troca os mesmos para LF
    Result := StringReplace(Result, #13, #10, [rfReplaceAll]);

    // Se existe apenas LF, também troca os mesmos para ;
    Result := StringReplace(Result, #10, ';', [rfReplaceAll]);

    { Agora temos todas quebras como LF... Se a Quebra de linha final for diferente de LF, aplique a substituição }
    if pQuebraLinha <> #10 then
      Result := StringReplace(Result, #10, pQuebraLinha, [rfReplaceAll]);
  end;

  if (Trim(Result) > '') then
    Result := Result + ifThen((Copy(Result, Length(Result), 1) = pQuebraLinha), '', pQuebraLinha);
end;

function ConteudoTag(pStr, pTag: string): string;
var
  cTagAbre, cTagFecha: string; 
  iPosTagAbre, iPosTagFecha, iPosConteudo: Integer;
begin
  // Define as posições da tag de abertura, fechamento e do conteúdo
  cTagAbre     := '<' + pTag + '>';
  iPosTagAbre  := Pos(cTagAbre, pStr);
  cTagFecha    := '</' + pTag + '>';
  iPosTagFecha := Pos(cTagFecha, pStr);

  // Define a posição do conteúdo
  iPosConteudo := iPosTagAbre + Length(cTagAbre);

  if (iPosTagAbre > 0) and (iPosTagFecha > 0) then begin
    Result := Trim(Copy(pStr, iPosConteudo, iPosTagFecha - iPosConteudo));
  end else begin
    Result := '';
  end;
end;

function AtributoGabarito(pEstrutura, pCodigo: string; pConteudo: TEnumGabaritoConteudo): string;
var
  cChr: string;
  iPosIni, iPosFim: Integer;
begin
  Result := '';

  cChr := TEnum.GabaritoConteudoToStr(pConteudo);

  iPosIni := Pos(cChr, UpperCase(pEstrutura));
  iPosFim := LastDelimiter(cChr, UpperCase(pEstrutura));

  if (iPosIni > 0) and (iPosFim > 0) then begin
    // Verifica se o Caracter está continuo.
    // Não aceita, por exemplo, ???RRR???RR??
    Result := UpperCase(pEstrutura);
    Result := Copy(Result, iPosIni, iPosFim-iPosIni+1);
    Result := StringReplace(Result, cChr, '', [rfReplaceAll]);

    if Trim(Result) <> '' then begin
      Result := '';
    end else begin
      Result := Copy(pCodigo , iPosIni, iPosFim-iPosIni+1);

      // Tratamento de decimais
      // Para que o tratamento abaixo funcione, a letra de controle deve estar minúscula.
      // Ex: VVVvv - Três casas inteiras e duas decimais
      If UpperCase(pEstrutura) <> pEstrutura then begin
        iPosFim := Pos(LowerCase(cChr), pEstrutura);

        if iPosFim > 0 then begin
          iPosFim := iPosFim-iPosIni;
          Result  := Copy(Result, 1, iPosFim) + '.' + Copy(Result, iPosFim+1, Length(Result)-iPosFim);
        end;
      end;
    end;
  end;
end;

function ValidaDigitoEAN(pEAN: string; var pDigito: string): Boolean;
var
  cEAN: string;
  iTam, iTotal, iDigito, i, iMultiplo: Integer;
  nDividido: Double;
begin
  Result  := False;
  cEAN    := Trim(pEAN);
  iTam    := Length(cEAN);
  iTotal  := 0;
  iDigito := 99;

  if (iTam >= 8) and (iTam <= 17) then begin
    // Multiplica-se os dígitos pares por do código por 3 e por 1
    for i := 1 to iTam-1 do begin
      iTotal := iTotal + StrToIntDef(Copy(cEAN, i, 1),0) * iif(Trunc(i/2) = (i/2), 3, 1);
    end;
    
    // Encontra-se o multiplo de 10 iqual ou superior a soma
    nDividido := iTotal/10;
    iMultiplo := iif( Trunc(nDividido) = nDividido, 0, 1 );
    iMultiplo := 10 * ( Trunc(nDividido) + iMultiplo );

    // O dígito é o múltiplo subtraído da soma
    iDigito := iMultiplo - iTotal;
    Result  := ( iDigito = Str2Int(Copy(cEAN, iTam, 1)) );
    pDigito := IntToStr(iDigito);
  end;
end;

procedure TrimAppMemorySize;
var
  MainHandle: THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
  end;

{$IFNDEF SERVICE}Application.ProcessMessages; {$ENDIF}
end;

function UTF8FileBOM(const FileName: string): boolean;
var
  txt: file;
  bytes: array[0..2] of byte;
  amt: integer;
begin

  FileMode := fmOpenRead;
  AssignFile(txt, FileName);
  Reset(txt, 1);

  try
    BlockRead(txt, bytes, 3, amt);
    result := (amt=3) and (bytes[0] = $EF) and (bytes[1] = $BB) and (bytes[2] = $BF);
  finally    
    CloseFile(txt);
  end;
end;

// MN - Determina qual CST é o correto baseado no regime tributário.
function CalculaICMS_CSOSN(pICMS: string; pRegimeTributario: EnumRegimeTributario; pAceitaCSOSN103: boolean = False; pPermiteCreditoSimples: boolean = False): string;
begin
  Result := pICMS;

  // MN - Se a Filial estiver como Simples e vier um CST de empresa que não é do simples
  // "converte-se" o CST em um CSOSN
  if (pRegimeTributario = rtSimples) then begin
    // MN - CST 00 ou 20, vira 101 ou 102 quando é simples
    if (pICMS = '00') or (pICMS = '20')  then begin
      Result := iif(pPermiteCreditoSimples, '101', '102');
    // MN - CST 10 ou 70, vira 201 ou 202 quando é simples
    end else if (pICMS = '10') or (pICMS = '70') then begin
      Result := iif(pPermiteCreditoSimples, '201', '202');
    end else if pICMS = '30' then begin
      if pAceitaCSOSN103 then
        Result := '103'
      else
        // MN - Se parâmetro "ACEITA_CSOSN_103" for falso, o cliente não pode usar o CSOSN
        // 103 devido a seu faturamento, desse modo, deve usar um CSOSN tributado
        Result := iif(pPermiteCreditoSimples, '101', '102');
    end else if pICMS = '40' then begin
      if pAceitaCSOSN103 then
         Result := iif(pPermiteCreditoSimples, '300', '103')
      else
        // MN - Se parâmetro "ACEITA_CSOSN_103" for falso, o cliente não pode usar o CSOSN
        // 103 devido a seu faturamento, desse modo, deve usar um CSOSN tributado
        Result := iif(pPermiteCreditoSimples, '101', '102');
    end else if pICMS = '41' then begin
      Result := '400';
    end else if pICMS = '51' then begin
      Result := '400';
    end else if pICMS = '60' then begin
      Result := '500';
    end else if pICMS = '90' then begin
      Result := '900';
    end;


  end else if (Length(IntToStr(StrToIntDef(pICMS, 0))) = 3) and
     ((pRegimeTributario = rtPresumido) OR (pRegimeTributario = rtReal) ) then begin
    // MN - A ideia desse if é que se vier que a Filial tem lucro real ou presumido, ela tem que exportar o cst como 00/10/20 etc,
    // se vier um CSOSN, "converte-se" para o CST de uma filial com lucro real ou presumido.
    if (pICMS = '101') or (pICMS = '102') then begin
      Result := '000'
    end else if (pICMS = '201') or (pICMS = '202') then begin
      Result := '010'
    end else if (pICMS = '203') then begin
      Result := '030'
    end else if (pICMS = '103') or (pICMS = '300') then begin
      Result := '040'
    end else if (pICMS = '400') then begin
      Result := '041'
    end else if (pICMS = '500') then begin
      Result := '060'
    end else if (pICMS = '900') then begin
      Result := '090'
    end
    else
      Result := '090';
  end;
end;

function RemoverExcessoPontoVirgula(const str: string): string;
begin
  Result := str;
  repeat
    Result := StringReplace(Result, ';;', ';', [rfReplaceAll]);
  until (Pos(';;', Result) = 0);
end;

end.
