{**
 * Unit para conversões para enumeradores e outros domínios do ACBr.
 *
 * Nessa unit podemos incluir conversões de dados do sistema para domínios do ACBr.
 * O mais comum é realizar a conversão entre enumeradores do sistema e enumeradores do ACBr.
 *
 * Manutenções:
 *
 * Customizações:
 *
 * @Author  Totall Sistemas Ltda
 *}
unit TTUConversoesACBr;

interface

uses
  System.SysUtils,
  pcnConversao,
  pcnConversaoNFe,
  ACBrNFSeXConversao,
  ACBrSATClass,
  ACBrBoletoConversao,
  ACBrBoleto,
  ACBrDeviceSerial,
  ACBrDevice,
  ACBrETQ,
  ACBrETQClass,
  TTUEnumeradores,
  pcteConversaoCTe,
  ACBrEFDBlocos;

type
  TConvACBr = class
  public
    class function ConverteAcessoDLL(const pAcessoDLL: TEnumAcessoDLL): TACBrSATModelo;
    class function ConverteAmbienteSEFAZ(const pAmbiente: TEnumAmbienteSEFAZ): TpcnTipoAmbiente;
    class function ConverteMeioPagamento(const pMeioPagamento: TEnumTipoPagamento): TpcnCodigoMP;
    class function ConverteFormaPagamento(const pMeioPagamento: TEnumTipoPagamento): TpcnFormaPagamento;
    class function ConverteCSTDeICMS(const pCST: string): TpcnCSTIcms;
    class function ConverteCSOSNDeICMS(const pCSOSN: string): TpcnCSOSNIcms;
    class function ConverteOrigemProduto(const pOrigemProduto: Integer): TpcnOrigemMercadoria;
    class function ConverteCSTDePIS(const pCST: string): TpcnCstPis;
    class function ConverteCSTDeCOFINS(const pCST: string): TpcnCstCofins;
    class function ConverteBandeiraCartao(const pValor: TEnumBandeiraCartao): TpcnBandeiraCartao;
    class function ConverteTipoIntegracaoPagamento(const pValor: TEnumTipoIntegracaoPagamento): TtpIntegra;
    class function ConverteModeloDocFiscal(const pModelo: TEnumModeloDocumento): TpcnModeloDF;
    class function ConverteModeloDocFiscalCTe(const pModelo: TEnumModeloDocumento): TModeloCTe;
    class function ConverteIndicadorPresenca(const pValor: TEnumIndicadorPresenca): TpcnPresencaComprador;
    class function ConverteIdDestinoOperacao(const pValor: TEnumIdDestinoOperacao): TpcnDestinoOperacao;
    class function ConverteFinalidadeNFe(const pValor: TEnumFinalidadeNFe): TpcnFinalidadeNFe;
    class function ConverteTipoDocumentoFiscal(const pValor: TEnumTipoDocumentoFiscal): TpcnTipoNFe;
    class function ConverteModalidadeBC(const pValor: TEnumModalidadeBC): TpcnDeterminacaoBaseIcms;
    class function ConverteModalidadeBCST(const pValor: TEnumModalidadeBCST): TpcnDeterminacaoBaseIcmsST;
    class function ConverteModeloFiscalCFRef(const pValor: TEnumModeloFiscalCFRef): TpcnECFModRef;
    class function ConverteModeloFiscalNFRef(const pValor: TEnumModeloFiscalNFRef): TpcteModeloNF;
    class function ConverteTipoParceiro(const pValor: TEnumTipoParceiro): TACBrPessoa;
    class function ConverteTipoParceiroCedente(const pValor: TEnumTipoParceiro): TACBrPessoaCedente;
    class function ConverteTipoDocumento(const pValor: TEnumTipoDocumentoTituloBancario): TACBrTipoDocumento;
    class function ConverteTipoCarteira(const pValor: TEnumTipoCarteiraTituloBancario): TACBrTipoCarteira;
    class function ConverteResponEmissao(const pValor: TEnumResponEmissaoTituloBancario): TACBrResponEmissao;
    class function ConverteBolLayOut(const pValor: TEnumLayoutBoleto): TACBrBolLayOut;
    class function ConverteTipoEmissao(const pValor: TEnumTipoEmissao): TpcnTipoEmissao; overload;
    class function ConverteTipoEmissao(const pValor: TpcnTipoEmissao): TEnumTipoEmissao; overload;
    class function ConverteRegimeTributario(const pValor: TEnumRegimeTributario): TpcnCRT;
    class function ConverteExigibilidadeISS(const pValor: TEnumExigibilidadeISS): TnfseExigibilidadeISS;
    class function ConverteRegTriEspNFSe(const pValor: TEnumRegTriEspNFSe): TnfseRegimeEspecialTributacao;
    class function ConverteNaturezaOuOperacaoDaNFSe(const pValor: TEnumNaturezaOuOperacaoDaNFSe): ACBrNFSeXConversao.TOperacao;
    class function ConverteTipoDeTributacaoServico(const pValor: TEnumTipoDeTributacaoServico): TTributacao;
    class function ConverteTipoTributacaoRPS(const pValor: TEnumTipoDeTributacaoServico; const pNoMunicipio: Boolean): TTipoTributacaoRPS;
    class function ConverteRegimeTributarioSAT(const pValor: TEnumRegimeTributario): TpcnRegTrib;
    class function ConverteDPIImpressora(const pValor: TEnumDPIImpressora): TACBrETQDPI;
    class function ConverteTipoComunicacaoImpressora(const pValor: TEnumTipoComunicacaoImpressora): TACBrETQModelo;
    class function ConverteUnidadeImpressora(const pValor: TEnumUnidadeImpressora): TACBrETQUnidade;
    class function ConverteOrientacaoEtiqueta(const pValor: TEnumOrientacaoEtiqueta): TACBrETQOrientacao;
    class function ConverteTipoCodBarraImpressora(const pValor: TEnumTipoCodBarraImpressora): TACBrTipoCodBarra;
    class function ConverteExibeCodigoBarraEtiqueta(const pValor: TEnumExibeCodigoBarraEtiqueta): TACBrETQBarraExibeCodigo;
    class function ConverteSerialParity(const pValor: TEnumSerialParity): TACBrSerialParity;
    class function ConverteSerialStop(const pValor: TEnumSerialStop): TACBrSerialStop;
    class function ConverteHandShake(const pValor: TEnumHandShake): TACBrHandShake;
    class function ConvertePosicaoReciboDanfe(const pValor: TEnumPosicaoReciboDanfe): TPosRecibo;
    class function ConvertePosicaoReciboDacte(const pValor: TEnumPosicaoReciboDacte): TPosRecibo;
    class function ConverteTipoDeMulta(const pValor: TEnumTipoDeMulta): TACBrCodigoMulta;
    class function ConverteTipoDeJurosMora(const pValor: TEnumTipoDeJurosMora): TACBrCodigoJuros;
    class function ConverteTipoDiasProtesto(const pValor: TEnumTipoDiasProtesto): TACBrTipoDiasIntrucao;
    class function ConverteCaracteristicaCarteira(const pValor: TEnumCaracteristicaCarteira): TACBrCaracTitulo;
    class function ConverteLayoutRemessa(const pValor: TEnumLayoutRemessa): TACBrLayoutRemessa;
    class function ConverteDistribuicaoBoleto(const pValor: TEnumDistribuicaoBoleto): TACBrCarteiraEnvio;
    class function ConverteMotivoDesoneracao(const pValor: TEnumMotivoDesoneracao): TpcnMotivoDesoneracaoICMS;
    class function GetTipoCobrancaBancaria(NumeroBanco: Integer): TACBrTipoCobranca;
    class function ConverteInstrucaoBaixa(const pValor: TEnumInstrucaoBaixaTitulo): string;

    class function ConverteModoEnvioNFSe(const pValor: TEnumModoEnvioNFSe): TmodoEnvio;
    class function ConverteResponsavelRetencao(const pValor: TEnumResponsavelRetencao): TnfseResponsavelRetencao;
    class function ConverteCondicaoVeiculo(const pCondicaoVeiculo: Integer): TpcnCondicaoVeiculo;
    class function ConverteTipoOperacaoVeiculo(const pTipoOperacaoVeiculo: Integer): TpcnTipoOperacao;
    class function ConverteTipoOperacaoVeiculoSPED(const pTipoOperacaoVeiculo: Integer): TACBrIndVeicOper;

  end;

