unit TTURetorno;

interface
type

  TEnumRetorno = (tfErro, tfErroRegistrado, tfOk, tfJaExiste, tfNaoExiste);

  TRetorno = record
    Tipo     : TEnumRetorno;
    Id       : Int64;
    Mensagem : String;
  end;

implementation

end.
