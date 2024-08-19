unit TTUConsts;

interface

type
  TDBRegrasValidacao = record
    Codigo: string;
    Mensagem: string;
  end;

const
  MSG_ID_INVALIDO = 'ID de acesso expirado [Totali Middleware].';
  MSG_CNPJ_NAO_CADASTRADO = 'Configuração não encontrada para o CNPJ [Totali Middleware].';
  MSG_CNPJ_DESATIVADO = 'Configuração desativada para o CNPJ [Totali Middleware].';
  MSG_PARAMETRO_VAZIO = 'Parâmetro vazio [Totali Middleware].';
  MSG_INI_NAO_ENCONTRADO = 'Arquivo Middleware.ini não encontrado [Totali Middleware].';
  MSG_BASE_ATUALIZADA_COM_SUCESSO = 'Base atualizada com sucesso [Totali Middleware].';
  MSG_INUTILIZACAO_AUTOMATICA = 'Numeração inutilizada devido à falha na transmissão da nota';
  MSG_TOKEN_NAO_INICIALIZADO = 'Erro ao realizar requisição, conexão não inicializada. Realiza a geração do Token da conexão antes da chamada ao processo.';

  VERSAO_LAYOUT_MIDDLEWARE = 2;
  VERSAO_CONSULTA_RETAGUARDA = 207;
  VERSAO_MINIMA_BASE_POS = 513;
  CODIGO_EMPRESA_TOTALL = 0;

  CHAVE_DATAINFO_MONITOR = '2Hu9gOzqEwqLXqR7hnG2';
  URL_DATAINFO_MONITOR = 'monitor.datainfo.inf.br';
  PORTA_DATAINFO_MONITOR = 8080;

  LF = #13#10;

  // Prefixo para nomes de tabela
  NOME_TABELA_PREFIXO = 'tbl_';

  // Prefixo para variáveis String
  STRING_PREFIXO = 'str_';

  // Prefixo para variaveis usadas na clausula IN
  CONJUNTO_PREFIXO = 'set_';

  // Prefixo para variáveis Integer
  INTEIRO_PREFIXO = 'int_';

  // Prefixo para variáveis Int64
  INTEIRO64_PREFIXO = 'int64_';

  // Prefixo para variáveis reais
  REAL_PREFIXO = 'real_';

  // Prefixo para variáveis de data
  DATA_PREFIXO = 'date_';

  // Prefixo para variáveis de hora
  HORA_PREFIXO = 'hour_';

  // Prefixo para variáveis boolean
  BOOLEAN_PREFIXO = 'b_';

  // Prefixo para variáveis de data e hora
  DATA_HORA_PREFIXO = 'dateHour_';

  // Formato de data para serviço de retaguarda
  DATA_FORMATO_JSON = 'YYYY-MM-DD';

  // Formato de hora para serviço de retaguarda
  HORA_FORMATO_JSON = 'HH:NN:SS';

  // Formato de data e hora para serviço de retaguarda
  DATA_HORA_FORMATO_JSON = 'YYYY-MM-DD HH:NN:SS';

  /// Expressão regular para os nomes de variáveis contidos nas queries.
  PATTERN_VARIAVEIS_SQL = ':[\w\d]+';

  /// Mensagem de e-mail padrão para NFC-e
  MSG_EMAIL_NFCE = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' + sLineBreak +
     '<html xmlns="http://www.w3.org/1999/xhtml">' + sLineBreak +
     '<head>' + sLineBreak +
     '  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' + sLineBreak +
     '  <title>NFC-e</title>' + sLineBreak +
     '  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>' + sLineBreak +
     '</head>' + sLineBreak +
     '<body style="margin: 0; padding: 0;">' + sLineBreak +
     '<p>Prezado(a) <#dest_nome>,<br/>' + sLineBreak +
     'Segue abaixo os dados de sua NFC-e devidamente' + sLineBreak +
     'autorizada, além da chave de acesso e o link para' + sLineBreak +
     'consulta.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Chave de acesso : <#chavea><br/>' + sLineBreak +
     'Protocolo de autorização : <#protocolo><br/>' + sLineBreak +
     'Link para consulta : <#urlconsulta><br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'ATENÇÃO: Não responda a esta mensagem, pois se trata de um processo automático.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Atenciosamente,<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#emit_nome><br/>' + sLineBreak +
     'Endereço: <#emit_endereco>,' + sLineBreak +
     '<#emit_endereconumero><br/>' + sLineBreak +
     'Cidade: <#emit_cidade> - <#emit_bairro> - <#emit_uf><br/>' + sLineBreak +
     'CNPJ: <#emit_cnpj><br/>' + sLineBreak +
     'Telefone: <#emit_fone><br/></p>' + sLineBreak +
     '</body>' + sLineBreak +
     '</html>';

  /// Mensagem de e-mail padrão para Cancelamento de NFC-e
  MSG_EMAIL_CANCELAMENTO_NFCE = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' + sLineBreak +
     '<html xmlns="http://www.w3.org/1999/xhtml">' + sLineBreak +
     '<head>' + sLineBreak +
     '  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' + sLineBreak +
     '  <title>NFC-e</title>' + sLineBreak +
     '  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>' + sLineBreak +
     '</head>' + sLineBreak +
     '<body style="margin: 0; padding: 0;">' + sLineBreak +
     '<p>Prezado(a) <#dest_nome>,<br/>' + sLineBreak +
     'Segue abaixo os dados de cancelamento do seu NFC-e, contendo' + sLineBreak +
     'a chave de acesso e o link para' + sLineBreak +
     'consulta.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Chave de acesso : <#chavea><br/>' + sLineBreak +
     'Protocolo de cancelamento : <#protocolocancelamento><br/>' + sLineBreak +
     'Link para consulta : <#urlconsulta><br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'ATENÇÃO: Não responda a esta mensagem, pois se trata de um processo automático.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Atenciosamente,<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#emit_nome><br/>' + sLineBreak +
     'Endereço: <#emit_endereco>,' + sLineBreak +
     '<#emit_endereconumero><br/>' + sLineBreak +
     'Cidade: <#emit_cidade> - <#emit_bairro> - <#emit_uf><br/>' + sLineBreak +
     'CNPJ: <#emit_cnpj><br/>' + sLineBreak +
     'Telefone: <#emit_fone><br/></p>' + sLineBreak +
     '</body>' + sLineBreak +
     '</html>';

  /// Mensagem de e-mail padrão para NF-e
  MSG_EMAIL_NFE = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' + sLineBreak +
     '<html xmlns="http://www.w3.org/1999/xhtml">' + sLineBreak +
     '<head>' + sLineBreak +
     '  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' + sLineBreak +
     '  <title>NF-e</title>' + sLineBreak +
     '  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>' + sLineBreak +
     '</head>' + sLineBreak +
     '<body style="margin: 0; padding: 0;">' + sLineBreak +
     '<p>Prezado(a) <#dest_nome>,<br/>' + sLineBreak +
     'Segue abaixo os dados de sua NF-e devidamente' + sLineBreak +
     'autorizada, além da chave de acesso e o link para' + sLineBreak +
     'consulta.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Chave de acesso : <#chavea><br/>' + sLineBreak +
     'Protocolo de autorização : <#protocolo><br/>' + sLineBreak +
     'Link para consulta : <#urlconsulta><br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'ATENÇÃO: Não responda a esta mensagem, pois se trata de um processo automático.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Atenciosamente,<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#emit_nome><br/>' + sLineBreak +
     'Endereço: <#emit_endereco>,' + sLineBreak +
     '<#emit_endereconumero><br/>' + sLineBreak +
     'Cidade: <#emit_cidade> - <#emit_bairro> - <#emit_uf><br/>' + sLineBreak +
     'CNPJ: <#emit_cnpj><br/>' + sLineBreak +
     'Telefone: <#emit_fone><br/></p>' + sLineBreak +
     '</body>' + sLineBreak +
     '</html>';

     /// Mensagem de e-mail padrão para CC-e
  MSG_EMAIL_CCE = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' + sLineBreak +
     '<html xmlns="http://www.w3.org/1999/xhtml">' + sLineBreak +
     '<head>' + sLineBreak +
     '  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' + sLineBreak +
     '  <title>Carta de Correção Eletrônica</title>' + sLineBreak +
     '  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>' + sLineBreak +
     '</head>' + sLineBreak +
     '<body style="margin: 0; padding: 0;">' + sLineBreak +
     '<p>Prezado(a) <#dest_nome>,<br/>' + sLineBreak +
     'Segue abaixo os dados de sua CCE-e devidamente' + sLineBreak +
     'autorizada, além da chave de acesso e o link para' + sLineBreak +
     'consulta.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Chave de acesso : <#chavea><br/>' + sLineBreak +
     'Protocolo de autorização : <#protocolo><br/>' + sLineBreak +
     'Link para consulta : <#urlconsulta><br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'ATENÇÃO: Não responda a esta mensagem, pois se trata de um processo automático.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Atenciosamente,<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#emit_nome><br/>' + sLineBreak +
     'Endereço: <#emit_endereco>,' + sLineBreak +
     '<#emit_endereconumero><br/>' + sLineBreak +
     'Cidade: <#emit_cidade> - <#emit_bairro> - <#emit_uf><br/>' + sLineBreak +
     'CNPJ: <#emit_cnpj><br/>' + sLineBreak +
     'Telefone: <#emit_fone><br/></p>' + sLineBreak +
     '</body>' + sLineBreak +
     '</html>';

  /// Mensagem de e-mail padrão para Cancelamento de NF-e
  MSG_EMAIL_CANCELAMENTO_NFE = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' + sLineBreak +
     '<html xmlns="http://www.w3.org/1999/xhtml">' + sLineBreak +
     '<head>' + sLineBreak +
     '  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' + sLineBreak +
     '  <title>NF-e</title>' + sLineBreak +
     '  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>' + sLineBreak +
     '</head>' + sLineBreak +
     '<body style="margin: 0; padding: 0;">' + sLineBreak +
     '<p>Prezado(a) <#dest_nome>,<br/>' + sLineBreak +
     'Segue abaixo os dados de cancelamento do seu NF-e, contendo' + sLineBreak +
     'a chave de acesso e o link para' + sLineBreak +
     'consulta.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Chave de acesso : <#chavea><br/>' + sLineBreak +
     'Protocolo de cancelamento : <#protocolocancelamento><br/>' + sLineBreak +
     'Link para consulta : <#urlconsulta><br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'ATENÇÃO: Não responda a esta mensagem, pois se trata de um processo automático.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Atenciosamente,<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#emit_nome><br/>' + sLineBreak +
     'Endereço: <#emit_endereco>,' + sLineBreak +
     '<#emit_endereconumero><br/>' + sLineBreak +
     'Cidade: <#emit_cidade> - <#emit_bairro> - <#emit_uf><br/>' + sLineBreak +
     'CNPJ: <#emit_cnpj><br/>' + sLineBreak +
     'Telefone: <#emit_fone><br/></p>' + sLineBreak +
     '</body>' + sLineBreak +
     '</html>';

  /// Mensagem de e-mail padrão para SAT
  MSG_EMAIL_SAT = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' + sLineBreak +
     '<html xmlns="http://www.w3.org/1999/xhtml">' + sLineBreak +
     '<head>' + sLineBreak +
     '  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' + sLineBreak +
     '  <title>SAT</title>' + sLineBreak +
     '  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>' + sLineBreak +
     '</head>' + sLineBreak +
     '<body style="margin: 0; padding: 0;">' + sLineBreak +
     '<p>Prezado(a) <#dest_nome>,<br/>' + sLineBreak +
     'Segue abaixo os dados de seu CF-e-SAT devidamente' + sLineBreak +
     'autorizado, além da chave de acesso e o link para' + sLineBreak +
     'consulta.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Chave de acesso : <#chavea><br/>' + sLineBreak +
     'Link para consulta : <#urlconsulta><br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'ATENÇÃO: Não responda a esta mensagem, pois se trata de um processo automático.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Atenciosamente,<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#emit_nome><br/>' + sLineBreak +
     'Endereço: <#emit_endereco>,' + sLineBreak +
     '<#emit_endereconumero><br/>' + sLineBreak +
     'Cidade: <#emit_cidade> - <#emit_bairro> - <#emit_uf><br/>' + sLineBreak +
     'CNPJ: <#emit_cnpj><br/>' + sLineBreak +
     '</body>' + sLineBreak +
     '</html>';

  /// Mensagem de e-mail padrão para Cancelamento de SAT
  MSG_EMAIL_CANCELAMENTO_SAT = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' + sLineBreak +
     '<html xmlns="http://www.w3.org/1999/xhtml">' + sLineBreak +
     '<head>' + sLineBreak +
     '  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' + sLineBreak +
     '  <title>SAT</title>' + sLineBreak +
     '  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>' + sLineBreak +
     '</head>' + sLineBreak +
     '<body style="margin: 0; padding: 0;">' + sLineBreak +
     '<p>Prezado(a) <#dest_nome>,<br/>' + sLineBreak +
     'Segue abaixo os dados do seu CF-e-SAT cancelado, contendo' + sLineBreak +
     'a chave de acesso e o link para' + sLineBreak +
     'consulta.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Chave de acesso : <#chavea><br/>' + sLineBreak +
     'Link para consulta : <#urlconsulta><br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'ATENÇÃO: Não responda a esta mensagem, pois se trata de um processo automático.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Atenciosamente,<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#emit_nome><br/>' + sLineBreak +
     'Endereço: <#emit_endereco>,' + sLineBreak +
     '<#emit_endereconumero><br/>' + sLineBreak +
     'Cidade: <#emit_cidade> - <#emit_bairro> - <#emit_uf><br/>' + sLineBreak +
     'CNPJ: <#emit_cnpj><br/>' + sLineBreak +
     '</body>' + sLineBreak +
     '</html>';

  /// Mensagem de e-mail padrão para Boleto
  MSG_EMAIL_BOLETO = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' + sLineBreak +
     '<html xmlns="http://www.w3.org/1999/xhtml">' + sLineBreak +
     ' <head>' + sLineBreak +
     '  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' + sLineBreak +
     '  <title>SAT</title>' + sLineBreak +
     '  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>' + sLineBreak +
     '</head>' + sLineBreak +
     '<body style="margin: 0; padding: 0;">' + sLineBreak +
     '<p>Prezado(a) <#sacado_nome>,<br/>' + sLineBreak +
     'Segue(m) anexo(s) o(s) boleto(s) de sua compra.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'ATENÇÃO: Não responda a esta mensagem, pois se trata de um processo automático.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Atenciosamente,<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#emit_nome><br/>' + sLineBreak +
     'Endereço : <#emit_endereco>,' + sLineBreak +
     '<#emit_endereconumero><br/>' + sLineBreak +
     'Cidade : <#emit_cidade> - <#emit_bairro> - <#emit_uf><br/>' + sLineBreak +
     'CNPJ: <#emit_documento><br/>' + sLineBreak +
     '</body>' + sLineBreak +
     '</html>' + sLineBreak;

  MSG_EMAIL_COTACAO = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' + sLineBreak +
     '<html xmlns="http://www.w3.org/1999/xhtml">' + sLineBreak +
     ' <head>' + sLineBreak +
     '  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' + sLineBreak +
     '  <title>Cotação de Produtos</title>' + sLineBreak +
     '  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>' + sLineBreak +
     '</head>' + sLineBreak +
     '<body style="margin: 0; padding: 0;">' + sLineBreak +
     '<p>Prezado(a) <#dest_nome>,<br/>' + sLineBreak +
     'Segue anexado os produtos para os quais desejamos a cotação de preços e condições de entrega e para pagamento.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#Descricao_Produtos><br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Atenciosamente,<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#remet_nome><br/>' + sLineBreak +
     'Endereço : <#remet_endereco>,' + sLineBreak +
     '<#remet_endereconumero><br/>' + sLineBreak +
     'Cidade : <#remet_cidade> - <#remet_bairro> - <#remet_uf><br/>' + sLineBreak +
     'CNPJ: <#remet_documento><br/>' + sLineBreak +
     'Telefone: <#remet_fone><br/></p>' + sLineBreak +
     '</body>' + sLineBreak +
     '</html>' + sLineBreak;

  MSG_EMAIL_COTACAO_VENCEDORA = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' + sLineBreak +
     '<html xmlns="http://www.w3.org/1999/xhtml">' + sLineBreak +
     ' <head>' + sLineBreak +
     '  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' + sLineBreak +
     '  <title>Cotação de Produtos</title>' + sLineBreak +
     '  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>' + sLineBreak +
     '</head>' + sLineBreak +
     '<body style="margin: 0; padding: 0;">' + sLineBreak +
     '<p>Prezado(a) <#dest_nome>,<br/>' + sLineBreak +
     'Comunicamos a cotação por sua empresa foi a escolhida. <br/>' + sLineBreak +
     '' + sLineBreak +
     'Segue a relação dos produtos e quantidades soliticadas:<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#relacao_produtos><br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Atenciosamente,<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#remet_nome><br/>' + sLineBreak +
     'Endereço : <#remet_endereco>,' + sLineBreak +
     '<#remet_endereconumero><br/>' + sLineBreak +
     'Cidade : <#remet_cidade> - <#remet_bairro> - <#remet_uf><br/>' + sLineBreak +
     'CNPJ: <#remet_documento><br/>' + sLineBreak +
     'Telefone: <#remet_fone><br/></p>' + sLineBreak +
     '</body>' + sLineBreak +
     '</html>' + sLineBreak;

  /// Mensagem de e-mail padrão para CT-e
  MSG_EMAIL_CTE = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' + sLineBreak +
     '<html xmlns="http://www.w3.org/1999/xhtml">' + sLineBreak +
     '<head>' + sLineBreak +
     '  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' + sLineBreak +
     '  <title>CT-e</title>' + sLineBreak +
     '  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>' + sLineBreak +
     '</head>' + sLineBreak +
     '<body style="margin: 0; padding: 0;">' + sLineBreak +
     '<p>Prezado(a) <#dest_nome>,<br/>' + sLineBreak +
     'Segue abaixo os dados do seu CT-e devidamente' + sLineBreak +
     'autorizada, além da chave de acesso e o link para' + sLineBreak +
     'consulta.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Chave de acesso : <#chavea><br/>' + sLineBreak +
     'Protocolo de autorização : <#protocolo><br/>' + sLineBreak +
     'Link para consulta : <#urlconsulta><br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'ATENÇÃO: Não responda a esta mensagem, pois se trata de um processo automático.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Atenciosamente,<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#emit_nome><br/>' + sLineBreak +
     'Endereço: <#emit_endereco>,' + sLineBreak +
     '<#emit_endereconumero><br/>' + sLineBreak +
     'Cidade: <#emit_cidade> - <#emit_bairro> - <#emit_uf><br/>' + sLineBreak +
     'CNPJ: <#emit_cnpj><br/>' + sLineBreak +
     'Telefone: <#emit_fone><br/></p>' + sLineBreak +
     '</body>' + sLineBreak +
     '</html>';

  /// Mensagem de e-mail padrão para Cancelamento de CT-e
  MSG_EMAIL_CANCELAMENTO_CTE = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' + sLineBreak +
     '<html xmlns="http://www.w3.org/1999/xhtml">' + sLineBreak +
     '<head>' + sLineBreak +
     '  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' + sLineBreak +
     '  <title>CT-e</title>' + sLineBreak +
     '  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>' + sLineBreak +
     '</head>' + sLineBreak +
     '<body style="margin: 0; padding: 0;">' + sLineBreak +
     '<p>Prezado(a) <#dest_nome>,<br/>' + sLineBreak +
     'Segue abaixo os dados de cancelamento do seu CT-e, contendo' + sLineBreak +
     'a chave de acesso e o link para' + sLineBreak +
     'consulta.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Chave de acesso : <#chavea><br/>' + sLineBreak +
     'Protocolo de cancelamento : <#protocolocancelamento><br/>' + sLineBreak +
     'Link para consulta : <#urlconsulta><br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'ATENÇÃO: Não responda a esta mensagem, pois se trata de um processo automático.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Atenciosamente,<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#emit_nome><br/>' + sLineBreak +
     'Endereço: <#emit_endereco>,' + sLineBreak +
     '<#emit_endereconumero><br/>' + sLineBreak +
     'Cidade: <#emit_cidade> - <#emit_bairro> - <#emit_uf><br/>' + sLineBreak +
     'CNPJ: <#emit_cnpj><br/>' + sLineBreak +
     'Telefone: <#emit_fone><br/></p>' + sLineBreak +
     '</body>' + sLineBreak +
     '</html>';

  /// Mensagem de e-mail padrão para MDF-e
  MSG_EMAIL_MDFE = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' + sLineBreak +
     '<html xmlns="http://www.w3.org/1999/xhtml">' + sLineBreak +
     '<head>' + sLineBreak +
     '  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' + sLineBreak +
     '  <title>MDF-e</title>' + sLineBreak +
     '  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>' + sLineBreak +
     '</head>' + sLineBreak +
     '<body style="margin: 0; padding: 0;">' + sLineBreak +
     '<p>Prezado(a) <#dest_nome>,<br/>' + sLineBreak +
     'Segue abaixo os dados do seu MDF-e devidamente' + sLineBreak +
     'autorizada, além da chave de acesso e o link para' + sLineBreak +
     'consulta.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Chave de acesso : <#chavea><br/>' + sLineBreak +
     'Protocolo de autorização : <#protocolo><br/>' + sLineBreak +
     'Link para consulta : <#urlconsulta><br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'ATENÇÃO: Não responda a esta mensagem, pois se trata de um processo automático.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Atenciosamente,<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#emit_nome><br/>' + sLineBreak +
     'Endereço: <#emit_endereco>,' + sLineBreak +
     '<#emit_endereconumero><br/>' + sLineBreak +
     'Cidade: <#emit_cidade> - <#emit_bairro> - <#emit_uf><br/>' + sLineBreak +
     'CNPJ: <#emit_cnpj><br/>' + sLineBreak +
     'Telefone: <#emit_fone><br/></p>' + sLineBreak +
     '</body>' + sLineBreak +
     '</html>';

  /// Mensagem de e-mail padrão para Cancelamento de MDF-e
  MSG_EMAIL_CANCELAMENTO_MDFE = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' + sLineBreak +
     '<html xmlns="http://www.w3.org/1999/xhtml">' + sLineBreak +
     '<head>' + sLineBreak +
     '  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' + sLineBreak +
     '  <title>MDF-e</title>' + sLineBreak +
     '  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>' + sLineBreak +
     '</head>' + sLineBreak +
     '<body style="margin: 0; padding: 0;">' + sLineBreak +
     '<p>Prezado(a) <#dest_nome>,<br/>' + sLineBreak +
     'Segue abaixo os dados de cancelamento do seu MDF-e, contendo' + sLineBreak +
     'a chave de acesso e o link para' + sLineBreak +
     'consulta.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Chave de acesso : <#chavea><br/>' + sLineBreak +
     'Protocolo de cancelamento : <#protocolocancelamento><br/>' + sLineBreak +
     'Link para consulta : <#urlconsulta><br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'ATENÇÃO: Não responda a esta mensagem, pois se trata de um processo automático.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Atenciosamente,<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#emit_nome><br/>' + sLineBreak +
     'Endereço: <#emit_endereco>,' + sLineBreak +
     '<#emit_endereconumero><br/>' + sLineBreak +
     'Cidade: <#emit_cidade> - <#emit_bairro> - <#emit_uf><br/>' + sLineBreak +
     'CNPJ: <#emit_cnpj><br/>' + sLineBreak +
     'Telefone: <#emit_fone><br/></p>' + sLineBreak +
     '</body>' + sLineBreak +
     '</html>';

  /// Mensagem de e-mail padrão para envio de DAV´s por e-mail
  MSG_EMAIL_DAV = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' + sLineBreak +
     '<html xmlns="http://www.w3.org/1999/xhtml">' + sLineBreak +
     '<head>' + sLineBreak +
     '  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />' + sLineBreak +
     '  <title>MDF-e</title>' + sLineBreak +
     '  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>' + sLineBreak +
     '</head>' + sLineBreak +
     '<body style="margin: 0; padding: 0;">' + sLineBreak +
     '<p>Prezado(a) <#dest_nome>,<br/>' + sLineBreak +
     'Segue em anexo o orçamento solicitado.' + sLineBreak +
     '' + sLineBreak +
     'ATENÇÃO: Não responda a esta mensagem, pois se trata de um processo automático.<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     'Atenciosamente,<br/><br/>' + sLineBreak +
     '' + sLineBreak +
     '<#emit_nome><br/>' + sLineBreak +
     'Endereço: <#emit_endereco>,' + sLineBreak +
     '<#emit_endereconumero><br/>' + sLineBreak +
     'Cidade: <#emit_cidade> - <#emit_bairro> - <#emit_uf><br/>' + sLineBreak +
     'CNPJ: <#emit_cnpj><br/>' + sLineBreak +
     'Telefone: <#emit_fone><br/></p>' + sLineBreak +
     '</body>' + sLineBreak +
     '</html>';

  /// Mensagem das tags disponíveis para NFC-e
  MSG_TAGS_NFCE = 'Tags disponíveis para NFC-e: ' + sLineBreak + sLineBreak +
     '<#dest_nome> - Nome do destinatário' + sLineBreak +
     '<#chavea> - Chave de autorização' + sLineBreak +
     '<#serie> - Série da venda' + sLineBreak +
     '<#numero> - Número da venda' + sLineBreak +
     '<#urlconsulta> - URL do SEFAZ para consulta' + sLineBreak +
     '<#protocolo> - Protocolo de autorização' + sLineBreak +
     '<#dataautorizacao> - Data de autorização' + sLineBreak +
     '<#emit_nome> - Nome do emitente' + sLineBreak +
     '<#emit_endereco> - Endereço do emitente' + sLineBreak +
     '<#emit_endereconumero> - Número do endereço do emitente' + sLineBreak +
     '<#emit_cidade> - Cidade do emitente' + sLineBreak +
     '<#emit_bairro> - Bairro do emitente' + sLineBreak +
     '<#emit_uf> - UF do emitente' + sLineBreak +
     '<#emit_cnpj> - CNPJ do emitente' + sLineBreak +
     '<#emit_fone> - Telefone do emitente';

  /// Mensagem das tags disponíveis para cancelamento de NFC-e
  MSG_TAGS_CANCELAMENTO_NFCE = 'Tags disponíveis para cancelamento de NFC-e: ' + sLineBreak + sLineBreak +
     '<#dest_nome> - Nome do destinatário' + sLineBreak +
     '<#chavea> - Chave de autorização' + sLineBreak +
     '<#serie> - Série da venda' + sLineBreak +
     '<#numero> - Número da venda' + sLineBreak +
     '<#urlconsulta> - URL do SEFAZ para consulta' + sLineBreak +
     '<#protocolo> - Protocolo de autorização' + sLineBreak +
     '<#dataautorizacao> - Data de autorização' + sLineBreak +
     '<#protocolocancelamento> - Protocolo de cancelamento' + sLineBreak +
     '<#datacancelamento> - Data de cancelamento' + sLineBreak +
     '<#emit_nome> - Nome do emitente' + sLineBreak +
     '<#emit_endereco> - Endereço do emitente' + sLineBreak +
     '<#emit_endereconumero> - Número do endereço do emitente' + sLineBreak +
     '<#emit_cidade> - Cidade do emitente' + sLineBreak +
     '<#emit_bairro> - Bairro do emitente' + sLineBreak +
     '<#emit_uf> - UF do emitente' + sLineBreak +
     '<#emit_cnpj> - CNPJ do emitente' + sLineBreak +
     '<#emit_fone> - Telefone do emitente';

  /// Mensagem das tags disponíveis para NF-e
  MSG_TAGS_NFE = 'Tags disponíveis para NF-e: ' + sLineBreak + sLineBreak +
     '<#dest_nome> - Nome do destinatário' + sLineBreak +
     '<#chavea> - Chave de autorização' + sLineBreak +
     '<#serie> - Série da venda' + sLineBreak +
     '<#numero> - Número da venda' + sLineBreak +
     '<#urlconsulta> - URL do SEFAZ para consulta' + sLineBreak +
     '<#protocolo> - Protocolo de autorização' + sLineBreak +
     '<#dataautorizacao> - Data de autorização' + sLineBreak +
     '<#emit_nome> - Nome do emitente' + sLineBreak +
     '<#emit_endereco> - Endereço do emitente' + sLineBreak +
     '<#emit_endereconumero> - Número do endereço do emitente' + sLineBreak +
     '<#emit_cidade> - Cidade do emitente' + sLineBreak +
     '<#emit_bairro> - Bairro do emitente' + sLineBreak +
     '<#emit_uf> - UF do emitente' + sLineBreak +
     '<#emit_cnpj> - CNPJ do emitente' + sLineBreak +
     '<#emit_fone> - Telefone do emitente';

     /// Mensagem das tags disponíveis para CC-e
  MSG_TAGS_CCE = 'Tags disponíveis para CC-e: ' + sLineBreak + sLineBreak +
     '<#dest_nome> - Nome do destinatário' + sLineBreak +
     '<#chavea> - Chave de autorização' + sLineBreak +
     '<#serie> - Série da venda' + sLineBreak +
     '<#numero> - Número da venda' + sLineBreak +
     '<#urlconsulta> - URL do SEFAZ para consulta' + sLineBreak +
     '<#protocolo> - Protocolo de autorização' + sLineBreak +
     '<#dataautorizacao> - Data de autorização' + sLineBreak +
     '<#emit_nome> - Nome do emitente' + sLineBreak +
     '<#emit_endereco> - Endereço do emitente' + sLineBreak +
     '<#emit_endereconumero> - Número do endereço do emitente' + sLineBreak +
     '<#emit_cidade> - Cidade do emitente' + sLineBreak +
     '<#emit_bairro> - Bairro do emitente' + sLineBreak +
     '<#emit_uf> - UF do emitente' + sLineBreak +
     '<#emit_cnpj> - CNPJ do emitente' + sLineBreak +
     '<#emit_fone> - Telefone do emitente';

  /// Mensagem das tags disponíveis para cancelamento de NF-e
  MSG_TAGS_CANCELAMENTO_NFE = 'Tags disponíveis para cancelamento de NF-e: ' + sLineBreak + sLineBreak +
     '<#dest_nome> - Nome do destinatário' + sLineBreak +
     '<#chavea> - Chave de autorização' + sLineBreak +
     '<#serie> - Série da venda' + sLineBreak +
     '<#numero> - Número da venda' + sLineBreak +
     '<#urlconsulta> - URL do SEFAZ para consulta' + sLineBreak +
     '<#protocolo> - Protocolo de autorização' + sLineBreak +
     '<#dataautorizacao> - Data de autorização' + sLineBreak +
     '<#protocolocancelamento> - Protocolo de cancelamento' + sLineBreak +
     '<#datacancelamento> - Data de cancelamento' + sLineBreak +
     '<#emit_nome> - Nome do emitente' + sLineBreak +
     '<#emit_endereco> - Endereço do emitente' + sLineBreak +
     '<#emit_endereconumero> - Número do endereço do emitente' + sLineBreak +
     '<#emit_cidade> - Cidade do emitente' + sLineBreak +
     '<#emit_bairro> - Bairro do emitente' + sLineBreak +
     '<#emit_uf> - UF do emitente' + sLineBreak +
     '<#emit_cnpj> - CNPJ do emitente' + sLineBreak +
     '<#emit_fone> - Telefone do emitente';

  /// Mensagem das tags disponíveis para CT-e
  MSG_TAGS_CTE = 'Tags disponíveis para CT-e: ' + sLineBreak + sLineBreak +
     '<#dest_nome> - Nome do destinatário' + sLineBreak +
     '<#chavea> - Chave de autorização' + sLineBreak +
     '<#serie> - Série da venda' + sLineBreak +
     '<#numero> - Número da venda' + sLineBreak +
     '<#urlconsulta> - URL do SEFAZ para consulta' + sLineBreak +
     '<#protocolo> - Protocolo de autorização' + sLineBreak +
     '<#dataautorizacao> - Data de autorização' + sLineBreak +
     '<#emit_nome> - Nome do emitente' + sLineBreak +
     '<#emit_endereco> - Endereço do emitente' + sLineBreak +
     '<#emit_endereconumero> - Número do endereço do emitente' + sLineBreak +
     '<#emit_cidade> - Cidade do emitente' + sLineBreak +
     '<#emit_bairro> - Bairro do emitente' + sLineBreak +
     '<#emit_uf> - UF do emitente' + sLineBreak +
     '<#emit_cnpj> - CNPJ do emitente' + sLineBreak +
     '<#emit_fone> - Telefone do emitente';

  /// Mensagem das tags disponíveis para cancelamento de CT-e
  MSG_TAGS_CANCELAMENTO_CTE = 'Tags disponíveis para cancelamento de CT-e: ' + sLineBreak + sLineBreak +
     '<#dest_nome> - Nome do destinatário' + sLineBreak +
     '<#chavea> - Chave de autorização' + sLineBreak +
     '<#serie> - Série da venda' + sLineBreak +
     '<#numero> - Número da venda' + sLineBreak +
     '<#urlconsulta> - URL do SEFAZ para consulta' + sLineBreak +
     '<#protocolo> - Protocolo de autorização' + sLineBreak +
     '<#dataautorizacao> - Data de autorização' + sLineBreak +
     '<#protocolocancelamento> - Protocolo de cancelamento' + sLineBreak +
     '<#datacancelamento> - Data de cancelamento' + sLineBreak +
     '<#emit_nome> - Nome do emitente' + sLineBreak +
     '<#emit_endereco> - Endereço do emitente' + sLineBreak +
     '<#emit_endereconumero> - Número do endereço do emitente' + sLineBreak +
     '<#emit_cidade> - Cidade do emitente' + sLineBreak +
     '<#emit_bairro> - Bairro do emitente' + sLineBreak +
     '<#emit_uf> - UF do emitente' + sLineBreak +
     '<#emit_cnpj> - CNPJ do emitente' + sLineBreak +
     '<#emit_fone> - Telefone do emitente';

  /// Mensagem das tags disponíveis para CF-e-SAT
  MSG_TAGS_SAT = 'Tags disponíveis para CF-e-SAT: ' + sLineBreak + sLineBreak +
     '<#dest_nome> - Nome do destinatário' + sLineBreak +
     '<#chavea> - Chave de autorização' + sLineBreak +
     '<#serie> - Série do SAT' + sLineBreak +
     '<#numero> - Número da venda' + sLineBreak +
     '<#urlconsulta> - URL do SEFAZ para consulta' + sLineBreak +
     '<#emit_nome> - Nome do emitente' + sLineBreak +
     '<#emit_endereco> - Endereço do emitente' + sLineBreak +
     '<#emit_endereconumero> - Número do endereço do emitente' + sLineBreak +
     '<#emit_cidade> - Cidade do emitente' + sLineBreak +
     '<#emit_bairro> - Bairro do emitente' + sLineBreak +
     '<#emit_uf> - UF do emitente' + sLineBreak +
     '<#emit_cnpj> - CNPJ do emitente';

  /// Mensagem das tags disponíveis para cancelamento de CF-e-SAT
  MSG_TAGS_CANCELAMENTO_SAT = 'Tags disponíveis para cancelamento de CF-e-SAT: ' + sLineBreak + sLineBreak +
     '<#dest_nome> - Nome do destinatário' + sLineBreak +
     '<#chavea> - Chave de autorização' + sLineBreak +
     '<#serie> - Série do SAT' + sLineBreak +
     '<#numero> - Número da venda' + sLineBreak +
     '<#urlconsulta> - URL do SEFAZ para consulta' + sLineBreak +
     '<#emit_nome> - Nome do emitente' + sLineBreak +
     '<#emit_endereco> - Endereço do emitente' + sLineBreak +
     '<#emit_endereconumero> - Número do endereço do emitente' + sLineBreak +
     '<#emit_cidade> - Cidade do emitente' + sLineBreak +
     '<#emit_bairro> - Bairro do emitente' + sLineBreak +
     '<#emit_uf> - UF do emitente' + sLineBreak +
     '<#emit_cnpj> - CNPJ do emitente';

  /// Mensagem das tags disponíveis para Boleto
  MSG_TAGS_BOLETO = 'Tags disponíveis para Boleto: ' + sLineBreak + sLineBreak +
     '<#sacado_nome> - Nome do sacado' + sLineBreak +
     '<#sacado_documento> - CNPJ/CPF do sacado' + sLineBreak +
     '<#sacado_endereco> - Endereço do sacado' + sLineBreak +
     '<#sacado_endereconumero> - Número do endereço do sacado' + sLineBreak +
     '<#sacado_bairro> - Bairro do sacado' + sLineBreak +
     '<#sacado_cidade> - Cidade do sacado' + sLineBreak +
     '<#sacado_uf> - UF do sacado' + sLineBreak +
     '<#sacado_cep> - CEP do sacado' + sLineBreak +
     '<#emit_nome> - Nome do emitente' + sLineBreak +
     '<#emit_documento> - CNPJ/CPF do emitente' + sLineBreak +
     '<#emit_endereco> - Endereço do emitente' + sLineBreak +
     '<#emit_endereconumero> - Número do endereço do emitente' + sLineBreak +
     '<#emit_bairro> - Bairro do emitente' + sLineBreak +
     '<#emit_cidade> - Cidade do emitente' + sLineBreak +
     '<#emit_uf> - UF do emitente' + sLineBreak +
     '<#emit_cep> - CEP do emitente';

  /// Mensagem das tags disponíveis para Boleto
  MSG_TAGS_COTACAO = 'Tags disponíveis para Cotação: ' + sLineBreak + sLineBreak +
     '<#dest_nome> - Nome do Fornecedor' + sLineBreak +
     '<#Descricao_Produtos> - Produtos a serem cotados' + sLineBreak +
     '<#relacao_produtos> - Relação de produtos vencedores do Fornecedor' + sLineBreak +
     '<#remet_nome> - Nome do remetente' + sLineBreak +
     '<#remet_documento> - CNPJ/CPF do remetente' + sLineBreak +
     '<#remet_endereco> - Endereço do remetente' + sLineBreak +
     '<#remet_endereconumero> - Número do endereço do remetente' + sLineBreak +
     '<#remet_bairro> - Bairro do remetente' + sLineBreak +
     '<#remet_cidade> - Cidade do remetente' + sLineBreak +
     '<#remet_uf> - UF do remetente' + sLineBreak +
     '<#remet_cnpj> - CNPJ do remetente' + sLineBreak +
     '<#remet_fone> - Telefone do remetente';

  (* + sLineBreak +
    '<#documento> - Número do documento' + sLineBreak +
   '<#nossonumero> - Nosso número' + sLineBreak +
   '<#parcela> - Número da parcela' + sLineBreak +
   '<#total_parcelas> - Total de parcelas' + sLineBreak +
   '<#data_vencimento> - Data de vencimento';*)

  // URL para consultar resumo da NF-e emitida em ambiente de produção
  URL_RESUMO_NFE_PRO = 'http://www.nfe.fazenda.gov.br/portal/consulta.aspx?tipoConsulta=resumo&tipoConteudo=d09fwabTnLk=';

  // URL para consultar resumo da NF-e emitida em ambiente de homologação
  URL_RESUMO_NFE_HOM = 'http://hom.nfe.fazenda.gov.br/portal/consulta.aspx?tipoConsulta=resumo&tipoConteudo=d09fwabTnLk=';

  // URL para consultar resumo da CT-e emitida em ambiente de produção
  URL_RESUMO_CTE_PRO = 'http://www.cte.fazenda.gov.br/portal/consulta.aspx?tipoConsulta=resumo&tipoConteudo=d09fwabTnLk=';

  // URL para consultar resumo da CT-e emitida em ambiente de homologação
  URL_RESUMO_CTE_HOM = 'http://hom.cte.fazenda.gov.br/portal/consulta.aspx?tipoConsulta=resumo&tipoConteudo=d09fwabTnLk=';

  // URL para consultar CF-e-SAT
  URL_SAT = 'https://satsp.fazenda.sp.gov.br/COMSAT/Public/ConsultaPublica/ConsultaPublicaCfe.aspx';
  VERSAO_MINIMA_LAYOUT_SAT = 0.07;
  
  TIMEOUT_CONSULTA_PROCESSAMENTO_SAT = 10000; // 10 segundos

  // URL para consulta de recursos do ambiente Administrativos Totali como por exemplo acesso a TTADM
{$IFDEF DEBUG}
  URL_TOTALI_ADM = 'http://ttadm';//'http://monitor.datainfo.inf.br';
  PORTA_TOTALI_ADM = 8080;
{$ELSE}
  URL_TOTALI_ADM = 'http://ttadm';//'http://monitor.datainfo.inf.br';
  PORTA_TOTALI_ADM = 8080;
{$ENDIF}

  // Tamanhos de Campos
  // TODO: Trazer as definições de TTUFNGER e utilizar essa unit em todo o sistema.
  dfTamNumped = 8;
  dfTamNumcre = 9;
  dfTamCodCli = 6;
  dfTamFilCli = 3;
  dfTamCodPro = 5;
  dfTamCodVen = 3;
  dfTamCodPla = 3;
  dfTamCodFil = 3;
  dfTamCodUsu = 3;
  dfTamCodCor = 5;
  dfTamCodMat = 5;
  dfTamCodTam = 5;
  dfTamCodTpr = 5;
  dfTamCodPed = 8;
  dfTamSubSer = 3;
  dfTamNumNot = 9;
  dfTamNumPar = 2;
  dfTamSubPar = 2;
  dfTamNumECF = 3;
  dfTamNumNotVen = 6;
  dfTamNroBco = 3;
  dfTamNumChe = 6;
  dfTamCodSup = 10;
  {srns na Bahia (21/12/99): o Totall Order só aceita código numérico}
  dfTamCodExt = 10;
  dfTamNumDoc = 15;

  dfTamCodQue = 5;
  dfTamCodPer = 5;
  dfTamCodSer = 2;
  dfTamNumSer = 2;

  dfTamCodOrc = 8;
  dfTamNumRes = 8;
  dfTamNumBlo = 8;
  dfTamCodTab = 5;
  dfTamTrn_id = 12;
  dfTamCodSli = 10;

  {Marcadores}
  dfTAB = '<TAB>';
  dfCRLF = '<CR><LF>';

  {srns: Telefonica}
  // Para o Order
  dfPedidoEmAberto = 'A';
  dfPedidoConcluido = 'O';
  dfPedidoFaturado = 'E';
  dfPedidoCancelado = 'C';
  dfPedidoaSerCancelado = 'X';

  dfItemEmAberto = dfPedidoEmAberto;
  dfItemConcluido = dfPedidoConcluido;
  dfItemFaturado = dfPedidoFaturado;
  dfItemCancelado = dfPedidoCancelado;
  dfItemDespachado = 'T';

  dfOrcamento = 'O';
  dfOS = 'S';
  dfPreVenda = 'P';

  dfNomNumSer = 'Nº de Série';
  dfNomNumReg = 'Nº de Registro';
  dfTamCodInv = 10; //MR 14/12/00
  dfTamSequen = 10; //MR 14/12/00
  dfMaxPermis = 1000;

  dfFatura = 'FAT';      // Paulo : 67800
  dfCompra = 'COM';      // Paulo : 67800
  dfCompromisso = 'CPR'; // Paulo : 67800

  {Caracterização} // RFMP 69752
  dfProduto = 'P';
  dfGrade = 'G';
  dfCliente = 'C';
  dfEndereco = 'E';
  dfSet = 'S';
  dfFree = 'F';
  dfGet = 'G';
  dfNomeOrderComPaf = 'DAV/Pré-Venda';
  dfNomeOrderSemPaf = 'DAV';

  {Funcionalidades} // RFMP 72414
  dfFunPreFaturamento = 'a09c';
  dfFunBonusConcedido = 'a09g';
  dfFunEnderecoPreferencial = 'a09h';
  dfFunControleContratos = 'a09i';
  dfFunRegistroAvisoRecebimento = 'a09j';
  dfFunSugerirAoVender = 'a11a';
  dfFunIndisponiveisParaVenda = 'a11b';
  dfFunClassificacaoProdutos = 'a11c';
  dfFunDescontoCC = 'a14a';
  dfFunModeloImposotsNCM = 'a11m';
  dfFunCadMargemTolerancia = 'a121';
  dfFunVendasPerdidas = 'b01a';
  dfFunTipoPagamento = 'b01b';
  dfFunLimiteCredito = 'b11';
  dfFunCreditScore = 'b12';
  dfFunConsultarCupomFiscal = 'c02a';
  dfFunImpressaoCartasEtiquetas = 'c03';
  dfSimulacaoRecebimento = 'c07';
  dfFunHorarios = 'c10';
  dfFunIntegracaoTotall = 'c11';
  dfFunExportacaoMTFiscal = 'c12';
  dfFunSapiens = 'c13';
  dfFunExportacaoHSBC = 'c16';
  dfFunRemessaBESC = 'c17';
  dfFunIntegracaoTKE = 'c20';
  dfFunAutorizacaoPedidos = 'd03';
  dfFunPrecosConcorrentes = 'd07';
  dfFunReajustesPrecos = 'd08';
  dfFunPrecosDiferenciados = 'd12';
  dfFunInventarioMovimentacao = 'e01a';
  dfFunMultiEstoque = 'e13';
  dfFunPlanoOrcamentario = 'f01a';
  dfFunAlterarLancamentoCC = 'f05a';
  dfFunImpressaoBoleto = 'f05b';
  dfFunProgramarContasAPagar = 'f06a';
  dfFunRenegociacaoAReceber = 'f08';
  dfFunConciliacaoBancaria = 'f13';
  dfFunRazaoAuxiliar = 'f15';
  dfFunGerarCobranca = 'g02';
  dfFunGerenciaSPC = 'g07';
  dfFunCombustiveis = 'ia';
  dfFunChequeTroco = 'ia2';
  dfFunFotografias = 'ib';
  dfFunFarmacias = 'ic';
  dfFunOrdemServico = 'id';
  dfFunRestaurantes = 'ie';
  DLLPAFECF = 'PAFECF.DLL';
  dfTamAssuntoEmail = 250; // RFMP 99186

  // Processo de Importação
  MOTIVO_OK = 'OK';

  // Dados do Emitente para utilização em laboratório
  TOTALLSISTEMAS_RAZAOSOCIAL_LAB = 'TOTALI SISTEMAS';
  TOTALLSISTEMAS_FANTASIA_LAB = 'TOTALI';
  TOTALLSISTEMAS_CNPJ_LAB = '04303719000152';
  TOTALLSISTEMAS_IE_LAB = '254350518';

  //  TOTALLSISTEMAS_RAZAOSOCIAL_LAB = 'PLX SISTEMAS EIRELI ME';
  //  TOTALLSISTEMAS_FANTASIA_LAB = 'PLX';
  //  TOTALLSISTEMAS_CNPJ_LAB = '24691873000156';
  //  TOTALLSISTEMAS_IE_LAB = '257980601';

  // Dados do Desenvolvedor "Totall Sistema"
  TOTALLSISTEMAS_RAZAOSOCIAL = 'TOTALL SISTEMAS LTDA';
  TOTALLSISTEMAS_FANTASIA = 'TOTALL';
  TOTALLSISTEMAS_CNPJ = '04303719000152';
  TOTALLSISTEMAS_IE = '254350518';
  TOTALLSISTEMAS_IM = '69006';
  TOTALLSISTEMAS_CEP = '89035200';
  TOTALLSISTEMAS_LOGRADOURO = 'Rua Joinville';
  TOTALLSISTEMAS_NUMERO = '308';
  TOTALLSISTEMAS_COMPLEMENTO = 'Sala 201';
  TOTALLSISTEMAS_COMPLEMENTO2 = '2º Andar';
  TOTALLSISTEMAS_BAIRRO = 'Vila Nova';
  TOTALLSISTEMAS_IBGEMUNICIPIO = 4202404;
  TOTALLSISTEMAS_MUNICIPIO = 'Blumenau';
  TOTALLSISTEMAS_IBGEESTADO = 42;
  TOTALLSISTEMAS_ESTADO = 'SC';
  TOTALLSISTEMAS_ESTADO_NFE = 'SC';         //Estado do Ambiente de Homologação da Totall para NFe
  TOTALLSISTEMAS_ESTADO_NFCE = 'AM';        //Estado do Ambiente de Homologação da Totall para NFCe
  TOTALLSISTEMAS_TOKEN_NFCE = '0123456789'; //Token Padrão para o Ambiente de Homologação da Totall para NFCe
  TOTALLSISTEMAS_IDTOKEN_NFCE = '000001';   //IdToken Padrão para o Ambiente de Homologação da Totall para NFCe
  TOTALLSISTEMAS_IBGEPAIS = 1058;
  TOTALLSISTEMAS_PAIS = 'Brasil';
  TOTALLSISTEMAS_FONE1 = '+55 (47) 3308-3563';
  TOTALLSISTEMAS_FONE2 = '+55 (47) 3308-3563';
  TOTALLSISTEMAS_WEBSITE = 'www.totali.inf.br';
  TOTALLSISTEMAS_CONTATO = 'Edilson Paterno';
  TOTALLSISTEMAS_CONTATO_EMAIL = 'edilson@totall.com.br';
  TOTALLSISTEMAS_CONTATO_FONE = '4733083563';
  TOTALLSISTEMAS_NOMESISTEMA = 'Totali Commerce';


  // Identificação da versão de Requisitos do PAF-ECF
  VERSAO_REQUISITOS_PAFECF = '0206';

  // Dados do Desenvolvedor "EME4 Sistemas"
  EME4SISTEMAS_NOMESISTEMA = 'EME4 Sistemas';
  EME4SISTEMAS_WEBSITE = 'www.eme4.inf.br';
  EME4SISTEMAS_CNPJ = '20346619000160';
  EME4SISTEMAS_CONTATO = 'Marcio Goncalves';
  EME4SISTEMAS_CONTATO_EMAIL = 'sistema.nfe@eme4.inf.br';
  EME4SISTEMAS_CONTATO_FONE = '4730412400';

  // Dados do Desenvolvedor "Totali Sistema"
  TOTALISISTEMAS_RAZAOSOCIAL = 'TOTALI SISTEMAS EIRELI';
  TOTALISISTEMAS_FANTASIA = 'TOTALI';
  TOTALISISTEMAS_CNPJ = '19871366000164';
  TOTALISISTEMAS_IE = '260826294';
  TOTALISISTEMAS_IM = '105043';
  TOTALISISTEMAS_CEP = '89015540';
  TOTALISISTEMAS_LOGRADOURO = 'Rua Alfredo Kaestner';
  TOTALISISTEMAS_NUMERO = '562';
  TOTALISISTEMAS_COMPLEMENTO = '1º Andar';
  TOTALISISTEMAS_COMPLEMENTO2 = '';
  TOTALISISTEMAS_BAIRRO = 'Vorstadt';
  TOTALISISTEMAS_IBGEMUNICIPIO = 4202404;
  TOTALISISTEMAS_MUNICIPIO = 'Blumenau';
  TOTALISISTEMAS_IBGEESTADO = 42;
  TOTALISISTEMAS_ESTADO = 'SC';
  TOTALISISTEMAS_ESTADO_NFE = 'SC';         //Estado do Ambiente de Homologação da Totall para NFe
  TOTALISISTEMAS_ESTADO_NFCE = 'AM';        //Estado do Ambiente de Homologação da Totall para NFCe
  TOTALISISTEMAS_TOKEN_NFCE = '0123456789'; //Token Padrão para o Ambiente de Homologação da Totall para NFCe
  TOTALISISTEMAS_IDTOKEN_NFCE = '000001';   //IdToken Padrão para o Ambiente de Homologação da Totall para NFCe
  TOTALISISTEMAS_IBGEPAIS = 1058;
  TOTALISISTEMAS_PAIS = 'Brasil';
  TOTALISISTEMAS_FONE1 = '+55 (47) 3308-3563';
  TOTALISISTEMAS_FONE2 = '+55 (47) 0800 765 5540';
  TOTALISISTEMAS_WEBSITE = 'www.totali.inf.br';
  TOTALISISTEMAS_CONTATO = 'Ana Paula Gonçalves';
  TOTALISISTEMAS_CONTATO_EMAIL = 'ana.goncalves@linsper.com.br';
  TOTALISISTEMAS_CONTATO_FONE = '4733083563';
  TOTALISISTEMAS_NOMESISTEMA = 'Totali Commerce';
  TOTALISISTEMAS_NOMEMODULO = 'Totali Middleware Servidor Web';

  // Identificões
  TEF_MensagemPermanentePinPadPadrao = 'TOTALI SISTEMAS';

  // Identificações do diretorios Base
  DIRETORIO_BOLETO = '\Boleto';
  DIRETORIO_BOLETO_REMESSA = DIRETORIO_BOLETO + '\Remessa';
  DIRETORIO_BOLETO_RETORNO = DIRETORIO_BOLETO + '\Retorno';
  DIRETORIO_BOLETO_PDF = DIRETORIO_BOLETO + '\PDF';
  DIRETORIO_IMAGENS = '\images';
  DIRETORIO_BOLETO_LOGO = DIRETORIO_IMAGENS + '\LogoBoleto';
  DIRETORIO_BOLETO_LOGO_COLORIDO = DIRETORIO_BOLETO_LOGO + '\Colorido';
  DIRETORIO_BOLETO_LOGO_PRETOBRANCO = DIRETORIO_BOLETO_LOGO + '\PretoBranco';
  DIRETORIO_REPORT = '\Report';
  DIRETORIO_REPORT_DAV = DIRETORIO_REPORT + '\DAV';
  DIRETORIO_REPORT_DAVOS = DIRETORIO_REPORT + '\DAVOS';
  DIRETORIO_REPORT_ETIQUETA = DIRETORIO_REPORT + '\ETIQUETA';
  DIRETORIO_REPORT_ETIQUETA_CLIENTE = DIRETORIO_REPORT_ETIQUETA + '\CLIENTE';
  DIRETORIO_REPORT_ETIQUETA_VOLUMES = DIRETORIO_REPORT_ETIQUETA + '\VOLUMES';
  DIRETORIO_REPORT_ORDEM_DE_SEPARACAO = DIRETORIO_REPORT + '\OrdemDeSeparacao';
  DIRETORIO_REPORT_ORDEM_DE_SEPARACAO_DAV = DIRETORIO_REPORT_ORDEM_DE_SEPARACAO + '\DAV';
  DIRETORIO_REPORT_FICHA_PARCEIRO = DIRETORIO_REPORT + '\FichaParceiro';
  DIRETORIO_REPORT_DECLARACAO_TRANSPORTE = DIRETORIO_REPORT + '\DeclaracaoTransporte';
  DIRETORIO_LOGS = '\Logs';
  DIRETORIO_PDF = '\PDF';
  DIRETORIO_PDF_NFSE = DIRETORIO_PDF + '\NFSe';
  DIRETORIO_TEMP = '\Temp';

  DIRETORIO_NFSE_REPORT = DIRETORIO_REPORT + '\NFSe';

  // Constantes para NF-e
  CODIGO_BRASIL: Integer = 1058;
  CMUN_EXTERIOR: Integer = 9999999;
  XMUN_EXTERIOR: string = 'EXTERIOR';
  UF_EXTERIOR: string = 'EX';
  VERSAO_DFE: string = '4.00'; // Origem "Unit - pcnConversaoNFe >>> Função - StrToVersaoDF"

  //Constantes para CT-e
  VERSAO_DFE_CTE: string = '4.00'; // Origem "Unit - pcteConversaoCTe >>> Função - StrToVersaoCTe"

  //Constantes para MDF-e
  VERSAO_DFE_MDFE: string = '3.00'; // Origem "Unit - pmdfeConversaoMDFe >>> Função - StrToVersaoMDFe"

  // Mensagem para executável BETA
  MSG_VERSAO_BETA = 'ESTE PROGRAMA ESTÁ NA VERSÃO BETA.' + sLineBreak + sLineBreak +
     'NÃO PODE SER USADO FORA DOS LABORATÓRIOS DA TOTALI SISTEMAS' + sLineBreak + sLineBreak +
     'SOLICITE UMA OUTRA VERSÃO.';

  NOME_SERVICO_MIDDLEWARE = 'srTotallMiddlewareService';
  NOME_SERVICO_MIDDLEWARE_CHECKOUT = 'srTotallMiddlewareCheckout';

  // Código de Retorno para comunicação com Devices via WebService SOAP
  dfCodigoRetornoErro: Integer = -1;
  dfCodigoRetornoErroComunicacao: Integer = 0;
  dfCodigoRetornoOK: Integer = 1;

  dfTimeoutConnectPadrao = 30000;      // 30 segundos
  dfTimeoutNFePadrao = 30000;          // 30 segundos
  dfTimeoutNFCePadrao = 3000;          // 3 segundos
  dfTimeoutPosControlePadrao = 120000; // 120 segundos
  dfTimeoutSkyhubPadrao = 10000;       // 10 segundos
  dfTimeoutMercosPadrao = 120000;      // 120 segundos
  dfTimeoutN49Padrao = 120000;         // 120 segundos
  dfTimeoutConsistemPadrao = 120000;   // 120 segundos
  dfTimeoutMagazordPadrao = 120000;    // 120 segundos
  dfTimeoutGimplusPadrao = 120000;     // 120 segundos
  dfTimeoutFRAGAPadrao = 120000;       // 120 segundos
  dfTimeoutWebStorePadrao = 120000;    // 120 segundos

  NumeroMaximoDownloadXMLSefaz = 20;
  IntervaloEntreDownloadXMLSefaz = 1;

  BR_UF: array [0 .. 26] of string = (
    'AC', // Acre
    'AL', // Alagoas
    'AM', // Amazonas
    'AP', // Amapá
    'BA', // Bahia
    'CE', // Ceará
    'DF', // Distrito Federal
    'ES', // Espírito Santo
    'GO', // Goiás
    'MA', // Maranhão
    'MG', // Minas Gerais
    'MS', // Mato Grosso do Sul
    'MT', // Mato Grosso
    'PA', // Pará
    'PB', // Paraíba
    'PE', // Pernambuco
    'PI', // Piauí
    'PR', // Paraná
    'RJ', // Rio de Janeiro
    'RN', // Rio Grande do Norte
    'RO', // Rondônia
    'RR', // Roraima
    'RS', // Rio Grande do Sul
    'SC', // Santa Catarina
    'SE', // Sergipe
    'SP', // São Paulo
    'TO'  // Tocantins
     );

  arrayTabelas: array [1 .. 11] of string = (
     'TT_CLI',
     'TT_CLIXFIL',
     'TT_CBP',
     'TT_CON',
     'TT_DESXCLI',
     'TT_END',
     'TT_LIM',
     'TT_LIMXFIL',
     'TT_SPC',
     'TT_RFC',
     'TT_VEI'
  );

  arrayCodigoTabelas: array [1 .. 11] of string = (
     'CLI ',
     'CFIL',
     'CBP ',
     'CON ',
     'DSC ',
     'EDE ',
     'LIM ',
     'LXF ',
     'SPC ',
     'TRFC',
     'VEI '
  );

  arrayDescricaoTabelas: array [1 .. 11] of string = (
     'Clientes ',
     'Dados FTP Fornecedor',
     'Ct. Bancária Cliente ',
     'Contatos ',
     'Desconto por Cliente ',
     'Endereços ',
     'Limite C/C ',
     'TT_LIMXFIL ',
     'Pessoa Física ',
     'Referências Crédito',
     'Veículos '
  );

  CERTIFICADO_NUMERO_SERIE_INVALIDO = '0000000000';
  CERTIFICADO_CNPJ_INVALIDO = '00000000000000';
  CERTIFICADO_DATA_VENCIMENTO_INVALIDO = '00/00/0000';

  // Array para definir regras de validação que serão utilizadas nos objetos de banco da Guarda (triggers, funções, etc.).
  // Para criar uma nova regra:
  // - Incrementar o tamanho do array
  // - Adicionar nova linha, definindo o Código e Mensagem da regra
  DBRegrasValidacao: array [1 .. 2] of TDBRegrasValidacao =
     (
    (Codigo: 'RV-00001'; Mensagem: 'Guarda autorizada não pode ser alterada, apenas cancelada.'),
    (Codigo: 'RV-00002'; Mensagem: 'Guarda inutilizada não pode ser alterada.')
     );

  // Define o número máximo de ocorrências que pode ocorrer para os retornos de envio de uma nota
  MAX_RETORNOS_OCORRENCIAS = 20;
  MAX_RETORNOS_OCORRENCIAS_SAT = 20;

  // Número de ECF padrão para operações de retaguarda
  NUMECF_Padrao_Retaguarda = '000';

  // Código Padrão para Parceiro Filial
  PARCEIRO_CODIGO_FILIAL = '     0';

  // Lista de Tabelas da Integração EME4
  TABELAS_INTEGRACAO_EME4 = 'TIMU_BANCO,TIMU_CLIENTE,TIMU_PARAMTRIBCLI,TIMU_PRODUTO,TIMU_FORNECEDOR,TIMU_PARAMTRIBFOR,TIMU_REPRESENTANTE,' + // Tabelas Principais de Cadastro
     'TIMU_DOCUMENTO,TIMU_PARTEDOCTOOPERA,TIMU_LIQUIDACAODOCTO,TIMU_PARTEDOCTOCONHECEFRETE,' + // Tabelas de Movimentação
     'TIMU_ARRECADACAOREFERENCIADO,TIMU_PARTEDOCTOCONTAFIN,TIMU_CENTROCUSTOFINANCEIRO,TIMU_PROCESSOIMPORT,' + // Tabelas de Movimentação
     'TIMU_MOVCTB,TIMU_CCUSTOMOVCTB,' + // Tabelas de Movimentação Contábil
     'TIMU_REDUCAOZ,' +         // Tabelas de Movimentação de Redução Z
     'TIMU_REGISTROPRODUCAO,' + // Tabelas de Movimentação de Produção Própria
     'TIMU_INVENTARIO';         // Tabelas de Inventário

  dfTamBlocoCommitCadastro = 500; // Tamanho do Bloco de Registros para Commit na integração de Cadastro

  MIDDLEWARE_ACCESS_USERNAME = 'totali';
  MIDDLEWARE_ACCESS_PASSWORD = 'c50db303f07cb6cf2942431b7d78e442'; // MD5 para Chave "totali_112233"
  MIDDLEWARE_PASSWORD_JWT = 'MIDDLEWARE_PASSWORD_JWT';
  MIDDLEWARE_PATH_VERSAO_V1 = 'v1';
  MIDDLEWARE_PATH_PUBLIC = 'public';
  MIDDLEWARE_PATH_PUBLIC_V1 = MIDDLEWARE_PATH_PUBLIC + '/' + MIDDLEWARE_PATH_VERSAO_V1;
  MIDDLEWARE_PATH_PRIVATE = 'private';
  MIDDLEWARE_PATH_PRIVATE_V1 = MIDDLEWARE_PATH_PRIVATE + '/' + MIDDLEWARE_PATH_VERSAO_V1;
  MIDDLEWARE_AutoStartSession = True;
  MIDDLEWARE_SessionState = True;
  MIDDLEWARE_SessionTimeOut = 600000;
  MIDDLEWARE_TerminateWaitTime = 5000;
  MIDDLEWARE_Socket_ReadTimeout = 1200000;
  MIDDLEWARE_KeepAlive = True;
  MIDDLEWARE_ListenQueue = 25;
  MIDDLEWARE_MaxConnections = 1000;

  // Certificado SSL
  MIDDLEWARE_Certificado_Key = 'cert_totali.key';
  MIDDLEWARE_Certificado_PVK =  '-----BEGIN PRIVATE KEY-----' + sLineBreak +
                                'MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDfxYV45a5QXC5L' + sLineBreak +
                                'Zr748Zns6ahDRRL2DZlSUIcEnUC7ye3apBC164JRURrL5jQWxvL2D/rtry9MbH1g' + sLineBreak +
                                'Hs6Pnfm2+mVAVaErwnbBwHs2ZtMFQcae3QLeCtfBwc45sVU6u1lKL6fCADxZWMP3' + sLineBreak +
                                'pf8ozEne1VxU9R6YIe7aH8I5oGZdHt7F4iOEZSrcVT+RfrPUyPowi8iP/pnzEQ3/' + sLineBreak +
                                'O1KIaJFkdaaHY3DIScrKdjZfVmUvOYbaQmVm++TRAzyQ2MkfmYHFe30HOKqCkLMp' + sLineBreak +
                                'tXECnzv+7cB4ZzzSFLC8vj92Hsm1TLrgfU6UjRF/UNboILIwwQwEJbsMDsqsZ6Xe' + sLineBreak +
                                '+ECJfCFtAgMBAAECggEAHGxl/kvKXvm+haRY6J0jrKSnU1ggRvHGQl7pL4xb7x6A' + sLineBreak +
                                'oG+LkdgG1xZivXiRsDz4GopAGNXSP7ZeHIn9Od/amsPmfYwC62CJniW5YNkhv76x' + sLineBreak +
                                'oHc5SIP/EOTxsYFVbp7ighpYiDtobv7n8Xp71S5RycS3NDFof/F7eehjztcReY1X' + sLineBreak +
                                '6zhNjaKfceXIBuDYkxzscbe62YbXIVkd9JXBEEXs8SPClfh0vdt9ZL6lCmpqbXTK' + sLineBreak +
                                'm+oA5FICAGYAjm4rvveeywzNucX0UmIK5pWbjg36ET8T75ixEKeTzlsmbElW0zGw' + sLineBreak +
                                'R4q0Q9vmoKzTgmyNSDLwXS6DA3P3Rk9ixT2R0foj7wKBgQD5Ng3yy68Aq6N/zfLz' + sLineBreak +
                                'tAgjJXb9S1pDiGxMkTzh+S9CmtiUQvhPpheHz++yaVhdznXLVTHMqYYDM1wJeiuH' + sLineBreak +
                                'ZsHbwscyXrRCWX0+h93yNa7b1qoSr7uLFWmzCbAoSUo2OGjuMsi6rmGbNwD4eY9h' + sLineBreak +
                                'UZZXiyDURyax5nRGbpfzyrE2iwKBgQDl3g6BFHjPl6mWKoJvFKrlck/1vrViksyC' + sLineBreak +
                                'ZWBxks6PEuf6Tcv2fEdpZZL2JLji7LpxdhHJXYfkdpzSa3xHHWhQ6bMNlMycbfNb' + sLineBreak +
                                'RdRqb/Ufhhn5A8XzuK5cENoQXYjQTNK3nw1hvVshBL/8tywx7Up0gO0niQQ+Z+tv' + sLineBreak +
                                'qDZh0yL+5wKBgQDyu0SgvOVKmOMaQ6Wk2zCl0wLvuWpEpucdOMV9MHFoxVu4JPao' + sLineBreak +
                                '1ZTLsqu8McFhNQwkrWlg96lRCsBVdspZCqw9eZz9oaKfkXxc4Ic8OC+FbrOemc3o' + sLineBreak +
                                'rUWTnhcXVjNTVmRVxd8ffWQSg2ONoREXcBkoUZn7SQYWdunABE46pa0v+wKBgQCj' + sLineBreak +
                                'cmnNzsi4k5a6eC+W3JNH4yiIDLrdBJT2gy84krLdeQwKJxdIhMYiY19ENohgkwNf' + sLineBreak +
                                'ehzbme3uvYh09oi/6GEsZ4AxwARdlrDbzaNkq4cYizocnlo7Gq6gODtWN6v4sSeD' + sLineBreak +
                                '+UyCmyoZKE97WqPKPHgcry/yVLL3zNzT4EAK/x57MQKBgQDNYaeJFeA+dbhQMHWM' + sLineBreak +
                                'VPBDOKkN4lu+087NgVdwZeXAWyugI/EKta384Fi4S5ZUMGSBrhrPnqanV9RN0UYu' + sLineBreak +
                                'F5dIH7nwIzdbrjtOwV0k0TkwX4NL+RM6yd79kZsT67MLtg9E9bawmSbEZwjaaTfX' + sLineBreak +
                                'F0oTryoQMrq+geS0cIY1PyfqlQ==' + sLineBreak +
                                '-----END PRIVATE KEY-----';
  MIDDLEWARE_Certificado_Crt = 'cert_totali.crt';
  MIDDLEWARE_Certificado_PBK =  '-----BEGIN CERTIFICATE-----' + sLineBreak +
                                'MIID8zCCAtugAwIBAgIUUlfHUPs6vfp3SjkqEa+u/vhy8bYwDQYJKoZIhvcNAQEL' + sLineBreak +
                                'BQAwgYgxCzAJBgNVBAYTAkJSMRcwFQYDVQQIDA5TYW50YSBDYXRhcmluYTERMA8G' + sLineBreak +
                                'A1UEBwwIQmx1bWVuYXUxHTAbBgNVBAoMFFRvdGFsaSBTaXN0ZW1hcyBMVERBMR0w' + sLineBreak +
                                'GwYDVQQLDBRUb3RhbGkgU2lzdGVtYXMgTFREQTEPMA0GA1UEAwwGVG90YWxpMB4X' + sLineBreak +
                                'DTIzMTEyODAwNDgwOVoXDTI0MTEyNzAwNDgwOVowgYgxCzAJBgNVBAYTAkJSMRcw' + sLineBreak +
                                'FQYDVQQIDA5TYW50YSBDYXRhcmluYTERMA8GA1UEBwwIQmx1bWVuYXUxHTAbBgNV' + sLineBreak +
                                'BAoMFFRvdGFsaSBTaXN0ZW1hcyBMVERBMR0wGwYDVQQLDBRUb3RhbGkgU2lzdGVt' + sLineBreak +
                                'YXMgTFREQTEPMA0GA1UEAwwGVG90YWxpMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A' + sLineBreak +
                                'MIIBCgKCAQEA38WFeOWuUFwuS2a++PGZ7OmoQ0US9g2ZUlCHBJ1Au8nt2qQQteuC' + sLineBreak +
                                'UVEay+Y0Fsby9g/67a8vTGx9YB7Oj535tvplQFWhK8J2wcB7NmbTBUHGnt0C3grX' + sLineBreak +
                                'wcHOObFVOrtZSi+nwgA8WVjD96X/KMxJ3tVcVPUemCHu2h/COaBmXR7exeIjhGUq' + sLineBreak +
                                '3FU/kX6z1Mj6MIvIj/6Z8xEN/ztSiGiRZHWmh2NwyEnKynY2X1ZlLzmG2kJlZvvk' + sLineBreak +
                                '0QM8kNjJH5mBxXt9BziqgpCzKbVxAp87/u3AeGc80hSwvL4/dh7JtUy64H1OlI0R' + sLineBreak +
                                'f1DW6CCyMMEMBCW7DA7KrGel3vhAiXwhbQIDAQABo1MwUTAdBgNVHQ4EFgQUqx49' + sLineBreak +
                                'KvPynR0NOYeqDsWeAxICRkkwHwYDVR0jBBgwFoAUqx49KvPynR0NOYeqDsWeAxIC' + sLineBreak +
                                'RkkwDwYDVR0TAQH/BAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEAH97xBHWwJTTa' + sLineBreak +
                                'lffICn/uNuWzIYA0hrTAxr+juOdZS9erxFIYNf53DpoofNqtUeMMP2jso+/sLO/Q' + sLineBreak +
                                '22MefhNoUlSxB2gTH0e+Xqr+AfShQtN5Y9QWCVjiwxpUav04I39e9LDf4j1nVMUe' + sLineBreak +
                                'eeyIOhidgWW/BLsVwASh/UGzsAKYF7DkNAcYKMxzgdhVfxfQqzPY32NEMn/OVBZt' + sLineBreak +
                                'y/0tKQDk22P/cfa9Jl7YK+mmUoh/lAdULfz2CYvPWnr7kMSRCCorTDNVDvjlowN0' + sLineBreak +
                                'Bu7PeRJrwEmFu+Rd+vpoMpQyJWeJ53SBxLfnDQymNdJCPNge7TXFHjULuWZiC+Wg' + sLineBreak +
                                'eAhH5KCMaw==' + sLineBreak +
                                '-----END CERTIFICATE-----';

  //Integrações com parâmetros de Conexões privadas
  WEBSTORE_ACESSKEY = '73751fa59c3cfa96c7d3330adb106066-2e388c35832cce9544befb5d3d3055c0';
  WEBSTORE_ACESSSECRET = '4dc3ed26a29c9c3df3ec373524377a5b-12e59a33dea1bf0630f46edfe13d6ea2';

  dfLogFileName_CallWebService = 'TCallWebService.log';
  dfLogFileName_Carga = 'TServicoCarga.log';



implementation

end.