implementation

{ TEnumACBr }

class function TConvACBr.ConverteModeloFiscalNFRef(const pValor: TEnumModeloFiscalNFRef): TpcteModeloNF;
begin
  case pValor of
    TEnumModeloFiscalNFRef.NFRefModelo11A: Result := TpcteModeloNF.moNF011AAvulsa;
    else
         raise Exception.Create('Não foi possível converter TEnumModeloFiscalNFRef em TpcteModeloNF.');
  end;
end;

class function TConvACBr.ConverteModoEnvioNFSe(const pValor: TEnumModoEnvioNFSe): TmodoEnvio;
begin
  case pValor of
    TEnumModoEnvioNFSe_LoteAssincrono: result := TmodoEnvio.meLoteAssincrono;
    TEnumModoEnvioNFSe_LoteSincrono: result   := TmodoEnvio.meLoteSincrono;
    TEnumModoEnvioNFSe_Unitario: result       := TmodoEnvio.meUnitario;
    //TEnumModoEnvioNFSe_Teste: result          := TmodoEnvio.meTeste;
    Else result := TmodoEnvio.meAutomatico;
  end;
end;

class function TConvACBr.ConverteMotivoDesoneracao(const pValor: TEnumMotivoDesoneracao): TpcnMotivoDesoneracaoICMS;
begin
  case pValor of
    TEnumMotivoDesoneracao_TAXI: Result                   := TpcnMotivoDesoneracaoICMS.mdiTaxi; // 1 - TAXI
    TEnumMotivoDesoneracao_DEFICIENTE_FISICO: Result      := TpcnMotivoDesoneracaoICMS.mdiDeficienteFisico; // 2 - DEFICIENTE_FISICO
    TEnumMotivoDesoneracao_PRODUTOR_AGROPECUARIO: Result  := TpcnMotivoDesoneracaoICMS.mdiProdutorAgropecuario; // 3 - PRODUTOR_AGROPECUARIO
    TEnumMotivoDesoneracao_FROTISTA_LOCADORA: Result      := TpcnMotivoDesoneracaoICMS.mdiFrotistaLocadora; // 4 - FROTISTA_LOCADORA
    TEnumMotivoDesoneracao_DIPLOMATICO_CONSULAR: Result   := TpcnMotivoDesoneracaoICMS.mdiDiplomaticoConsular; // 5 - DIPLOMATICO_CONSULAR
    TEnumMotivoDesoneracao_UTILITARIOS_AMAZONIA: Result   := TpcnMotivoDesoneracaoICMS.mdiAmazoniaLivreComercio; // 6 - UTILITARIOS_AMAZONIA
    TEnumMotivoDesoneracao_SUFRAMA: Result                := TpcnMotivoDesoneracaoICMS.mdiSuframa; // 7 - SUFRAMA
    TEnumMotivoDesoneracao_VENDA_ORGAO_PUBLICO: Result    := TpcnMotivoDesoneracaoICMS.mdiVendaOrgaosPublicos; // 8 - VENDA_ORGAO_PUBLICO
    TEnumMotivoDesoneracao_OUTROS: Result                 := TpcnMotivoDesoneracaoICMS.mdiOutros; // 9 - OUTROS
    TEnumMotivoDesoneracao_DEFICIENTE_CONDUTOR: Result    := TpcnMotivoDesoneracaoICMS.mdiDeficienteCondutor; // 10 - DEFICIENTE_CONDUTOR
    TEnumMotivoDesoneracao_DEFICIENT_NAO_CONDUTOR: Result := TpcnMotivoDesoneracaoICMS.mdiDeficienteNaoCondutor; // 11 - DEFICIENT_NAO_CONDUTOR
    TEnumMotivoDesoneracao_ORGAO_FOMENTO: Result          := TpcnMotivoDesoneracaoICMS.mdiOrgaoFomento; // 12 - ORGAO_FOMENTO
  end;
end;

class function TConvACBr.ConverteNaturezaOuOperacaoDaNFSe(const pValor: TEnumNaturezaOuOperacaoDaNFSe): ACBrNFSeXConversao.TOperacao;
begin
  case pValor of
    TEnumNaturezaOuOperacaoDaNFSe_SemDeducao: Result := ACBrNFSeXConversao.TOperacao.toSemDeducao;
    TEnumNaturezaOuOperacaoDaNFSe_ComDeducaoMateriais: Result := ACBrNFSeXConversao.TOperacao.toComDeducaoMateriais;
    TEnumNaturezaOuOperacaoDaNFSe_ImuneIsenta: Result := ACBrNFSeXConversao.TOperacao.toImuneIsenta;
    TEnumNaturezaOuOperacaoDaNFSe_DevolucaoSimplesRemessa: Result := ACBrNFSeXConversao.TOperacao.toDevolucaoSimplesRemessa;
    TEnumNaturezaOuOperacaoDaNFSe_Intermediacao: Result := ACBrNFSeXConversao.TOperacao.toIntermediacao;
    else
         raise Exception.Create('Não foi possível converter TEnumNaturezaOuOperacaoDaNFSe em TOperacao.');
  end;
end;

class function TConvACBr.ConverteModeloFiscalCFRef(const pValor: TEnumModeloFiscalCFRef): TpcnECFModRef;
begin
  case pValor of
    TEnumModeloFiscalCFRef.cfRefMaqReg: Result := TpcnECFModRef.ECFModRef2B;
    TEnumModeloFiscalCFRef.cfRefPDV: Result    := TpcnECFModRef.ECFModRef2C;
    TEnumModeloFiscalCFRef.cfRefECF: Result    := TpcnECFModRef.ECFModRef2D;
    else
         raise Exception.Create('Não foi possível converter TEnumModeloFiscalCFRef em TpcnECFModRef.');
  end;
end;

class function TConvACBr.ConverteModalidadeBCST(const pValor: TEnumModalidadeBCST): TpcnDeterminacaoBaseIcmsST;
begin
  case pValor of
    TEnumModalidadeBCST.bsPrecoTabelado: Result       := TpcnDeterminacaoBaseIcmsST.dbisPrecoTabelado;
    TEnumModalidadeBCST.bsListaNegativa: Result       := TpcnDeterminacaoBaseIcmsST.dbisListaNegativa;
    TEnumModalidadeBCST.bsListaPositiva: Result       := TpcnDeterminacaoBaseIcmsST.dbisListaPositiva;
    TEnumModalidadeBCST.bsListaNeutra: Result         := TpcnDeterminacaoBaseIcmsST.dbisListaNeutra;
    TEnumModalidadeBCST.bsMargemValorAgregado: Result := TpcnDeterminacaoBaseIcmsST.dbisMargemValorAgregado;
    TEnumModalidadeBCST.bsPauta: Result               := TpcnDeterminacaoBaseIcmsST.dbisPauta;
    TEnumModalidadeBCST.bsValordaOperacao: Result     := TpcnDeterminacaoBaseIcmsST.dbisValordaOperacao;
    else
         raise Exception.Create('Não foi possível converter TEnumModalidadeBCST em TpcnDeterminacaoBaseIcmsST.');
  end;
end;

class function TConvACBr.ConverteModalidadeBC(const pValor: TEnumModalidadeBC): TpcnDeterminacaoBaseIcms;
begin
  case pValor of
    TEnumModalidadeBC.mbMargemValorAgregado: Result := TpcnDeterminacaoBaseIcms.dbiMargemValorAgregado;
    TEnumModalidadeBC.mbPauta: Result               := TpcnDeterminacaoBaseIcms.dbiPauta;
    TEnumModalidadeBC.mbPrecoTabelado: Result       := TpcnDeterminacaoBaseIcms.dbiPrecoTabelado;
    TEnumModalidadeBC.mbValorOperacao: Result       := TpcnDeterminacaoBaseIcms.dbiValorOperacao;
    else
         raise Exception.Create('Não foi possível converter TEnumModalidadeBC em TpcnDeterminacaoBaseIcms.');
  end;
end;

class function TConvACBr.ConverteTipoCarteira(const pValor: TEnumTipoCarteiraTituloBancario): TACBrTipoCarteira;
begin
  case pValor of
    TEnumTipoCarteiraTituloBancario_Registrada: result := TACBrTipoCarteira.tctRegistrada;
    TEnumTipoCarteiraTituloBancario_Simples: result    := TACBrTipoCarteira.tctSimples;
    TEnumTipoCarteiraTituloBancario_Eletronica: result := TACBrTipoCarteira.tctEletronica;
  end;
end;

class function TConvACBr.ConverteTipoDeMulta(const pValor: TEnumTipoDeMulta): TACBrCodigoMulta;
begin
  case pValor of
    TEnumTipoDeMulta_PercentualCorrigido: Result := cmPercentual;
    TEnumTipoDeMulta_Valor: Result               := cmValorFixo;
    TEnumTipoDeMulta_Percentual: Result          := cmPercentual;
    TEnumTipoDeMulta_ValorCorrigido: Result      := cmValorFixo;
  end;
end;

class function TConvACBr.ConverteTipoDeTributacaoServico(const pValor: TEnumTipoDeTributacaoServico): TTributacao;
begin
  case pValor of
    TEnumTipoDeTributacaoServico_IsentaISS: Result := TTributacao.ttIsentaISS;
    TEnumTipoDeTributacaoServico_NaoIncidencianoMunic: Result := TTributacao.ttNaoIncidencianoMunic;
    TEnumTipoDeTributacaoServico_Imune: Result             := TTributacao.ttImune;
    TEnumTipoDeTributacaoServico_ExigibilidadeSusp: Result := TTributacao.ttExigibilidadeSusp;
    TEnumTipoDeTributacaoServico_NaoTributavel: Result     := TTributacao.ttNaoTributavel;
    TEnumTipoDeTributacaoServico_Tributavel: Result        := TTributacao.ttTributavel;
    TEnumTipoDeTributacaoServico_TributavelFixo: Result    := TTributacao.ttTributavelFixo;
    TEnumTipoDeTributacaoServico_TributavelSN: Result      := TTributacao.ttTributavelSN;
    TEnumTipoDeTributacaoServico_MEI: Result               := TTributacao.ttMEI;
    else
         raise Exception.Create('Não foi possível converter TEnumTipoDeTributacaoServico em TTributacao.');
  end;
end;

class function TConvACBr.ConverteTipoDiasProtesto(const pValor: TEnumTipoDiasProtesto): TACBrTipoDiasIntrucao;
begin
  case pValor of
    TEnumTipoDiasProtesto_SemInstrucoes: Result         := diCorridos;
    TEnumTipoDiasProtesto_ProtestarDiasCorridos: Result := diCorridos;
    TEnumTipoDiasProtesto_ProtestarDiasUteis: Result    := diUteis;
    TEnumTipoDiasProtesto_NaoProtestar: Result          := diCorridos;
  end;
end;

class function TConvACBr.ConverteTipoDocumento(const pValor: TEnumTipoDocumentoTituloBancario): TACBrTipoDocumento;
begin
  case pValor of
    TEnumTipoDocumentoTituloBancario_Tradicional: result := TACBrTipoDocumento.Tradicional;
    TEnumTipoDocumentoTituloBancario_Escritural: result  := TACBrTipoDocumento.Escritural;
  end;
end;

class function TConvACBr.ConverteTipoDocumentoFiscal(const pValor: TEnumTipoDocumentoFiscal): TpcnTipoNFe;
begin
  case pValor of
    TEnumTipoDocumentoFiscal.tpEntrada: Result := TpcnTipoNFe.tnEntrada;
    TEnumTipoDocumentoFiscal.tpSaida: Result   := TpcnTipoNFe.tnSaida;
    else
         raise Exception.Create('Não foi possível converter TEnumTipoDocumentoFiscal em TpcnTipoNFe.');
  end;
end;

class function TConvACBr.ConverteTipoEmissao(const pValor: TpcnTipoEmissao): TEnumTipoEmissao;
begin
  case pValor of
    TpcnTipoEmissao.teNormal: Result := TEnumTipoEmissao_Normal; // 0 - Emissão Normal
    TpcnTipoEmissao.teSVCAN: Result  := TEnumTipoEmissao_SVCAN; // 1 - Contingência SVC-AN
    TpcnTipoEmissao.teSVCRS: Result  := TEnumTipoEmissao_SVCRS; // 2 - Contingência SVC-RS
    //TpcnTipoEmissao.teContingencia: Result := TEnumTipoEmissao_FSEG;  // 3 - Contingência em Formulário de Segurança
    //TpcnTipoEmissao.teDPEC: Result := TEnumTipoEmissao_EPEC;  // 4 - Contingência EPEC
    //TpcnTipoEmissao.teFSDA: Result := TEnumTipoEmissao_FSDA;   // 5 - Contingência em Formulário de Segurança FS-DA
    //TpcnTipoEmissao.teSCAN: Result := TEnumTipoEmissao_SCAN; // 6 - Contingência SCAN (desativado)
    //TpcnTipoEmissao.teSVCSP: Result := TEnumTipoEmissao_SVCSP; // 7 - Contingência SVC-SP
    TpcnTipoEmissao.teOffLine: Result := TEnumTipoEmissao_OffLine; // 8 - Emissão Off-Line NFCe
  end;
end;

class function TConvACBr.ConverteTipoEmissao(const pValor: TEnumTipoEmissao): TpcnTipoEmissao;
begin
  case pValor of
    TEnumTipoEmissao_Normal: Result := TpcnTipoEmissao.teNormal; // 0 - Emissão Normal
    TEnumTipoEmissao_SVCAN: Result  := TpcnTipoEmissao.teSVCAN; // 1 - Contingência SVC-AN
    TEnumTipoEmissao_SVCRS: Result  := TpcnTipoEmissao.teSVCRS; // 2 - Contingência SVC-RS
    //TEnumTipoEmissao_FSEG: Result := TpcnTipoEmissao.teContingencia  // 3 - Contingência em Formulário de Segurança
    //TEnumTipoEmissao_EPEC: Result := TpcnTipoEmissao.teDPEC;  // 4 - Contingência EPEC
    //TEnumTipoEmissao_FSDA: Result := TpcnTipoEmissao.teFSDA;   // 5 - Contingência em Formulário de Segurança FS-DA
    //TEnumTipoEmissao_SCAN: Result := TpcnTipoEmissao.teSCAN; // 6 - Contingência SCAN (desativado)
    //TEnumTipoEmissao_SVCSP: Result := TpcnTipoEmissao.teSVCSP; // 7 - Contingência SVC-SP
    TEnumTipoEmissao_OffLine: Result := TpcnTipoEmissao.teOffLine; // 8 - Emissão Off-Line NFCe
  end;
end;

class function TConvACBr.ConverteFinalidadeNFe(const pValor: TEnumFinalidadeNFe): TpcnFinalidadeNFe;
begin
  case pValor of
    TEnumFinalidadeNFe.fnNormal: Result       := TpcnFinalidadeNFe.fnNormal;
    TEnumFinalidadeNFe.fnComplementar: Result := TpcnFinalidadeNFe.fnComplementar;
    TEnumFinalidadeNFe.fnAjuste: Result       := TpcnFinalidadeNFe.fnAjuste;
    TEnumFinalidadeNFe.fnDevolucao: Result    := TpcnFinalidadeNFe.fnDevolucao;
    else
         raise Exception.Create('Não foi possível converter TEnumFinalidadeNFe em TpcnFinalidadeNFe.');
  end;
end;

class function TConvACBr.ConverteFormaPagamento(const pMeioPagamento: TEnumTipoPagamento): TpcnFormaPagamento;
begin
  case pMeioPagamento of
    tfDinheiro: Result             := pcnConversao.fpDinheiro;
    tfCheque: Result               := pcnConversao.fpCheque;
    tfCartaoCredito: Result        := pcnConversao.fpCartaoCredito;
    tfCartaoDebito: Result         := pcnConversao.fpCartaoDebito;
    tfCreditoLoja: Result          := pcnConversao.fpCreditoLoja;
    tfValeAlimentacao: Result      := pcnConversao.fpValeAlimentacao;
    tfValeRefeicao: Result         := pcnConversao.fpValeRefeicao;
    tfValepresente: Result         := pcnConversao.fpValePresente;
    tfValeCombustivel: Result      := pcnConversao.fpValeCombustivel;
    tfBoletoBancario: Result       := pcnConversao.fpBoletoBancario;
    tfDepositoBancario: Result     := pcnConversao.fpDepositoBancario;
    tfPagamentoInstantaneo: Result := pcnConversao.fpPagamentoInstantaneo;
    tfTransfBancario: Result       := pcnConversao.fpTransfBancario;
    tfProgramaFidelidade: Result   := pcnConversao.fpProgramaFidelidade;
    tfSemPagamento: Result         := pcnConversao.fpSemPagamento;
    tfOutros: Result               := pcnConversao.fpOutro;
    else
         Result := fpOutro;
  end;
end;

class function TConvACBr.ConverteHandShake(const pValor: TEnumHandShake): TACBrHandShake;
begin
  case pValor of
    TEnumHandShake_Nenhum: Result   := hsNenhum;
    TEnumHandShake_XON_XOFF: Result := hsXON_XOFF;
    TEnumHandShake_RTS_CTS: Result  := hsRTS_CTS;
    TEnumHandShake_DTR_DSR: Result  := hsDTR_DSR;
  end;
end;

class function TConvACBr.ConverteIdDestinoOperacao(const pValor: TEnumIdDestinoOperacao): TpcnDestinoOperacao;
begin
  case pValor of
    TEnumIdDestinoOperacao.doOperacaoInterna: Result       := TpcnDestinoOperacao.doInterna;
    TEnumIdDestinoOperacao.doOperacaoInterestadual: Result := TpcnDestinoOperacao.doInterestadual;
    TEnumIdDestinoOperacao.doOperacaoComExterior: Result   := TpcnDestinoOperacao.doExterior;
    else
         raise Exception.Create('Não foi possível converter TEnumIdDestinoOperacao em TpcnDestinoOperacao.');
  end;
end;

class function TConvACBr.ConverteIndicadorPresenca(const pValor: TEnumIndicadorPresenca): TpcnPresencaComprador;
begin
  case pValor of
    TEnumIndicadorPresenca.ipNaoInformado: Result         := TpcnPresencaComprador.pcNao;
    TEnumIndicadorPresenca.ipNaoSeAplica: Result          := TpcnPresencaComprador.pcNao;
    TEnumIndicadorPresenca.ipOperacaoPresencial: Result   := TpcnPresencaComprador.pcPresencial;
    TEnumIndicadorPresenca.ipOperacaoPelaInternet: Result := TpcnPresencaComprador.pcInternet;
    TEnumIndicadorPresenca.ipOperacaoPorTelefone: Result  := TpcnPresencaComprador.pcTeleatendimento;
    TEnumIndicadorPresenca.ipNFCeEmOperacaoEntregaADomicilio: Result := TpcnPresencaComprador.pcEntregaDomicilio;
    TEnumIndicadorPresenca.ipOperacaoPresForaEstab: Result := TpcnPresencaComprador.pcPresencialForaEstabelecimento;
    TEnumIndicadorPresenca.ipOperacaoNaoPresencial: Result := TpcnPresencaComprador.pcOutros;
    else
         raise Exception.Create('Não foi possível converter TEnumIndicadorPresenca em TpcnPresencaComprador.');
  end;
end;

class function TConvACBr.ConverteInstrucaoBaixa(const pValor: TEnumInstrucaoBaixaTitulo): string;
begin
  case pValor of
    TEnumInstrucaoBaixaTitulo_SemInstrucoes: Result := '';
    TEnumInstrucaoBaixaTitulo_Baixar: Result        := '1';
    TEnumInstrucaoBaixaTitulo_NaoBaixar: Result     := '2';
  end;
end;

class function TConvACBr.ConverteLayoutRemessa(const pValor: TEnumLayoutRemessa): TACBrLayoutRemessa;
begin
  case pValor of
    TEnumLayoutRemessa_240: Result := c240;
    TEnumLayoutRemessa_400: Result := c400;
  end;
end;

class function TConvACBr.ConverteTipoIntegracaoPagamento(const pValor: TEnumTipoIntegracaoPagamento): TtpIntegra;
begin
  case pValor of
    TEnumTipoIntegracaoPagamento.tiVazio: Result           := TtpIntegra.tiNaoInformado;
    TEnumTipoIntegracaoPagamento.tiIntegradoTEF: Result    := TtpIntegra.tiPagIntegrado;
    TEnumTipoIntegracaoPagamento.tiNaoIntegradoPOS: Result := TtpIntegra.tiPagNaoIntegrado;
    else
         raise Exception.Create('Não foi possível converter TEnumTipoIntegracaoPagamento em TtpIntegra.');
  end;
end;

class function TConvACBr.ConverteTipoOperacaoVeiculo(const pTipoOperacaoVeiculo: Integer): TpcnTipoOperacao;
begin
  case pTipoOperacaoVeiculo of
    1: Result := TpcnTipoOperacao.toVendaConcessionaria;
    2: Result := TpcnTipoOperacao.toFaturamentoDireto;
    3: Result := TpcnTipoOperacao.toVendaDireta;
    9: Result := TpcnTipoOperacao.toOutros;
    else
         raise Exception.Create('Erro ao definir o Tipo de Operação do Veículo.' +
           sLineBreak + 'Número da Operação é inválida: ' + IntToStr(pTipoOperacaoVeiculo));
  end;
end;

class function TConvACBr.ConverteTipoOperacaoVeiculoSPED(const pTipoOperacaoVeiculo: Integer): TACBrIndVeicOper;
begin
  case pTipoOperacaoVeiculo of
    1: Result := TACBrIndVeicOper.tovVendaPConcess;
    2: Result := TACBrIndVeicOper.tovFaturaDireta;
    3: Result := TACBrIndVeicOper.tovVendaDireta;
    4: Result := TACBrIndVeicOper.tovVendaDConcess;
    9: Result := TACBrIndVeicOper.tovVendaOutros;
    else
         raise Exception.Create('Erro ao definir o Tipo de Operação do Veículo.' +
           sLineBreak + 'Número da Operação é inválida: ' + IntToStr(pTipoOperacaoVeiculo));
  end;
end;

class function TConvACBr.ConverteTipoDeJurosMora(const pValor: TEnumTipoDeJurosMora): TACBrCodigoJuros;
begin
  case pValor of
    TEnumTipoDeJurosMora_ValorDia: Result    := cjValorDia;
    TEnumTipoDeJurosMora_TaxaMensal: Result  := cjTaxaMensal;
    TEnumTipoDeJurosMora_Isento: Result      := cjIsento;
    TEnumTipoDeJurosMora_ValorMensal: Result := cjValorMensal;
    TEnumTipoDeJurosMora_TaxaDiaria: Result  := cjTaxaDiaria;
  end;
end;

class function TConvACBr.ConverteTipoParceiro(const pValor: TEnumTipoParceiro): TACBrPessoa;
begin
  case pValor of
    TEnumTipoParceiro_Fisica: result   := pFisica;
    TEnumTipoParceiro_Juridica: result := pJuridica;
    TEnumTipoParceiro_Entidade: result := pJuridica;
    TEnumTipoParceiro_Especial: result := pJuridica;
    TEnumTipoParceiro_ME: result       := pJuridica;
    TEnumTipoParceiro_Filial: result   := pJuridica;
  end;
end;

class function TConvACBr.ConverteTipoParceiroCedente(const pValor: TEnumTipoParceiro): TACBrPessoaCedente;
begin
  case pValor of
    TEnumTipoParceiro_Fisica: result   := pFisica;
    TEnumTipoParceiro_Juridica: result := pJuridica;
    TEnumTipoParceiro_Entidade: result := pJuridica;
    TEnumTipoParceiro_Especial: result := pJuridica;
    TEnumTipoParceiro_ME: result       := pJuridica;
    TEnumTipoParceiro_Filial: result   := pJuridica;
  end;
end;

class function TConvACBr.ConverteTipoTributacaoRPS(const pValor: TEnumTipoDeTributacaoServico; const pNoMunicipio: Boolean): TTipoTributacaoRPS;
begin
  case pValor of
    TEnumTipoDeTributacaoServico_Tributavel,
       TEnumTipoDeTributacaoServico_TributavelFixo,
       TEnumTipoDeTributacaoServico_TributavelSN: begin
        if pNoMunicipio then begin
          Result := TTipoTributacaoRPS.ttTribnoMun;
        end else begin
          Result := TTipoTributacaoRPS.ttTribforaMun;
        end;
      end;
    TEnumTipoDeTributacaoServico_IsentaISS,
       TEnumTipoDeTributacaoServico_NaoIncidencianoMunic,
       TEnumTipoDeTributacaoServico_NaoTributavel: begin
        if pNoMunicipio then begin
          Result := TTipoTributacaoRPS.ttTribnoMunIsento;
        end else begin
          Result := TTipoTributacaoRPS.ttTribforaMunIsento;
        end;
      end;
    TEnumTipoDeTributacaoServico_Imune: begin
        if pNoMunicipio then begin
          Result := TTipoTributacaoRPS.ttTribnoMunImune;
        end else begin
          Result := TTipoTributacaoRPS.ttTribforaMunImune;
        end;
      end;
    TEnumTipoDeTributacaoServico_ExigibilidadeSusp: begin
        if pNoMunicipio then begin
          Result := TTipoTributacaoRPS.ttTribnoMunSuspensa;
        end else begin
          Result := TTipoTributacaoRPS.ttTribforaMunSuspensa;
        end;
      end;
    TEnumTipoDeTributacaoServico_MEI: begin
        Result := TTipoTributacaoRPS.ttExpServicos;
      end;
    else
         raise Exception.Create('Não foi possível converter TEnumTipoDeTributacaoServico em TTipoTributacaoRPS.');
  end;
end;

class function TConvACBr.ConverteUnidadeImpressora(const pValor: TEnumUnidadeImpressora): TACBrETQUnidade;
begin
  case pValor of
    TEnumUnidadeImpressora_Milimetros: Result         := etqMilimetros;
    TEnumUnidadeImpressora_Polegadas: Result          := etqPolegadas;
    TEnumUnidadeImpressora_Dots: Result               := etqDots;
    TEnumUnidadeImpressora_DecimoDeMilimetros: Result := etqDecimoDeMilimetros;
    else
         raise Exception.Create('Não foi possível converter TEnumUnidadeImpressora em TACBrETQUnidade.');
  end;
end;

class function TConvACBr.GetTipoCobrancaBancaria(NumeroBanco: Integer): TACBrTipoCobranca;
begin
  case NumeroBanco of
    001: Result           := cobBancoDoBrasil;
    003: Result           := cobBancoDaAmazonia;
    004: Result           := cobBancoDoNordeste;
    008, 033, 353: Result := cobSantander;
    021: Result           := cobBanestes;
    041: Result           := cobBanrisul;
    070: Result           := cobBRB;
    091: Result           := cobUnicredRS;
    097: Result           := cobCrediSIS;
    099: Result           := cobUniprime;
    104: Result           := cobCaixaEconomica;
    136: Result           := cobUnicredES;
    237: Result           := cobBradesco;
    341: Result           := cobItau;
    389: Result           := cobBancoMercantil;
    748: Result           := cobSicred;
    756: Result           := cobBancoob;
    399: Result           := cobHSBC;
    422: Result           := cobBancoSafra;
    085: Result           := cobBancoCECRED;
    047: Result           := cobBanese;
    745: Result           := cobCitiBank;
    246: Result           := cobBancoABCBrasil;
    else
         raise Exception.Create('Erro ao configurar o tipo de cobrança.' +
           sLineBreak + 'Número do Banco inválido: ' + IntToStr(NumeroBanco));
  end;
end;

class function TConvACBr.ConverteBandeiraCartao(const pValor: TEnumBandeiraCartao): TpcnBandeiraCartao;
begin
  case pValor of
    TEnumBandeiraCartao.bcVisa: Result            := TpcnBandeiraCartao.bcVisa;
    TEnumBandeiraCartao.bcMastercard: Result      := TpcnBandeiraCartao.bcMasterCard;
    TEnumBandeiraCartao.bcAmericanExpress: Result := TpcnBandeiraCartao.bcAmericanExpress;
    TEnumBandeiraCartao.bcSorocred: Result        := TpcnBandeiraCartao.bcSorocred;
    TEnumBandeiraCartao.bcDinersClub: Result      := TpcnBandeiraCartao.bcDinersClub;
    TEnumBandeiraCartao.bcElo: Result             := TpcnBandeiraCartao.bcElo;
    TEnumBandeiraCartao.bcHipercard: Result       := TpcnBandeiraCartao.bcHipercard;
    TEnumBandeiraCartao.bcAura: Result            := TpcnBandeiraCartao.bcAura;
    TEnumBandeiraCartao.bcCabal: Result           := TpcnBandeiraCartao.bcCabal;
    TEnumBandeiraCartao.bcOutros: Result          := TpcnBandeiraCartao.bcOutros;
    else
         raise Exception.Create('Não foi possível converter TEnumBandeiraCartao em TpcnBandeiraCartao.');
  end;
end;

class function TConvACBr.ConverteBolLayOut(const pValor: TEnumLayoutBoleto): TACBrBolLayOut;
begin
  case pValor of
    TEnumLayoutBoleto_Padrao: Result        := lPadrao;
    TEnumLayoutBoleto_Carne: Result         := lCarne;
    TEnumLayoutBoleto_Fatura: Result        := lFatura;
    TEnumLayoutBoleto_PadraoEntrega: Result := lPadraoEntrega;
    TEnumLayoutBoleto_Outro: Result         := lPadrao;
  end;
end;

class function TConvACBr.ConverteAcessoDLL(const pAcessoDLL: TEnumAcessoDLL): TACBrSATModelo;
begin
  case pAcessoDLL of
    adNenhum: Result  := ACBrSATClass.satNenhum;
    adCdecl: Result   := ACBrSATClass.satDinamico_cdecl;
    adStdcall: Result := ACBrSATClass.satDinamico_stdcall;
    else
         Result := satNenhum;
  end;
end;

class function TConvACBr.ConverteAmbienteSEFAZ(const pAmbiente: TEnumAmbienteSEFAZ): TpcnTipoAmbiente;
begin
  case pAmbiente of
    amProducao: Result    := pcnConversao.taProducao;
    amHomologacao: Result := pcnConversao.taHomologacao;
    else
         Result := taHomologacao;
  end;
end;

class function TConvACBr.ConverteCaracteristicaCarteira(const pValor: TEnumCaracteristicaCarteira): TACBrCaracTitulo;
begin
  case pValor of
    TEnumCaracteristicaCarteira_Simples: Result            := tcSimples;
    TEnumCaracteristicaCarteira_Vinculada: Result          := tcVinculada;
    TEnumCaracteristicaCarteira_Caucionada: Result         := tcCaucionada;
    TEnumCaracteristicaCarteira_Descontada: Result         := tcDescontada;
    TEnumCaracteristicaCarteira_SimplesComRegistro: Result := tcSimplesRapComReg;
    TEnumCaracteristicaCarteira_CaucionadaComRegistro: Result := tcCaucionadaRapComReg;
    TEnumCaracteristicaCarteira_Vendor: Result := tcVendor;
  end;
end;

class function TConvACBr.ConverteCondicaoVeiculo(const pCondicaoVeiculo: Integer): TpcnCondicaoVeiculo;
begin
  case pCondicaoVeiculo of
    1: Result := TpcnCondicaoVeiculo.cvAcabado;
    2: Result := TpcnCondicaoVeiculo.cvInacabado;
    3: Result := TpcnCondicaoVeiculo.cvSemiAcabado;
    else
         raise Exception.Create('Erro ao definir a Condição do Veículo.' +
           sLineBreak + 'Número da Condição é inválida: ' + IntToStr(pCondicaoVeiculo));
  end;
end;

class function TConvACBr.ConverteCSOSNDeICMS(const pCSOSN: string): TpcnCSOSNIcms;
begin
  Result := csosnVazio;

  if pCSOSN = '101' then
    Result := csosn101
  else if pCSOSN = '102' then
    Result := csosn102
  else if pCSOSN = '103' then
    Result := csosn103
  else if pCSOSN = '201' then
    Result := csosn201
  else if pCSOSN = '202' then
    Result := csosn202
  else if pCSOSN = '203' then
    Result := csosn203
  else if pCSOSN = '300' then
    Result := csosn300
  else if pCSOSN = '400' then
    Result := csosn400
  else if pCSOSN = '500' then
    Result := csosn500
  else if pCSOSN = '900' then
    Result := csosn900;
end;

class function TConvACBr.ConverteCSTDeCOFINS(const pCST: string): TpcnCstCofins;
begin
  if pCST = '01' then
    Result := cof01
  else if pCST = '02' then
    Result := cof02
  else if pCST = '03' then
    Result := cof03
  else if pCST = '04' then
    Result := cof04
  else if pCST = '05' then
    Result := cof05
  else if pCST = '06' then
    Result := cof06
  else if pCST = '07' then
    Result := cof07
  else if pCST = '08' then
    Result := cof08
  else if pCST = '09' then
    Result := cof09
  else if pCST = '49' then
    Result := cof49
  else if pCST = '50' then
    Result := cof50
  else if pCST = '51' then
    Result := cof51
  else if pCST = '52' then
    Result := cof52
  else if pCST = '53' then
    Result := cof53
  else if pCST = '54' then
    Result := cof54
  else if pCST = '55' then
    Result := cof55
  else if pCST = '56' then
    Result := cof56
  else if pCST = '60' then
    Result := cof60
  else if pCST = '61' then
    Result := cof61
  else if pCST = '62' then
    Result := cof62
  else if pCST = '63' then
    Result := cof63
  else if pCST = '64' then
    Result := cof64
  else if pCST = '65' then
    Result := cof65
  else if pCST = '66' then
    Result := cof66
  else if pCST = '67' then
    Result := cof67
  else if pCST = '70' then
    Result := cof70
  else if pCST = '71' then
    Result := cof71
  else if pCST = '72' then
    Result := cof72
  else if pCST = '73' then
    Result := cof73
  else if pCST = '74' then
    Result := cof74
  else if pCST = '75' then
    Result := cof75
  else if pCST = '98' then
    Result := cof98
  else if pCST = '99' then
    Result := cof99;
end;

class function TConvACBr.ConverteCSTDePIS(const pCST: string): TpcnCstPis;
begin
  if pCST = '01' then
    Result := pis01
  else if pCST = '02' then
    Result := pis02
  else if pCST = '03' then
    Result := pis03
  else if pCST = '04' then
    Result := pis04
  else if pCST = '05' then
    Result := pis05
  else if pCST = '06' then
    Result := pis06
  else if pCST = '07' then
    Result := pis07
  else if pCST = '08' then
    Result := pis08
  else if pCST = '09' then
    Result := pis09
  else if pCST = '49' then
    Result := pis49
  else if pCST = '50' then
    Result := pis50
  else if pCST = '51' then
    Result := pis51
  else if pCST = '52' then
    Result := pis52
  else if pCST = '53' then
    Result := pis53
  else if pCST = '54' then
    Result := pis54
  else if pCST = '55' then
    Result := pis55
  else if pCST = '56' then
    Result := pis56
  else if pCST = '60' then
    Result := pis60
  else if pCST = '61' then
    Result := pis61
  else if pCST = '62' then
    Result := pis62
  else if pCST = '63' then
    Result := pis63
  else if pCST = '64' then
    Result := pis64
  else if pCST = '65' then
    Result := pis65
  else if pCST = '66' then
    Result := pis66
  else if pCST = '67' then
    Result := pis67
  else if pCST = '70' then
    Result := pis70
  else if pCST = '71' then
    Result := pis71
  else if pCST = '72' then
    Result := pis72
  else if pCST = '73' then
    Result := pis73
  else if pCST = '74' then
    Result := pis74
  else if pCST = '75' then
    Result := pis75
  else if pCST = '98' then
    Result := pis98
  else if pCST = '99' then
    Result := pis99;
end;

class function TConvACBr.ConverteDistribuicaoBoleto(const pValor: TEnumDistribuicaoBoleto): TACBrCarteiraEnvio;
begin
  case pValor of
    TEnumDistribuicaoBoleto_NaoInformado: result       := tceCedente;
    TEnumDistribuicaoBoleto_BancoDistribui: result     := tceBanco;
    TEnumDistribuicaoBoleto_ClienteDistribui: result   := tceCedente;
    TEnumDistribuicaoBoleto_BancoEnviaPorEmail: result := tceBancoEmail;
  end;
end;

class function TConvACBr.ConverteDPIImpressora(const pValor: TEnumDPIImpressora): TACBrETQDPI;
begin
  case pValor of
    TEnumDPIImpressora_203: Result := dpi203;
    TEnumDPIImpressora_300: Result := dpi300;
    TEnumDPIImpressora_600: Result := dpi600;
  end;
end;

class function TConvACBr.ConverteTipoCodBarraImpressora(const pValor: TEnumTipoCodBarraImpressora): TACBrTipoCodBarra;
begin
  case pValor of
    TEnumTipoCodBarraImpressora_EAN13: Result       := barEAN13;
    TEnumTipoCodBarraImpressora_EAN8: Result        := barEAN8;
    TEnumTipoCodBarraImpressora_STANDARD: Result    := barSTANDARD;
    TEnumTipoCodBarraImpressora_INTERLEAVED: Result := barINTERLEAVED;
    TEnumTipoCodBarraImpressora_CODE128: Result     := barCODE128;
    TEnumTipoCodBarraImpressora_CODE39: Result      := barCODE39;
    TEnumTipoCodBarraImpressora_CODE93: Result      := barCODE93;
    TEnumTipoCodBarraImpressora_UPCA: Result        := barUPCA;
    TEnumTipoCodBarraImpressora_CODABAR: Result     := barCODABAR;
    TEnumTipoCodBarraImpressora_MSI: Result         := barMSI;
    TEnumTipoCodBarraImpressora_CODE11: Result      := barCODE11;
  end;
end;

class function TConvACBr.ConverteTipoComunicacaoImpressora(const pValor: TEnumTipoComunicacaoImpressora): TACBrETQModelo;
begin
  case pValor of
    TEnumTipoComunicacaoImpressora_Normal: Result := etqNenhum;
    TEnumTipoComunicacaoImpressora_PPLA: Result   := etqPpla;
    TEnumTipoComunicacaoImpressora_PPLB: Result   := etqPplb;
    TEnumTipoComunicacaoImpressora_ZPLII: Result  := etqZPLII;
    TEnumTipoComunicacaoImpressora_EPL2: Result   := etqEpl2;
  end;
end;

class function TConvACBr.ConverteExibeCodigoBarraEtiqueta(const pValor: TEnumExibeCodigoBarraEtiqueta): TACBrETQBarraExibeCodigo;
begin
  case pValor of
    TEnumExibeCodigoBarraEtiqueta_Padrao: Result := becPadrao;
    TEnumExibeCodigoBarraEtiqueta_Sim: Result    := becSIM;
    TEnumExibeCodigoBarraEtiqueta_Nao: Result    := becNAO;
  end;
end;

class function TConvACBr.ConverteExigibilidadeISS(const pValor: TEnumExigibilidadeISS): TnfseExigibilidadeISS;
begin
  case pValor of
    TEnumExigibilidadeISS_Exigivel: Result                := TnfseExigibilidadeISS.exiExigivel;
    TEnumExigibilidadeISS_NaoIncidencia: Result           := TnfseExigibilidadeISS.exiNaoIncidencia;
    TEnumExigibilidadeISS_Isencao: Result                 := TnfseExigibilidadeISS.exiIsencao;
    TEnumExigibilidadeISS_Exportacao: Result              := TnfseExigibilidadeISS.exiExportacao;
    TEnumExigibilidadeISS_Imunidade: Result               := TnfseExigibilidadeISS.exiImunidade;
    TEnumExigibilidadeISS_SuspensaDecisaoJudicial: Result := TnfseExigibilidadeISS.exiSuspensaDecisaoJudicial;
    TEnumExigibilidadeISS_SuspensaProcessoAdministrativo: Result := TnfseExigibilidadeISS.exiSuspensaProcessoAdministrativo;
    TEnumExigibilidadeISS_ISSFixo: Result := TnfseExigibilidadeISS.exiISSFixo;
    else
         raise Exception.Create('Não foi possível converter TEnumExigibilidadeISS em TnfseExigibilidadeISS.');
  end;
end;

class function TConvACBr.ConverteCSTDeICMS(const pCST: string): TpcnCSTIcms;
begin
  Result := cstVazio;

  if pCST = '00' then
    Result := TpcnCSTIcms.cst00
  else if pCST = '02' then
    Result := TpcnCSTIcms.cst02
  else if pCST = '10' then
    Result := TpcnCSTIcms.cst10
  else if pCST = '15' then
    Result := TpcnCSTIcms.cst15
  else if pCST = '20' then
    Result := TpcnCSTIcms.cst20
  else if pCST = '30' then
    Result := TpcnCSTIcms.cst30
  else if pCST = '40' then
    Result := TpcnCSTIcms.cst40
  else if pCST = '41' then
    Result := TpcnCSTIcms.cst41
  else if pCST = '45' then
    Result := TpcnCSTIcms.cst45
  else if pCST = '50' then
    Result := TpcnCSTIcms.cst50
  else if pCST = '51' then
    Result := TpcnCSTIcms.cst51
  else if pCST = '53' then
    Result := TpcnCSTIcms.cst53
  else if pCST = '60' then
    Result := TpcnCSTIcms.cst60
  else if pCST = '61' then
    Result := TpcnCSTIcms.cst61
  else if pCST = '70' then
    Result := TpcnCSTIcms.cst70
  else if pCST = '80' then
    Result := TpcnCSTIcms.cst80
  else if pCST = '81' then
    Result := TpcnCSTIcms.cst81
  else if pCST = '90' then
    Result := TpcnCSTIcms.cst90;
end;

class function TConvACBr.ConverteMeioPagamento(const pMeioPagamento: TEnumTipoPagamento): TpcnCodigoMP;
begin
  case pMeioPagamento of
    tfDinheiro: Result             := TpcnCodigoMP.mpDinheiro;
    tfCheque: Result               := TpcnCodigoMP.mpCheque;
    tfCartaoCredito: Result        := TpcnCodigoMP.mpCartaodeCredito;
    tfCartaoDebito: Result         := TpcnCodigoMP.mpCartaodeDebito;
    tfCreditoLoja: Result          := TpcnCodigoMP.mpCreditoLoja;
    tfValeAlimentacao: Result      := TpcnCodigoMP.mpValeAlimentacao;
    tfValeRefeicao: Result         := TpcnCodigoMP.mpValeRefeicao;
    tfValepresente: Result         := TpcnCodigoMP.mpValePresente;
    tfValeCombustivel: Result      := TpcnCodigoMP.mpValeCombustivel;
    tfBoletoBancario: Result       := TpcnCodigoMP.mpCreditoLoja;
    tfDepositoBancario: Result     := TpcnCodigoMP.mpCreditoLoja;
    tfPagamentoInstantaneo: Result := TpcnCodigoMP.mpOutros;
    tfTransfBancario: Result       := TpcnCodigoMP.mpCreditoLoja;
    tfProgramaFidelidade: Result   := TpcnCodigoMP.mpCreditoLoja;
    tfOutros: Result               := TpcnCodigoMP.mpOutros;
    else
         Result := mpOutros;
  end;
end;

class function TConvACBr.ConverteModeloDocFiscal(const pModelo: TEnumModeloDocumento): TpcnModeloDF;
begin
  Result := moNFCe;
  case pModelo of
    mdNFCe: Result := moNFCe;
    mdNFe: Result  := moNFe;
  end;
end;

class function TConvACBr.ConverteModeloDocFiscalCTe(const pModelo: TEnumModeloDocumento): TModeloCTe;
begin
  Result := moCTe;
  //  case pModelo of
  //    mdCTe: Result := moCTe;
  //    mdNFe: Result  := moNFe;
  //  end;
end;

class function TConvACBr.ConverteOrientacaoEtiqueta(const pValor: TEnumOrientacaoEtiqueta): TACBrETQOrientacao;
begin
  case pValor of
    TEnumOrientacaoEtiqueta_Normal: Result := orNormal;
    TEnumOrientacaoEtiqueta_270: Result    := or270;
    TEnumOrientacaoEtiqueta_180: Result    := or180;
    TEnumOrientacaoEtiqueta_90: Result     := or90;
  end;
end;

class function TConvACBr.ConverteOrigemProduto(const pOrigemProduto: Integer): TpcnOrigemMercadoria;
begin
  case pOrigemProduto of
    0: Result := oeNacional;
    1: Result := oeEstrangeiraImportacaoDireta;
    2: Result := oeEstrangeiraAdquiridaBrasil;
    3: Result := oeNacionalConteudoImportacaoSuperior40;
    4: Result := oeNacionalProcessosBasicos;
    5: Result := oeNacionalConteudoImportacaoInferiorIgual40;
    6: Result := oeEstrangeiraImportacaoDiretaSemSimilar;
    7: Result := oeEstrangeiraAdquiridaBrasilSemSimilar;
    8: Result := oeNacionalConteudoImportacaoSuperior70;
  end;
end;

class function TConvACBr.ConvertePosicaoReciboDacte(const pValor: TEnumPosicaoReciboDacte): TPosRecibo;
begin
  case pValor of
    TEnumPosicaoReciboDacte_Cabecalho: Result := prCabecalho; // 0 - Cabeçalho
    TEnumPosicaoReciboDacte_Rodape: Result    := prRodape; // 1 - Rodapé
    TEnumPosicaoReciboDacte_Esquerda: Result  := prEsquerda; // 2 - Esquerda
    else
         raise Exception.Create('Posição do Recibo não informado ou inválido [TConvACBr.ConvertePosicaoReciboDacte].');
  end;
end;

class function TConvACBr.ConvertePosicaoReciboDanfe(const pValor: TEnumPosicaoReciboDanfe): TPosRecibo;
begin
  case pValor of
    TEnumPosicaoReciboDanfe_Cabecalho: Result := prCabecalho; // 0 - Cabeçalho
    TEnumPosicaoReciboDanfe_Rodape: Result    := prRodape; // 1 - Rodapé
    TEnumPosicaoReciboDanfe_Esquerda: Result  := prEsquerda; // 2 - Esquerda
    else
         raise Exception.Create('Posição do Recibo não informado ou inválido [TConvACBr.ConvertePosicaoReciboDanfe].');
  end;
end;

class function TConvACBr.ConverteRegimeTributario(const pValor: TEnumRegimeTributario): TpcnCRT;
begin
  case pValor of
    rtSimplesNacional: Result   := TpcnCRT.crtSimplesNacional;
    rtSimplesNacionalEx: Result := TpcnCRT.crtSimplesExcessoReceita;
    rtRegimeNormal: Result      := TpcnCRT.crtRegimeNormal;
    else
         raise Exception.Create('Regime Tributário não informado ou inválido [TConvACBr.ConverteRegimeTributario].');
  end;
end;

class function TConvACBr.ConverteRegimeTributarioSAT(const pValor: TEnumRegimeTributario): TpcnRegTrib;
begin
  case pValor of
    rtSimplesNacional: Result   := TpcnRegTrib.RTSimplesNacional;
    rtSimplesNacionalEx: Result := TpcnRegTrib.RTSimplesNacional;
    rtRegimeNormal: Result      := TpcnRegTrib.RTRegimeNormal;
    else
         raise Exception.Create('Regime Tributário não informado ou inválido [TConvACBr.ConverteRegimeTributarioSAT].');
  end;
end;

class function TConvACBr.ConverteRegTriEspNFSe(const pValor: TEnumRegTriEspNFSe): TnfseRegimeEspecialTributacao;
begin
  case pValor of
    TEnumRegTriEspNFSe_Nenhum: Result                    := TnfseRegimeEspecialTributacao.retNenhum;
    TEnumRegTriEspNFSe_MicroempresaMunicipal: Result     := TnfseRegimeEspecialTributacao.retMicroempresaMunicipal;
    TEnumRegTriEspNFSe_Estimativa: Result                := TnfseRegimeEspecialTributacao.retEstimativa;
    TEnumRegTriEspNFSe_SociedadeProfissionais: Result    := TnfseRegimeEspecialTributacao.retSociedadeProfissionais;
    TEnumRegTriEspNFSe_Cooperativa: Result               := TnfseRegimeEspecialTributacao.retCooperativa;
    TEnumRegTriEspNFSe_MicroempresarioIndividual: Result := TnfseRegimeEspecialTributacao.retMicroempresarioIndividual;
    TEnumRegTriEspNFSe_MicroempresarioEmpresaPP: Result  := TnfseRegimeEspecialTributacao.retMicroempresarioEmpresaPP;
    TEnumRegTriEspNFSe_LucroReal: Result                 := TnfseRegimeEspecialTributacao.retLucroReal;
    TEnumRegTriEspNFSe_LucroPresumido: Result            := TnfseRegimeEspecialTributacao.retLucroPresumido;
    TEnumRegTriEspNFSe_SimplesNacional: Result           := TnfseRegimeEspecialTributacao.retSimplesNacional;
    else
         raise Exception.Create('Não foi possível converter TEnumRegTriEspNFSe em TnfseRegimeEspecialTributacao.');
  end;
end;

class function TConvACBr.ConverteResponEmissao(const pValor: TEnumResponEmissaoTituloBancario): TACBrResponEmissao;
begin
  case pValor of
    TEnumResponEmissaoTituloBancario_BancoEmite: result   := TACBrResponEmissao.tbBancoEmite;
    TEnumResponEmissaoTituloBancario_CliEmite: result     := TACBrResponEmissao.tbCliEmite;
    TEnumResponEmissaoTituloBancario_BancoReemite: result := TACBrResponEmissao.tbBancoReemite;
    TEnumResponEmissaoTituloBancario_BancoNaoReemite: result := TACBrResponEmissao.tbBancoNaoReemite;
  end;
end;

class function TConvACBr.ConverteResponsavelRetencao(const pValor: TEnumResponsavelRetencao): TnfseResponsavelRetencao;
begin
  case pValor of
    TEnumResponsavelRetencao_Tomador:   Result   := rtTomador;
    TEnumResponsavelRetencao_Prestador: Result   := rtPrestador;
    TEnumResponsavelRetencao_Nenhum:    Result   := rtNenhum;
  end;
end;

class function TConvACBr.ConverteSerialParity(const pValor: TEnumSerialParity): TACBrSerialParity;
begin
  case pValor of
    TEnumSerialParity_None: Result  := pNone;
    TEnumSerialParity_Odd: Result   := pOdd;
    TEnumSerialParity_Even: Result  := pEven;
    TEnumSerialParity_Mark: Result  := pMark;
    TEnumSerialParity_Space: Result := pSpace;
  end;
end;

class function TConvACBr.ConverteSerialStop(const pValor: TEnumSerialStop): TACBrSerialStop;
begin
  case pValor of
    TEnumSerialStop_1: Result      := s1;
    TEnumSerialStop_1eMeio: Result := s1eMeio;
    TEnumSerialStop_2: Result      := s2;
  end;
end;

end.

