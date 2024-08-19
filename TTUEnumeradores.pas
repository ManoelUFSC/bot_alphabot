{**
 * Unit para enumeradores do sistema.
 *
 * Preservar a sequência dos enumeradores que não possuem valor fixo.
 * Isso é muito importante porque pode haver algum tipo de integração que dependa
 * que esse valor seja fixo.
 *
 * Padrão de nomenclatura:
 *   Nome da classe:                  TEnum<Nome do Enumerador>
 *   Conversão de Enum para Tipo:     <Nome do Enumerador>To<Tipo>
 *   Conversão de Tipo para Enum:     <Nome do Enumerador>From<Tipo>
 *   Descrição do enumerador:         <Nome do Enumerador>
 *   Lista de descrições para combo:  <Nome do Enumerador>GetList
 *
 * @Author  Totall Sistemas Ltda
 *}
unit TTUEnumeradores;

interface

uses
  SysUtils
{$IFDEF DELPHIXE},
  System.Generics.Collections
{$ENDIF}
     ;

type
  TEnumTipoConexao = (tcBancoDados,
    tcXML,
    tcJSON);

  TEnumBancoDados = (bdOracle = 0,
    bdPostgreSQL = 1,
    bdODBC = 2,
    bdOraClient = 3,
    bdFirebird = 4,
    bdSQLServer = 5,
    bdVazio = -1);

  TEnumAcessoDLL = (adNenhum,
    adCdecl,
    adStdcall);

  TEnumOrigemConsultaRetaguarda = (cdCheckout, // C - Checkout
    cdDecisor,                                 // D - Decisor
    cdRetaguarda,                              // R - Retaguarda
    cdExportacao,                              // E - Exportação
    cdMarketplace,                             // M - Marketplace
    cdO2O                                      // O - O2O
     );

  TEnumConexaoMiddlewareTipoRetorno = (TEnumConexaoMiddlewareTipoRetorno_Simples, // S - Simples
    TEnumConexaoMiddlewareTipoRetorno_Completo); // C - Completo

  TEnumServicosAPI = (TEnumServicosAPI_NaoEncontrado,
    TEnumServicosAPI_TConexaoAPI,
    TEnumServicosAPI_TNFeAPI,
    TEnumServicosAPI_TCTeAPI,
    TEnumServicosAPI_TMDFeAPI,
    TEnumServicosAPI_TCommerceAPI,
    TEnumServicosAPI_TImpressoraNaoFiscalAPI,
    TEnumServicosAPI_TNFeLocalAPI,
    TEnumServicosAPI_TSSLAPI,
    TEnumServicosAPI_TSSLLocalAPI,
    TEnumServicosAPI_TPAFAPI,
    TEnumServicosAPI_TPafLocalAPI,
    TEnumServicosAPI_TCommerceLocalAPI,
    TEnumServicosAPI_TConexaoLocalAPI,
    TEnumServicosAPI_TMiddlewareAPI
     );

  TEnumServicos_TConexaoAPI = (TConexaoAPI_NaoEncontrado,
    TConexaoAPI_ConectaMiddleware,
    TConexaoAPI_TestaComunicacao,
    TConexaoAPI_Sobre,
    TConexaoAPI_MiddlewareOnline,
    TConexaoAPI_ConsultaImpressora,
    TConexaoAPI_CadastrarAlterarEmpresa,
    TConexaoAPI_CadastraXML,
    TConexaoAPI_ExcluiDocumentosEmHomologacao,
    TConexaoAPI_Token,
    TConexaoAPI_ValidaSessao
     );

  TEnumServicos_TNFeAPI = (TNFeAPI_NaoEncontrado,
    TNFeAPI_AutenticaSEFAZ,
    TNFeAPI_ProcessaXMLs,
    TNFeAPI_HoraSefazOnline,
    TNFeAPI_CancelarNFeSEFAZ,
    TNFeAPI_CancelarNFe,
    TNFeAPI_CancelarNFCe,
    TNFeAPI_CancelaCFeSAT,
    TNFeAPI_Token,
    TNFeAPI_TokenID,
    TNFeAPI_Certificado,
    TNFeAPI_SenhaCertificado,
    TNFeAPI_AutenticaCFeSAT,
    TNFeAPI_ConverteArqNF,
    TNFeAPI_ValidaArqNF,
    TNFeAPI_AutenticaArqNF,
    TNFeAPI_AutenticaCFeSATArqNF,
    TNFeAPI_ConsultaXMLAutenticado,
    TNFeAPI_SATAtivo,
    TNFeAPI_InutilizaSEFAZ,
    TNFeAPI_ReplicaDadosGuarda,
    TNFeAPI_GetProximaNota,
    TNFeAPI_SetProximaNota,
    TNFeAPI_ZerarNumeroNota,
    TNFeAPI_EnviaEmailGuarda,
    TNFeAPI_CartaCorrecao,
    TNFeAPI_SefazOnLine,
    TNFeAPI_ImprimeDANFE,
    TNFeAPI_ConsultaNF,
    TNFeAPI_GetUltimaNota,
    TNFeAPI_AutenticaNFSeAssinc,
    TNFeAPI_ImprimeDANFEPeloXML,
    TNFeAPI_ImprimeEventoNFe,
    TNFeAPI_EnviaRPSsParaPrefeitura,
    TNFeAPI_ConsultaRPSsNaPrefeitura,
    TNFeAPI_SituacaoGuarda,
    TNFeAPI_SituacaoGuardaParaNFSe,
    TNFeAPI_AutenticaErpNFeSefaz,
    TNFeAPI_ConsultaStatusOperacionalSAT,
    TNFeAPI_GetGuarda,
    TNFeAPI_GeraPDFPeloXML,
    TNFeAPI_RegerarXMLNaGuarda,
    TNFeAPI_GeraXMLDFeFromTransacaoPOS,
    TNFeAPI_AutenticaCFeSATComplementar,
    TNFeAPI_ConsultaPeloUltimoNSU,
    TNFeAPI_ManifestarNFe,
    TNFeAPI_GeraPreviaPDFPeloXML,
    TNFeAPI_SetImprimirNFe,
    TNFeAPI_CancelaNFSePeloRPS,
    TNFeAPI_GeraPDFEventoNFe,
    TNFeAPI_RetornaEmailsNFe,
    TNFeAPI_GetXMLEventoNFe,
    TNFeAPI_GeraPDFPeloXMLNFSe,
    TNFeAPI_GeraPDFPeloNroNotaNFSe,
    TNFeAPI_ImprimeDANFSEPeloXML,
    TNFeAPI_ConsultarNumeroSessaoSAT,
    TNFeAPI_ConsultaLoteCFeSAT,
    TNFeAPI_AtualizaSituacaoNFSe,
    TNFeAPI_ConsultarUltimaSessaoFiscalSAT,
    TNFeAPI_ConsultarAutenticacaoSAT
     );

  TEnumServicos_TCTeAPI = (TCTeAPI_NaoEncontrado,
    TCTeAPI_AutenticaCTe,
    TCTeAPI_CancelarCTeSefaz,
    TCTeAPI_ConsultarCTe,
    TCTeAPI_InutilizaCTe,
    TCTeAPI_CTeOnLine,
    TCTeAPI_ImprimeCTeDACTE,
    TCTeAPI_ImprimeEventoCTe,
    TCTeAPI_ImprimeCTeDACTEPeloXML,
    TCTeAPI_GeraCTePDFPeloXML,
    TCTeAPI_ConsultaPeloUltimoNSU,
    TCTeAPI_ManifestarCTe,
    TCTeAPI_CartaCorrecao,
    TCTeAPI_GeraCTePreviaPDFPeloXML,
    TCTeAPI_GeraPDFEventoCTe,
    TCTeAPI_SetImprimirCTe,
    TCTeAPI_RetornaEmailsCTe,
    TCTeAPI_GetXMLEventoCTe,
    TCTeAPI_ConsultaXMLAutenticado
     );

  TEnumServicos_TFidelidadeAPI = (TFidelidadeAPI_ConsultaSaldo,
    TFidelidadeAPI_Credito,
    TFidelidadeAPI_Debito,
    TFidelidadeAPI_DebitoProvisorio,
    TFidelidadeAPI_AtualizaProvisorio,
    TFidelidadeAPI_ListaProvisoriosPendentes,
    TFidelidadeAPI_DevolverPontos,
    TFidelidadeAPI_Login,
    TFidelidadeAPI_RefreshToken,
    TFidelidadeAPI_NaoEncontrado
  );

  TEnumServicos_TVeiculoAPI = (TVeiculoAPI_ConsultaPlaca,
    TVeiculoAPI_Login,
    TVeiculoAPI_NaoEncontrado
  );

  TEnumServicos_TMDFeAPI = (TMDFeAPI_NaoEncontrado,
    TMDFeAPI_AutenticaMDFe,
    TMDFeAPI_CancelarMDFeSefaz,
    TMDFeAPI_ConsultarMDFe,
    TMDFeAPI_MDFeOnline,
    TMDFeAPI_ImprimeMDFeDAMDFE,
    TMDFeAPI_ImprimeEventoMDFe,
    TMDFeAPI_ImprimeMDFeDAMDFEPeloXML,
    TMDFeAPI_GeraMDFePDFPeloXML,
    TMDFeAPI_EncerrarMDFe,
    TMDFeAPI_IncluirDFe,
    TMDFeAPI_IncluirCondutor,
    TMDFeAPI_GeraMDFePreviaPDFPeloXML,
    TMDFeAPI_SetImprimirMDFe,
    TMDFeAPI_RetornaEmailsMDFe,
    TMDFeAPI_GetXMLEventoMDFe,
    TMDFeAPI_ConsultaXMLAutenticado
     );

  TEnumServicos_TCommerceAPI = (TCommerceAPI_NaoEncontrado,
    TCommerceAPI_ConsultaRetaguarda,
    TCommerceAPI_ExecutaGravaTransacoes,
    TCommerceAPI_Separar,
    TCommerceAPI_ParametrosMiddleware,
    TCommerceAPI_ConsultaDevolucoes,
    TCommerceAPI_DadosDevolucao,
    TCommerceAPI_ProcessaDevolucao,
    TCommerceAPI_ImprimirCancSeguro,
    TCommerceAPI_ReceberMercadoriaImportacao,
    TCommerceAPI_ProcessaXMLDI,
    TCommerceAPI_ProcessaNotaImportacao,
    TCommerceAPI_BloqueiaOrigem,
    TCommerceAPI_DesbloqueiaOrigem,
    TCommerceAPI_ProximoCodigo,
    TCommerceAPI_ProcessaNFSobreRecibo,
    TCommerceAPI_ListaNossoNumero,
    TCommerceAPI_AtualizaStatusECF,
    TCommerceAPI_PersistePDV,
    TCommerceAPI_ReinicializaPoS,
    TCommerceAPI_ReimpressaoCupomEmNotaFiscal,
    TCommerceAPI_ProcessaNFSesAutomatico,
    TCommerceAPI_GeraXMLTransacoesPendentes,
    TCommerceAPI_ConsultaTitulosBancarios,
    TCommerceAPI_ArquivoRemessaCNAB,
    TCommerceAPI_ProcessaArquivoRetornoCNAB,
    TCommerceAPI_ProcessaNotaDeTransferencia,
    TCommerceAPI_ProcessaNotaCreditoICMS,
    TCommerceAPI_ImportaXMLDFe,
    TCommerceAPI_PersisteParceiro,
    TCommerceAPI_PersisteDAV,
    TCommerceAPI_GeraNotaDAVPreVenda,
    TCommerceAPI_ConsultaModeloOrdemDeSeparacaoDAV,
    TCommerceAPI_ConsultaModeloDeclaracaoTransporte,
    TCommerceAPI_ImprimeOrdemDeSeparacaoDAV,
    TCommerceAPI_ImprimeDeclaracaoTransporte,
    TCommerceAPI_SincronizaSkyhub,
    TCommerceAPI_Get_OrderSkyHub,
    TCommerceAPI_CancelaOrcamento,
    TCommerceAPI_GerarNFESeparacaoDAV,
    TCommerceAPI_SetStatusEcommerce,
    TCommerceAPI_EnviaEmailCotacaoFornecedor,
    TCommerceAPI_ProcessaCotacaoFornecedor,
    TCommerceAPI_AprovarCotacaoFornecedor,
    TCommerceAPI_DefineVencedoresCotacaoFornecedor,
    TCommerceAPI_ProcessaCFeSATComplementar,
    TCommerceAPI_AtualizaStatusDFe,
    TCommerceAPI_CancelaDocumentoEmitido,
    TCommerceAPI_IntegracaoInventarioEstoqueEM4,
    TCommerceAPI_MarcaExportacaoECommerce,
    TCommerceAPI_ConsultaDadosRetaguarda,
    TCommerceAPI_CalculaDescontoDaCampanha,
    TCommerceAPI_Usuarios,
    TCommerceAPI_Parceiros,
    TCommerceAPI_Orcamentos,
    TCommerceAPI_Cancelamento,
    TCommerceAPI_Situacao,
    TCommerceAPI_Exportado,
    TCommerceAPI_ConsultaDadosLGPD,
    TCommerceAPI_ConsultaDocumentosEmitidos,
    TCommerceAPI_AnonimizarDadosLGPD,
    TCommerceAPI_ComparacaoDocumentosCFeSAT,
    TCommerceAPI_RecepcaoTransferencia,
    TCommerceAPI_TabelasDePreco,
    TCommerceAPI_LancamentosDeEstoque,
    TCommerceAPI_SaldosDeEstoque,
    TCommerceAPI_Produtos,
    TCommerceAPI_Lotes,
    TCommerceAPI_SaldoDeLotes,
    TCommerceAPI_ImportaXMLsGuardaToCommerce,
    TCommerceAPI_ConsultaQuantidadeVendasPromocionais,
    TCommerceAPI_AtualizarContasReceberCliente
     );

  TEnumServicos_TImpressoraNaoFiscalAPI = (TImpressoraNaoFiscalAPI_NaoEncontrado,
    TImpressoraNaoFiscalAPI_InicializaImpressoraNaoFiscal,
    TImpressoraNaoFiscalAPI_Ativar,
    TImpressoraNaoFiscalAPI_Desativar,
    TImpressoraNaoFiscalAPI_imprimeTextoNaoFiscal,
    TImpressoraNaoFiscalAPI_imprimeDANFENFCe,
    TImpressoraNaoFiscalAPI_imprimeEvento,
    TImpressoraNaoFiscalAPI_CortarPapel,
    TImpressoraNaoFiscalAPI_getAtivo,
    TImpressoraNaoFiscalAPI_SetvTroco,
    TImpressoraNaoFiscalAPI_ImprimirExtratoCFeSAT,
    TImpressoraNaoFiscalAPI_ImprimirExtratoResumidoCFeSAT,
    TImpressoraNaoFiscalAPI_ImprimirExtratoCancelamento,
    TImpressoraNaoFiscalAPI_AbrirGaveta,
    TImpressoraNaoFiscalAPI_SetUsaCodigoEanImpressao,
    TImpressoraNaoFiscalAPI_ImprimirCupomDeDesconto);

  TEnumServicos_TNFeLocalAPI = (TNFeLocalAPI_NaoEncontrado,
    TNFeLocalAPI_ConsultaFormaEmissaoCFe);

  TEnumServicos_TSSLAPI = (TSSLAPI_NaoEncontrado,
    TSSLAPI_AssinarXML,
    TSSLAPI_DadosCertificado);

  TEnumServicos_TSSLLocalAPI = (TSSLLocalAPI_NaoEncontrado,
    TSSLLocalAPI_DadosCertificado);

  TEnumServicos_TPAFAPI = (TPAFAPI_NaoEncontrado,
    { TODO: Métodos mantidos para compatibilidade com Checkout }
    TPAFAPI_PermiteGeracaoFiscoReducaoZ,
    TPAFAPI_PermiteGeracaoFiscoEstoque,
    TPAFAPI_TransmissaoFiscoReducaoZ,
    TPAFAPI_TransmissaoFiscoEstoque,
    TPAFAPI_InclusaoFiscoReducaoZ,
    TPAFAPI_InclusaoFiscoEstoque,
    TPAFAPI_MensagemPendenciasFiscoReducaoZ,
    TPAFAPI_MensagemPendenciasFiscoEstoque,
    { TODO: Métodos mantidos para compatibilidade com Checkout }
    TPAFAPI_PermiteGeracaoFiscoReducaoZ_2,
    TPAFAPI_PermiteGeracaoFiscoEstoque_2,
    TPAFAPI_TransmissaoFiscoReducaoZ_2,
    TPAFAPI_TransmissaoFiscoEstoque_2,
    TPAFAPI_InclusaoFiscoReducaoZ_2,
    TPAFAPI_InclusaoFiscoEstoque_2,
    TPAFAPI_MensagemPendenciasFiscoReducaoZ_2,
    TPAFAPI_MensagemPendenciasFiscoEstoque_2,
    TPAFAPI_UltimaTransmissaoFiscoReducaoZ,
    TPAFAPI_UltimaTransmissaoFiscoEstoque,
    TPAFAPI_UltimoRegistroFiscoReducaoZ,
    TPAFAPI_UltimoRegistroFiscoEstoque,
    TPAFAPI_MensagemPendenciasPublicFiscoReducaoZ,
    TPAFAPI_MensagemPendenciasPublicFiscoEstoque,
    TPAFAPI_ConsultarPerfilEstado,
    TPAFAPI_GeraTabelaPerfilUFWiki,
    TPAFAPI_VendasIdentificadas,
    TPAFAPI_GeracaoFiscoReducaoZ,
    TPAFAPI_GeracaoFiscoEstoque,
    TPAFAPI_DAVEmitidos,
    TPAFAPI_ImprimeDAV,
    TPAFAPI_ParametrosConfiguracao,
    TPAFAPI_TabelaIndiceTecnicoProducao,
    TPAFAPI_IdentificacaoPAFECF,
    TPAFAPI_RegistrosPAFECF,
    TPAFAPI_GeraArquivoRequisicaoExterna
     );

  TEnumServicos_TPafLocalAPI = (
    TPafLocalAPI_NaoEncontrado,
    TPafLocalAPI_ArquivosPAFECF
     );

  TEnumServicos_TCommerceLocalAPI = (TCommerceLocalAPI_NaoEncontrado,
    TCommerceLocalAPI_GeraBoletoPDF,
    TCommerceLocalAPI_GeraBoleto,
    TCommerceLocalAPI_EnviaEmail,
    TCommerceLocalAPI_ConsultaCNPJCaptcha,
    TCommerceLocalAPI_ConsultaCNPJ,
    TCommerceLocalAPI_ConsultaCPFCaptcha,
    TCommerceLocalAPI_ConsultaCPF,
    TCommerceLocalAPI_ConsultaModelosDAV,
    TCommerceLocalAPI_ImprimeDAV,
    TCommerceLocalAPI_CalculaDescontoDaCampanha,
    TCommerceLocalAPI_ModeloFichaCadastralCliente,
    TCommerceLocalAPI_ImprimirFichaCadastralCliente
     );

  TEnumServicos_TConexaoLocalAPI = (
    TConexaoLocalAPI_NaoEncontrado,
    TConexaoLocalAPI_Sobre,
    TConexaoLocalAPI_TestaComunicacao
     );

  TEnumServicos_TMiddlewareAPI = (TMiddlewareAPI_NaoEncontrado,
    TMiddlewareAPI_RegistraDocumento,
    TMiddlewareAPI_CSRT,
    TMiddlewareAPI_ConsultaQtdDocsPorCNPJ,
    TMiddlewareAPI_AlterarDataMaximaLicencaControle
     );

  TEnumTipoTransacao = (
    ttManutencao,                    //   1 - Manutenção e suporte
    ttCarga,                         //   2 - Carga
    ttCargaInicial,                  //   3 - Carga Inicial
    ttVazia,                         //  10 - Vazia
    ttEtiquetaCliente,               //  22 - Etiqueta de clientes
    ttEtiquetaVolumes,               //  33 - Etiqueta de volumes
    ttPreVenda,                      //  50 - DAV/Pré-Venda
    ttClienteViaPreVenda,            //  51 - Cadastro de clientes via Pré-Venda
    ttSolicitaCredito,               //  52 - Solicitação de Crédito
    ttCancelaPreVenda,               //  59 - Cancela Pré-Venda
    ttDAVOS,                         //  60 - DAV-OS
    ttAbreDia,                       // 100 - Abre Dia
    ttAbreCaixa,                     // 101 - Abre Caixa
    ttCupomFiscal,                   // 102 - Cupom Fiscal
    ttNotaFiscal,                    // 103 - Nota Fiscal
    ttNFCe,                          // 104 - Venda (NFCe)
    ttSAT,                           // 105 - Venda (SAT)
    ttRecibo,                        // 106 - Recibo
    ttRPS,                           // 109 - RPS (Recibo Provisório de Serviços)
    ttBloqueiaCaixa,                 // 200 - Bloqueia o caixa (Shift F10)
    ttPropagandaComBloqueio,         // 201 - Propaganda com bloqueio de caixa  (Shift F11)
    ttPropagandaSemBloqueio,         // 202 - Propaganda sem bloqueio de caixa  (Shift F12)
    ttRetiradaDeCheques,             // 203 - Retirada de cheques
    ttAbreGaveta,                    // 204 - Abre gaveta
    ttReImprimeCaixa,                // 290 - Re-imprime caixa
    ttFechaCaixa,                    // 299 - Fecha caixa
    ttEstornoDeTransacao,            // 300 - Estorno de transações
    ttDevolucao,                     // 301 - Devolução
    ttValePresente,                  // 303 - Ativação de Vale Presente
    ttRecargaValePresente,           // 304 - Recarga de Vale Presente
    ttConsultaValePresente,          // 305 - Consulta de Vale Presente
    ttServicosAdicionais,            // 306 - Serviços adicionais (Seguros, garantia estendida ...)
    ttValeGas,                       // 307 - Vale gás
    ttValePresenteNativo,            // 308 - Lançamento de Vale Presente Nativo (Depósito em conta corrente)
    ttExtratoConsignacao,            // 312 - Extrato de consignação
    ttRecargaTelefone,               // 314 - Recarga de celular
    ttCopiaVenda,                    // 380 - Copia itens de venda
    ttCancelamentoUltimoCF,          // 390 - Cancelamento de Cupom Fiscal
    ttRecebimentoDeClientes,         // 400 - Recebimento de débitos de clientes
    ttRecebimentoTerceiros,          // 401 - Recebimento de contas externas (Títulos, água, luz, telefone... )
    ttDepositoCCC,                   // 402 - Depósito em conta corrente
    ttRetiradaCCC,                   // 403 - Retirada de conta corrente
    ttExtratoCCC,                    // 404 - Extrato de conta corrente
    ttRecebePendencia,               // 405 - Recebimento de pendências
    ttExtratoBonus,                  // 406 - Extrato de bônus
    ttResgateBonus,                  // 407 - Resgate de bônus
    ttFiscalLeituraX,                // 600 - LX (Leitura X)
    ttFiscalLMF,                     // 601 - LMF (Leitura de Memória Fiscal)
    ttFiscalArquivoMF,               // 602 - Arquivo MF (Gera arquivo de Memória Fiscal)
    ttFiscalArquivoMFD,              // 603 - Arquivo MFD (Gera arquivo de Memória Fiscal Detalhada)
    ttFiscalEncerrantes,             // 604 - Encerrantes
    ttFiscalIdentificacaoPAF,        // 605 - Identificação do PAF-ECF
    ttFiscalAbastecimentosPendentes, // 606 - Abastecimentos pendentes
    ttFiscalVendasNoPeriodo,         // 607 - Vendas do período
    ttFiscalIndiceTecnicoProducao,   // 608 - Tabela de índice técnico produção
    ttFiscalParametros,              // 609 - Parâmetros de configuração
    ttFiscalRegistros,               // 610 - Registros do PAF-ECF
    ttFiscalArquivoDF,               // 611 - Arquivo Fiscal do PAF-ECF para DF
    ttFiscalRequisicoesExternas,     // 612 - Requisições Externas Registradas PAF-NFCe
    ttReforco,                       // 700 - Reforço
    ttSangria,                       // 799 - Sangria
    ttCadastroDeClientes,            // 800 - Cadastro de clientes
    ttMesclarDAV,                    // 801 - Mescla de DAVs
    ttImprimirDAV,                   // 802 - Impressão de DAV
    ttTrocaSenha,                    // 803 - Troca de senha
    ttPendenciasTEF,                 // 804 - Pendências de TEF
    ttReImpressao,                   // 805 - Reimpressão de cupom vinculado ou gerencial
    ttTEFAdministrativo,             // 806 - Opções administrativas de TEF
    ttLancamentoDeEstoque,           // 807 - Lançamento de Estoque
    ttCargaPinPadForcada,            // 850 - Carga de tabelas do PinPad (Forçada)
    ttRessarcimentoDeVale,           // 877 - Ressarcimento de Vale Compra
    ttMostraAlertas,                 // 880 - Alertas do sistema (Shift F4)
    ttStatusSefaz,                   // 881 - Status da comunicação com o Sefaz (Shift F5)
    ttStatusServidor,                // 882 - Status da comunicação com o servidor (Shift F6)
    ttStatusTEF,                     // 883 - Status da comunicação com o TEF (Shift F7)
    ttControleDeTransmissao,         // 890 - Controle De Transmissao
    ttConfiguracoes,                 // 891 - Configurações de ambiente
    ttFormula,                       // 892 - Fórmula
    ttExportacaoCadastral,           // 893 - Exportação cadastral
    ttImpressaoContexto,             // 899 - Relatório de configuração
    tteMailNFCe,                     // 997 - Envio de e-Mail da NFC-e
    ttCargaPinPad,                   // 998 - Carga de tabelas do PinPad
    ttFechaDia                       // 999 - Fecha dia
     );

  TEnumAmbienteSEFAZ = (amProducao,
    amHomologacao);

  TEnumIdentificadorDestinatario = (TEnumIdentificadorDestinatarioSefaz, TEnumIdentificadorDestinatarioReceitaFederal);

  TEnumModeloDocumento = (mdCupomFiscal, // Serie Padrão CF
    mdNFCe,                              // Serie Padrão NFCe da Filial ou CE
    mdNFe,                               // Serie Padrão da Filial
    mdCFeSAT,                            // Serie Padrão SAT da Filial ou ST
    mdNFSe,                              // Serie Padrão NFSe da Filial ou SE
    mdInvalido,                          // Não Definido
    mdVazio,                             // Não Definido
    mdCTe,                               // Não Definido
    mdMDFe);                             // Não Definido

  TEnumEnvioEmail = (eeNaoEnvia,
    eeEnviaManual,
    eeEnviaAutomatico);

  TEnumModeloFiscalCFRef = (
    cfRefMaqReg, // 2B – Cupom fiscal emitido por máquina registradora (não ECF)
    cfRefPDV,    // 2C – Cupom fiscal PDV
    cfRefECF);   // 2D – Cupom Fiscal ECF

  TEnumModeloFiscalNFRef = (
    NFRefModelo11A); // 1 - Nota Fiscal modelo 1/1-A.

  TEnumTipoBuscaParceiro = (tbDocumento,
    tbParceiroDocumentoEndereco,
    tbCodigo,
    tbCodigoVinculado,
    tbCodigoCheckout,
    tbCodigoExterno,
    tbCodigoExternoVinculo,
    tbDocumentoVinculado);

  TEnumTipoBuscaEndereco = (tbeDocumento,
    tbeCodigo,
    tbeCodigoCheckout,
    tbeCodigoExterno,
    tbeDadosEndereco);

  //  TEnumImpressoraNaoFiscal = (inDaruma,
  //                              inTexto,
  //                              inOutra);

  /// Tipos de operação para serviço de importação
  TEnumTipoOperacaoDAO = (todInsert,
    todUpdate,
    todDelete);

  /// Status das Importações
  TEnumStatusImportacao = (siImportar, // 0: A Importar
    siOk,                              // 1: Importado
    siErro);                           // 2: Erro na importação

  TEnumComissaoSobre = (
    tfLiquidoAoVender,               // 0 - Líquido ao Vender
    tfBrutoAoVender,                 // 1 - Bruto ao Vender
    tfAReceberNoVencimento,          // 2 - A receber no Vencimento
    tfRecebidoNoRecebimento,         // 3 - Recebido no Recebimento
    tfAReceberNoRecebimento,         // 4 - A receber no Recebimento
    tfRecebidoDataCompensacaoCheque, // 5 - Valor Recebido na Data da Compensação de Cheque
    tfAReceberDataCompensacaoCheque, // 6 - Valor a Receber na Data da Compensação de Cheque
    tfSobreMarkup,                   // 7 - Comissão sobre Markup
    tfMarkupNoMomentoDaVenda         // 8 - Markup no momento da Venda
     );

  TEnumSituacaoDocEmitido = (tfCancelada, tfAberta, tfQuitada);

  TEnumTipoNota = (tnAmbas, // A - Ambas (NFF)
    tnFatura,               // F - Fatura
    tnNotaFiscal);          // N - Nota Fiscal

  TEnumSituacaoGuarda = (sgNulo,
    sgNaoProcessado,
    sgAEnviar,
    sgEnviado,
    sgEnviadoContingencia,
    sgAguardandoVerificacao,
    sgSefazInoperante,
    sgErroValidacao,
    sgErroEnvio,
    sgDenegado,
    sgCancelada,
    sgInutilizada,
    sgInutilizacaoRejeitada,
    sgCancelamentoRejeitado,
    sgResumoDFe,
    sgAguardandoDownloadDFe,
    sgEncerrado,
    sgProcessamentoManifestacaoPendente);

  TEnumModalidadeFrete = (tfEmitente, //0- Contratação do Frete por conta do Remetente (CIF);
    tfDestinatario,                   //1- Contratação do Frete por conta do Destinatário (FOB);
    tfTerceiro,                       //2- Contratação do Frete por conta de Terceiros;
    tfProprioEmitente,                //3- Transporte Próprio por conta do Remetente;
    tfProprioDestinatario,            //4- Transporte Próprio por conta do Destinatário;
    tfSemFrete                        //9- Sem frete
     );

  /// Operações armazenadas na tabela de guarda
  TEnumOperacaoGuarda = (ogNaoDefinido,
    ogOutros,
    ogVenda,
    ogCancelamento);

  TEnumTipoPagamento = (
    tfDinheiro,             // 01 - Dinheiro
    tfCheque,               // 02 - Cheque
    tfCartaoCredito,        // 03 - Cartão de Crédito
    tfCartaoDebito,         // 04 - Cartão de Débito
    tfCreditoLoja,          // 05 - Crédito Loja
    tfValeAlimentacao,      // 10 - Vale Alimentação
    tfValeRefeicao,         // 11 - Vale Refeição
    tfValepresente,         // 12 - Vale Presente
    tfValeCombustivel,      // 13 - Vale Combustível
    tfBoletoBancario,       // 15 - Boleto Bancário
    tfDepositoBancario,     // 16 - Depósito Bancário
    tfPagamentoInstantaneo, // 17 - Pagamento Instantâneo (PIX)
    tfTransfBancario,       // 18 - Transferência bancária, Carteira Digital
    tfProgramaFidelidade,   // 19 - Programa de fidelidade, Cashback, Crédito Virtual
    tfSemPagamento,         // 90 - Sem Pagamento
    tfOutros                // 99 – Outros
     );

  TEnumTipoPedido = (tpDAV, //O - DAV
    tpDAVOS,                //S - DAV-OS
    tpPrevenda,             //P - Pré-Venda
    tpDAVNulo               // Nulo
     );

  TEnumSituacaoItemOrc = (soCancelado, //C - Cancelado
    soConcluido,                       //O - Concluído
    soEmAberto,                        //A - Em aberto
    soEmAndamento,                     //T - Em andamento
    soVendido,                         //E - Faturado/Vendido
    soReservado                        //R - Reservado
     );

  TEnumSituacaoSeparacaoOrc = (ssoAberto, // A - Aberto
    ssoProcessado,                        // P - Processado
    ssNulo                                // Nulo
     );

  TEnumPromocaoItemOrc = (poNaoPromocional, // N - Não Promocional no Plano
    poPromocional,                          // E - Promocional no Plano
    poQualquer,                             // Q - Qualquer Plano
    poNulo                                  // Nulo
     );

  TEnumMontagemItemOrc = (moInterna, // I - Montagem Interna
    moEntrega,                       // T - Montagem na Entrega
    moNenhuma                        // F - Sem Montagem
     );

  TEnumTipoTecnicoItemOrc = (ttCompra, // F - Compra
    ttFrete,                           // T - Frete
    ttNulo                             // Nulo
     );

  TEnumTipoDetalheItemOrc = (tdKit, // K - Kit
    tdTinta,                        // T - Tinta
    tdNulo                          // Nulo
     );

  TEnumTipoPagamentoItemOrc = (tpContrato, // C - Contrato
    tpFaturamento,                         // F - Faturamento
    tpNulo                                 // Nulo
     );

  TEnumTipoEntregaItemOrc = (teClienteLeva, // 0 - Cliente Leva
    teDepositoEntrega,                      // 1 - Depósito Entrega
    teLojaEntrega,                          // 2 - Loja Entrega
    teRetiraDeposito,                       // 3 - Retira no Depósito
    teEmOutraLoja,                          // 4 - Em Outra Loja
    teEntregaFutura,                        // 5 - Entrega Futura
    teApenasOrcamento,                      // 6 - Apenas Orçamento
    teVendaSobEncomenda                     // 7 - Venda Sob Encomenda
     );

  TEnumRegraTipoTributacao = (
    TEnumRegraTipoTributacao_NaoInformado, // Não Informado
    TEnumRegraTipoTributacao_Tributado,    // 0 - Tributado
    TEnumRegraTipoTributacao_NaoTributado, // 1 - Não Tributado
    TEnumRegraTipoTributacao_Isento,       // 2 - Isento
    TEnumRegraTipoTributacao_Substituido,  // 3 - Substituído
    TEnumRegraTipoTributacao_IsentoEstado  // 4 - Isento no Estado
     );

  TEnumCalcSub = (
    TEnumCalcSub_Retem,  // D - Destaca
    TEnumCalcSub_Destaca // R - Retem
     );

  TEnumSituacaoItem = (tfNormal, // 'N' Normal
    tfCancelado                  // 'C' Cancelado
     );

  TEnumEntregaFutura = (efAberto, // A - Aberto
    efEncomenda,                  // E - Encomenda
    efprocessado,                 // P - Processado
    efNulo                        // Nulo
     );

  TEnumTipoEntrega = (tfClienteLeva, // 0 - Cliente Leva
    tfDepositoEntrega,               // 1 - Depósito Entrega
    tfLojaEntrega,                   // 2 - Loja Entrega
    tfRetiraNoDeposito,              // 3 - Retira no Depósito
    tfEmOutraLoja,                   // 4 - Em Outra Loja
    tfEntregaFutura,                 // 5 - Entrega Futura
    tfApenasOrcamento,               // 6 - Apenas Orçamento
    tfVendaSobEncomenda              // 7 - Venda sob Encomenda
     );

  TEnumSistemaOrigem = (opApp, // A - App
    opSite,  // S - Site
    opHome   // H - Home
  );

  TEnumSitTributISSQN = (TEnumSitTributISSQN_Isenta, // I - ISENTA
    TEnumSitTributISSQN_Normal,                      // N - NORMAL
    TEnumSitTributISSQN_Retida,                      // R - RETIDA
    TEnumSitTributISSQN_Substituta,                  // S - SUBSTITUTA
    TEnumSitTributISSQN_Nula                         // Nula
     );

  TEnumResponsavelRetencao = (TEnumResponsavelRetencao_Nenhum, // '' - SEM RETENCAO
    TEnumResponsavelRetencao_Tomador,                          // 1 - TOMADOR
    TEnumResponsavelRetencao_Prestador                         // 2 - PRESTADOR
    );

  TEnumSituacaoSeparacao = (
    ssAberto,      //A - Aberto
    ssCancelado,   //C - Cancelado
    ssDevolver,    //D - Devolver
    ssFalta,       //F - Em Falta
    ssEncomendado, //O - Encomendado
    ssEntregue,    //E - Entregue
    ssNaoSeparar,  //N - Não Separar
    ssSeparado     //P - Separado
     );

  TEnumLancaEstoque = (
    leBaixa,           // S - Baixa Estoque
    leConfirmaReserva, // C - Confirma Reserva
    leNao,             // N - Nao
    leReserva);        // R - Reserva

  TEnumModeloImpressora = (
    miNenhuma,   // ppTexto
    miDaruma,    // ppEscDaruma
    miEpson,     // ppEscPosEpson
    miBematech,  // ppEscBematech
    miSweda,     // ppEscPosEpson
    miEscVox,    // ppEscVox
    miDiebold,   // ppEscDiebold
    miEpsonP2,   // ppEscEpsonP2
    miCustomPos, // ppCustomPos
    miPosStar,   // ppEscPosStar
    miZJiang,    // ppEscZJiang
    miGPrinter,  // ppEscGPrinter
    miDatecs,    // ppEscDatecs
    miEscSunmi,  // ppEscSunmi
    miExterno    // ppExterno
     );

  TEnumTipoVenda = (
    tvAmbas,     // A - Ambas
    tvDevolucao, // - - Devolução
    tvVenda,     // + - Venda
    tvNulo);     // Nulo

  TEnumFlagNfe = (
    fnNaoEnviada,      // 0 - Não Enviada
    fnAutorizada,      // 1 - Autorizada
    fnRejeitada,       // 2 - Rejeitada
    fnCancelada,       // 3 - Cancelada
    fnInutilizada,     // 4 - Inutilizada
    fnEnviandoAoSefaz, // 5 - Enviando ao Sefaz
    fnDenegada,        // 6 - Denegada
    fnErroImportacao,  // 8 - Erro de Importação
    fnNulo);           // Nulo

  TEnumDetTipoParceiro = (
    dtpGovernoEst, // E - Governo Estadual
    dtpGovernoFed, // F - Governo Federal
    dtpGovernoMun, // M - Governo Municipal
    dtpOutros,     // O - Outros
    dtpNulo);      // Nulo

  TEnumFinalidadeNfe = (
    fnNormal,       // 1 - Normal
    fnComplementar, // 2 - Complementar
    fnAjuste,       // 3 - Ajuste
    fnDevolucao,    // 4 - Devolução
    fnNaoDefinido); // Não definido

  TEnumVersaoNfe = (
    vn310,          // Versão 3.1
    vn400,          // Versão 4.0
    vnNaoDefinido); // Não definido

  TEnumVersaoMDFe = (
    vm300,          // Versão 3.0
    vmNaoDefinido); // Não definido

  TEnumOrigemCancelamento = (
    ocCheckout,   // 1 - Checkout
    ocBackoffice, // 2 - Backoffice
    ocNulo);      // Nulo

  TEnumTipoNFEspecial = (
    tneAvulsa,    // A - Avulsa
    tneImportada, // I - Importada
    tneNulo);     // Nulo

  TEnumTipoConta = (
    ttfGerencial,    // G - Gerencial
    ttfNumeraria,    // N - Numerária
    ttfMovimentacao, // M - Transferência
    ttfNulo);        // Nulo

  TEnumSitImpressaoEstorno = (
    sieImpressa, // I - Impressa
    siePendente, // P - Pendente para Impressão
    sieNulo);    // Nulo

  TEnumPeriodoEntrega = (
    peManha, // M - Manhã
    peTarde, // T - Tarde
    peNoite, // N - Noite
    peNulo); // Nulo

  TEnumTipoParceiro = (
    TEnumTipoParceiro_Fisica,   // 0 - Física
    TEnumTipoParceiro_Juridica, // 1 - Jurídica
    TEnumTipoParceiro_Entidade, // 2 - Entidade
    TEnumTipoParceiro_Especial, // 3 - Especial
    TEnumTipoParceiro_ME,       // 4 - M.E.
    TEnumTipoParceiro_Filial);  // 5 - Filial

  TEnumSexo = (
    sxNaoConhecido, // 0 - Não conhecido
    sxMasculino,    // 1 - Masculino
    sxFeminino);    // 2 - Feminino

  TEnumEstadoCivil = (
    ecIndefinido,   // 0 - Indefinido
    ecSolteiro,     // 1 - Solteiro
    ecCasado,       // 2 - Casado
    ecViuvo,        // 3 - Viúvo
    ecDivorciado,   // 4 - Divorciado
    ecUniaoEstavel, // 5 - União estável
    ecSeparado);    // 6 - Separado

  TEnumTipoBonus = (
    tbBonusCliente,   // C - Bônus concedido como cliente
    tbBonusIndicador, // I - Bônus concedido como indicador
    tbBonusVendedor,  // V - Bônus concedido como vendedor
    tbBonusVendas,    // X - Bônus referente à vendas
    tbBonusOutros);   // O - Outros

  TEnumTipoProduto = (
    tfMaterial,    // 0 - Material
    tfServico,     // 1 - Serviço
    tfTerceirizado // 2 - Terceirizado
     );

  TEnumVinculoItem = (
    viAberto,   // A - Aberto
    viCompleto, // C - Completo
    viNao       // N - Não é vínculo
     );

  TEnumTipoProduto001 = (
    tp001Material, // M - Material
    tp001Servico,  // S - Serviço
    tp001Nulo      // N - Nulo
     );

  TEnumSitKit = (
    skHeader, // 1 - Header
    skNormal, // 2 - Normal
    skItemKit // 3 - Item Kit
     );

  TEnumPenAtu = (
    pnAProcessar,  // T - A processar
    pnProcessando, // P - Processando
    pnNulo         // Nulo
     );

  TEnumOrigemProduto = (
    TEnumOrigemProduto_0_Nacional,         // 0 - Nacional
    TEnumOrigemProduto_1_EstImpDir,        // 1 - Estrangeira Importação Direta
    TEnumOrigemProduto_2_EstMercInt,       // 2 - Estrangeira Mercado Interno
    TEnumOrigemProduto_3_NacSup40,         // 3 - Nacional (superior 40%)
    TEnumOrigemProduto_4_NacProcProd,      // 4 - Nacional (Processos Produtivo)
    TEnumOrigemProduto_5_NacInf40,         // 5 - Nacional (inferior 40%)
    TEnumOrigemProduto_6_EstImpDirSemSim,  // 6 - Estrangeira I.D. s/Similar
    TEnumOrigemProduto_7_EstMercIntSemSim, // 7 - Estrangeira M.I. s/Similar
    TEnumOrigemProduto_8_NacImp70);        // 8 - Nacional, Import. > a 70%

  TEnumNatCredPISCOFINS = (
    ncAquisicaoBensRevenda,           // 01 - Aquisição de bens para revenda
    ncAquisicaoBensUtilComoInsumo,    // 02 - Aquisição bens util. c/ insumo
    ncAquisicaoServUtilComoInsumo,    // 03 - Aquisição serv. util. insumo
    ncEnergiaEletricaTermica,         // 04 - Energia elétrica e térmica
    ncAlugueisPredios,                // 05 - Energia elétrica e térmica
    ncAlugueisMaqEquip,               // 06 - Aluguéis de máquinas e equip.
    ncArmazenagemMercadoriaFrete,     // 07 - Armazenagem mercadoria e frete
    ncContraprestacoesMercantil,      // 08 - Contraprestações mercatil
    ncCreditoSobreEncargoDepreciacao, // 09 - Créd. s/ encargos depreciação
    ncCreditoBaseValorAquisicao,      // 10 - Créd. c/ base valor aquisição
    ncAmortDeprecEdificBenfImoveis,   // 11 - Amort. deprec. edific. imóveis
    ncDevolucaoVendasSujIncidencia,   // 12 - Dev. de vendas suj. Incidência
    ncOutrasOperComDireitoACredito,   // 13 - Outras Operações direito créd.
    ncAtividadeTransporteCargas,      // 14 - Atividade Transporte de Cargas
    ncCustoUnidadeImobiliaria,        // 15 - Custo de Unidade Imobiliária
    ncCustoUnidadeNaoConcluida,       // 16 - Custo unidade não concluída
    ncAtividadePrestServico,          // 17 - Atividade de Prestação de Serv
    ncEstoqueAberturaBens,            // 18 - Estoque de abertura de bens
    ncNulo                            // Nulo
     );

  TEnumFormadorPreco = (
    fpPromocaoPorPlano,   // 2 - Promoção por Plano
    fpDAV,                // A - DAV
    fpCambio,             // C - Câmbio
    fpDesconto,           // D - Desconto
    fpPromocaoFechamento, // F - Promoção de Fechamento
    fpInformado,          // I - Informado
    fpKit,                // K - Kit
    fpNF,                 // N - NF
    fpPromocao,           // P - Promoção
    fpFormulaSQL,         // S - Fórmula SQL
    fpTabela,             // T - Tabela
    fpNulo                // Nulo
     );

  EnumRegimeTributario = (
    rtSimples,
    rtPresumido,
    rtReal,
    rtSimplesComExcesso);

  TEnumTipoTribSimples = (ttsNaoSeAplica, // Não se aplica
    ttsNaoTributado,                      // N - Não tributado
    ttsTributacaoOriginal,                // O - Tributação original
    ttsNaoTribExcetoSubstituidos          // S - Não trib. exceto substituídos
     );

  TEnumRegTriEspNFSe = (
    TEnumRegTriEspNFSe_Nenhum,                    // 0 - Nenhum
    TEnumRegTriEspNFSe_MicroempresaMunicipal,     // 1 - MicroempresaMunicipal
    TEnumRegTriEspNFSe_Estimativa,                // 2 - Estimativa
    TEnumRegTriEspNFSe_SociedadeProfissionais,    // 3 - SociedadeProfissionais
    TEnumRegTriEspNFSe_Cooperativa,               // 4 - Cooperativa
    TEnumRegTriEspNFSe_MicroempresarioIndividual, // 5 - MicroempresarioIndividual
    TEnumRegTriEspNFSe_MicroempresarioEmpresaPP,  // 6 - MicroempresarioEmpresaPP
    TEnumRegTriEspNFSe_LucroReal,                 // 7 - LucroReal
    TEnumRegTriEspNFSe_LucroPresumido,            // 8 - LucroPresumido
    TEnumRegTriEspNFSe_SimplesNacional            // 9 - SimplesNacional
     );

  TEnumTipoNatureza = (
    TEnumTipoNatureza_Compra,                  // P - Compra
    TEnumTipoNatureza_ConsumoInterno,          // C - Consumo interno
    TEnumTipoNatureza_Devolucao,               // D - Devolução
    TEnumTipoNatureza_DevolucaoCompra,         // M - Devolução de compra
    TEnumTipoNatureza_EntradaViaTransferencia, // E - Entrada via transferência
    TEnumTipoNatureza_NaoClassificado,         // N - Não classificado
    TEnumTipoNatureza_NotaComVinculoAnterior,  // A - Nota com vínculo anterior
    TEnumTipoNatureza_NotaComVinculoFuturo,    // F - Nota com vínculo futuro
    TEnumTipoNatureza_SaidaViaTransferencia,   // S - Saída via transferência
    TEnumTipoNatureza_Venda,                   // V - Venda
    TEnumTipoNatureza_DevolucaoTransferencia,  // R - Devolução de transferência
    TEnumTipoNatureza_ComplementarAjuste,      // J - Complementar/Ajuste
    TEnumTipoNatureza_Estorno,                 // B - Estorno
    TEnumTipoNatureza_Sobra,                   // O - Sobra
    TEnumTipoNatureza_Importacao,              // I - Importação
    TEnumTipoNatureza_NaoInformado);           // Não informado

  TEnumSituacaoRecebimento = (
    paAberto,    // 'A' Aberto
    paCancelado, // 'C' Cancelado
    paEstornado, // 'X' Estornado
    paPago       // 'P' Pago
     );

  TEnumContaCorrenteStatus = (
    ccsAberto,
    ccsFaturamento,
    ccsPagamento,
    ccsSuspensos);

  TEnumContaCorrenteTipoLanc = (
    tlContrato,                // A - Contrato
    tlTrocoRecebimento,        // B - Troco no recebimento
    tlRecebimentoCC,           // C - Recebimento de C/C
    tlDepositoCC,              // D - Depósito na C/C
    tlEstornoCC,               // E - Estorno de C/C
    tlDebitoFornecedor,        // F - Débito para o fornecedor
    tlFaturaClienteGlobal,     // G - Fatura cliente global
    tlRecebimentoCheque,       // H - Recebimento de Cheque
    tlRetiradaCC,              // I - Retirada de C/C
    tlCreditoComissao,         // J - Credita comissão
    tlValeCompra,              // K - Vale Compra
    tlDevolucaoVendaCC,        // L - Devolução de venda em C/C
    tlRecebimentoCCMeioCC,     // M - Receb. de C/C com o meio C/C
    tlEstornoCCNoCanc,         // N - Estorno de C/C no cancelamento
    tlFaturamentoOS,           // O - Faturamento referente a OS
    tlGeraCCCartaoProprio,     // P - Gera C/C cartão próprio
    tlEstornoFaturamentoCC,    // Q - Estorno de faturamento de C/C
    tlRecebimentoRec,          // R - Recebimento de REC
    tlDescRecebimentoRec,      // S - Desconto no recebimento de C/C
    tlTrocoVenda,              // T - Troco na venda
    tlEstornoParcContraLancCC, // U - Estorno parc. contra lanc. C/C
    tlVendaComCC,              // V - Venda com C/C
    tlConciliacaoBanc,         // W - Conciliação banc./Gerar cred.
    tlExportaCCC,              // X - Exporta CCC
    tlLancamentoExtrato,       // Z - Lançamento extrato
    tlNulo);                   // Nulo

  TEnumTipoPortador = (
    tpBancos,    // B - Bancos
    tpCartoes,   // C - Cartões de Crédito
    tpECF,       // E - ECFs
    tpLimites,   // L - Limites C/C
    tpOutros,    // O - Outros
    tpPortadores // P - Portadores
     );

  TEnumTipoSAT = (
    tsAparelhoSAT,
    tsEmuladorOffline,
    tsSDKTanca);

  TEnumOrigemLancamento = (
    olBackoffice, // B - Backoffice
    olCheckout,   // C - Checkout
    olScripts,    // I - Scripts Internos
    olNulo);      // Nulo

  TEnumSituacaoCancelamento = (
    scVendaCanceladaNoECF, // C - Venda Cancelada no ECF
    scDevolucao,           // D - Devolução
    scTransacaoCancelada,  // T - Transação Cancelada
    scOutros,              // O - Outros
    scEstornado);          // E - Estornado

  TEnumSituacaoTEF = (
    stCancelado,      // C - Cancelado
    stSucesso,        // S - Sucesso
    stImpressaoOk,    // M - Impressão Ok
    stErroImpressao); // E - Erro na Impressão

  TEnumBandeiraCartao = (
    bcVazio,           // 0 - Nenhuma
    bcVisa,            // 1 – VISA
    bcMastercard,      // 2 – Mastercard
    bcAmericanExpress, // 3 – American Express
    bcSorocred,        // 4 – Sorocred
    bcDinersClub,      // 5 - Diners Club
    bcElo,             // 6 – Elo
    bcHipercard,       // 7 – Hipercard
    bcAura,            // 8 – Aura
    bcCabal,           // 9 – Cabal
    bcOutros);         // 99 – Outros

  TEnumRegimeTributario = (
    rtVazio,             // 0 - Nenhum
    rtSimplesNacional,   // 1 – Simples Nacional;
    rtSimplesNacionalEx, // 2 – Simples Nacional – excesso de sublimite de receita bruta;
    rtRegimeNormal);     // 3 – Regime Normal.

  TEnumTipoIntegracaoPagamento = (
    tiVazio,        // 0
    tiIntegradoTEF, // 1 – Pagamento Integrado com o sistema de
    //     automação da empresa. Exemplo: TEF,
    //     Comércio eletrônico.
    tiNaoIntegradoPOS); // 2 – Pagamento não integrado com o sistema
  //     de automação da empresa.
  //     Exemplo: equipamento POS.

  TEnumCaixaOrigem = (
    coVenda,                //1 - Venda
    coRecebimento,          //2 - Recebimento
    coSangria,              //3 - Sangria
    coReforco,              //4 - Reforço
    coDeposito,             //5 - Depósito
    coRetirada,             //6 - Retirada
    coRecebimentoDevolucao, //7 - Recebimento de devolução
    coDevolucaoVendas,      //8 - Devolução de Vendas
    coDiferenca,            //9 - Diferença
    coRecebimentoTerceiro); //T - Recebimento de Terceiro

  TEnumTipoMeio = (
    tmQualquer,             // 'Q' Qualquer
    tmCheque,               // 'H' Cheque
    tmOutros,               // 'O' Outros
    tmBoleto,               // 'B' Boleto
    tmCarteiraCarne,        // 'N' Carteira/Carnê
    tmTEFs,                 // 'T' TEFs
    tmCartaoDebito,         // 'D' Cartão Débito
    tmCartaoCredito,        // 'C' Cartão Crédito
    tmPosDebito,            // '1' Débito via POS
    tmPosCredito,           // '2' Crébito via POS
    tmMoedaCorrente,        // 'R' Moeda Corrente
    tmMoedaEstrangeira,     // 'E' Moeda Estrangeira
    tmContaCorrente,        // 'F' Conta Corrente
    tmValeCompra,           // 'V' Vale Compra
    tmPendencia,            // '9' Pendência
    tmFidelidade,           // 'I' Fidelidade
    tmValePresenteViaTEF,   // 'P' Vale Presente via TEF
    tmValePresenteNativo,   // 'S' Vale Presente Nativo
    tmDepositoBancario,     // 3 - Depósito Bancário
    tmPagamentoInstantaneo, // 4 - Pagamento Instantâneo (PIX)
    tmTransfBancario,       // 5 - Transferência bancária, Carteira Digital
    tmProgramaFidelidade    // 6 - Programa de fidelidade, Cashback, Crédito Virtual
     );

  TEnumFlagFinanceiro = (
    tfReforcoConfirmado, //R - Reforço Confirmado
    tfReforcoEmAberto,   //A - Reforço em Aberto(Positivo)
    tfReforcoSangria,    //I - Reforço Sangria(Negativo)
    ttfSimples           //S - Simples(Não Identificada)
     );

  TEnumControleAlteracaoDev = (
    caTabelaLock, // Pela tabela TT_LCK
    caSigNat);    // Pelo SIGNAT

  TEnumOperacaoServicoCommerce = (
    opCompleta,
    opCompletaSemXML,
    opApenasXML);

  TEnumCancelamentoSefaz = (
    csNaoSeAplica,    // 0 - Não se aplica
    csAutenticado,    // A - Autenticado
    csNaoAutenticado, // N - Não Autenticado
    csDuvida);        // D - Dúvida

  TEnumTipoOperacaoTEF = (
    toCredito,      // C - Crédito
    toDebito,       // D - Débito
    toValePresente, // P - Vale Presente
    toNulo);        // Nulo

  TEnumTipoCobrancaTEF = (
    tcPortadores,     // P - Portadores
    tcBancos,         // B - Bancos
    tcCartoesCredito, // C - Cartões de Crédito
    tcECFs);          // E - ECFs

  TEnumSituacaoItemTEF = (siAberto, // A - Aberto
    siPago,                         // P - Pago
    siCancelado);                   // C - Cancelado

  TEnumTipoDocumentoImportacao = (
    tiDeclaracaoImportacao,             //0 - Declaração de Importação
    tiDeclaracaoSimplificadaImportacao, //1 - Declaração Simplificada de Importação
    tiDeclaracaoImportacaoNulo          //Nulo
     );
  TEnumSituacaoTransitoImportacao = (
    tiImportacaoEmTransito,  //1 - Importação em trânsito
    tiImportacaoRecebida,    //2 - Importação Recebida
    tiTransitoImportacaoNulo //Nulo
     );

  TEnumViaTransporteDI = (
    tiSemTransporte,     // 0 - Sem Via de Transporte
    tiMaritima,          // 1 - Marítima
    tiFluvial,           // 2 - Fluvial
    tiLacustre,          // 3 - Lacustre
    tiAerea,             // 4 - Aérea
    tiPostal,            // 5 - Postal
    tiFerroviaria,       // 6 - Ferroviária
    tiRodoviaria,        // 7 - Rodoviária
    tiConduto,           // 8 - Conduto / Rede Transmissão
    tiMeiosProprios,     // 9 - Meios Próprios
    tiEntradaSaidaFicta, // 10 - Entrada / Saída ficta
    tiCourier,           // 11 - Courier
    tiHandcarry          // 12 - Handcarry
     );

  TEnumIntermediacaoDI = (
    inNaoInformada, // 0 - Não informada
    inContaPropria, // 1 - Importação por conta própria
    inContaOrdem,   // 2 - Importação por conta e ordem
    inEncomenda     // 3 - Importação por encomenda
     );

  TEnumTipoDI = (tpDeclaracaoImportacao, // 0 - Declaração de Importação.
    tpDeclaracaoImportacaoSimplificada   // 1 - Declaração Simplificada de Imp
     );

  TEnumRelacaoParceiro = (
    rpCliente,               //0 - Todo parceiro é um Cliente
    rpFilial,                //F - Filial
    rpClienteTransportadora, //A - Cliente Transportadora
    rpCartoes,               //C - Cartões
    rpFornecedor,            //F - Fornecedor
    rpIndicadorVenda,        //I - Indicador Venda
    rpMarca,                 //M - Marca
    rpTecInterno,            //N - Tec. Interno
    rpMotorista,             //O - Motorista
    rpRepresentante,         //R - Representante
    rpTransportador,         //T - Transportador
    rpTecExterno             //X - Técnico Externo
     );

  TSetOfRelacaoParceiro = set of TEnumRelacaoParceiro;

  TEnumStatusRecebimentoTerceiro = (
    rtAEstornar, // S - A Estornar
    rtAberto,    // A - Aberto
    rtEstornado, // E - Estornado
    rtPago);     // P - Pago

  TEnumStatusReservaFidelidade = (
    rfCancelamentoEmAndamento, // CA
    rfCancelamentoRealizado,   // CR
    rfConfirmacaoEmAndamento,  // AA
    rfConfirmacaoRealizado,    // AR
    rfDevolucaoEmAndamento,    // DA
    rfDevolucaoRealizado,      // DR
    rfReservaEmAndamento,      // RA
    rfReservaRealizada         // RR
  );

  TEnumCadastroDI = (
    caIncompleto, //I - Incompleto
    caCompleto    //C - Completo
     );

  TEnumSituacaoServicoAdicional = (
    saAberto,    // A - Aberto
    saCancelado, // C - Cancelado
    saDevolvido, // D - Devolvido
    saVendido);  // F - Vendido

  TEnumSolucaoPendencia = (
    spCancelamentoTransacao, // C - Cancelamento da Transação
    spFechamentoCaixa,       // F - Fechamento de caixa
    spRecebimentoPendencia,  // R - Recebimento de pendência
    spEstornoRecebimento,    // E - Estorno de recebimento
    spDesfazResolucao,       // D - Desfaz resolução
    spDesfazEstorno,         // X - Desfaz Estorno
    spNaoDefinida);

  TEnumUsoCaixa = (
    ucNaoInformado,             // Não Informado
    ucSangria,                  // 0 - Sangria
    ucReforco,                  // 1 - Reforço
    ucRessarcimentoValeCompra); // 2 - Ressarcimento de Vale Compra

  TEnumEmailSituacao = (
    esPendente,          // P - Envio pendente
    esEnviado,           // E - Enviado
    esErroNoEnvio,       // X - Erro no envio
    esErroEnvioMailTo,   // D - Destinatário inválido
    esErroEnvioCCList,   // C - Destinatário CC inválido
    esErroEnvioBCCList,  // B - Destinário BCC inválido
    esErroEnvioMailFrom, // F - Remetente inválido
    esErroEnvioOutros    // O - Outros erros no envio
    );

  TEnumEmailCriptografia = (
    ecSemCriptografia, // 0 - Sem criptografia
    ecSSL,             // 1 - SSL
    ecTLS);            // 2 - TLS

  TEnumIndicadorPresenca = (
    ipNaoInformado,
    ipNaoSeAplica,                     // 0 – não se aplica (nf-e de ajuste/compl.)
    ipOperacaoPresencial,              // 1 – operação presencial
    ipOperacaoPelaInternet,            // 2 – operação pela Internet
    ipOperacaoPorTelefone,             // 3 – operação por telefone
    ipNFCeEmOperacaoEntregaADomicilio, // 4 – NFC-e em operação com entrega a domicílio
    ipOperacaoPresForaEstab,           // 5 - operação presencial fora do estabelecimento
    ipOperacaoNaoPresencial);          // 9 – operação não presencial (outros)

  TEnumIdDestinoOperacao = (
    doNaoInformado,
    doOperacaoInterna,       // 1 – Operação Interna
    doOperacaoInterestadual, // 2 – Operação Interestadual
    doOperacaoComExterior);  // 3 – Operação com exterior

  TEnumTipoDocumentoFiscal = (
    tpNaoInformado,
    tpEntrada, // 0 - Entrada
    tpSaida);  // 1 - Saída

  TEnumModalidadeBC = (
    //    mbNaoInformado,
    //    mbVazio,
    mbMargemValorAgregado, // 0 - Margem Valor Agregado (%)
    mbPauta,               // 1 - Pauta (Valor)
    mbPrecoTabelado,       // 2 - Preço Tabelado Máx. (valor)
    mbValorOperacao);      // 3 - Valor da operação

  TEnumModalidadeBCST = (
    //    bsNaoInformado,
    bsPrecoTabelado,       // 0 – Preço tabelado ou máximo sugerido
    bsListaNegativa,       // 1 - Lista Negativa (valor)
    bsListaPositiva,       // 2 - Lista Positiva (valor)
    bsListaNeutra,         // 3 - Lista Neutra (valor)
    bsMargemValorAgregado, // 4 - Margem Valor Agregado (%)
    bsPauta,               // 5 - Pauta (valor)
    bsValordaOperacao      // 6 - Valor da Operação
     );

  TEnumTabelaReplicacao = (trGuarda, // G - Guarda
    trInutilizacao,                  // I - Inutilizacao
    trEmail,                         // E - E-mail
    trEvento);                       // V - Evento

  TEnumAplicacaoRedAliq = (
    TEnumAplicacaoRedAliq_PessoasJuridicas,               // FLGRED = 'J'
    TEnumAplicacaoRedAliq_PessoasJuridicasExcetoRevendas, // FLGRED = 'E'
    TEnumAplicacaoRedAliq_SomenteContribuintes,           // FLGRED = 'C'
    TEnumAplicacaoRedAliq_SomenteRevendas                 // FLGRED = 'R'
     );

  TEnumAplicacaoRedICMSConsumidorFinal = (
    TEnumAplicacaoRedICMSConsumidorFinal_NaoAplica,
    TEnumAplicacaoRedICMSConsumidorFinal_SomenteDentro,
    TEnumAplicacaoRedICMSConsumidorFinal_SomenteFora,
    TEnumAplicacaoRedICMSConsumidorFinal_Todos
     );

  TEnumRegimeUF = (
    TEnumRegimeUF_Normal,  // 0 - Normal
    TEnumRegimeUF_Especial // 1 - Especial
     );

  TEnumTipoDocumento = (
    TEnumTipoDocumento_RG,
    TEnumTipoDocumento_IE
     );

  TEnumRegraTipoSubstituicao = (
    TEnumRegraTipoSubstituicao_Tributa,   // 1 - Tributa
    TEnumRegraTipoSubstituicao_DestacaST, // 2 - Destaca ST. Ou seja, a nota não tem ST, o valor é apresentado na observação.
    TEnumRegraTipoSubstituicao_CalculaST  // 3 - Calcula ST. ST é calculada normalmente.
     );

  TEnumTipoMPBem = (
    TEnumTipoMPBem_Vazio,                  // Vazio
    TEnumTipoMPBem_Conj_CPU_Monitor_Mouse, // C - Conj. CPU, Monitor e Mouse
    TEnumTipoMPBem_CPU,                    // U - CPU
    TEnumTipoMPBem_Modem,                  // D - Modem
    TEnumTipoMPBem_Monitor,                // M - Monitor
    TEnumTipoMPBem_Mouse,                  // O - Mouse
    TEnumTipoMPBem_Notebooks,              // N - Notebooks
    TEnumTipoMPBem_Roteadores,             // R - Roteadores
    TEnumTipoMPBem_Smartphones,            // S - Smartphones
    TEnumTipoMPBem_Tablet,                 // T - Tablet
    TEnumTipoMPBem_Teclado,                // E - Teclado
    TEnumTipoMPBem_AllinOne                // A - All in One
     );

  TEnumPerfil = (pPerfil_NaoDefinido,
    pPerfil_T,
    pPerfil_V,
    pPerfil_W
    //pPerfil_R,
    //pPerfil_S,
    //pPerfil_U,
    //pPerfil_X,
    //pPerfil_Y,
    //pPerfil_Z,
    //pPerfil_9
     );

  TEnumRequisitoPerfil = (rpNulo, //Valor não definido
    rpExigido,                    //E = Exigido (a UF poderá recusar o PAF-ECF caso o requisito não seja atendido)
    rpExigidoUF,                  //EUF = Exigido exclusivamente pela UF identificada no requisito e não aceito nas demais
    //      (a UF especificada no requisito poderá recusar o PAF-ECF caso o requisito não seja atendido)
    rpNaoExigido,      //NE = Não Exigido (requisito de implementação obrigatória, mas não exigido pela unidade federada, embora seja aceito)
    rpAceito,          //A = Aceito (requisito de implementação não obrigatória que é aceito pela unidade federada)
    rpNaoAceito,       //NAC = Não Aceito (a UF poderá recusar o PAF-ECF caso a função seja implementada em seu respectivo perfil)
    rpNaoDefinido,     //ND = Requisito Não Definido pela Unidade Federada.
    rpNaoExistenteER); //? = Requisito Não Existente na ER aplicada para o Perfil.

  TEnumFuncionalidadePAFECF = (fpNaoDefinida,  // Requisito Inválido/Não Definido
    fpExigePAFECF,                             // EXIGEPAF - Exige PAF-ECF
    fpEmitirDAVNaoFiscal,                      // EMITIRDAVNAOFISCAL - IV.3 - Permitir impressão de DAV em impressora não fiscal para os estados
    fpEmitirPreVenda,                          // EMITIRPREVENDA - V.11 - Permitir impressão de número de pré-venda para os estados
    fpRegistrarNotaManual,                     // REGISTRARNOTAMANUAL - XXVIII.7 - Permitir registrar nota manual para os estados
    fpGerarEspelhoMFD,                         // GERAR_ESPELHO_MFD - VII.19 - Define se gera arquivo Espelho MFD do Menu Fiscal
    fpGerarVendasIdentificadas,                // GERAR_VENDAS_IDENTIFICADAS - VII.22 - Define se gera arquivo Vendas Identificadas pelo CPF/CNPJ do Menu Fiscal
    fpGerarArquivo1704,                        // GERAR_ARQ_1704 - VII.5A - Define se gera arquivo Arq 17/04 do Menu Fiscal
    fpBloquearNFNaoManualECFForaFuncionamento, // BLOQUEAR_NF_ECF_FORA - XXVIII.7 - Bloqueia a emissão de NF (não manual) com ECF fora de funcionamento - O requisito correto para funcionalidade é XXVIII.7B contudo não foi publicado na ER utilizada.
    fpGerarLeituraMFD,                         // GERAR_LEITURA_MFD - XII.1 - Define se gera leitura da memória fiscal automaticamente na primeira Redução Z de cada mês
    fpGerarFiscoReducaoZ,                      // GERAR_FISCO_REDUCAO_Z - LVIII.4 - Define geração e transmissão do arquivo FISCO-REDUÇÃO-Z
    fpBloquearFiscoReducaoZ,                   // BLOQUEAR_FISCO_REDUCAO_Z - LVIII.4.3 - Bloqueia PAF até transmissões pendentes do arquivo FISCO-REDUÇÃO-Z sejam enviadas
    fpGerarFiscoEstoque,                       // GERAR_FISCO_ESTOQUE - LIX.1 - Define geração e transmissão do arquivo FISCO-ESTOQUE
    fpGerarAutoRegistrosPAFECF,                // GERAR_AUTO_REGISTROS_PAFECF - XXVI.5 - Define geração automática do arquivo Registros do PAF-ECF
    fpPermitirTrocoTEF                         // PERMITIR_TROCO_TEF - XVI.4A1 - Permitir Troco com TEF
     );

  // Enumerador usado em TDocEmitido para definir os tipos de notas emitidas pelo Middleware.
  TEnumInicializaParaEmissaoDe = (
    ieParaNFDevolucao,
    ieParaNFImportacao,
    ieParaNFSobreRecibo);

  TEnumSituacaoRomaneio = (
    srAberto,    // A - Aberto
    srCancelado, // C - Cancelado
    srEntregue,  // E - Entregue
    srFechado    // F - Fechado
     );

  TEnumTintometrico = (
    TEnumTintometrico_Nenhum,    // Nenhum
    TEnumTintometrico_SelfColor, // 0 - SelfColor
    TEnumTintometrico_ShotColor  // 1 - ShotColor
     );

  TEnumMensageriaDfe = (
    TEnumMensageriaDfe_TotallMiddleware, // 0 - Totall Middleware
    TEnumMensageriaDfe_EmiteNfe,         // 1 - Emite NF-e
    TEnumMensageriaDfe_CTe,              // 2 - CTe
    TEnumMensageriaDfe_MDFe              // 2 - MDFe
     );

  TEnumTipoImpressao = (
    TEnumTipoImpressao_Retrato,
    TEnumTipoImpressao_Paisagem
     );

  TEnumTipoEmissao = (
    TEnumTipoEmissao_Normal, // 0 - Emissão Normal
    TEnumTipoEmissao_SVCAN,  // 1 - Contingência SVC-AN
    TEnumTipoEmissao_SVCRS,  // 2 - Contingência SVC-RS
    //TEnumTipoEmissao_FSEG,   // 3 - Contingência em Formulário de Segurança
    //TEnumTipoEmissao_EPEC,   // 4 - Contingência EPEC
    //TEnumTipoEmissao_FSDA    // 5 - Contingência em Formulário de Segurança FS-DA
    //TEnumTipoEmissao_SCAN,   // 6 - Contingência SCAN (desativado)
    //TEnumTipoEmissao_SVCSP,  // 7 - Contingência SVC-SP
    TEnumTipoEmissao_OffLine // 8 - Emissão Off-Line NFCe
     );

  TEnumTipoComercio = (
    TEnumTipoComercio_Varejo, // V - Varejo
    TEnumTipoComercio_Atacado // A - Atacado/Equiparado a Indústria
     );

  TEnumAcaoTituloBancario = (
    TEnumAcaoTituloBancario_Incluir,         // A - Incluir
    TEnumAcaoTituloBancario_Cancelar,        // C - Incluir
    TEnumAcaoTituloBancario_PagarEmCarteira, // P - Pagar em carteira
    TEnumAcaoTituloBancario_Consistir,       // I - Consistir
    TEnumAcaoTituloBancario_AlterarValores,  // V - Instrução alterar valores
    TEnumAcaoTituloBancario_AlterarData,     // D - Instrução alterar data
    TEnumAcaoTituloBancario_AlterarValor     // V - Instrução alterar valor
     );
  TEnumJobs = (
    TEnumJobs_JobMaterializaCustoVenda,
    TEnumJobs_JobClassificaAbcXyz);

  TEnumRegraAbcXyz = (
    TEnumRegraAbcXyz_NaoUsa,           // 0 - Não Usa
    TEnumRegraAbcXyz_CustoxQuantidade, // 1 - Custo x Quantidade
    TEnumRegraAbcXyz_NumeroVendas);    // 2 - Número de Vendas

  TEnumUF = (
    ufAcre,
    ufAlagoas,
    ufAmazonas,
    ufAmapa,
    ufBahia,
    ufCeara,
    ufDistritoFederal,
    ufEspiritoSanto,
    ufGoias,
    ufMaranhao,
    ufMinasGerais,
    ufMatoGrossoDoSul,
    ufMatoGrosso,
    ufPara,
    ufParaiba,
    ufPernambuco,
    ufPiaui,
    ufParana,
    ufRioDeJaneiro,
    ufRioGrandeDoNorte,
    ufRondonia,
    ufRoraima,
    ufRioGrandeDoSul,
    ufSantaCatarina,
    ufSergipe,
    ufSaoPaulo,
    ufTocantins);

  TEnumTipoDocumentoTituloBancario = (
    TEnumTipoDocumentoTituloBancario_Tradicional, // 1 - Tradicional
    TEnumTipoDocumentoTituloBancario_Escritural   // 2 - Escritural
     );

  TEnumTipoCarteiraTituloBancario = (
    TEnumTipoCarteiraTituloBancario_Registrada, // 1 - Registrada
    TEnumTipoCarteiraTituloBancario_Simples,    // 2 - Simples
    TEnumTipoCarteiraTituloBancario_Eletronica  // 3 - Eletronica
     );

  TEnumDistribuicaoBoleto = (
    TEnumDistribuicaoBoleto_NaoInformado,      // Não informado
    TEnumDistribuicaoBoleto_BancoDistribui,    // 1 - Banco distribui
    TEnumDistribuicaoBoleto_ClienteDistribui,  // 2 - Cliente distribui
    TEnumDistribuicaoBoleto_BancoEnviaPorEmail // 3 - Banco envia por e-mail
     );

  TEnumResponEmissaoTituloBancario = (
    TEnumResponEmissaoTituloBancario_BancoEmite,     // 1 - Banco Emite
    TEnumResponEmissaoTituloBancario_CliEmite,       // 2 - Cliente Emite
    TEnumResponEmissaoTituloBancario_BancoReemite,   // 3 - Banco Reemite
    TEnumResponEmissaoTituloBancario_BancoNaoReemite // 4 - Banco Nao Reemite
     );

  TEnumLayoutBoleto = (
    TEnumLayoutBoleto_Padrao,        // P - Padrão
    TEnumLayoutBoleto_Carne,         // C - Carne
    TEnumLayoutBoleto_Fatura,        // F - Fatura
    TEnumLayoutBoleto_PadraoEntrega, // E - Padrão Entrega
    TEnumLayoutBoleto_Outro          // O - Outros
     );

  TEnumAPIResultCod = (
    TEnumAPIResultCodNaoDefinido,          // Não definido
    TEnumAPIResultCodEventoNaoLocalizado,  //-2 - Evento não localizado
    TEnumAPIResultCodGuardaNaoLocalizada,  //-1 - Guarda não localizada
    TEnumAPIResultCodNotaDenegada,         // 1 - Nota denegada na Sefaz
    TEnumAPIResultCodPDVJaExiste,          // 2 - PDV já existe
    TEnumAPIResultCodNotaNaoConstaNaSefaz, // 3 - NF-e não consta na base de dados da SEFAZ
    TEnumAPIResultCodNotaJaInutilizada,    // 4 - Nota já inutilizada na Sefaz
    TEnumAPIResultCodNFeRejeicaoCadastral, // 5 - NF-e com Rejeição Cadastral
    TEnumAPIResultCodNFeRejeicaoErro,      // 6 - NF-e com Rejeição Erro
    TEnumAPIResultCodNFeSefazOffline,      // 7 - Sefaz Offline ou sem conexão de Internet
    TEnumAPIResultCodConsultaSemDados      // 8 - Consulta não retornou dados
     );

  TEnumSituacaoOrc = (
    TEnumSituacaoOrc_EmAberto,  // A Em aberto
    TEnumSituacaoOrc_Vendido,   // E Vendido
    TEnumSituacaoOrc_Concluido, // O Concluído
    TEnumSituacaoOrc_Cancelado  // C Cancelado
     );

  TEnumSituacaoAprovacaoCredito = (
    TEnumAprovacaoCredito_EmAprovacao, // E Em Aprovação
    TEnumAprovacaoCredito_Reprovado,   // R Reprovado
    TEnumAprovacaoCredito_Aprovado     // A Aprovado
     );

  TEnumAprovacaoOrcPeloCliente = (
    TEnumAprovacaoOrcPeloCliente_EmAberto,  // A Em Aberto
    TEnumAprovacaoOrcPeloCliente_Reprovado, // 2 Reprovado
    TEnumAprovacaoOrcPeloCliente_Aprovado   // 1 Aprovado
     );

  TEnumSituacaoEcommerce = (
    TEnumSituacaoEcommerce_Nulo,               // null
    TEnumSituacaoEcommerce_PagamentoEmAnalise, // T Pagamento em análise
    TEnumSituacaoEcommerce_PendentePagamento,  // R Pendente de pagamento
    TEnumSituacaoEcommerce_PagamentoAprovado,  // P Pagamento aprovado
    TEnumSituacaoEcommerce_PagamentoEfetivado, // F Pagamento efetivado
    TEnumSituacaoEcommerce_ProdutoEnviado,     // E Produto Enviado
    TEnumSituacaoEcommerce_ProdutoEntregue,    // N Produto Entregue
    TEnumSituacaoEcommerce_PagamentoCancelado, // C Pagamento Cancelado
    TEnumSituacaoEcommerce_ProblemaNaEntrega,  // O Problema na entrega
    TEnumSituacaoEcommerce_Faturado,            // V Faturado
    TEnumSituacaoEcommerce_Rejeitado,           // 0 Rejeitado
    TEnumSituacaoEcommerce_ProntoParaRetirada,  //1 Pronto para retirada
    TEnumSituacaoEcommerce_RetiradoPeloCliente  //2 Retirado pelo cliente
     );

  TEnumTipoConsultaSkyHub = (
    TEnumTipoConsultaSkyHub_Produto,
    TEnumTipoConsultaSkyHub_Preco,
    TEnumTipoConsultaSkyHub_Saldo,
    TEnumTipoConsultaSkyHub_Imagens
     );

  TEnumFormulaUso = (
    TEnumFormulaUsoDiversas,                    // 1 - Diversas
    TEnumFormulaUsoServicoAdicionalImpressao,   // 2 - Impressão de Serviço Adicional
    TEnumFormulaUsoServicoAdicionalNumero,      // 3 - Numeração de Serviço Adicional
    TEnumFormulaUsoContaCorrenteImpressao,      // 4 - Impressão de Conta Corrente
    TEnumFormulaUsoServicoAdicionalCancelamento // 5 - Cancelamento de Serviço Adicional
     );

  TEnumOrigemTipo = (
    TEnumOrigemTipoOS,         // 1 - OS
    TEnumOrigemTipoDAV,        // 2 - DAV
    TEnumOrigemTipoPreVenda,   // 3 - Pré-Venda
    TEnumOrigemTipoReforco,    // 4 - Reforço
    TEnumOrigemTipoValeCompra, // 5 - Vale Compra
    TEnumOrigemTipoOSLocal,    // 6 - O.S. Local (Totall PoS)
    TEnumOrigemTipoDAVLocal,   // 7 - DAV Local (Totall PoS)
    TEnumOrigemTipoCPF_CNPJ,   // 8 - CPF ou CNPJ
    TEnumOrigemTipoVenda       // 9 - Venda
     );

  TEnumImpostosTipoNota = (
    TEnumImpostosTipoNota_Emitida, // E - Emitida
    TEnumImpostosTipoNota_Recebida // R - Recebida
     );

  TEnumSituacaoAnaliseCredito = (
    TEnumSituacaoAnaliseCreditoAberto,         // A - Aberto
    TEnumSituacaoAnaliseCreditoAprovadoLimite, // 1 - Aprovado Dentro do Limite
    TEnumSituacaoAnaliseCreditoAprovadoVenda,  // 2 - Aprovado somente p/ esta venda
    TEnumSituacaoAnaliseCreditoReprovado       // R - Reprovado
     );

  /// Tipo do item – Atividades Industriais, Comerciais e Serviços:
  TEnumTipoItem = (tiMercadoriaRevenda, // 00 – Mercadoria para Revenda
    tiMateriaPrima,                     // 01 – Matéria-Prima;
    tiEmbalagem,                        // 02 – Embalagem;
    tiProdutoProcesso,                  // 03 – Produto em Processo;
    tiProdutoAcabado,                   // 04 – Produto Acabado;
    tiSubproduto,                       // 05 – Subproduto;
    tiProdutoIntermediario,             // 06 – Produto Intermediário;
    tiMaterialConsumo,                  // 07 – Material de Uso e Consumo;
    tiAtivoImobilizado,                 // 08 – Ativo Imobilizado;
    tiServicos,                         // 09 – Serviços;
    tiOutrosInsumos,                    // 10 – Outros Insumos;
    tiOutras                            // 99 – Outras
     );

  TEnumExigibilidadeISS = (
    TEnumExigibilidadeISS_Nulo,
    TEnumExigibilidadeISS_Exigivel,                       // 0 - Exigivel
    TEnumExigibilidadeISS_NaoIncidencia,                  // 1 - NaoIncidencia
    TEnumExigibilidadeISS_Isencao,                        // 2 - Isencao
    TEnumExigibilidadeISS_Exportacao,                     // 3 - Exportacao
    TEnumExigibilidadeISS_Imunidade,                      // 4 - Imunidade,
    TEnumExigibilidadeISS_SuspensaDecisaoJudicial,        // 5 - SuspensaDecisaoJudicial
    TEnumExigibilidadeISS_SuspensaProcessoAdministrativo, // 6 - SuspensaProcessoAdministrativo
    TEnumExigibilidadeISS_ISSFixo                         // 7 - ISSFixo
     );

  TEnumNaturezaOuOperacaoDaNFSe = (
    TEnumNaturezaOuOperacaoDaNFSe_Nulo,
    TEnumNaturezaOuOperacaoDaNFSe_SemDeducao,              // 0 - SemDeducao
    TEnumNaturezaOuOperacaoDaNFSe_ComDeducaoMateriais,     // 1 - ComDeducaoMateriais
    TEnumNaturezaOuOperacaoDaNFSe_ImuneIsenta,             // 2 - ImuneIsenta
    TEnumNaturezaOuOperacaoDaNFSe_DevolucaoSimplesRemessa, // 3 - DevolucaoSimplesRemessa
    TEnumNaturezaOuOperacaoDaNFSe_Intermediacao            // 4 - Intermediacao
     );

  TEnumTipoDeTributacaoServico = (
    TEnumTipoDeTributacaoServico_Nulo,
    TEnumTipoDeTributacaoServico_IsentaISS,            // 0 - IsentaISS
    TEnumTipoDeTributacaoServico_NaoIncidencianoMunic, // 1 - NaoIncidencianoMunic
    TEnumTipoDeTributacaoServico_Imune,                // 2 - Imune
    TEnumTipoDeTributacaoServico_ExigibilidadeSusp,    // 3 - ExigibilidadeSusp
    TEnumTipoDeTributacaoServico_NaoTributavel,        // 4 - NaoTributavel
    TEnumTipoDeTributacaoServico_Tributavel,           // 5 - Tributavel
    TEnumTipoDeTributacaoServico_TributavelFixo,       // 6 - TributavelFixo
    TEnumTipoDeTributacaoServico_TributavelSN,         // 7 - TributavelSN
    TEnumTipoDeTributacaoServico_MEI                   // 8 - MEI
     );

  TEnumTipoLogDAV = (tlDAVInclusao, // I - Inclusão
    tlDAVAlteracao,                 // A - Alteração
    tlDAVExclusao                   // E - Exclusao
     );

  TEnumCobrancaDeTarefa = (
    TEnumCobrancaDeTarefa_ADefinir, // D - A Definir
    TEnumCobrancaDeTarefa_AFaturar, // A - A Faturar
    TEnumCobrancaDeTarefa_Contrato, // C - Contrato
    TEnumCobrancaDeTarefa_Cortesia, // S - Cortesia
    TEnumCobrancaDeTarefa_Faturado, // F - Faturado
    TEnumCobrancaDeTarefa_Revenda   // R - Revenda
     );

  TEnumClassificacaoDeTipoDeTarefa = (
    TEnumClassificacaoDeTipoDeTarefa_Ambos,   // A - Ambos
    TEnumClassificacaoDeTipoDeTarefa_Suporte, // S - Suporte
    TEnumClassificacaoDeTipoDeTarefa_Workflow // W - WorkFlow
     );

  TEnumECFArredondaTrunca = (TEnumECFArredondaTruncaNulo, // Nulo
    TEnumECFArredondaTruncaArredonda,                     // A - Arredonda
    TEnumECFArredondaTruncaTrunca                         // T - Trunca
     );

  TEnumMotivoCancelamentoNFSe = (
    TEnumMotivoCancelamentoNFSe_ErroDeEmissao,        // 1 - Erro de emissão
    TEnumMotivoCancelamentoNFSe_ServicoNaoConcluido,  // 2 - Serviço não concluido
    TEnumMotivoCancelamentoNFSe_RPSCanceladoNaEmissao // 3 - RPS Cancelado na Emissão
     );

  TEnumTipoComunicacaoImpressora = (
    TEnumTipoComunicacaoImpressora_Normal, // N - Normal
    TEnumTipoComunicacaoImpressora_PPLA,   // A - PPLA
    TEnumTipoComunicacaoImpressora_PPLB,   // B - PPLB
    TEnumTipoComunicacaoImpressora_ZPLII,  // Z - ZPLII
    TEnumTipoComunicacaoImpressora_EPL2    // E - EPL2
     );

  TEnumDPIImpressora = (
    TEnumDPIImpressora_203, // 203
    TEnumDPIImpressora_300, // 300
    TEnumDPIImpressora_600  // 600
     );

  TEnumOrientacaoEtiqueta = (
    TEnumOrientacaoEtiqueta_Nulo,
    TEnumOrientacaoEtiqueta_Normal, // 0 - Normal
    TEnumOrientacaoEtiqueta_270,    // 270 - 270
    TEnumOrientacaoEtiqueta_180,    // 180 - 180
    TEnumOrientacaoEtiqueta_90      // 90 - 90
     );

  TEnumExibeCodigoBarraEtiqueta = (
    TEnumExibeCodigoBarraEtiqueta_Padrao, // P - Padrão
    TEnumExibeCodigoBarraEtiqueta_Sim,    // S - Sim
    TEnumExibeCodigoBarraEtiqueta_Nao     // N - Não
     );

  TEnumUnidadeImpressora = (
    TEnumUnidadeImpressora_Milimetros,        // M - Milimetros
    TEnumUnidadeImpressora_Polegadas,         // P - Polegadas
    TEnumUnidadeImpressora_Dots,              // D - Dots
    TEnumUnidadeImpressora_DecimoDeMilimetros // 0 - Decimo De Milimetros
     );

  TEnumTipoCodBarraImpressora = (
    TEnumTipoCodBarraImpressora_EAN13,       // F - EAN13
    TEnumTipoCodBarraImpressora_EAN8,        // G - EAN8
    TEnumTipoCodBarraImpressora_STANDARD,    // J - STANDARD
    TEnumTipoCodBarraImpressora_INTERLEAVED, // D - INTERLEAVED
    TEnumTipoCodBarraImpressora_CODE128,     // E - CODE128
    TEnumTipoCodBarraImpressora_CODE39,      // A - CODE39
    TEnumTipoCodBarraImpressora_CODE93,      // O - CODE93
    TEnumTipoCodBarraImpressora_UPCA,        // B - UPCA
    TEnumTipoCodBarraImpressora_CODABAR,     // I - CODABAR
    TEnumTipoCodBarraImpressora_MSI,         // K - MSI
    TEnumTipoCodBarraImpressora_CODE11       // 1 - CODE11
     );

  TEnumSerialParity = (
    TEnumSerialParity_None, // N - None
    TEnumSerialParity_Odd,  // O - Odd
    TEnumSerialParity_Even, // E - Even
    TEnumSerialParity_Mark, // M - Mark
    TEnumSerialParity_Space // S - Space
     );

  TEnumSerialStop = (
    TEnumSerialStop_1,      // 1 - 1
    TEnumSerialStop_1eMeio, // 1.5 - 1/2
    TEnumSerialStop_2       // 2 - 2
     );

  TEnumHandShake = (
    TEnumHandShake_Nenhum,   // N - Nenhum
    TEnumHandShake_XON_XOFF, // X - XON/XOFF
    TEnumHandShake_RTS_CTS,  // R - RTS/CTS
    TEnumHandShake_DTR_DSR   // D - DTR/DSR
     );

  TEnumParceiroDenegado = (
    TEnumParceiroDenegado_Nao,          // 1 - Não
    TEnumParceiroDenegado_Sim,          // 2 - Sim
    TEnumParceiroDenegado_PermiteVendas // 3 - Sim. Permitir Vendas
     );

  TEnumCertificadoTipo = (
    TEnumCertificadoTipo_A1, // A1 - A1
    TEnumCertificadoTipo_A3  // A3 - A3
     );

  TEnumParamCfgSistemaTipo = (
    TEnumParamCfgSistemaTipo_NaoInformado, // Não informado
    TEnumParamCfgSistemaTipo_Texto,        // T - Texto
    TEnumParamCfgSistemaTipo_Numerico,     // N - Numérico
    TEnumParamCfgSistemaTipo_Inteiro,      // I - Inteiro
    TEnumParamCfgSistemaTipo_Booleano,     // B - Booleano
    TEnumParamCfgSistemaTipo_Data          // D - Data
     );

  TEnumRegraCodigoFiscal = (
    TEnumRegraCodigoFiscal_ChaveInterna,     // 1 - Chave Interna
    TEnumRegraCodigoFiscal_ReferenciaBasica, // 2 - Referência Básica
    TEnumRegraCodigoFiscal_ReferenciaGrade,  // 3 - Referência de Grade
    TEnumRegraCodigoFiscal_CodigoExterno     // 4 - Código Externo
     );

  TEnumVariacaoCustoTipo = (
    TEnumVariacaoCustoTipo_UltimaCompra, // C - Última Compra
    TEnumVariacaoCustoTipo_Grade         // G - Grade
     );

  TEnumIndicadorPagamento = (
    TEnumIndicadorPagamento_NaoInformado, // Não informado
    TEnumIndicadorPagamento_AVista,       // 0 - Pagamento à Vista
    TEnumIndicadorPagamento_APrazo);      // 1 - Pagamento à Prazo

  TEnumPosicaoReciboDanfe = (
    TEnumPosicaoReciboDanfe_Cabecalho, // 0 - Cabeçalho
    TEnumPosicaoReciboDanfe_Rodape,    // 1 - Rodapé
    TEnumPosicaoReciboDanfe_Esquerda   // 2 - Esquerda
     );

  TEnumPosicaoReciboDacte = (
    TEnumPosicaoReciboDacte_Cabecalho, // 0 - Cabeçalho
    TEnumPosicaoReciboDacte_Rodape,    // 1 - Rodapé
    TEnumPosicaoReciboDacte_Esquerda   // 2 - Esquerda
     );

  TEnumPosicaoReciboDamdfe = (
    TEnumPosicaoReciboDamdfe_Cabecalho, // 0 - Cabeçalho
    TEnumPosicaoReciboDamdfe_Rodape,    // 1 - Rodapé
    TEnumPosicaoReciboDamdfe_Esquerda   // 2 - Esquerda
     );

  TEnumTipoDeMulta = (
    TEnumTipoDeMulta_PercentualCorrigido, // # - Percentual Corrigido
    TEnumTipoDeMulta_Valor,               // $ - Valor
    TEnumTipoDeMulta_Percentual,          // % - Percentual
    TEnumTipoDeMulta_ValorCorrigido       // @ - Valor Corrigido
     );

  TEnumTipoDeJurosMora = (
    TEnumTipoDeJurosMora_ValorDia,    // 1 - Valor Dia
    TEnumTipoDeJurosMora_TaxaMensal,  // 2 - Taxa Mensal
    TEnumTipoDeJurosMora_Isento,      // 3 - Isento
    TEnumTipoDeJurosMora_ValorMensal, // 4 - Valor Mensal
    TEnumTipoDeJurosMora_TaxaDiaria   // 5 - Taxa Diária
     );

  TEnumTipoDiasProtesto = (
    TEnumTipoDiasProtesto_SemInstrucoes,         // 0 - Sem Instruções
    TEnumTipoDiasProtesto_ProtestarDiasCorridos, // 1 - Protestar (Dias Corridos)
    TEnumTipoDiasProtesto_ProtestarDiasUteis,    // 2 - Protestar (Dias Úteis)
    TEnumTipoDiasProtesto_NaoProtestar           // 3 - Não Protestar
     );

  TEnumCaracteristicaCarteira = (
    TEnumCaracteristicaCarteira_Simples,               // 1 - Simples
    TEnumCaracteristicaCarteira_Vinculada,             // 2 - Vinculada
    TEnumCaracteristicaCarteira_Caucionada,            // 3 - Caucionada
    TEnumCaracteristicaCarteira_Descontada,            // 4 - Descontada
    TEnumCaracteristicaCarteira_SimplesComRegistro,    // 5 - Simples (Com Registro)
    TEnumCaracteristicaCarteira_CaucionadaComRegistro, // 6 - Caucionada (Com Registro)
    TEnumCaracteristicaCarteira_Vendor                 // 7 - Vendor
     );

  TEnumLayoutRemessa = (
    TEnumLayoutRemessa_240, // 240 - Posições
    TEnumLayoutRemessa_400  // 400 - Posições
     );

  TEnumSituacaoPedidoDeCompra = (
    TEnumSituacaoPedidoDeCompra_Aberto,    // A - Aberto
    TEnumSituacaoPedidoDeCompra_Cancelado, // C - Cancelado
    TEnumSituacaoPedidoDeCompra_Entregue,  // E - Entregue
    TEnumSituacaoPedidoDeCompra_Reprovado, // 0 - Reprovado
    TEnumSituacaoPedidoDeCompra_Aprovado   // 2 - Aprovado
     );

  TEnumSituacaoPedidoDeCompraItem = (
    TEnumSituacaoPedidoDeCompraItem_Aberto,    // A - Aberto
    TEnumSituacaoPedidoDeCompraItem_Cancelado, // C - Cancelado
    TEnumSituacaoPedidoDeCompraItem_Entregue   // E - Entregue
     );

  TEnumSituacaoOrigemIVO = (
    TEnumSituacaoOrigemIVO_PedidoReposicao, // P - Pedido de Reposicao
    TEnumSituacaoOrigemIVO_Orcamento,       // O - Orcamento
    TEnumSituacaoOrigemIVO_Venda            // V - Venda
     );

  TEnumArquivoBDTipo = (
    TEnumArquivoBDTipo_NaoDefinido, // N - Não definido
    TEnumArquivoBDTipo_RemessaCNAB  // R - Remessa CNAB
     );

  TEnumTipoValorProduto = (
    TEnumTipoValorProduto_Venda,               // V - Preço de venda
    TEnumTipoValorProduto_CustoDeReposicao,    // R - Custo de reposição
    TEnumTipoValorProduto_PrecoDeCompra,       // C - Preço de compra
    TEnumTipoValorProduto_CustoMedioFiscal,    // M - Custo Médio Fiscal
    TEnumTipoValorProduto_CustoMedioGerencial, // G - Custo Médio Gerencial
    TEnumTipoValorProduto_PrecoSimulado        // S - Preço Simulado
     );

  TEnumOrigemRequisicaoExterna = (
    TEnumOrigemRequisicaoExterna_NaoDefinido, // Não definido
    TEnumOrigemRequisicaoExterna_Mobile,      // M - Mobile
    TEnumOrigemRequisicaoExterna_Internet,    // I - Internet
    TEnumOrigemRequisicaoExterna_Outros       // O - Outros
     );

  TEnumStatusRequisicaoExterna = (
    TEnumStatusRequisicaoExterna_NaoDefinido, // Não definido
    TEnumStatusRequisicaoExterna_Recebida,    // R - Recebida
    TEnumStatusRequisicaoExterna_Atendida,    // A - Atendida
    TEnumStatusRequisicaoExterna_Denegada     // D - Denegada
     );

  TEnumCodigoEmpresa = (
    TEnumCodigoEmpresa_NaoDefinido, // -1 - Não Definido
    TEnumCodigoEmpresa_TOTALL,      // 0 - Totall
    TEnumCodigoEmpresa_INTERSYS,    // 1 - INTERSYS
    TEnumCodigoEmpresa_ADVANCE,     // 2 - ADVANCE
    TEnumCodigoEmpresa_SARAIVA,     // 3 - SARAIVA
    TEnumCodigoEmpresa_MODERNA,     // 4 - MODERNA
    TEnumCodigoEmpresa_WALLIS,      // 5 - WALLIS
    TEnumCodigoEmpresa_BENNER,      // 6 - BENNER
    TEnumCodigoEmpresa_MLBC,        // 7 - MLBC
    TEnumCodigoEmpresa_KINDER,      // 8 - KINDER
    TEnumCodigoEmpresa_GIMBA,       // 9 - GIMBA
    TEnumCodigoEmpresa_PCIA,        //10 - PCIA
    TEnumCodigoEmpresa_LIG,         //11 - LIG
    TEnumCodigoEmpresa_N49,         //12 - N49
    TEnumCodigoEmpresa_VNDA         //13 - VNDA
     );

  TEnumRecebimentoOrc = (
    TEnumRecebimentoOrc_NaoDefinido,
    TEnumRecebimentoOrc_BancoBrasil,
    TEnumRecebimentoOrc_Bradesco,
    TEnumRecebimentoOrc_Banrisul,
    TEnumRecebimentoOrc_HSBC,
    TEnumRecebimentoOrc_Itau,
    TEnumRecebimentoOrc_PagamentoDigital,
    TEnumRecebimentoOrc_Amex,
    TEnumRecebimentoOrc_Boleto,
    TEnumRecebimentoOrc_PagSeguroCartao,
    TEnumRecebimentoOrc_Dinners,
    TEnumRecebimentoOrc_Elo,
    TEnumRecebimentoOrc_HiperCard,
    TEnumRecebimentoOrc_MasterCard,
    TEnumRecebimentoOrc_Outros,
    TEnumRecebimentoOrc_PagSeguroBoleto,
    TEnumRecebimentoOrc_PagSeguro,
    TEnumRecebimentoOrc_Aura,
    TEnumRecebimentoOrc_Visa,
    TEnumRecebimentoOrc_BoletoAPrazo,
    TEnumRecebimentoOrc_Orcamento,
    TEnumRecebimentoOrc_Wix,
    TEnumRecebimentoOrc_PayPal,

    // MN - 2020070949 - Utilizado somente para controlar o tipo de recebimento em nota a partir de televendas do order
    // não tem relação com skyhub
    TEnumRecebimentoOrc_ContaCorrente
     );

  TEnumMotivoDesoneracao = (
    TEnumMotivoDesoneracao_NaoDefinido,            // 0 - Não Definido
    TEnumMotivoDesoneracao_TAXI,                   // 1 - TAXI
    TEnumMotivoDesoneracao_DEFICIENTE_FISICO,      // 2 - Deficiente Fisico
    TEnumMotivoDesoneracao_PRODUTOR_AGROPECUARIO,  // 3 - ProdutorAgropecuario
    TEnumMotivoDesoneracao_FROTISTA_LOCADORA,      // 4 - Frotista/Locadora
    TEnumMotivoDesoneracao_DIPLOMATICO_CONSULAR,   // 5 - Diplomático/Consular
    TEnumMotivoDesoneracao_UTILITARIOS_AMAZONIA,   // 6 - Utilitários/Motocicletas Amazônia/Área Livre
    TEnumMotivoDesoneracao_SUFRAMA,                // 7 - SUFRAMA
    TEnumMotivoDesoneracao_VENDA_ORGAO_PUBLICO,    // 8 - Venda a órgão Público
    TEnumMotivoDesoneracao_OUTROS,                 // 9 - Outros
    TEnumMotivoDesoneracao_DEFICIENTE_CONDUTOR,    // 10 - Deficiente Condutor
    TEnumMotivoDesoneracao_DEFICIENT_NAO_CONDUTOR, // 11 - Deficiente Não Condutor
    TEnumMotivoDesoneracao_ORGAO_FOMENTO);         // 12 - Órgão de Fomento e Desenvolvimento Agropecuário

  TEnumCodigoProcessamentoBlocoX = (
    TEnumCodigoProcessamentoBlocoX_NaoDefinido, // -1 - Não Definido
    TEnumCodigoProcessamentoBlocoX_Aguardando,  // 0 - Aguardando
    TEnumCodigoProcessamentoBlocoX_Sucesso,     // 1 - Sucesso
    TEnumCodigoProcessamentoBlocoX_Erro,        // 2 - Erro
    TEnumCodigoProcessamentoBlocoX_Cancelado);  // 3 - Cancelado

  TEnumCodigoOperacaoBlocoX = (
    TEnumCodigoOperacaoBlocoX_NaoDefinido,         // -1 - Não Definido
    TEnumCodigoOperacaoBlocoX_Ok,                  // 0 - OK
    TEnumCodigoOperacaoBlocoX_XMLInvalido,         // 1 - XML inválido: [ERRO]
    TEnumCodigoOperacaoBlocoX_ReciboNaoEncontrado, // 2 - Recibo não encontrado
    TEnumCodigoOperacaoBlocoX_NaoPossuiPermissao,  // 3 - Não possui permissão de acesso ao recibo
    TEnumCodigoOperacaoBlocoX_ErroInesperado);     // 9999 - Ocorreu um erro inesperado: [ERRO]

  TEnumOrigemLogMiddleware = (
    TEnumOrigemLogMiddleware_Middleware,          // 0 - Middleware
    TEnumOrigemLogMiddleware_IntegracaoEME4,      // 1 - Integração EME4
    TEnumOrigemLogMiddleware_IntegracaoMercos,    // 2 - Integração Mercos
    TEnumOrigemLogMiddleware_IntegracaoN49,       // 3 - Integração N49
    TEnumOrigemLogMiddleware_IntegracaoConsistem, // 4 - Integração Consistem
    TEnumOrigemLogMiddleware_IntegracaoMagazord,  // 5 - Integração Magazord
    TEnumOrigemLogMiddleware_IntegracaoGimplus,   // 6 - Integração Gimplus
    TEnumOrigemLogMiddleware_IntegracaoFraga,     // 7 - Integração Fraga
	  TEnumOrigemLogMiddleware_IntegracaoWebStore   // 8 - Integração WebStore
     );

  TEnumTipoLogMiddleware = (
    TEnumTipoLogMiddleware_Operacao, // 0 - Operação
    TEnumTipoLogMiddleware_Aviso,    // 1 - Aviso
    TEnumTipoLogMiddleware_Erro);    // 2 - Erro

  TEnumServicoEcommerce = (
    TEnumSETipoTotall, //0 - Retaguarda Totall
    TEnumSETipoEME4);  //1 - Retaguarda EME4

  TEnumInstrucaoBaixaTitulo = (
    TEnumInstrucaoBaixaTitulo_SemInstrucoes, // 0 - Sem Instruções
    TEnumInstrucaoBaixaTitulo_Baixar,        // 1 - Baixar / Devolver
    TEnumInstrucaoBaixaTitulo_NaoBaixar      // 2 - Não Baixar / Não Devolver
     );

  TEnumSituacaoCotacao = (
    TEnumSituacaoCotacao_Aberta,            // A - Aberto
    TEnumSituacaoCotacao_Cancelada,         // C - Cancelado
    TEnumSituacaoCotacao_EnviadaFornecedor, // E - Enviado ao Fornecedor
    TEnumSituacaoCotacao_Finalizada         // F - Finalizado
     );

  TEnumSituacaoItemCotacao = (
    TEnumSituacaoItemCotacao_Aberta,    // A - Aberto
    TEnumSituacaoItemCotacao_Cancelada, // C - Cancelado
    TEnumSituacaoItemCotacao_Finalizada // F - Finalizado
     );

  TEnumSituacaoItemFornecedor = (
    TEnumSituacaoItemFornecedor_Aberta,    // A - Aberto
    TEnumSituacaoItemFornecedor_Cancelada, // C - Cancelado
    TEnumSituacaoItemFornecedor_Recebida   // R - Recebido
     );

  TEnumSituacaoCotacaoFornecedor = (
    TEnumSituacaoCotacaoFornecedor_Aberta,    // A - Aberto
    TEnumSituacaoCotacaoFornecedor_Cancelada, // C - Cancelado
    TEnumSituacaoCotacaoFornecedor_Enviada,   // E - Enviado
    TEnumSituacaoCotacaoFornecedor_Recebida   // R - Recebido
     );

  TEnumTipoExportacaoCotacaoFornecedor = (
    TEnumTipoExportacaoCotacaoFornecedor_JSON, // J - JSON
    TEnumTipoExportacaoCotacaoFornecedor_Excel // E - Excel
     );

  TEnumSituacaoItemFornecedorVencedor = (
    TEnumSituacaoItemFornecedorVencedor_True, // T - True
    TEnumSituacaoItemFornecedorVencedor_False // F - False
     );

  TEnumOrcamentoTipoPagamento = (
    TEnumOrcamentoTipoPagamento_NaoDefinido,   // N - Nao Definido
    TEnumOrcamentoTipoPagamento_Boleto,        // B - Boleto
    TEnumOrcamentoTipoPagamento_ContaCorrente, // C - Conta Corrente
    TEnumOrcamentoTipoPagamento_ParcelaEmAberto// P - Parcela Em Aberto
     );

  TEnumCanalDeAplicacaoCampanha = (
    TEnumCanalDeAplicacaoCampanha_Todos,      // T - Todos
    TEnumCanalDeAplicacaoCampanha_Loja,       // L - Loja
    TEnumCanalDeAplicacaoCampanha_Omnichannel // O - Omnichannel
     );

  TEnumRegraAcordoComercialCampanha = (
    TEnumRegraAcordoComercialCampanha_MantemAcordo,     // M - Mantém acordo
    TEnumRegraAcordoComercialCampanha_AplicaMelhorPreco // A - Aplica melhor preço para consumidor
     );

  TEnumTipoAplicacaoCampanha = (
    TEnumTipoAplicacaoCampanha_Livre,   // L - Lives
    TEnumTipoAplicacaoCampanha_PorCupom // P - Por Cupom
     );

  TEnumTipoDeGatilhoCampanha = (
    TEnumTipoDeGatilhoCampanha_OpAtual, // O - Para operação atual
    TEnumTipoDeGatilhoCampanha_OpFutura // F - Cupom para uso futuro
     );

  TEnumTipoObrigatoriedadeGatilhoCampanha = (
    TEnumTipoObrigatoriedadeGatilhoCampanha_ApenasUm, // U - Apenas uma das regras aplicadas sobre os produtos
    TEnumTipoObrigatoriedadeGatilhoCampanha_Todas     // T - Todas as regras aplicadas sobre os produtos
     );

  TEnumTipoDescontoAplicadoCampanha = (
    TEnumTipoDescontoAplicadoCampanha_PrecoFixo,  // F - Preço Fixo por Produto
    TEnumTipoDescontoAplicadoCampanha_Percentual, // P - Percentual
    TEnumTipoDescontoAplicadoCampanha_Valor       // V - Valor
     );

  TEnumTipoCodigoImpressoCupomDeDesconto = (
    TEnumTipoCodigoImpressoCupomDeDesconto_Barras, // B - Barras
    TEnumTipoCodigoImpressoCupomDeDesconto_QRCode  // Q - QR-Code
     );

  TEnumGabaritoConteudo = (
    TEnumGabaritoConteudo_NaoInformado,     // N - Não informado
    TEnumGabaritoConteudo_ReferenciaBasica, // B - Referência Básica
    TEnumGabaritoConteudo_Referencia,       // R - Referência
    TEnumGabaritoConteudo_Valor,            // V - Valor
    TEnumGabaritoConteudo_Quantidade,       // Q - Quantidade
    TEnumGabaritoConteudo_Digito11,         // D - Dígito 11
    TEnumGabaritoConteudo_Digito10,         // 0 - Dígito 10
    TEnumGabaritoConteudo_Digito7,          // 7 - Dígito 7
    TEnumGabaritoConteudo_Lote              // L - Lote
     );

  TEnumTipoTabelaPreco = (
    TEnumTipoTabelaPreco_Varejo,             // 0 - Varejo
    TEnumTipoTabelaPreco_AtacadoCorporativo, // 1 - Atacado Corporativo
    TEnumTipoTabelaPreco_Qualquer,           // 2 - Qualquer
    TEnumTipoTabelaPreco_Revenda,            // 3 - Revenda
    TEnumTipoTabelaPreco_AtacadoLoja         // 4 - Atacado Loja
     );

  TEnumRetornoTEFWS = (TEnumRetornoTEFWS_Aberto, // Aberto
    TEnumRetornoTEFWS_NaoIniciado,               // Nao Iniciado
    TEnumRetornoTEFWS_OK,                        // OK
    TEnumRetornoTEFWS_Cancelado);                // Cancelado

  { TODO -oTotali -cInfo : Ao realizar atualização do Enumerador é preciso ajustar os valores respectivos nas classes TControleDeIntegracao e TChaveDaIntegracao }
  TEnumTipoIntegracao = (
    TEnumTipoIntegracao_IntegracaoEME4,      //  0 - Integração EME4
    TEnumTipoIntegracao_PosControle,         //  1 - Pos Controle
    TEnumTipoIntegracao_ShyHub,              //  2 - ShyHub
    TEnumTipoIntegracao_IntegracaoMercos,    //  3 - Integração Mercos
    TEnumTipoIntegracao_IntegracaoN49,       //  4 - Integração N49
    TEnumTipoIntegracao_IntegracaoConsistem, //  5 - Integração Consistem
    TEnumTipoIntegracao_IntegracaoMagazord,  //  6 - Integração Magazord
  	TEnumTipoIntegracao_IntegracaoGimplus,   //  7 - Integração Gimplus
  	TEnumTipoIntegracao_IntegracaoFraga,     //  8 - Integração Fraga
  	TEnumTipoIntegracao_IntegracaoWebStore,  //  9 - Integração WebStore
    TEnumTipoIntegracao_Totali,              // 98 - Totali
    TEnumTipoIntegracao_Outros               // 99 - Outros
     );

  // Enumeradores para indentificação das tabelas de integração
  TEnumTabelaIntegracao = (
    TEnumTabelaIntegracao_NaoDefinida,
    TEnumTabelaIntegracao_Usuario,
    TEnumTabelaIntegracao_Produto,
    TEnumTabelaIntegracao_ProdutoItem,
    TEnumTabelaIntegracao_Variacoes,
    TEnumTabelaIntegracao_CategoriaProduto,
    TEnumTabelaIntegracao_TabelaDePreco,
    TEnumTabelaIntegracao_PrecoProduto,
    TEnumTabelaIntegracao_AjusteEstoque,
    TEnumTabelaIntegracao_CondicaoDePagamento,
    TEnumTabelaIntegracao_Cliente,
    TEnumTabelaIntegracao_RedeCliente,
    TEnumTabelaIntegracao_SegmentoCliente,
    TEnumTabelaIntegracao_Transportador,
    TEnumTabelaIntegracao_TitulosVencidos,
    TEnumTabelaIntegracao_Pedidos,
    TEnumTabelaIntegracao_StatusPedido,
    TEnumTabelaIntegracao_FaturamentoPedido,
    TEnumTabelaIntegracao_ConfiguracaoICMSST,
    TEnumTabelaIntegracao_Marcas,
    TEnumTabelaIntegracao_Derivacao,
    TEnumTabelaIntegracao_DerivacaoItem,
    TEnumTabelaIntegracao_Grade,
    TEnumTabelaIntegracao_Estoque,
    TEnumTabelaIntegracao_Departamento,
    TEnumTabelaIntegracao_Classe1,
    TEnumTabelaIntegracao_Classe2,
    TEnumTabelaIntegracao_Classe3,
    TEnumTabelaIntegracao_Classe4,
    TEnumTabelaIntegracao_Divisao,
    TEnumTabelaIntegracao_SubDivisao
     );

  TEnumSituacaoPedidoMercos = (
    TEnumSituacaoPedidoMercos_NaoDefinido, // -1 = Não Definido
    TEnumSituacaoPedidoMercos_Cancelado,   // 0 = Cancelado
    TEnumSituacaoPedidoMercos_Orcamento,   // 1 = Orçamento
    TEnumSituacaoPedidoMercos_Pedido       // 2 = Pedido
     );

  TEnumStatusFaturamentoMercos = (
    TEnumStatusFaturamentoMercos_NaoDefinido,          // -1 = Não Definido
    TEnumStatusFaturamentoMercos_NaoFaturado,          // 0 = Não faturado
    TEnumStatusFaturamentoMercos_ParcialmenteFaturado, // 1 = Parcialmente faturado
    TEnumStatusFaturamentoMercos_Faturado              // 2 = Faturado
     );

  TEnumStatusB2BMercos = (
    TEnumStatusB2BMercos_NaoDefinido, // null = Pedido não foi gerado com o B2B
    TEnumStatusB2BMercos_EmAberto,    // 1 = Em aberto
    TEnumStatusB2BMercos_Concluido    // 2 = Concluído
     );

  TEnumTipoCampoExtraMercos = (
    TEnumTipoCampoExtraMercos_NaoDefinido,  // -1 = Não Definido
    TEnumTipoCampoExtraMercos_TextoLivre,   // 0 = Texto livre
    TEnumTipoCampoExtraMercos_Data,         // 1 = data
    TEnumTipoCampoExtraMercos_Numerico,     // 2 = numérico
    TEnumTipoCampoExtraMercos_Hora,         // 3 = hora
    TEnumTipoCampoExtraMercos_Lista,        // 4 = Lista
    TEnumTipoCampoExtraMercos_SomenteLeitura// 5 = Somente leitura
     );

  TEnumEmpresaResponsavel = (TEnumER_TotallSistemas, // Totall Sistemas
    TEnumER_TotaliSistemas,                          // Totali Sistemas
    TEnumER_Eme4);                                   // EME4

  TEnumLampadaSinaleira = (TEnumLampadaSinaleira_Verde, // 1 - Verde
    TEnumLampadaSinaleira_Amarela,                      // 2 - Amarela
    TEnumLampadaSinaleira_Vermelha,                     // 3 - Vermelha
    TEnumLampadaSinaleira_DesligarTodas                 // 0 - DesligarTodas
     );

  TEnumSituacaoDocumentoSAT = (
    TEnumSituacaoDocumentoSAT_NaoDefinido,            // -1 = Não Definido
    TEnumSituacaoDocumentoSAT_NaoVinculado,           // 0 = Não Vinculado
    TEnumSituacaoDocumentoSAT_Vinculado,              // 1 = Vinculado
    TEnumSituacaoDocumentoSAT_VinculadoComDifergencia // 2 = Vinculado com Divergência
     );

	TEnumSituacaoLancamento = (
    TEnumSituacaoLancamento_Cancelado, // C - Cancelado
    TEnumSituacaoLancamento_Normal     // N - Normal
      );

  TEnumTipoLancamento = (
    TEnumTipoLancamento_Ajuste,  // A - Ajuste
    TEnumTipoLancamento_Inicial  // I - Inicial
      );

  TEnumMessageType = (TEnumMessageType_Default,
  TEnumMessageType_Error,
  TEnumMessageType_Warning,
  TEnumMessageType_Information);

  TEnumHTTPStatus = (
    TEnumHTTPStatus_Continue = 100,
    TEnumHTTPStatus_SwitchingProtocols = 101,
    TEnumHTTPStatus_Processing = 102,
    TEnumHTTPStatus_OK = 200,
    TEnumHTTPStatus_Created = 201,
    TEnumHTTPStatus_Accepted = 202,
    TEnumHTTPStatus_NonAuthoritativeInformation = 203,
    TEnumHTTPStatus_NoContent = 204,
    TEnumHTTPStatus_ResetContent = 205,
    TEnumHTTPStatus_PartialContent = 206,
    TEnumHTTPStatus_MultiStatus = 207,
    TEnumHTTPStatus_AlreadyReported = 208,
    TEnumHTTPStatus_IMUsed = 226,
    TEnumHTTPStatus_MultipleChoices = 300,
    TEnumHTTPStatus_MovedPermanently = 301,
    TEnumHTTPStatus_Found = 302,
    TEnumHTTPStatus_SeeOther = 303,
    TEnumHTTPStatus_NotModified = 304,
    TEnumHTTPStatus_UseProxy = 305,
    TEnumHTTPStatus_TemporaryRedirect = 307,
    TEnumHTTPStatus_PermanentRedirect = 308,
    TEnumHTTPStatus_BadRequest = 400,
    TEnumHTTPStatus_Unauthorized = 401,
    TEnumHTTPStatus_PaymentRequired = 402,
    TEnumHTTPStatus_Forbidden = 403,
    TEnumHTTPStatus_NotFound = 404,
    TEnumHTTPStatus_MethodNotAllowed = 405,
    TEnumHTTPStatus_NotAcceptable = 406,
    TEnumHTTPStatus_ProxyAuthenticationRequired = 407,
    TEnumHTTPStatus_RequestTimeout = 408,
    TEnumHTTPStatus_Conflict = 409,
    TEnumHTTPStatus_Gone = 410,
    TEnumHTTPStatus_LengthRequired = 411,
    TEnumHTTPStatus_PreconditionFailed = 412,
    TEnumHTTPStatus_PayloadTooLarge = 413,
    TEnumHTTPStatus_RequestURITooLong = 414,
    TEnumHTTPStatus_UnsupportedMediaType = 415,
    TEnumHTTPStatus_RequestedRangeNotSatisfiable = 416,
    TEnumHTTPStatus_ExpectationFailed = 417,
    TEnumHTTPStatus_Imateapot = 418,
    TEnumHTTPStatus_MisdirectedRequest = 421,
    TEnumHTTPStatus_UnprocessableEntity = 422,
    TEnumHTTPStatus_Locked = 423,
    TEnumHTTPStatus_FailedDependency = 424,
    TEnumHTTPStatus_UpgradeRequired = 426,
    TEnumHTTPStatus_PreconditionRequired = 428,
    TEnumHTTPStatus_TooManyRequests = 429,
    TEnumHTTPStatus_RequestHeaderFieldsTooLarge = 431,
    TEnumHTTPStatus_ConnectionClosedWithoutResponse = 444,
    TEnumHTTPStatus_UnavailableForLegalReasons = 451,
    TEnumHTTPStatus_ClientClosedRequest = 499,
    TEnumHTTPStatus_InternalServerError = 500,
    TEnumHTTPStatus_NotImplemented = 501,
    TEnumHTTPStatus_BadGateway = 502,
    TEnumHTTPStatus_ServiceUnavailable = 503,
    TEnumHTTPStatus_GatewayTimeout = 504,
    TEnumHTTPStatus_HTTPVersionNotSupported = 505,
    TEnumHTTPStatus_VariantAlsoNegotiates = 506,
    TEnumHTTPStatus_InsufficientStorage = 507,
    TEnumHTTPStatus_LoopDetected = 508,
    TEnumHTTPStatus_NotExtended = 510,
    TEnumHTTPStatus_NetworkAuthenticationRequired = 511,
    TEnumHTTPStatus_NetworkConnectTimeoutError = 599);

  TEnumTipoDescontoConsistem = (
    TEnumTipoDescontoConsistem_Percentual, // 0 = Percentual
    TEnumTipoDescontoConsistem_Valor       // 1 = Valor
    );

  TEnumTipoDescontoItemConsistem = (
    TEnumTipoDescontoItemConsistem_Percentual, // 0 = Percentual
    TEnumTipoDescontoItemConsistem_Valor       // 1 = Valor
    );

  TEnumTipoAcrescimoItemConsistem = (
    TEnumTipoAcrescimoItemConsistem_Percentual, // 0 = Percentual
    TEnumTipoAcrescimoItemConsistem_Valor       // 1 = Valor
    );

  TEnumTipoSortimentoConsistem = (
    TEnumTipoSortimentoConsistem_Nenhuma,         // 1 = Nenhuma
    TEnumTipoSortimentoConsistem_Por_Cor,         // 2 = Por Cor
    TEnumTipoSortimentoConsistem_Por_CoreTamanho, // 3 = Por Cor e Tamanho
    TEnumTipoSortimentoConsistem_Por_Selecao      // 4 = Por Seleção
    );

  TEnumTipoDerivacaoMagazord = (
    TEnumTipoDerivacaoMagazord_Cor,     // 1
    TEnumTipoDerivacaoMagazord_Tamanho, // 2
    TEnumTipoDerivacaoMagazord_Unico,   // 3
    TEnumTipoDerivacaoMagazord_CorFilha // 4
    );

  TEnumSituacaoPedidoMagazord = (
    TEnumSituacaoPedidoMagazord_NotaFiscalEmitida,          //6
    TEnumSituacaoPedidoMagazord_Transporte,                 //7
    TEnumSituacaoPedidoMagazord_Entregue,                   //8
    TEnumSituacaoPedidoMagazord_DevolvidoEstoqueDep1,       //20
    TEnumSituacaoPedidoMagazord_DevolvidoEstoqueDepOutros,  //21
    TEnumSituacaoPedidoMagazord_NotaFiscalDenegada          //28
  );

  TEnumTipoDoEstoqueMagazord = (
    TEnumTipoDoEstoqueMagazord_Fisico,       //1
    TEnumTipoDoEstoqueMagazord_Previsto,     //2
    TEnumTipoDoEstoqueMagazord_Reservado,    //3
    TEnumTipoDoEstoqueMagazord_Virtual       //4
  );

  TEnumTipoDaOperacaoMagazord = (
    TEnumTipoDaOperacaoMagazord_Ajuste,    //0
    TEnumTipoDaOperacaoMagazord_Entrada,   //1
    TEnumTipoDaOperacaoMagazord_Saida      //2
  );
  
  TEnumModoEnvioNFSe = (
    TEnumModoEnvioNFSe_Automatico,
    TEnumModoEnvioNFSe_LoteSincrono,
    TEnumModoEnvioNFSe_LoteAssincrono,
    TEnumModoEnvioNFSe_Unitario
  );

  TEnumSearch_statusWebStore = (
    TEnumSearch_statusWebStore_Null,
    TEnumSearch_statusWebStore_AguardandoPagamento,    //1
    TEnumSearch_statusWebStore_PagamentoConfirmado,    //2
    TEnumSearch_statusWebStore_PedidoEmSeparacao,      //3
    TEnumSearch_statusWebStore_ConcluidoEnviado,       //4
    TEnumSearch_statusWebStore_Cancelado,              //5
    TEnumSearch_statusWebStore_Entregue                //6
  );

  TEnumStatusVericacaoCargaWebStore = (
    TEnumStatusVericacaoCargaWebStore_AguardandoImportacao, //1 = Aguardando Importação,
    TEnumStatusVericacaoCargaWebStore_ImportacaoEmAdamento, //2 = Importação em Andamento,
    TEnumStatusVericacaoCargaWebStore_ImportacaoConcluida,  //3 = Importado,
    TEnumStatusVericacaoCargaWebStore_ImportacaoCancelada,  //4 = Importação Cancelada
    TEnumStatusVericacaoCargaWebStore_ErroImportacao        //99 = Erro de Importação
  );

  EEnumeradorInvalido = class(Exception);

  TParLista = class
  private
    FValor: string;
    FDescricao: string;
  public
    constructor Create(pValor, pDescricao: string); overload;
    constructor Create(pValor: Integer; pDescricao: string); overload;
    property Valor: string read FValor;
    property Descricao: string read FDescricao;
  end;

  TEnum = class
  public
    class function TipoConexaoToInt(pEnum: TEnumTipoConexao): Integer;
    class function TipoConexaoFromInt(pValor: Integer): TEnumTipoConexao;
    class function TipoConexao(pEnum: TEnumTipoConexao): string;

    class function BancoDadosToInt(pEnum: TEnumBancoDados): Integer;
    class function BancoDadosFromInt(pValor: Integer): TEnumBancoDados;
    class function BancoDadosFromStr(pValor: string): TEnumBancoDados;
    class function BancoDadosToStr(pEnum: TEnumBancoDados): string;
    class function BancoDados(pEnum: TEnumBancoDados): string;
{$IFDEF DELPHIXE} class function BancoDadosGetList: TObjectList<TParLista>; {$ENDIF}
    class function AcessoDLLToInt(pEnum: TEnumAcessoDLL): Integer;
    class function AcessoDLLFromInt(pValor: Integer): TEnumAcessoDLL;
    class function AcessoDLL(pEnum: TEnumAcessoDLL): string;
{$IFDEF DELPHIXE} class function AcessoDLLGetList: TObjectList<TParLista>; {$ENDIF}
    class function AmbienteSEFAZToInt(pEnum: TEnumAmbienteSEFAZ): Integer;
    class function AmbienteSEFAZFromInt(pValor: Integer): TEnumAmbienteSEFAZ;
    class function AmbienteSEFAZToCodigo(pEnum: TEnumAmbienteSEFAZ): Integer;
    class function AmbienteSEFAZFromCodigo(pValor: Integer): TEnumAmbienteSEFAZ;
    class function AmbienteSEFAZ(pEnum: TEnumAmbienteSEFAZ): string;
{$IFDEF DELPHIXE} class function AmbienteSEFAZGetList: TObjectList<TParLista>; {$ENDIF}
    class function ModeloDocumentoFromInt(pValor: Integer): TEnumModeloDocumento;
    class function ModeloDocumentoToCodigo(pEnum: TEnumModeloDocumento): string;
    class function ModeloDocumentoToDFe(pEnum: TEnumModeloDocumento): string;
    class function ModeloDocumentoFromCodigo(pValor: string): TEnumModeloDocumento;
    class function ModeloDocumentoFiscal(pEnum: TEnumModeloDocumento): Boolean;
    class function ModeloDocumento(pEnum: TEnumModeloDocumento): string;

    class function EnvioEmailFromInt(pValor: Integer): TEnumEnvioEmail;
    class function EnvioEmailToInt(pEnum: TEnumEnvioEmail): Integer;

    //    class function ImpressoraNaoFiscalFromStr(pValor: string): TEnumImpressoraNaoFiscal;
    //    class function ImpressoraNaoFiscalToStr(pEnum: TEnumImpressoraNaoFiscal): string;
    //    class function ImpressoraNaoFiscal(pEnum: TEnumImpressoraNaoFiscal): string;
    //    {$IFDEF DELPHIXE}class function ImpressoraNaoFiscalGetList: TObjectList<TParLista>;{$ENDIF}
    class function TipoOperacaoDAO(const pEnum: TEnumTipoOperacaoDAO): string;

    class function StatusImportacaoToInt(const pEnum: TEnumStatusImportacao): Integer;
    class function StatusImportacaoFromInt(const pValor: Integer): TEnumStatusImportacao;
    class function StatusImportacao(const pEnum: TEnumStatusImportacao): string;

    class function SituacaoDocEmitido(const pEnum: TEnumSituacaoDocEmitido): string;
    class function SituacaoDocEmitidoFromStr(pSituacao: string): TEnumSituacaoDocEmitido;

    class function TipoNotaFromStr(pTipo: string): TEnumTipoNota;
    class function TipoNotaToStr(pTipo: TEnumTipoNota): string;

    class function CobrancaDeTarefaToStr(const pEnum: TEnumCobrancaDeTarefa): string;
    class function CobrancaDeTarefaFromStr(const pValor: string): TEnumCobrancaDeTarefa;
    class function CobrancaDeTarefa(const pEnum: TEnumCobrancaDeTarefa): string;

    class function ClassificacaoDeTipoDeTarefaToStr(const pEnum: TEnumClassificacaoDeTipoDeTarefa): string;
    class function ClassificacaoDeTipoDeTarefaFromStr(const pValor: string): TEnumClassificacaoDeTipoDeTarefa;
    class function ClassificacaoDeTipoDeTarefa(const pEnum: TEnumClassificacaoDeTipoDeTarefa): string;

    class function ComisaoSobrefromInt(pValor: Integer): TEnumComissaoSobre;
    class function ComisaoSobreToInt(const pEnum: TEnumComissaoSobre): Integer;

    class function SituacaoGuardaToStr(const pEnum: TEnumSituacaoGuarda): string;
    class function SituacaoGuardaFromStr(const pValor: string): TEnumSituacaoGuarda;
    class function SituacaoGuarda(const pEnum: TEnumSituacaoGuarda): string;

    class function ModalidadeFreteFromStr(pValor: string): TEnumModalidadeFrete;
    class function ModalidadeFreteToStr(pEnum: TEnumModalidadeFrete): string;
    class function ModalidadeFrete(const pEnum: TEnumModalidadeFrete): string;
{$IFDEF DELPHIXE}
    class function ModalidadeFreteGetList: TObjectList<TParLista>;
{$ENDIF}
    class function CalcSubFromStr(pTipo: string): TEnumCalcSub;
    class function CalcSubToStr(pTipo: TEnumCalcSub): string;

    class function LancaEstoqueFromStr(pTipo: string): TEnumLancaEstoque;
    class function LancaEstoqueToStr(pTipo: TEnumLancaEstoque): string;

    class function TipoPedidoToStr(const pEnum: TEnumTipoPedido): string;
    class function TipoPedidoFromStr(const pValor: string): TEnumTipoPedido;
    class function TipoPedido(const pEnum: TEnumTipoPedido): string;
    class function TipoPedidoPAFECF(const pEnum: TEnumTipoPedido): string;
    class function TipoPedidoImpressaoPAFECF(const pEnum: TEnumTipoPedido): string;

    class function SituacaoItemOrcamentoToStr(const pEnum: TEnumSituacaoItemOrc): string;
    class function SituacaoItemOrcamentoFromStr(const pValor: string): TEnumSituacaoItemOrc;
    class function SituacaoItemOrcamento(const pEnum: TEnumSituacaoItemOrc): string;

    class function OperacaoGuardaToStr(const pEnum: TEnumOperacaoGuarda): string;
    class function OperacaoGuardaFromStr(const pValor: string): TEnumOperacaoGuarda;

    class function TipoPagamentoToStr(const pEnum: TEnumTipoPagamento): string;
    class function TipoPagamentoFromStr(const pValor: string): TEnumTipoPagamento;
    class function TipoPagamentoFromTipoMeio(const pEnum: TEnumTipoMeio): TEnumTipoPagamento;

    class function PromocaoItemOrcToStr(const pEnum: TEnumPromocaoItemOrc): string;
    class function PromocaoItemOrcFromStr(const pValor: string): TEnumPromocaoItemOrc;
    class function PromocaoItemOrc(const pEnum: TEnumPromocaoItemOrc): string;

    class function MontagemItemOrcToStr(const pEnum: TEnumMontagemItemOrc): string;
    class function MontagemItemOrcFromStr(const pValor: string): TEnumMontagemItemOrc;
    class function MontagemItemOrc(const pEnum: TEnumMontagemItemOrc): string;

    class function TipoTecnicoItemOrcToStr(const pEnum: TEnumTipoTecnicoItemOrc): string;
    class function TipoTecnicoItemOrcFromStr(const pValor: string): TEnumTipoTecnicoItemOrc;
    class function TipoTecnicoItemOrc(const pEnum: TEnumTipoTecnicoItemOrc): string;

    class function TipoPagamentoItemOrcToStr(const pEnum: TEnumTipoPagamentoItemOrc): string;
    class function TipoPagamentoItemOrcFromStr(const pValor: string): TEnumTipoPagamentoItemOrc;
    class function TipoPagamentoItemOrc(const pEnum: TEnumTipoPagamentoItemOrc): string;

    class function TipoEntregaItemOrcToStr(const pEnum: TEnumTipoEntregaItemOrc): string;
    class function TipoEntregaItemOrcFromStr(const pValor: string): TEnumTipoEntregaItemOrc;
    class function TipoEntregaItemOrcFromTipoEntrega(const pEnum: TEnumTipoEntrega): TEnumTipoEntregaItemOrc;
    class function TipoEntregaItemOrc(const pEnum: TEnumTipoEntregaItemOrc): string;

    class function TipoEntregaToStr(const pEnum: TEnumTipoEntrega): string;
    class function TipoEntregaFromStr(const pValor: string): TEnumTipoEntrega;
    class function TipoEntrega(const pEnum: TEnumTipoEntrega): string;

    class function SistemaOrigemToStr(const pEnum: TEnumSistemaOrigem): string;
    class function SistemaOrigemFromStr(const pValor: string): TEnumSistemaOrigem;
    class function SistemaOrigem(const pEnum: TEnumSistemaOrigem): string;

    class function SituacaoSeparacaoOrcToStr(const pEnum: TEnumSituacaoSeparacaoOrc): string;
    class function SituacaoSeparacaoOrcFromStr(const pValor: string): TEnumSituacaoSeparacaoOrc;
    class function SituacaoSeparacaoOrc(const pEnum: TEnumSituacaoSeparacaoOrc): string;

    class function TipoDetalheItemOrcToStr(const pEnum: TEnumTipoDetalheItemOrc): string;
    class function TipoDetalheItemOrcFromStr(const pValor: string): TEnumTipoDetalheItemOrc;
    class function TipoDetalheItemOrc(const pEnum: TEnumTipoDetalheItemOrc): string;

    class function TipoTributacaoToStr(const pEnum: TEnumRegraTipoTributacao): string;
    class function TipoTributacaoPAFECFToStr(const pEnum: TEnumRegraTipoTributacao; const pTipFps: TEnumTipoItem): string;
    class function TipoTributacaoFromStr(const pValor: string): TEnumRegraTipoTributacao;
    class function TipoTributacao(const pEnum: TEnumRegraTipoTributacao): string;

    class function TipoVendaToStr(const pEnum: TEnumTipoVenda): string;
    class function TipoVendaFromStr(const pValor: string): TEnumTipoVenda;
    class function TipoVenda(const pEnum: TEnumTipoVenda): string;

    class function FlagNfeToStr(const pEnum: TEnumFlagNfe): string;
    class function FlagNfeFromStr(const pValor: string): TEnumFlagNfe;
    class function FlagNfeFromSituacaoGuarda(const pEnum: TEnumSituacaoGuarda): TEnumFlagNfe;
    class function FlagNfe(const pEnum: TEnumFlagNfe): string;

    class function DetTipoParceiroToStr(const pEnum: TEnumDetTipoParceiro): string;
    class function DetTipoParceiroFromStr(const pValor: string): TEnumDetTipoParceiro;
    class function DetTipoParceiro(const pEnum: TEnumDetTipoParceiro): string;

    class function FinalidadeNfeToInt(const pEnum: TEnumFinalidadeNfe): Integer;
    class function FinalidadeNfeFromInt(const pValor: Integer): TEnumFinalidadeNfe;
    class function FinalidadeNfe(const pEnum: TEnumFinalidadeNfe): string;

    class function OrigemCancelamentoToStr(const pEnum: TEnumOrigemCancelamento): string;
    class function OrigemCancelamentoFromStr(const pValor: string): TEnumOrigemCancelamento;
    class function OrigemCancelamento(const pEnum: TEnumOrigemCancelamento): string;

    class function TipoNfEspecialToStr(const pEnum: TEnumTipoNFEspecial): string;
    class function TipoNfEspecialFromStr(const pValor: string): TEnumTipoNfEspecial;
    class function TipoNfEspecial(const pEnum: TEnumTipoNfEspecial): string;

    class function VersaoNfeToStr(const pEnum: TEnumVersaoNfe): string;
    class function VersaoNfeFromStr(const pValor: string): TEnumVersaoNfe;
    class function VersaoNfeToFloat(const pEnum: TEnumVersaoNfe): Currency;
    class function VersaoNfeFromFloat(const pValor: Currency): TEnumVersaoNfe;
    class function VersaoNfe(const pEnum: TEnumVersaoNfe): string;

    class function VersaoMDFeToFloat(const pEnum: TEnumVersaoMDFe): Currency;
    class function VersaoMDFeFromStr(const pValor: string): TEnumVersaoMDFe;

    class function TipoContaToStr(const pEnum: TEnumTipoConta): string;
    class function TipoContaFromStr(const pValor: string): TEnumTipoConta;
    class function TipoConta(const pEnum: TEnumTipoConta): string;

    class function SitImpressaoEstornoToStr(const pEnum: TEnumSitImpressaoEstorno): string;
    class function SitImpressaoEstornoFromStr(const pValor: string): TEnumSitImpressaoEstorno;
    class function SitImpressaoEstorno(const pEnum: TEnumSitImpressaoEstorno): string;

    class function ModeloImpressoraToStr(pModelo: TEnumModeloImpressora): string;
    class function ModeloImpressoraFromStr(pModelo: string): TEnumModeloImpressora;
    class function ModeloImpressora(const pEnum: TEnumModeloImpressora): string;
{$IFDEF DELPHIXE} class function ModeloImpressoraGetList: TObjectList<TParLista>; {$ENDIF}
    class function PeriodoEntregaToStr(const pEnum: TEnumPeriodoEntrega): string;
    class function PeriodoEntregaFromStr(const pValor: string): TEnumPeriodoEntrega;
    class function PeriodoEntrega(const pEnum: TEnumPeriodoEntrega): string;

    class function TipoParceiroToInt(const pEnum: TEnumTipoParceiro): Integer;
    class function TipoParceiroFromInt(const pValor: Integer): TEnumTipoParceiro;
    class function TipoParceiro(const pEnum: TEnumTipoParceiro): string;

    class function SexoToInt(const pEnum: TEnumSexo): Integer;
    class function SexoFromInt(const pValor: Integer): TEnumSexo;
    class function Sexo(const pEnum: TEnumSexo): string;

    class function EstadoCivilToInt(const pEnum: TEnumEstadoCivil): Integer;
    class function EstadoCivilFromInt(const pValor: Integer): TEnumEstadoCivil;
    class function EstadoCivil(const pEnum: TEnumEstadoCivil): string;

    class function TipoProdutoToStr(const pEnum: TEnumTipoProduto): string;
    class function TipoProdutoFromStr(const pValor: string): TEnumTipoProduto;
    class function TipoProduto(const pEnum: TEnumTipoProduto): string;

    class function VinculoItemToStr(const pEnum: TEnumVinculoItem): string;
    class function VinculoItemFromStr(const pValor: string): TEnumVinculoItem;
    class function VinculoItem(const pEnum: TEnumVinculoItem): string;

    class function TipoProduto001ToStr(const pEnum: TEnumTipoProduto001): string;
    class function TipoProduto001FromStr(const pValor: string): TEnumTipoProduto001;
    class function TipoProduto001(const pEnum: TEnumTipoProduto001): string;

    class function SitKitToStr(const pEnum: TEnumSitKit): string;
    class function SitKitFromStr(const pValor: string): TEnumSitKit;
    class function SitKit(const pEnum: TEnumSitKit): string;

    class function SituacaoItemToStr(const pEnum: TEnumSituacaoItem): string;
    class function SituacaoItemFromStr(const pValor: string): TEnumSituacaoItem;
    class function SituacaoItem(const pEnum: TEnumSituacaoItem): string;

    class function EntregaFuturaToStr(const pEnum: TEnumEntregaFutura): string;
    class function EntregaFuturaFromStr(const pValor: string): TEnumEntregaFutura;
    class function EntregaFutura(const pEnum: TEnumEntregaFutura): string;

    class function PenAtuToStr(const pEnum: TEnumPenAtu): string;
    class function PenAtuFromStr(const pValor: string): TEnumPenAtu;
    class function PenAtu(const pEnum: TEnumPenAtu): string;

    class function OrigemProdutoToInt(const pEnum: TEnumOrigemProduto): Integer;
    class function OrigemProdutoFromInt(const pValor: Integer): TEnumOrigemProduto;
    class function OrigemProduto(const pEnum: TEnumOrigemProduto): string;

    class function NatCredPISCOFINSToStr(const pEnum: TEnumNatCredPISCOFINS): string;
    class function NatCredPISCOFINSFromStr(const pValor: string): TEnumNatCredPISCOFINS;
    class function NatCredPISCOFINS(const pEnum: TEnumNatCredPISCOFINS): string;

    class function SitTributISSQNToStr(const pEnum: TEnumSitTributISSQN): string;
    class function SitTributISSQNFromStr(const pValor: string): TEnumSitTributISSQN;
    class function SitTributISSQNFromStr_EME4(const pValor: string): TEnumSitTributISSQN;
    class function SitTributISSQN(const pEnum: TEnumSitTributISSQN): string;

    class function ResponsavelRetencaoToStr(const pEnum: TEnumResponsavelRetencao): string;
    class function ResponsavelRetencaoFromStr_EME4(const pValor: string): TEnumResponsavelRetencao;
    class function ResponsavelRetencao(const pEnum: TEnumResponsavelRetencao): string;

    class function FormadorPrecoToStr(const pEnum: TEnumFormadorPreco): string;
    class function FormadorPrecoFromStr(const pValor: string): TEnumFormadorPreco;
    class function FormadorPreco(const pEnum: TEnumFormadorPreco): string;

    class function TipoNaturezaToStr(const pEnum: TEnumTipoNatureza): string;
    class function TipoNaturezaFromStr(const pValor: string): TEnumTipoNatureza;
    class function TipoNatureza(const pEnum: TEnumTipoNatureza): string;

    class function SituacaoRecebimentoToStr(const pEnum: TEnumSituacaoRecebimento): string;
    class function SituacaoRecebimentoFromStr(const pValor: string): TEnumSituacaoRecebimento;
    class function SituacaoRecebimento(const pEnum: TEnumSituacaoRecebimento): string;

    class function ContaCorrenteStatusToStr(const pEnum: TEnumContaCorrenteStatus): string;
    class function ContaCorrenteStatusFromStr(const pValor: string): TEnumContaCorrenteStatus;
    class function ContaCorrenteStatus(const pEnum: TEnumContaCorrenteStatus): string;

    class function ContaCorrenteTipoLancToStr(const pEnum: TEnumContaCorrenteTipoLanc): string;
    class function ContaCorrenteTipoLancFromStr(const pValor: string): TEnumContaCorrenteTipoLanc;
    class function ContaCorrenteTipoLanc(const pEnum: TEnumContaCorrenteTipoLanc): string;

    class function TipoPortadorToStr(const pEnum: TEnumTipoPortador): string;
    class function TipoPortadorFromStr(const pValor: string): TEnumTipoPortador;
    class function TipoPortador(const pEnum: TEnumTipoPortador): string;

    class function RegimeTributarioToStr(const pEnum: EnumRegimeTributario): string;
    class function RegimeTributarioFromStr(const pValor: string): EnumRegimeTributario;
    class function RegimeTributarioToStrEME4(const pEnum: EnumRegimeTributario): string;
    class function RegimeTributarioFromStrEME4(const pValor: string): EnumRegimeTributario;

    class function TipoTribSimplesToStr(const pEnum: TEnumTipoTribSimples): string;
    class function TipoTribSimplesFromStr(const pValor: string): TEnumTipoTribSimples;
    class function TipoTribSimples(const pEnum: TEnumTipoTribSimples): string;

    class function TipoBonusToStr(const pEnum: TEnumTipoBonus): string;
    class function TipoBonusFromStr(const pValor: string): TEnumTipoBonus;
    class function TipoBonus(const pEnum: TEnumTipoBonus): string;

    class function TipoSATToInt(const pEnum: TEnumTipoSAT): Integer;
    class function TipoSATFromInt(const pValor: Integer): TEnumTipoSAT;

    class function OrigemLancamentoToStr(const pEnum: TEnumOrigemLancamento): string;
    class function OrigemLancamentoFromStr(const pValor: string): TEnumOrigemLancamento;
    class function OrigemLancamento(const pEnum: TEnumOrigemLancamento): string;

    class function SituacaoCancelamentoToStr(const pEnum: TEnumSituacaoCancelamento): string;
    class function SituacaoCancelamentoFromStr(const pValor: string): TEnumSituacaoCancelamento;
    class function SituacaoCancelamento(const pEnum: TEnumSituacaoCancelamento): string;

    class function SituacaoTEFToStr(const pEnum: TEnumSituacaoTEF): string;
    class function SituacaoTEFFromStr(const pValor: string): TEnumSituacaoTEF;
    class function SituacaoTEF(const pEnum: TEnumSituacaoTEF): string;

    class function BandeiraCartaoToInt(const pEnum: TEnumBandeiraCartao): Integer;
    class function BandeiraCartaoFromInt(const pValor: Integer): TEnumBandeiraCartao;
    class function BandeiraCartaoFromStr(const pDescricao: string): TEnumBandeiraCartao;
    class function BandeiraCartaoToStr(const pEnum: TEnumBandeiraCartao): string;

    class function RegimeTributarioFromInt(const pValor: Integer): TEnumRegimeTributario;
    class function RegimeTributarioToInt(const pEnum: TEnumRegimeTributario): Integer;

    class function TipoIntegracaoPagamentoToInt(const pEnum: TEnumTipoIntegracaoPagamento): Integer;
    class function TipoIntegracaoPagamentoFromInt(const pValor: Integer): TEnumTipoIntegracaoPagamento;

    class function CaixaOrigemToStr(const pEnum: TEnumCaixaOrigem): string;
    class function CaixaOrigemFromStr(const pValor: string): TEnumCaixaOrigem;
    class function CaixaOrigem(const pEnum: TEnumCaixaOrigem): string;

    class function TipoMeioToStr(const pEnum: TEnumTipoMeio): string;
    class function TipoMeioFromStr(const pValor: string): TEnumTipoMeio;
    class function TipoMeio(const pEnum: TEnumTipoMeio): string;

    class function FlagFinanceiroToStr(const pEnum: TEnumFlagFinanceiro): string;
    class function FlagFinanceiroFromStr(const pValor: string): TEnumFlagFinanceiro;
    class function FlagFinanceiro(const pEnum: TEnumFlagFinanceiro): string;

    class function CancelamentoSefazToStr(const pEnum: TEnumCancelamentoSefaz): string;
    class function CancelamentoSefazFromStr(const pValor: string): TEnumCancelamentoSefaz;
    class function CancelamentoSefaz(const pEnum: TEnumCancelamentoSefaz): string;

    class function TipoOperacaoTEFToStr(const pEnum: TEnumTipoOperacaoTEF): string;
    class function TipoOperacaoTEFFromStr(const pValor: string): TEnumTipoOperacaoTEF;
    class function TipoOperacaoTEFFromStrPosControle(const pValor: string): TEnumTipoOperacaoTEF;
    class function TipoOperacaoTEF(const pEnum: TEnumTipoOperacaoTEF): string;

    class function TipoCobrancaTEFToStr(const pEnum: TEnumTipoCobrancaTEF): string;
    class function TipoCobrancaTEFFromStr(const pValor: string): TEnumTipoCobrancaTEF;
    class function TipoCobrancaTEF(const pEnum: TEnumTipoCobrancaTEF): string;

    class function SituacaoItemTEFToStr(const pEnum: TEnumSituacaoItemTEF): string;
    class function SituacaoItemTEFFromStr(const pValor: string): TEnumSituacaoItemTEF;
    class function SituacaoItemTEF(const pEnum: TEnumSituacaoItemTEF): string;

    class function TipoTransacaoToInt(const pEnum: TEnumTipoTransacao): Integer;
    class function TipoTransacaoFromInt(const pValor: Integer): TEnumTipoTransacao;
    class function TipoTransacao(const pEnum: TEnumTipoTransacao): string;

    class function TipoDocumentoImportacaoToStr(const pEnum: TEnumTipoDocumentoImportacao): string;
    class function TipoDocumentoImportacaoFromStr(const pValor: string): TEnumTipoDocumentoImportacao;
    class function TipoDocumentoImportacao(const pEnum: TEnumTipoDocumentoImportacao): string;

    class function SituacaoTransitoImportacaoToStr(const pEnum: TEnumSituacaoTransitoImportacao): string;
    class function SituacaoTransitoImportacaoFromStr(const pValor: string): TEnumSituacaoTransitoImportacao;
    class function SituacaoTransitoImportacao(const pEnum: TEnumSituacaoTransitoImportacao): string;

    class function ViaTransporteDIToInt(const pEnum: TEnumViaTransporteDI): Integer;
    class function ViaTransporteDIFromInt(const pValor: Integer): TEnumViaTransporteDI;
    class function ViaTransporteDI(const pEnum: TEnumViaTransporteDI): string;

    class function IntermediacaoDIToInt(const pEnum: TEnumIntermediacaoDI): Integer;
    class function IntermediacaoDIFromInt(const pValor: Integer): TEnumIntermediacaoDI;
    class function IntermediacaoDI(const pEnum: TEnumIntermediacaoDI): string;

    class function TipoDIToStr(const pEnum: TEnumTipoDI): string;
    class function TipoDIFromStr(const pValor: string): TEnumTipoDI;

    class function CategoriasMagazordFromStr(const pValor: string): TEnumTabelaIntegracao;
    class function CategoriasMagazordToStr(const pEnum: TEnumTabelaIntegracao): String;

    class function OrigemConsultaRetaguardaToStr(const pEnum: TEnumOrigemConsultaRetaguarda): string;
    class function OrigemConsultaRetaguardaFromStr(const pValor: string): TEnumOrigemConsultaRetaguarda;
    class function OrigemConsultaRetaguarda(const pEnum: TEnumOrigemConsultaRetaguarda): string;

    class function RelacaoParceiroToStr(const pEnum: TEnumRelacaoParceiro): string;
    class function RelacaoParceiroFromStr(const pValor: string): TEnumRelacaoParceiro;
    class function RelacaoParceiro(const pEnum: TEnumRelacaoParceiro): string;

    class function StatusRecebimentoTerceiroToStr(const pEnum: TEnumStatusRecebimentoTerceiro): string;
    class function StatusRecebimentoTerceiroFromStr(const pValor: string): TEnumStatusRecebimentoTerceiro;
    class function StatusRecebimentoTerceiro(const pEnum: TEnumStatusRecebimentoTerceiro): string;

    class function StatusReservaFidelidadeToStr(const pEnum: TEnumStatusReservaFidelidade): String;
    class function StatusReservaFidelidadeFromStr(const pValor: String): TEnumStatusReservaFidelidade;
    class function StatusReservaFidelidade(const pEnum: TEnumStatusReservaFidelidade): String;

    class function ServicosAPIToStr(const pEnum: TEnumServicosAPI): string;
    class function ServicosAPIFromStr(const pValor: string): TEnumServicosAPI;

    class function ServicosConexaoAPIToStr(const pEnum: TEnumServicos_TConexaoAPI): string;
    class function ServicosConexaoAPIFromStr(const pValor: string): TEnumServicos_TConexaoAPI;

    class function ServicosConexaoLocalAPIFromStr(const pValor: string): TEnumServicos_TConexaoLocalAPI;

    class function ServicosNFeAPIToStr(const pEnum: TEnumServicos_TNFeAPI): string;
    class function ServicosNFeAPIFromStr(const pValor: string): TEnumServicos_TNFeAPI;

    class function ServicosCTeAPIToStr(const pEnum: TEnumServicos_TCTeAPI): string;
    class function ServicosCTeAPIFromStr(const pValor: string): TEnumServicos_TCTeAPI;

    class function ServicosFidelidadeAPIToStr(const pEnum: TEnumServicos_TFidelidadeAPI): string;
    class function ServicosFidelidadeAPIFromStr(const pValor: string): TEnumServicos_TFidelidadeAPI;

    class function ServicosVeiculoAPIToStr(const pEnum: TEnumServicos_TVeiculoAPI): string;
    class function ServicosVeiculoAPIFromStr(const pValor: String): TEnumServicos_TVeiculoAPI;

    class function ServicosMDFeAPIToStr(const pEnum: TEnumServicos_TMDFeAPI): string;
    class function ServicosMDFeAPIFromStr(const pValor: string): TEnumServicos_TMDFeAPI;

    class function ServicosCommerceAPIToStr(const pEnum: TEnumServicos_TCommerceAPI): string;
    class function ServicosCommerceAPIFromStr(const pValor: string): TEnumServicos_TCommerceAPI;

    class function ServicosImpressoraNaoFiscalAPIToStr(const pEnum: TEnumServicos_TImpressoraNaoFiscalAPI): string;
    class function ServicosImpressoraNaoFiscalAPIFromStr(const pValor: string): TEnumServicos_TImpressoraNaoFiscalAPI;

    class function ServicosNFeLocalAPIToStr(const pEnum: TEnumServicos_TNFeLocalAPI): string;
    class function ServicosNFeLocalAPIFromStr(const pValor: string): TEnumServicos_TNFeLocalAPI;

    class function ServicosSSLAPIToStr(const pEnum: TEnumServicos_TSSLAPI): string;
    class function ServicosSSLAPIFromStr(const pValor: string): TEnumServicos_TSSLAPI;

    class function ServicosSSLLocalAPIToStr(const pEnum: TEnumServicos_TSSLLocalAPI): string;
    class function ServicosSSLLocalAPIFromStr(const pValor: string): TEnumServicos_TSSLLocalAPI;

    class function ServicosPAFAPIToStr(const pEnum: TEnumServicos_TPAFAPI): string;
    class function ServicosPAFAPIFromStr(const pValor: string): TEnumServicos_TPAFAPI;

    class function ServicosPafLocalAPIFromStr(const pValor: string): TEnumServicos_TPafLocalAPI;

    class function ServicosCommerceLocalAPIToStr(const pEnum: TEnumServicos_TCommerceLocalAPI): string;
    class function ServicosCommerceLocalAPIFromStr(const pValor: string): TEnumServicos_TCommerceLocalAPI;

    class function ServicosMiddlewareAPIToStr(const pEnum: TEnumServicos_TMiddlewareAPI): string;
    class function ServicosMiddlewareAPIFromStr(const pValor: string): TEnumServicos_TMiddlewareAPI;

    class function CadastroDIToStr(const pEnum: TEnumCadastroDI): string;
    class function CadastroDIFromStr(const pValor: string): TEnumCadastroDI;
    class function CadastroDI(const pEnum: TEnumCadastroDI): string;

    class function SituacaoServicoAdicionalToStr(const pEnum: TEnumSituacaoServicoAdicional): string;
    class function SituacaoServicoAdicionalFromStr(const pValor: string): TEnumSituacaoServicoAdicional;
    class function SituacaoServicoAdicional(const pEnum: TEnumSituacaoServicoAdicional): string;

    class function SolucaoPendenciaToStr(const pEnum: TEnumSolucaoPendencia): string;
    class function SolucaoPendenciaFromStr(const pValor: string): TEnumSolucaoPendencia;
    class function SolucaoPendencia(const pEnum: TEnumSolucaoPendencia): string;

    class function UsoCaixaToInt(const pEnum: TEnumUsoCaixa): Integer;
    class function UsoCaixaFromInt(const pValor: Integer): TEnumUsoCaixa;
    class function UsoCaixa(const pEnum: TEnumUsoCaixa): string;

    class function AplicacaoRedAliqToStr(const pEnum: TEnumAplicacaoRedAliq): string;
    class function AplicacaoRedAliqFromStr(const pValor: string): TEnumAplicacaoRedAliq;

    class function AplicacaoRedICMSConsumidorFinalToStr(const pEnum: TEnumAplicacaoRedICMSConsumidorFinal): string;
    class function AplicacaoRedICMSConsumidorFinalFromStr(const pValor: string): TEnumAplicacaoRedICMSConsumidorFinal;

    class function RegimeUFToInt(const pEnum: TEnumRegimeUF): Integer;
    class function RegimeUFFromInt(const pValor: Integer): TEnumRegimeUF;

    class function TipoDocumentoToStr(const pEnum: TEnumTipoDocumento): string;
    class function TipoDocumentoFromStr(const pValor: string): TEnumTipoDocumento;

    class function RegraTipoSubstituicaoToInt(const pEnum: TEnumRegraTipoSubstituicao): Integer;
    class function RegraTipoSubstituicaoFromInt(const pValor: Integer): TEnumRegraTipoSubstituicao;

    class function TipoMPBemToStr(const pEnum: TEnumTipoMPBem): string;
    class function TipoMPBemFromStr(const pValor: string): TEnumTipoMPBem;

    class function EmailSituacaoToStr(const pEnum: TEnumEmailSituacao): string;
    class function EmailSituacaoFromStr(const pValor: string): TEnumEmailSituacao;
    class function EmailSituacao(const pEnum: TEnumEmailSituacao): string;

    class function EmailCriptografiaToInt(const pEnum: TEnumEmailCriptografia): Integer;
    class function EmailCriptografiaFromInt(const pValor: Integer): TEnumEmailCriptografia;
    class function EmailCriptografia(const pEnum: TEnumEmailCriptografia): string;

    class function PerfilFromStr(const pValor: string): TEnumPerfil;
    class function PerfilToStr(const pEnum: TEnumPerfil): string;

    class function RequisitoPerfilFromStr(const pValor: string): TEnumRequisitoPerfil;
    class function RequisitoPerfilToStr(const pEnum: TEnumRequisitoPerfil): string;

    class function FuncionalidadePAFECFToStr(const pEnum: TEnumFuncionalidadePAFECF): string;
    class function FuncionalidadePAFECFFromStr(const pValor: string): TEnumFuncionalidadePAFECF;
    class function FuncionalidadePAFECF(const pEnum: TEnumFuncionalidadePAFECF): string;
{$IFDEF DELPHIXE}
    class function FuncionalidadePAFECFGetList: TObjectList<TParLista>;
{$ENDIF}
    class function ModeloFiscalNFRefToInt(const pEnum: TEnumModeloFiscalNFRef): Integer;
    class function ModeloFiscalNFRefFromInt(const pValor: Integer): TEnumModeloFiscalNFRef;
    class function ModeloFiscalNFRef(const pEnum: TEnumModeloFiscalNFRef): string;

    class function SituacaoRomaneioFromStr(const pValor: string): TEnumSituacaoRomaneio;
    class function SituacaoRomaneioToStr(const pEnum: TEnumSituacaoRomaneio): string;
    class function SituacaoRomaneio(const pEnum: TEnumSituacaoRomaneio): string;

    class function TintometricoToInt(const pEnum: TEnumTintometrico): Integer;
    class function TintometricoFromInt(const pValor: Integer): TEnumTintometrico;
    class function Tintometrico(const pEnum: TEnumTintometrico): string;

    class function MensageriaDfeToInt(const pEnum: TEnumMensageriaDfe): Integer;
    class function MensageriaDfeFromInt(const pValor: Integer): TEnumMensageriaDfe;
    class function MensageriaDfe(const pEnum: TEnumMensageriaDfe): string;

    class function TipoImpressaoToInt(const pEnum: TEnumTipoImpressao): Integer;
    class function TipoImpressaoFromInt(const pValor: Integer): TEnumTipoImpressao;
    class function TipoImpressao(const pEnum: TEnumTipoImpressao): string;

    class function TipoEmissaoToInt(const pEnum: TEnumTipoEmissao): Integer;
    class function TipoEmissaoFromInt(const pValor: Integer): TEnumTipoEmissao;
    class function TipoEmissao(const pEnum: TEnumTipoEmissao): string;
    class function TipoEmissaoContingenciaFromModeloUF(const pModelo: TEnumModeloDocumento; const pUF: string): TEnumTipoEmissao;

    class function TipoDocumentoFiscalToInt(const pEnum: TEnumTipoDocumentoFiscal): Integer;
    class function TipoDocumentoFiscalFromInt(const pValor: Integer): TEnumTipoDocumentoFiscal;
    class function TipoDocumentoFiscalFromStr(const pValor: string): TEnumTipoDocumentoFiscal;
    class function TipoDocumentoFiscal(const pEnum: TEnumTipoDocumentoFiscal): string;

    class function IndicadorPresencaToInt(const pEnum: TEnumIndicadorPresenca): Integer;
    class function IndicadorPresencaFromInt(const pValor: Integer): TEnumIndicadorPresenca;
    class function IndicadorPresenca(const pEnum: TEnumIndicadorPresenca): string;

    class function ModalidadeBCToInt(const pEnum: TEnumModalidadeBC): Integer;
    class function ModalidadeBCFromInt(const pValor: Integer): TEnumModalidadeBC;
    class function ModalidadeBC(const pEnum: TEnumModalidadeBC): string;

    class function ModalidadeBCSTToInt(const pEnum: TEnumModalidadeBCST): Integer;
    class function ModalidadeBCSTFromInt(const pValor: Integer): TEnumModalidadeBCST;
    class function ModalidadeBCST(const pEnum: TEnumModalidadeBCST): string;

    class function TipoComercioToStr(const pEnum: TEnumTipoComercio): string;
    class function TipoComercioFromStr(const pValor: string): TEnumTipoComercio;
    class function TipoComercio(const pEnum: TEnumTipoComercio): string;

    class function UFFromCodigoIbge(const pValor: Integer): TEnumUF;
    class function UFToSigla(const pEnum: TEnumUF): string;

    class function AcaoTituloBancarioToStr(const pEnum: TEnumAcaoTituloBancario): string;
    class function AcaoTituloBancarioFromStr(const pValor: string): TEnumAcaoTituloBancario;
    class function AcaoTituloBancario(const pEnum: TEnumAcaoTituloBancario): string;

    class function JobsToStr(const pEnum: TEnumJobs): string;

    class function RegraAbcXyzFromInt(const pValor: Integer): TEnumRegraAbcXyz;

    class function TipoDocumentoTituloBancarioToStr(const pEnum: TEnumTipoDocumentoTituloBancario): string;
    class function TipoDocumentoTituloBancarioFromStr(const pValor: string): TEnumTipoDocumentoTituloBancario;
    class function TipoDocumentoTituloBancario(const pEnum: TEnumTipoDocumentoTituloBancario): string;

    class function TipoCarteiraTituloBancarioToStr(const pEnum: TEnumTipoCarteiraTituloBancario): string;
    class function TipoCarteiraTituloBancarioFromStr(const pValor: string): TEnumTipoCarteiraTituloBancario;
    class function TipoCarteiraTituloBancario(const pEnum: TEnumTipoCarteiraTituloBancario): string;

    class function DistribuicaoBoletoToStr(const pEnum: TEnumDistribuicaoBoleto): string;
    class function DistribuicaoBoletoFromStr(const pValor: string): TEnumDistribuicaoBoleto;
    class function DistribuicaoBoleto(const pEnum: TEnumDistribuicaoBoleto): string;

    class function ResponEmissaoTituloBancarioToStr(const pEnum: TEnumResponEmissaoTituloBancario): string;
    class function ResponEmissaoTituloBancarioFromStr(const pValor: string): TEnumResponEmissaoTituloBancario;
    class function ResponEmissaoTituloBancario(const pEnum: TEnumResponEmissaoTituloBancario): string;

    class function LayoutBoletoToStr(const pEnum: TEnumLayoutBoleto): string;
    class function LayoutBoletoFromStr(const pValor: string): TEnumLayoutBoleto;
    class function LayoutBoleto(const pEnum: TEnumLayoutBoleto): string;

    class function APIResultCodToStr(const pEnum: TEnumAPIResultCod): string;
    class function APIResultCodFromStr(const pValor: string): TEnumAPIResultCod;

    class function SituacaoOrcToStr(const pEnum: TEnumSituacaoOrc): string;
    class function SituacaoOrcFromStr(const pValor: string): TEnumSituacaoOrc;
    class function SituacaoOrc(const pEnum: TEnumSituacaoOrc): string;

    class function SituacaoAprovacaoCreditoToStr(const pEnum: TEnumSituacaoAprovacaoCredito): string;
    class function SituacaoAprovacaoCreditoFromStr(const pValor: string): TEnumSituacaoAprovacaoCredito;
    class function SituacaoAprovacaoCredito(const pEnum: TEnumSituacaoAprovacaoCredito): string;

    class function AprovacaoOrcPeloClienteToStr(const pEnum: TEnumAprovacaoOrcPeloCliente): string;
    class function AprovacaoOrcPeloClienteFromStr(const pValor: string): TEnumAprovacaoOrcPeloCliente;
    class function AprovacaoOrcPeloCliente(const pEnum: TEnumAprovacaoOrcPeloCliente): string;

    class function SituacaoEcommerceToStr(const pEnum: TEnumSituacaoEcommerce): string;
    class function SituacaoEcommerceFromStr(const pValor: string): TEnumSituacaoEcommerce;
    class function SituacaoEcommerce(const pEnum: TEnumSituacaoEcommerce): string;

    class function FormulaUsoToInt(const pEnum: TEnumFormulaUso): Integer;
    class function FormulaUsoFromInt(const pValor: Integer): TEnumFormulaUso;
    class function FormulaUso(const pEnum: TEnumFormulaUso): string;

    class function OrigemTipoToInt(const pEnum: TEnumOrigemTipo): Integer;
    class function OrigemTipoFromInt(const pValor: Integer): TEnumOrigemTipo;
    class function OrigemTipo(const pEnum: TEnumOrigemTipo): string;

    class function ImpostosTipoNotaToStr(const pEnum: TEnumImpostosTipoNota): string;
    class function ImpostosTipoNotaFromStr(const pValor: string): TEnumImpostosTipoNota;
    class function ImpostosTipoNota(const pEnum: TEnumImpostosTipoNota): string;

    class function SituacaoAnaliseCreditoToStr(const pEnum: TEnumSituacaoAnaliseCredito): string;
    class function SituacaoAnaliseCreditoFromStr(const pValor: string): TEnumSituacaoAnaliseCredito;
    class function SituacaoAnaliseCredito(const pEnum: TEnumSituacaoAnaliseCredito): string;

    class function ExigibilidadeISSToStr(const pEnum: TEnumExigibilidadeISS): string;
    class function ExigibilidadeISSFromStr(const pValor: string): TEnumExigibilidadeISS;
    class function ExigibilidadeISSFromStrEME4(const pValor: string): TEnumExigibilidadeISS;
    class function ExigibilidadeISS(const pEnum: TEnumExigibilidadeISS): string;

    class function NaturezaOuOperacaoDaNFSeToStr(const pEnum: TEnumNaturezaOuOperacaoDaNFSe): string;
    class function NaturezaOuOperacaoDaNFSeFromStr(const pValor: string): TEnumNaturezaOuOperacaoDaNFSe;
    class function NaturezaOuOperacaoDaNFSe(const pEnum: TEnumNaturezaOuOperacaoDaNFSe): string;

    class function TipoDeTributacaoServicoToStr(const pEnum: TEnumTipoDeTributacaoServico): string;
    class function TipoDeTributacaoServicoFromStr(const pValor: string): TEnumTipoDeTributacaoServico;
    class function TipoDeTributacaoServicoFromStrEME4(const pValor: string): TEnumTipoDeTributacaoServico;
    class function TipoDeTributacaoServico(const pEnum: TEnumTipoDeTributacaoServico): string;

    class function RegTriEspNFSeToInt(const pEnum: TEnumRegTriEspNFSe): Integer;
    class function RegTriEspNFSeFromInt(const pValor: Integer): TEnumRegTriEspNFSe;
    class function RegTriEspNFSe(const pEnum: TEnumRegTriEspNFSe): string;
{$IFDEF DELPHIXE} class function RegTriEspNFSeGetList: TObjectList<TParLista>; {$ENDIF}
    class function TipoItemToStr(const pEnum: TEnumTipoItem): string;
    class function TipoItemFromStr(const pValor: string): TEnumTipoItem;
    class function TipoItem(const pEnum: TEnumTipoItem): string;

    class function TipoLogDAVToStr(const pEnum: TEnumTipoLogDAV): string;
    class function TipoLogDAVFromStr(const pValor: string): TEnumTipoLogDAV;
    class function TipoLogDAV(const pEnum: TEnumTipoLogDAV): string;

    class function ECFArredondaTruncaToStr(const pEnum: TEnumECFArredondaTrunca): string;
    class function ECFArredondaTruncaFromStr(const pValor: string): TEnumECFArredondaTrunca;
    class function ECFArredondaTrunca(const pEnum: TEnumECFArredondaTrunca): string;

    class function MotivoCancelamentoNFSeToInt(const pEnum: TEnumMotivoCancelamentoNFSe): Integer;
    class function MotivoCancelamentoNFSeFromInt(const pValor: Integer): TEnumMotivoCancelamentoNFSe;
    class function MotivoCancelamentoNFSe(const pEnum: TEnumMotivoCancelamentoNFSe): string;

    class function TipoComunicacaoImpressoraToStr(const pEnum: TEnumTipoComunicacaoImpressora): string;
    class function TipoComunicacaoImpressoraFromStr(const pValor: string): TEnumTipoComunicacaoImpressora;
    class function TipoComunicacaoImpressora(const pEnum: TEnumTipoComunicacaoImpressora): string;
    class function TipoComunicacaoImpressoraFileExt(const pEnum: TEnumTipoComunicacaoImpressora = TEnumTipoComunicacaoImpressora_Normal): string;
{$IFDEF DELPHIXE} class function TipoComunicacaoImpressoraGetList: TObjectList<TParLista>; {$ENDIF}
    class function DPIImpressoraToInt(const pEnum: TEnumDPIImpressora): Integer;
    class function DPIImpressoraFromInt(const pValor: Integer): TEnumDPIImpressora;
    class function DPIImpressora(const pEnum: TEnumDPIImpressora): string;
{$IFDEF DELPHIXE} class function DPIImpressoraGetList: TObjectList<TParLista>; {$ENDIF}
    class function OrientacaoEtiquetaToInt(const pEnum: TEnumOrientacaoEtiqueta): Integer;
    class function OrientacaoEtiquetaFromInt(const pValor: Integer): TEnumOrientacaoEtiqueta;
    class function OrientacaoEtiqueta(const pEnum: TEnumOrientacaoEtiqueta): string;

    class function ExibeCodigoBarraEtiquetaToStr(const pEnum: TEnumExibeCodigoBarraEtiqueta): string;
    class function ExibeCodigoBarraEtiquetaFromStr(const pValor: string): TEnumExibeCodigoBarraEtiqueta;
    class function ExibeCodigoBarraEtiqueta(const pEnum: TEnumExibeCodigoBarraEtiqueta): string;

    class function UnidadeImpressoraToStr(const pEnum: TEnumUnidadeImpressora): string;
    class function UnidadeImpressoraFromStr(const pValor: string): TEnumUnidadeImpressora;
    class function UnidadeImpressora(const pEnum: TEnumUnidadeImpressora): string;

    class function TipoCodBarraImpressoraToStr(const pEnum: TEnumTipoCodBarraImpressora): string;
    class function TipoCodBarraImpressoraFromStr(const pValor: string): TEnumTipoCodBarraImpressora;
    class function TipoCodBarraImpressora(const pEnum: TEnumTipoCodBarraImpressora): string;

    class function SerialParityToStr(const pEnum: TEnumSerialParity): string;
    class function SerialParityFromStr(const pValor: string): TEnumSerialParity;
    class function SerialParity(const pEnum: TEnumSerialParity): string;

    class function SerialStopToStr(const pEnum: TEnumSerialStop): string;
    class function SerialStopFromStr(const pValor: string): TEnumSerialStop;
    class function SerialStop(const pEnum: TEnumSerialStop): string;

    class function HandShakeToStr(const pEnum: TEnumHandShake): string;
    class function HandShakeFromStr(const pValor: string): TEnumHandShake;
    class function HandShake(const pEnum: TEnumHandShake): string;

    class function ParceiroDenegadoToInt(const pEnum: TEnumParceiroDenegado): Integer;
    class function ParceiroDenegadoFromInt(const pValor: Integer): TEnumParceiroDenegado;
    class function ParceiroDenegado(const pEnum: TEnumParceiroDenegado): string;

    class function CertificadoTipoToStr(const pEnum: TEnumCertificadoTipo): string;
    class function CertificadoTipoFromStr(const pValor: string): TEnumCertificadoTipo;
    class function CertificadoTipo(const pEnum: TEnumCertificadoTipo): string;

    class function ParamCfgSistemaTipoToStr(const pEnum: TEnumParamCfgSistemaTipo): string;
    class function ParamCfgSistemaTipoFromStr(const pValor: string): TEnumParamCfgSistemaTipo;
    class function ParamCfgSistemaTipo(const pEnum: TEnumParamCfgSistemaTipo): string;

    class function RegraCodigoFiscalToInt(const pEnum: TEnumRegraCodigoFiscal): Integer;
    class function RegraCodigoFiscalFromInt(const pValor: Integer): TEnumRegraCodigoFiscal;
    class function RegraCodigoFiscal(const pEnum: TEnumRegraCodigoFiscal): string;

    class function VariacaoCustoTipoToStr(const pEnum: TEnumVariacaoCustoTipo): string;
    class function VariacaoCustoTipoFromStr(const pValor: string): TEnumVariacaoCustoTipo;
    class function VariacaoCustoTipo(const pEnum: TEnumVariacaoCustoTipo): string;

    class function ConexaoMiddlewareTipoRetornoToStr(const pEnum: TEnumConexaoMiddlewareTipoRetorno): string;
    class function ConexaoMiddlewareTipoRetornoFromStr(const pValor: string): TEnumConexaoMiddlewareTipoRetorno;
    class function ConexaoMiddlewareTipoRetorno(const pEnum: TEnumConexaoMiddlewareTipoRetorno): string;

    class function IndicadorPagamentoToStr(const pEnum: TEnumIndicadorPagamento): string;
    class function IndicadorPagamentoFromStr(const pValor: string): TEnumIndicadorPagamento;
    class function IndicadorPagamento(const pEnum: TEnumIndicadorPagamento): string;

    class function PrazoCancelamentoFromModeloUF(const pModelo: TEnumModeloDocumento; const pUF: string): Double;
    class function VersaoQRCodeUF(const pUF: string): string;

    class function PosicaoReciboDanfeToInt(pEnum: TEnumPosicaoReciboDanfe): Integer;
    class function PosicaoReciboDanfeFromInt(pValor: Integer): TEnumPosicaoReciboDanfe;
    class function PosicaoReciboDanfe(pEnum: TEnumPosicaoReciboDanfe): string;
{$IFDEF DELPHIXE} class function PosicaoReciboDanfeGetList: TObjectList<TParLista>; {$ENDIF}
    class function PosicaoReciboDacteToInt(pEnum: TEnumPosicaoReciboDacte): Integer;
    class function PosicaoReciboDacteFromInt(pValor: Integer): TEnumPosicaoReciboDacte;
    class function PosicaoReciboDacte(pEnum: TEnumPosicaoReciboDacte): string;
{$IFDEF DELPHIXE} class function PosicaoReciboDacteGetList: TObjectList<TParLista>; {$ENDIF}
    class function PosicaoReciboDamdfeToInt(pEnum: TEnumPosicaoReciboDamdfe): Integer;
    class function PosicaoReciboDamdfeFromInt(pValor: Integer): TEnumPosicaoReciboDamdfe;
    class function PosicaoReciboDamdfe(pEnum: TEnumPosicaoReciboDamdfe): string;
{$IFDEF DELPHIXE} class function PosicaoReciboDamdfeGetList: TObjectList<TParLista>; {$ENDIF}

{$IFDEF DELPHIXE} class function PortaVirtualImpressoraGetList: TObjectList<TParLista>; {$ENDIF}
    class function TipoDeMultaToStr(const pEnum: TEnumTipoDeMulta): string;
    class function TipoDeMultaFromStr(const pValor: string): TEnumTipoDeMulta;
    class function TipoDeMulta(const pEnum: TEnumTipoDeMulta): string;

    class function TipoDeJurosMoraToInt(const pEnum: TEnumTipoDeJurosMora): Integer;
    class function TipoDeJurosMoraFromInt(const pValor: Integer): TEnumTipoDeJurosMora;
    class function TipoDeJurosMora(const pEnum: TEnumTipoDeJurosMora): string;

    class function TipoDiasProtestoToInt(const pEnum: TEnumTipoDiasProtesto): Integer;
    class function TipoDiasProtestoFromInt(const pValor: Integer): TEnumTipoDiasProtesto;
    class function TipoDiasProtesto(const pEnum: TEnumTipoDiasProtesto): string;

    class function CaracteristicaCarteiraToStr(const pEnum: TEnumCaracteristicaCarteira): string;
    class function CaracteristicaCarteiraFromStr(const pValor: string): TEnumCaracteristicaCarteira;
    class function CaracteristicaCarteira(const pEnum: TEnumCaracteristicaCarteira): string;

    class function LayoutRemessaToInt(const pEnum: TEnumLayoutRemessa): Integer;
    class function LayoutRemessaFromInt(const pValor: Integer): TEnumLayoutRemessa;
    class function LayoutRemessa(const pEnum: TEnumLayoutRemessa): string;

    class function SituacaoPedidoDeCompraToStr(const pEnum: TEnumSituacaoPedidoDeCompra): string;
    class function SituacaoPedidoDeCompraFromStr(const pValor: string): TEnumSituacaoPedidoDeCompra;
    class function SituacaoPedidoDeCompra(const pEnum: TEnumSituacaoPedidoDeCompra): string;

    class function SituacaoPedidoDeCompraItemToStr(const pEnum: TEnumSituacaoPedidoDeCompraItem): string;
    class function SituacaoPedidoDeCompraItemFromStr(const pValor: string): TEnumSituacaoPedidoDeCompraItem;
    class function SituacaoPedidoDeCompraItem(const pEnum: TEnumSituacaoPedidoDeCompraItem): string;

    class function OrigemIVOToStr(const pEnum: TEnumSituacaoOrigemIVO): string;
    class function OrigemIVOFromStr(const pValor: string): TEnumSituacaoOrigemIVO;
    class function OrigemIVO(const pEnum: TEnumSituacaoOrigemIVO): string;

    class function ArquivoBDTipoToStr(const pEnum: TEnumArquivoBDTipo): string;
    class function ArquivoBDTipoFromStr(const pValor: string): TEnumArquivoBDTipo;
    class function ArquivoBDTipo(const pEnum: TEnumArquivoBDTipo): string;

    class function TipoValorProdutoToStr(const pEnum: TEnumTipoValorProduto): string;
    class function TipoValorProdutoFromStr(const pValor: string): TEnumTipoValorProduto;
    class function TipoValorProduto(const pEnum: TEnumTipoValorProduto): string;

    class function DestinoOperacaoToStr(const pEnum: TEnumIdDestinoOperacao): string;
    class function DestinoOperacaoFromStr(const pValor: string): TEnumIdDestinoOperacao;
    class function DestinoOperacao(const pEnum: TEnumIdDestinoOperacao): string;

    class function ModeloFiscalCFRefToStr(const pEnum: TEnumModeloFiscalCFRef): string;
    class function ModeloFiscalCFRefFromStr(const pValor: string): TEnumModeloFiscalCFRef;
    class function ModeloFiscalCFRef(const pEnum: TEnumModeloFiscalCFRef): string;

    class function OrigemRequisicaoExternaToStr(const pEnum: TEnumOrigemRequisicaoExterna): string;
    class function OrigemRequisicaoExternaFromStr(const pValor: string): TEnumOrigemRequisicaoExterna;
    class function OrigemRequisicaoExterna(const pEnum: TEnumOrigemRequisicaoExterna): string;
    class function OrigemRequisicaoExternaDesc(const pEnum: TEnumOrigemRequisicaoExterna): string;

    class function StatusRequisicaoExternaToStr(const pEnum: TEnumStatusRequisicaoExterna): string;
    class function StatusRequisicaoExternaFromStr(const pValor: string): TEnumStatusRequisicaoExterna;
    class function StatusRequisicaoExterna(const pEnum: TEnumStatusRequisicaoExterna): string;

    class function CodigoEmpresaToInt(const pEnum: TEnumCodigoEmpresa): Integer;
    class function CodigoEmpresaFromInt(const pValor: Integer): TEnumCodigoEmpresa;
    class function CodigoEmpresa(const pEnum: TEnumCodigoEmpresa): string;

    class function RecebimentoOrcToStr(const pEnum: TEnumRecebimentoOrc): string;
    class function RecebimentoOrcFromStr(const pValor: string): TEnumRecebimentoOrc;
    class function RecebimentoOrc(const pEnum: TEnumRecebimentoOrc): string;
    class function RecebimentoOrcToBandeira(const pEnum: TEnumRecebimentoOrc): TEnumBandeiraCartao;
    class function RecebimentoFromSkyhub(const pValor: string): TEnumRecebimentoOrc;

    class function MotivoDesoneracaoToInt(const pEnum: TEnumMotivoDesoneracao): Integer;
    class function MotivoDesoneracaoFromInt(const pValor: Integer): TEnumMotivoDesoneracao;
    class function MotivoDesoneracao(const pEnum: TEnumMotivoDesoneracao): string;

    class function CodigoProcessamentoBlocoXToInt(const pEnum: TEnumCodigoProcessamentoBlocoX): Integer;
    class function CodigoProcessamentoBlocoXFromInt(const pValor: Integer): TEnumCodigoProcessamentoBlocoX;
    class function CodigoProcessamentoBlocoX(const pEnum: TEnumCodigoProcessamentoBlocoX): string;

    class function CodigoOperacaoBlocoXToInt(const pEnum: TEnumCodigoOperacaoBlocoX): Integer;
    class function CodigoOperacaoBlocoXFromInt(const pValor: Integer): TEnumCodigoOperacaoBlocoX;
    class function CodigoOperacaoBlocoX(const pEnum: TEnumCodigoOperacaoBlocoX): string;

    class function OrigemLogMiddlewareToInt(const pEnum: TEnumOrigemLogMiddleware): Integer;
    class function OrigemLogMiddlewareFromInt(const pValor: Integer): TEnumOrigemLogMiddleware;
    class function OrigemLogMiddleware(const pEnum: TEnumOrigemLogMiddleware): string;

    class function TipoLogMiddlewareToInt(const pEnum: TEnumTipoLogMiddleware): Integer;
    class function TipoLogMiddlewareFromInt(const pValor: Integer): TEnumTipoLogMiddleware;
    class function TipoLogMiddleware(const pEnum: TEnumTipoLogMiddleware): string;

    class function InstrucaoBaixaTituloToInt(const pEnum: TEnumInstrucaoBaixaTitulo): Integer;
    class function InstrucaoBaixaTituloFromInt(const pValor: Integer): TEnumInstrucaoBaixaTitulo;
    class function InstrucaoBaixaTitulo(const pEnum: TEnumInstrucaoBaixaTitulo): string;

    class function SituacaoSeparacaoToStr(const pEnum: TEnumSituacaoSeparacao): string;
    class function SituacaoSeparacaoFromStr(const pValor: string): TEnumSituacaoSeparacao;
    class function SituacaoSeparacao(const pEnum: TEnumSituacaoSeparacao): string;

    class function SituacaoCotacao(pTipo: string): TEnumSituacaoCotacao;
    class function SituacaoCotacaoToStr(pEnum: TEnumSituacaoCotacao): string;

    class function SituacaoItemCotacao(pTipo: string): TEnumSituacaoItemCotacao;
    class function SituacaoItemCotacaoToStr(pEnum: TEnumSituacaoItemCotacao): string;

    class function SituacaoCotacaoFornecedor(pTipo: string): TEnumSituacaoCotacaoFornecedor;
    class function SituacaoCotacaoFornecedorToStr(pEnum: TEnumSituacaoCotacaoFornecedor): string;

    class function SituacaoItemFornecedor(pTipo: string): TEnumSituacaoItemFornecedor;
    class function SituacaoItemFornecedorToStr(pEnum: TEnumSituacaoItemFornecedor): string;

    class function TipoExportacaoCotacaoFornecedor(pTipo: string): TEnumTipoExportacaoCotacaoFornecedor;
    class function TipoExportacaoCotacaoFornecedorToStr(pEnum: TEnumTipoExportacaoCotacaoFornecedor): string;

    class function SituacaoItemFornecedorVencedor(pTipo: string): TEnumSituacaoItemFornecedorVencedor;
    class function SituacaoItemFornecedorVencedorToStr(pEnum: TEnumSituacaoItemFornecedorVencedor): string;

    class function OrcamentoTipoPagamentoToStr(const pEnum: TEnumOrcamentoTipoPagamento): string;
    class function OrcamentoTipoPagamentoFromStr(const pValor: string): TEnumOrcamentoTipoPagamento;
    class function OrcamentoTipoPagamento(const pEnum: TEnumOrcamentoTipoPagamento): string;

    class function CanalDeAplicacaoCampanhaToStr(const pEnum: TEnumCanalDeAplicacaoCampanha): string;
    class function CanalDeAplicacaoCampanhaFromStr(const pValor: string): TEnumCanalDeAplicacaoCampanha;
    class function CanalDeAplicacaoCampanha(const pEnum: TEnumCanalDeAplicacaoCampanha): string;

    class function RegraAcordoComercialCampanhaToStr(const pEnum: TEnumRegraAcordoComercialCampanha): string;
    class function RegraAcordoComercialCampanhaFromStr(const pValor: string): TEnumRegraAcordoComercialCampanha;
    class function RegraAcordoComercialCampanha(const pEnum: TEnumRegraAcordoComercialCampanha): string;

    class function TipoAplicacaoCampanhaToStr(const pEnum: TEnumTipoAplicacaoCampanha): string;
    class function TipoAplicacaoCampanhaFromStr(const pValor: string): TEnumTipoAplicacaoCampanha;
    class function TipoAplicacaoCampanha(const pEnum: TEnumTipoAplicacaoCampanha): string;

    class function TipoDeGatilhoCampanhaToStr(const pEnum: TEnumTipoDeGatilhoCampanha): string;
    class function TipoDeGatilhoCampanhaFromStr(const pValor: string): TEnumTipoDeGatilhoCampanha;
    class function TipoDeGatilhoCampanha(const pEnum: TEnumTipoDeGatilhoCampanha): string;

    class function TipoObrigatoriedadeGatilhoCampanhaToStr(const pEnum: TEnumTipoObrigatoriedadeGatilhoCampanha): string;
    class function TipoObrigatoriedadeGatilhoCampanhaFromStr(const pValor: string): TEnumTipoObrigatoriedadeGatilhoCampanha;
    class function TipoObrigatoriedadeGatilhoCampanha(const pEnum: TEnumTipoObrigatoriedadeGatilhoCampanha): string;

    class function TipoDescontoAplicadoCampanhaToStr(const pEnum: TEnumTipoDescontoAplicadoCampanha): string;
    class function TipoDescontoAplicadoCampanhaFromStr(const pValor: string): TEnumTipoDescontoAplicadoCampanha;
    class function TipoDescontoAplicadoCampanha(const pEnum: TEnumTipoDescontoAplicadoCampanha): string;

    class function TipoCodigoImpressoCupomDeDescontoToStr(const pEnum: TEnumTipoCodigoImpressoCupomDeDesconto): string;
    class function TipoCodigoImpressoCupomDeDescontoFromStr(const pValor: string): TEnumTipoCodigoImpressoCupomDeDesconto;
    class function TipoCodigoImpressoCupomDeDesconto(const pEnum: TEnumTipoCodigoImpressoCupomDeDesconto): string;

    class function GabaritoConteudoToStr(const pEnum: TEnumGabaritoConteudo): string;
    class function GabaritoConteudoFromStr(const pValor: string): TEnumGabaritoConteudo;
    class function GabaritoConteudo(const pEnum: TEnumGabaritoConteudo): string;

    class function TEnumRetornoTEFWSToStr(const pEnum: TEnumRetornoTEFWS): string;

    class function TipoIntegracaoToInt(const pEnum: TEnumTipoIntegracao): Integer;
    class function TipoIntegracaoFromInt(const pEnum: Integer): TEnumTipoIntegracao;

    class function TabelaIntegracaoToMercos(const pEnum: TEnumTabelaIntegracao): string; // Converte para identificação da tabela na Mercos
    class function TabelaIntegracaoToN49(const pEnum: TEnumTabelaIntegracao): string; // Converte para identificação da tabela na N49
    class function TabelaIntegracaoToCommerce(const pEnum: TEnumTabelaIntegracao): string; // Converte para identificação da tabela no Commerce
    class function TabelaIntegracaoToConsistem(const pEnum: TEnumTabelaIntegracao): string; // Converte para identificação da tabela Consistem
    class function TabelaIntegracaoToMagazord(const pEnum: TEnumTabelaIntegracao): string; // Converte para identificação da tabela na Magazord

    class function SituacaoPedidoMercosToStr(const pEnum: TEnumSituacaoPedidoMercos): string;
    class function SituacaoPedidoMercosFromStr(const pValor: string): TEnumSituacaoPedidoMercos;
    class function SituacaoPedidoMercos(const pEnum: TEnumSituacaoPedidoMercos): string;

    class function StatusFaturamentoMercosToStr(const pEnum: TEnumStatusFaturamentoMercos): string;
    class function StatusFaturamentoMercosFromStr(const pValor: string): TEnumStatusFaturamentoMercos;
    class function StatusFaturamentoMercos(const pEnum: TEnumStatusFaturamentoMercos): string;

    class function StatusB2BMercosToInt(const pEnum: TEnumStatusB2BMercos): Integer;
    class function StatusB2BMercosFromInt(const pValor: Integer): TEnumStatusB2BMercos;
    class function StatusB2BMercos(const pEnum: TEnumStatusB2BMercos): string;

    class function TipoCampoExtraMercosToStr(const pEnum: TEnumTipoCampoExtraMercos): string;
    class function TipoCampoExtraMercosFromStr(const pValor: string): TEnumTipoCampoExtraMercos;
    class function TipoCampoExtraMercos(const pEnum: TEnumTipoCampoExtraMercos): string;

    class function EmpresaResponsavelToStr(const pEnum: TEnumEmpresaResponsavel): string;
    class function EmpresaResponsavelFromStr(const pValor: string): TEnumEmpresaResponsavel;
    class function EmpresaResponsavel(const pEnum: TEnumEmpresaResponsavel): string;

    class function LampadaSinaleiraToStr(const pEnum: TEnumLampadaSinaleira): string;
    class function LampadaSinaleiraFromStr(const pValor: string): TEnumLampadaSinaleira;
    class function LampadaSinaleira(const pEnum: TEnumLampadaSinaleira): string;

    class function SituacaoDocumentoSATToInt(const pEnum: TEnumSituacaoDocumentoSAT): Integer;
    class function SituacaoDocumentoSATFromInt(const pValor: Integer): TEnumSituacaoDocumentoSAT;
    class function SituacaoDocumentoSAT(const pEnum: TEnumSituacaoDocumentoSAT): string;

    class function SituacaoLancamento(const pValor: string): TEnumSituacaoLancamento;
    class function TipoLancamento(const pValor: string): TEnumTipoLancamento;

    // Adicionar novos métodos aqui...
    class function TipoDescontoConsistemToStr(const pEnum: TEnumTipoDescontoConsistem): string;
    class function TipoDescontoConsistemFromStr(const pValor: string): TEnumTipoDescontoConsistem;
    class function TipoDescontoConsistem(const pEnum: TEnumTipoDescontoConsistem): Integer;

    class function TipoDescontoItemConsistemToStr(const pEnum: TEnumTipoDescontoItemConsistem): string;
    class function TipoDescontoItemConsistemFromStr(const pValor: string): TEnumTipoDescontoItemConsistem;
    class function TipoDescontoItemConsistem(const pEnum: TEnumTipoDescontoItemConsistem): Integer;

    class function TipoAcrescimoItemConsistemToStr(const pEnum: TEnumTipoAcrescimoItemConsistem): string;
    class function TipoAcrescimoItemConsistemFromStr(const pValor: string): TEnumTipoAcrescimoItemConsistem;
    class function TipoAcrescimoItemConsistem(const pEnum: TEnumTipoAcrescimoItemConsistem): string;

    class function TEnumTipoSortimentoConsistemToStr(const pEnum: TEnumTipoSortimentoConsistem): string;
    class function TEnumTipoSortimentoConsistemFromStr(const pValor: string): TEnumTipoSortimentoConsistem;
    class function TEnumTipoSortimentoConsistem(const pEnum: TEnumTipoSortimentoConsistem): string;

    class function TEnumIdentificadorDestinatarioToStr(const pEnum: TEnumIdentificadorDestinatario): string;
    class function TEnumIdentificadorDestinatarioFromStr(const pValor: string): TEnumIdentificadorDestinatario;
    class function TEnumIdentificadorDestinatario(const pEnum: TEnumIdentificadorDestinatario): string;
	
    class function TipoDerivacaoMagazordToStr(const pEnum: TEnumTipoDerivacaoMagazord): string;
    class function TipoDerivacaoMagazordFromStr(const pValor: string): TEnumTipoDerivacaoMagazord;
    class function TipoDerivacaoMagazord(const pEnum: TEnumTipoDerivacaoMagazord): Integer;

    class function SituacaoPedidoMagazordToStr(const pEnum: TEnumSituacaoPedidoMagazord): string;
    class function SituacaoPedidoMagazordFromStr(const pValor: string): TEnumSituacaoPedidoMagazord;
    class function SituacaoPedidoMagazord(const pEnum: TEnumSituacaoPedidoMagazord): Integer;

    class function TipoDeEstoqueToInt(const pEnum: TEnumTipoDoEstoqueMagazord): Integer;
    class function TipoDaOperacaoToInt(const pEnum: TEnumTipoDaOperacaoMagazord): Integer;
	
    class function ModoEnvioNFSeToStr(const pEnum: TEnumModoEnvioNFSe): string;
    class function ModoEnvioNFSeFromStr(const pValor: string): TEnumModoEnvioNFSe;
    class function ModoEnvioNFSe(const pEnum: TEnumModoEnvioNFSe): string;

    class function TabelaIntegracaoToWebStore(const pEnum: TEnumTabelaIntegracao): string;

    class function Search_statusWebStoreToStr(const pEnum: TEnumSearch_statusWebStore): string;
    class function Search_statusWebStoreFromStr(const pValor: string): TEnumSearch_statusWebStore;
    class function Search_statusWebStore(const pEnum: TEnumSearch_statusWebStore): Integer;

    class function StatusVericacaoCargaWebStoreFromStr(const pValor: string): TEnumStatusVericacaoCargaWebStore;
    class function StatusVericacaoCargaWebStore(const pEnum: TEnumStatusVericacaoCargaWebStore): string;

  end;

implementation

uses
  TTUConsts;

{ TEnum }

// Implementar novos métodos aqui...

class function TEnum.MotivoCancelamentoNFSeToInt(const pEnum: TEnumMotivoCancelamentoNFSe): Integer;
begin
  if pEnum = TEnumMotivoCancelamentoNFSe_ErroDeEmissao then
    Result := 1
  else if pEnum = TEnumMotivoCancelamentoNFSe_ServicoNaoConcluido then
    Result := 2
  else if pEnum = TEnumMotivoCancelamentoNFSe_RPSCanceladoNaEmissao then
    Result := 3
  else
    raise EEnumeradorInvalido.Create('Enumerador inválido para TEnumMotivoCancelamentoNFSe.');
end;

class function TEnum.MotivoCancelamentoNFSeFromInt(const pValor: Integer): TEnumMotivoCancelamentoNFSe;
begin
  if pValor = 1 then
    Result := TEnumMotivoCancelamentoNFSe_ErroDeEmissao
  else if pValor = 2 then
    Result := TEnumMotivoCancelamentoNFSe_ServicoNaoConcluido
  else if pValor = 3 then
    Result := TEnumMotivoCancelamentoNFSe_RPSCanceladoNaEmissao
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + IntToStr(pValor) + '" inválido para TEnumMotivoCancelamentoNFSe.');
end;

class function TEnum.MotivoCancelamentoNFSe(const pEnum: TEnumMotivoCancelamentoNFSe): string;
begin
  if pEnum = TEnumMotivoCancelamentoNFSe_ErroDeEmissao then
    Result := '1 - Erro de emissão'
  else if pEnum = TEnumMotivoCancelamentoNFSe_ServicoNaoConcluido then
    Result := '2 - Serviço não concluido'
  else if pEnum = TEnumMotivoCancelamentoNFSe_RPSCanceladoNaEmissao then
    Result := '3 - RPS Cancelado na Emissão'
  else
    raise EEnumeradorInvalido.Create('Enumerador inválido para TEnumMotivoCancelamentoNFSe.');
end;

class function TEnum.RegraAbcXyzFromInt(const pValor: Integer): TEnumRegraAbcXyz;
begin
  if pValor = 0 then
    Result := TEnumRegraAbcXyz_NaoUsa
  else if pValor = 1 then
    Result := TEnumRegraAbcXyz_CustoxQuantidade
  else if pValor = 2 then
    Result := TEnumRegraAbcXyz_NumeroVendas
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumRegraAbcXyz.', [IntToStr(pValor)]));
end;

class function TEnum.RegraCodigoFiscal(const pEnum: TEnumRegraCodigoFiscal): string;
begin
  case pEnum of
    TEnumRegraCodigoFiscal_ChaveInterna: Result     := '1 - Chave Interna';
    TEnumRegraCodigoFiscal_ReferenciaBasica: Result := '2 - Referência Básica';
    TEnumRegraCodigoFiscal_ReferenciaGrade: Result  := '3 - Referência de Grade';
    TEnumRegraCodigoFiscal_CodigoExterno: Result    := '4 - Código Externo';
  end;
end;

class function TEnum.RegraCodigoFiscalFromInt(const pValor: Integer): TEnumRegraCodigoFiscal;
begin
  if pValor = 1 then
    Result := TEnumRegraCodigoFiscal_ChaveInterna
  else if pValor = 2 then
    Result := TEnumRegraCodigoFiscal_ReferenciaBasica
  else if pValor = 3 then
    Result := TEnumRegraCodigoFiscal_ReferenciaGrade
  else if pValor = 4 then
    Result := TEnumRegraCodigoFiscal_CodigoExterno
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumRegraCodigoFiscal.', [IntToStr(pValor)]));
end;

class function TEnum.RegraCodigoFiscalToInt(const pEnum: TEnumRegraCodigoFiscal): Integer;
begin
  case pEnum of
    TEnumRegraCodigoFiscal_ChaveInterna: Result     := 1;
    TEnumRegraCodigoFiscal_ReferenciaBasica: Result := 2;
    TEnumRegraCodigoFiscal_ReferenciaGrade: Result  := 3;
    TEnumRegraCodigoFiscal_CodigoExterno: Result    := 4;
    else
      Result := 1;
  end;
end;

class function TEnum.SituacaoEcommerceToStr(const pEnum: TEnumSituacaoEcommerce): string;
begin
  case pEnum of
    TEnumSituacaoEcommerce_Nulo: Result               := '';
    TEnumSituacaoEcommerce_PagamentoEmAnalise: Result := 'T';
    TEnumSituacaoEcommerce_PendentePagamento: Result  := 'R';
    TEnumSituacaoEcommerce_PagamentoAprovado: Result  := 'P';
    TEnumSituacaoEcommerce_PagamentoEfetivado: Result := 'F';
    TEnumSituacaoEcommerce_ProdutoEnviado: Result     := 'E';
    TEnumSituacaoEcommerce_ProdutoEntregue: Result    := 'N';
    TEnumSituacaoEcommerce_PagamentoCancelado: Result := 'C';
    TEnumSituacaoEcommerce_ProblemaNaEntrega: Result  := 'O';
    TEnumSituacaoEcommerce_Faturado: Result           := 'V';
    TEnumSituacaoEcommerce_Rejeitado: Result          := '0';
    TEnumSituacaoEcommerce_ProntoParaRetirada: Result := '1';
    TEnumSituacaoEcommerce_RetiradoPeloCliente: Result:= '2';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSituacaoEcommerce.');
  end;
end;

class function TEnum.SituacaoEcommerceFromStr(const pValor: string): TEnumSituacaoEcommerce;
begin
  if pValor = '' then
    Result := TEnumSituacaoEcommerce_Nulo
  else if pValor = 'T' then
    Result := TEnumSituacaoEcommerce_PagamentoEmAnalise
  else if pValor = 'R' then
    Result := TEnumSituacaoEcommerce_PendentePagamento
  else if pValor = 'P' then
    Result := TEnumSituacaoEcommerce_PagamentoAprovado
  else if pValor = 'F' then
    Result := TEnumSituacaoEcommerce_PagamentoEfetivado
  else if pValor = 'E' then
    Result := TEnumSituacaoEcommerce_ProdutoEnviado
  else if pValor = 'N' then
    Result := TEnumSituacaoEcommerce_ProdutoEntregue
  else if pValor = 'C' then
    Result := TEnumSituacaoEcommerce_PagamentoCancelado
  else if pValor = 'O' then
    Result := TEnumSituacaoEcommerce_ProblemaNaEntrega
  else if pValor = 'V' then
    Result := TEnumSituacaoEcommerce_Faturado
  else if pValor = '0' then
    Result := TEnumSituacaoEcommerce_Rejeitado
  else if pValor = '1' then
    Result := TEnumSituacaoEcommerce_ProntoParaRetirada
  else if pValor = '2' then
    Result := TEnumSituacaoEcommerce_RetiradoPeloCliente
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumSituacaoEcommerce.', [pValor]));
end;

class function TEnum.SituacaoEcommerce(const pEnum: TEnumSituacaoEcommerce): string;
begin
  case pEnum of
    TEnumSituacaoEcommerce_Nulo: Result               := '';
    TEnumSituacaoEcommerce_PagamentoEmAnalise: Result := 'Pagamento em análise';
    TEnumSituacaoEcommerce_PendentePagamento: Result  := 'Pendente de pagamento';
    TEnumSituacaoEcommerce_PagamentoAprovado: Result  := 'Pagamento aprovado';
    TEnumSituacaoEcommerce_PagamentoEfetivado: Result := 'Pagamento efetivado';
    TEnumSituacaoEcommerce_ProdutoEnviado: Result     := 'Produto enviado';
    TEnumSituacaoEcommerce_ProdutoEntregue: Result    := 'Produto entregue';
    TEnumSituacaoEcommerce_PagamentoCancelado: Result := 'Pedido cancelado';
    TEnumSituacaoEcommerce_ProblemaNaEntrega: Result  := 'Problema na entrega';
    TEnumSituacaoEcommerce_Faturado: Result           := 'Faturado';
    TEnumSituacaoEcommerce_Rejeitado: Result          := 'Rejeitado';
    TEnumSituacaoEcommerce_ProntoParaRetirada: Result := 'Pronto para retirada';
    TEnumSituacaoEcommerce_RetiradoPeloCliente: Result:= 'Retirado pelo cliente';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSituacaoEcommerce.');
  end;
end;

class function TEnum.AprovacaoOrcPeloClienteToStr(const pEnum: TEnumAprovacaoOrcPeloCliente): string;
begin
  case pEnum of
    TEnumAprovacaoOrcPeloCliente_EmAberto: Result  := 'A';
    TEnumAprovacaoOrcPeloCliente_Reprovado: Result := '2';
    TEnumAprovacaoOrcPeloCliente_Aprovado: Result  := '1';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumAprovacaoOrcPeloCliente.');
  end;
end;

class function TEnum.ArquivoBDTipo(const pEnum: TEnumArquivoBDTipo): string;
begin
  case pEnum of
    TEnumArquivoBDTipo_NaoDefinido: Result := 'N - Não definido';
    TEnumArquivoBDTipo_RemessaCNAB: Result := 'R - Remessa CNAB';
  end;
end;

class function TEnum.ArquivoBDTipoFromStr(const pValor: string): TEnumArquivoBDTipo;
begin
  Result := TEnumArquivoBDTipo_NaoDefinido;
  if pValor = 'R' then
    Result := TEnumArquivoBDTipo_RemessaCNAB
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumArquivoBDTipo.', [pValor]));
end;

class function TEnum.ArquivoBDTipoToStr(const pEnum: TEnumArquivoBDTipo): string;
begin
  case pEnum of
    TEnumArquivoBDTipo_NaoDefinido: Result := 'N';
    TEnumArquivoBDTipo_RemessaCNAB: Result := 'R';
  end;
end;

class function TEnum.AprovacaoOrcPeloClienteFromStr(const pValor: string): TEnumAprovacaoOrcPeloCliente;
begin
  if (pValor = '') or (pValor = '1') then
    Result := TEnumAprovacaoOrcPeloCliente_Aprovado // default
  else if pValor = 'A' then
    Result := TEnumAprovacaoOrcPeloCliente_EmAberto
  else if pValor = '2' then
    Result := TEnumAprovacaoOrcPeloCliente_Reprovado
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumAprovacaoOrcPeloCliente.', [pValor]));
end;

class function TEnum.AprovacaoOrcPeloCliente(const pEnum: TEnumAprovacaoOrcPeloCliente): string;
begin
  case pEnum of
    TEnumAprovacaoOrcPeloCliente_EmAberto: Result  := 'Em Aberto';
    TEnumAprovacaoOrcPeloCliente_Reprovado: Result := 'Reprovado';
    TEnumAprovacaoOrcPeloCliente_Aprovado: Result  := 'Aprovado';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumAprovacaoOrcPeloCliente.');
  end;
end;

class function TEnum.SituacaoAprovacaoCreditoToStr(const pEnum: TEnumSituacaoAprovacaoCredito): string;
begin
  case pEnum of
    TEnumAprovacaoCredito_EmAprovacao: Result := 'E';
    TEnumAprovacaoCredito_Reprovado: Result   := 'R';
    TEnumAprovacaoCredito_Aprovado: Result    := 'A';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSituacaoAprovacaoCredito.');
  end;
end;

class function TEnum.SituacaoAprovacaoCreditoFromStr(const pValor: string): TEnumSituacaoAprovacaoCredito;
begin
  if (pValor = '') or (pValor = 'E') then
    Result := TEnumAprovacaoCredito_EmAprovacao // default
  else if pValor = 'R' then
    Result := TEnumAprovacaoCredito_Reprovado
  else if pValor = 'A' then
    Result := TEnumAprovacaoCredito_Aprovado
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumSituacaoAprovacaoCredito.', [pValor]));
end;

class function TEnum.SituacaoAprovacaoCredito(const pEnum: TEnumSituacaoAprovacaoCredito): string;
begin
  case pEnum of
    TEnumAprovacaoCredito_EmAprovacao: Result := 'Em Aprovação';
    TEnumAprovacaoCredito_Reprovado: Result   := 'Reprovado';
    TEnumAprovacaoCredito_Aprovado: Result    := 'Aprovado';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSituacaoAprovacaoCredito.');
  end;
end;

class function TEnum.SituacaoOrcToStr(const pEnum: TEnumSituacaoOrc): string;
begin
  case pEnum of
    TEnumSituacaoOrc_EmAberto: result  := 'A';
    TEnumSituacaoOrc_Vendido: result   := 'E';
    TEnumSituacaoOrc_Concluido: result := 'O';
    TEnumSituacaoOrc_Cancelado: result := 'C';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSituacaoOrc.');
  end;
end;

class function TEnum.SituacaoOrcFromStr(const pValor: string): TEnumSituacaoOrc;
begin
  if pValor = 'A' then
    Result := TEnumSituacaoOrc_EmAberto
  else if pValor = 'E' then
    Result := TEnumSituacaoOrc_Vendido
  else if pValor = 'O' then
    Result := TEnumSituacaoOrc_Concluido
  else if pValor = 'C' then
    Result := TEnumSituacaoOrc_Cancelado
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumSituacaoOrc.', [pValor]));
end;

class function TEnum.SituacaoOrc(const pEnum: TEnumSituacaoOrc): string;
begin
  case pEnum of
    TEnumSituacaoOrc_EmAberto: Result  := 'Em aberto';
    TEnumSituacaoOrc_Vendido: Result   := 'Vendido';
    TEnumSituacaoOrc_Concluido: Result := 'Concluído';
    TEnumSituacaoOrc_Cancelado: Result := 'Cancelado';
    else Result                        := '';
  end;
end;

class function TEnum.JobsToStr(const pEnum: TEnumJobs): string;
begin
  case pEnum of
    TEnumJobs_JobMaterializaCustoVenda: Result := 'JOB_MATERIALIZACUSTOVENDA';
    TEnumJobs_JobClassificaAbcXyz: Result      := 'JOB_CLASSIFICAABCXYZ';
  end;
end;

class function TEnum.TipoImpressaoToInt(const pEnum: TEnumTipoImpressao): Integer;
begin
  case pEnum of
    TEnumTipoImpressao_Retrato: result  := 0;
    TEnumTipoImpressao_Paisagem: result := 1;
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumTipoImpressao.');
  end;
end;

class function TEnum.TipoImpressao(const pEnum: TEnumTipoImpressao): string;
begin
  case pEnum of
    TEnumTipoImpressao_Retrato: result  := 'Retrato';
    TEnumTipoImpressao_Paisagem: result := 'Paisagem';
    else result                         := '';
  end;
end;

class function TEnum.TipoImpressaoFromInt(const pValor: Integer): TEnumTipoImpressao;
begin
  if pValor = 0 then
    result := TEnumTipoImpressao_Retrato
  else if pValor = 1 then
    result := TEnumTipoImpressao_Paisagem
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumTipoImpressao.', [IntToStr(pValor)]));
end;

class function TEnum.SituacaoRomaneio(const pEnum: TEnumSituacaoRomaneio): string;
begin
  case pEnum of
    srAberto: Result    := 'Aberto';
    srCancelado: Result := 'Cancelado';
    srEntregue: Result  := 'Entregue';
    srFechado: Result   := 'Fechado';
  end;
end;

class function TEnum.SituacaoRomaneioFromStr(const pValor: string): TEnumSituacaoRomaneio;
begin
  if pValor = 'A' then
    Result := srAberto
  else if pValor = 'C' then
    Result := srCancelado
  else if pValor = 'E' then
    Result := srEntregue
  else if pValor = 'F' then
    Result := srFechado
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumSituacaoRomaneio.', [pValor]));
end;

class function TEnum.SituacaoRomaneioToStr(const pEnum: TEnumSituacaoRomaneio): string;
begin
  case pEnum of
    srAberto: Result    := 'A';
    srCancelado: Result := 'C';
    srEntregue: Result  := 'E';
    srFechado: Result   := 'F';
  end;
end;

class function TEnum.TEnumIdentificadorDestinatario(const pEnum: TEnumIdentificadorDestinatario): string;
begin
  case pEnum of
    TEnumIdentificadorDestinatarioSefaz:          Result := '1 - Sefaz';
    TEnumIdentificadorDestinatarioReceitaFederal: Result := '2 - Receita Federal';
  end;
end;

class function TEnum.TEnumIdentificadorDestinatarioFromStr(const pValor: string): TEnumIdentificadorDestinatario;
begin
 if (pValor = 'S') then
   Result := TEnumIdentificadorDestinatarioSefaz // 1 - Sefaz
 else if (pValor = 'R') then
   Result := TEnumIdentificadorDestinatarioReceitaFederal; // 2 - Receita Federal
end;

class function TEnum.TEnumIdentificadorDestinatarioToStr(const pEnum: TEnumIdentificadorDestinatario): string;
begin
  case pEnum of
    TEnumIdentificadorDestinatarioSefaz:          Result := 'S';
    TEnumIdentificadorDestinatarioReceitaFederal: Result := 'R';
  end;
end;

class function TEnum.TEnumRetornoTEFWSToStr(
  const pEnum: TEnumRetornoTEFWS): string;
begin
  case pEnum of
    TEnumRetornoTEFWS_Aberto: result      := 'Aberto';
    TEnumRetornoTEFWS_NaoIniciado: result := 'NaoIniciado';
    TEnumRetornoTEFWS_OK: result          := 'OK';
    TEnumRetornoTEFWS_Cancelado: result   := 'Cancelado';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumRetornoTEFWS.');
  end;
end;

class function TEnum.TEnumTipoSortimentoConsistem(const pEnum: TEnumTipoSortimentoConsistem): string;
begin
  case pEnum of
    TEnumTipoSortimentoConsistem_Nenhuma: Result         := '1 - Nenhuma';
    TEnumTipoSortimentoConsistem_Por_Cor: Result         := '2 - Por Cor';
    TEnumTipoSortimentoConsistem_Por_CoreTamanho: Result := '3 - Por Cor e Tamanho';
    TEnumTipoSortimentoConsistem_Por_Selecao: Result     := '4 - Por Seleção';
  end;
end;

class function TEnum.TEnumTipoSortimentoConsistemFromStr(const pValor: string): TEnumTipoSortimentoConsistem;
begin
 if (pValor = '1') then
   Result := TEnumTipoSortimentoConsistem_Nenhuma // 1 - Nenhuma
 else if (pValor = '2') then
   Result := TEnumTipoSortimentoConsistem_Por_Cor // 2 - Por Cor
 else if (pValor = '3') then
   Result := TEnumTipoSortimentoConsistem_Por_CoreTamanho // 3 - Por Cor e Tamanho
 else if (pValor = '4') then
   Result := TEnumTipoSortimentoConsistem_Por_Selecao; // 4 - Por Seleção
end;

class function TEnum.TEnumTipoSortimentoConsistemToStr(const pEnum: TEnumTipoSortimentoConsistem): string;
begin
  case pEnum of
    TEnumTipoSortimentoConsistem_Nenhuma: Result         := '1';
    TEnumTipoSortimentoConsistem_Por_Cor: Result         := '2';
    TEnumTipoSortimentoConsistem_Por_CoreTamanho: Result := '3';
    TEnumTipoSortimentoConsistem_Por_Selecao: Result     := '4';
  end;
end;

class function TEnum.TabelaIntegracaoToCommerce(const pEnum: TEnumTabelaIntegracao): string;
begin
  case pEnum of
    TEnumTabelaIntegracao_Usuario: Result             := 'tt_usu';
    TEnumTabelaIntegracao_Produto: Result             := 'tt_pro';
    TEnumTabelaIntegracao_Variacoes: Result           := 'tt_gra';
    TEnumTabelaIntegracao_CategoriaProduto: Result    := 'categorias';
    TEnumTabelaIntegracao_TabelaDePreco: Result       := 'tt_tpr';
    TEnumTabelaIntegracao_PrecoProduto: Result        := 'tt_pre';
    TEnumTabelaIntegracao_AjusteEstoque: Result       := 'tt_sal';
    TEnumTabelaIntegracao_CondicaoDePagamento: Result := 'tt_pla';
    TEnumTabelaIntegracao_Cliente: Result             := 'tt_cli';
    TEnumTabelaIntegracao_RedeCliente: Result         := 'redes';
    TEnumTabelaIntegracao_SegmentoCliente: Result     := 'segmentos';
    TEnumTabelaIntegracao_Transportador: Result       := 'transportadoras';
    TEnumTabelaIntegracao_TitulosVencidos: Result     := 'tt_rec';
    TEnumTabelaIntegracao_Pedidos: Result             := 'tt_orc';
    TEnumTabelaIntegracao_StatusPedido: Result        := 'pedidostatus';
    TEnumTabelaIntegracao_FaturamentoPedido: Result   := 'tt_ven';
    TEnumTabelaIntegracao_ConfiguracaoICMSST: Result  := 'tt_iuf';
    TEnumTabelaIntegracao_Marcas: Result              := 'tt_mar';
    TEnumTabelaIntegracao_Departamento: Result        := 'td_dep';
    TEnumTabelaIntegracao_Classe1: Result             := 'td_cl1';
    TEnumTabelaIntegracao_Classe2: Result             := 'td_cl2';
    TEnumTabelaIntegracao_Classe3: Result             := 'td_cl3';
    TEnumTabelaIntegracao_Classe4: Result             := 'td_cl4';
    TEnumTabelaIntegracao_Divisao: Result             := 'td_div';
    TEnumTabelaIntegracao_SubDivisao: Result          := 'td_sub';
    TEnumTabelaIntegracao_Derivacao: Result           := 'derivacao';
    TEnumTabelaIntegracao_DerivacaoItem: Result       := 'derivacaoitem';
    else
      Result := 'NaoDefinida';
  end;
end;

class function TEnum.TabelaIntegracaoToConsistem(const pEnum: TEnumTabelaIntegracao): string;
begin
  case pEnum of
    TEnumTabelaIntegracao_Pedidos: Result := 'pedidos';
  else
         Result := 'NaoDefinida';
  end;
end;

class function TEnum.TabelaIntegracaoToMagazord(const pEnum: TEnumTabelaIntegracao): string;
begin
  case pEnum of
    TEnumTabelaIntegracao_Marcas: Result           := 'marcas';
    TEnumTabelaIntegracao_Derivacao: Result        := 'derivacoes';
    TEnumTabelaIntegracao_DerivacaoItem: Result    := 'derivacaoItem';
    TEnumTabelaIntegracao_Produto: Result          := 'produtos';
    TEnumTabelaIntegracao_Grade: Result            := 'grade';
    TEnumTabelaIntegracao_PrecoProduto: Result     := 'produtos_tabela_preco';
    TEnumTabelaIntegracao_Estoque: Result          := 'movimentar_estoque';
    TEnumTabelaIntegracao_Pedidos: Result          := 'pedidos';
    TEnumTabelaIntegracao_StatusPedido: Result     := 'pedidostatus';
    TEnumTabelaIntegracao_CategoriaProduto: Result := 'categorias';
    TEnumTabelaIntegracao_Departamento: Result     := 'departamentos';
    TEnumTabelaIntegracao_Classe1: Result          := 'classe1';
    TEnumTabelaIntegracao_Classe2: Result          := 'classe2';
    TEnumTabelaIntegracao_Classe3: Result          := 'classe3';
    TEnumTabelaIntegracao_Classe4: Result          := 'classe4';
    TEnumTabelaIntegracao_Divisao: Result          := 'divisao';
    TEnumTabelaIntegracao_SubDivisao: Result       := 'subdivisao';
    else
      Result := 'NaoDefinida';
  end;
end;

class function TEnum.TabelaIntegracaoToMercos(const pEnum: TEnumTabelaIntegracao): string;
begin
  case pEnum of
    TEnumTabelaIntegracao_Usuario: Result             := 'usuarios';
    TEnumTabelaIntegracao_Produto: Result             := 'produtos';
    TEnumTabelaIntegracao_CategoriaProduto: Result    := 'categorias';
    TEnumTabelaIntegracao_TabelaDePreco: Result       := 'tabelas_preco';
    TEnumTabelaIntegracao_PrecoProduto: Result        := 'produtos_tabela_preco';
    TEnumTabelaIntegracao_AjusteEstoque: Result       := 'ajustar_estoque';
    TEnumTabelaIntegracao_CondicaoDePagamento: Result := 'condicoes_pagamento';
    TEnumTabelaIntegracao_Cliente: Result             := 'clientes';
    TEnumTabelaIntegracao_RedeCliente: Result         := 'redes';
    TEnumTabelaIntegracao_SegmentoCliente: Result     := 'segmentos';
    TEnumTabelaIntegracao_Transportador: Result       := 'transportadoras';
    TEnumTabelaIntegracao_TitulosVencidos: Result     := 'titulos_vencidos';
    TEnumTabelaIntegracao_Pedidos: Result             := 'pedidos';
    TEnumTabelaIntegracao_StatusPedido: Result        := 'pedidostatus';
    TEnumTabelaIntegracao_FaturamentoPedido: Result   := 'faturamento';
    TEnumTabelaIntegracao_ConfiguracaoICMSST: Result  := 'configuracoes_icms_st';
    else
         Result := 'NaoDefinida';
  end;
end;

class function TEnum.TabelaIntegracaoToN49(const pEnum: TEnumTabelaIntegracao): string;
begin
  case pEnum of
    TEnumTabelaIntegracao_PrecoProduto: Result := 'produtos_tabela_preco';
    else
         Result := 'NaoDefinida';
  end;
end;

class function TEnum.TabelaIntegracaoToWebStore(const pEnum: TEnumTabelaIntegracao): string;
begin
  case pEnum of
    TEnumTabelaIntegracao_Produto: Result       := 'produtos';
    TEnumTabelaIntegracao_ProdutoItem: Result   := 'produtosItem';
    TEnumTabelaIntegracao_Variacoes: Result     := 'variacoes';
    TEnumTabelaIntegracao_PrecoProduto: Result  := 'produtos_tabela_preco';
    TEnumTabelaIntegracao_AjusteEstoque: Result := 'ajustar_estoque';
    TEnumTabelaIntegracao_TabelaDePreco: Result := 'tabelas_preco';
    TEnumTabelaIntegracao_Pedidos: Result       := 'pedidos';
    TEnumTabelaIntegracao_StatusPedido: Result  := 'pedidostatus';
    else
    Result := 'NaoDefinida';
  end;
end;

class function TEnum.Tintometrico(const pEnum: TEnumTintometrico): string;
begin
  case pEnum of
    TEnumTintometrico_SelfColor: result := 'SelfColor';
    TEnumTintometrico_ShotColor: result := 'ShotColor';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumTintometrico.');
  end;
end;

class function TEnum.TintometricoFromInt(const pValor: Integer): TEnumTintometrico;
begin
  if pValor = 0 then
    result := TEnumTintometrico_SelfColor
  else if pValor = 1 then
    result := TEnumTintometrico_ShotColor
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumTintometrico.', [IntToStr(pValor)]));
end;

class function TEnum.TintometricoToInt(const pEnum: TEnumTintometrico): Integer;
begin
  case pEnum of
    TEnumTintometrico_SelfColor: result := 0;
    TEnumTintometrico_ShotColor: result := 1;
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumTintometrico.');
  end;
end;

class function TEnum.MensageriaDfe(const pEnum: TEnumMensageriaDfe): string;
begin
  case pEnum of
    TEnumMensageriaDfe_TotallMiddleware: result := 'Totali Middleware';
    TEnumMensageriaDfe_EmiteNfe: result         := 'Emite NF-e';
    TEnumMensageriaDfe_CTe: result              := 'Emite CT-e';
    TEnumMensageriaDfe_MDFe: result             := 'Emite MDF-e';
    else
         raise EEnumeradorInvalido.Create('Mensageria para Documento Fiscal Eletrônico inválida.');
  end;
end;

class function TEnum.MensageriaDfeFromInt(const pValor: Integer): TEnumMensageriaDfe;
begin
  if pValor = 0 then
    Result := TEnumMensageriaDfe_TotallMiddleware
  else if pValor = 1 then
    Result := TEnumMensageriaDfe_EmiteNfe
  else if pValor = 2 then
    Result := TEnumMensageriaDfe_CTe
  else if pValor = 3 then
    Result := TEnumMensageriaDfe_MDFe
  else
    raise EEnumeradorInvalido.Create('Mensageria para Documento Fiscal Eletrônico inválida.');
end;

class function TEnum.MensageriaDfeToInt(const pEnum: TEnumMensageriaDfe): Integer;
begin
  case pEnum of
    TEnumMensageriaDfe_TotallMiddleware: Result := 0;
    TEnumMensageriaDfe_EmiteNfe: Result         := 1;
    TEnumMensageriaDfe_CTe: Result              := 2;
    TEnumMensageriaDfe_MDFe: Result             := 3;
    else
         raise EEnumeradorInvalido.Create('Mensageria para Documento Fiscal Eletrônico inválida.');
  end;
end;

class function TEnum.ModeloFiscalCFRef(const pEnum: TEnumModeloFiscalCFRef): string;
begin
  case pEnum of
    cfRefMaqReg: result := '2B – Cupom fiscal emitido por máquina registradora (não ECF)';
    cfRefPDV: result    := '2C – Cupom fiscal PDV';
    cfRefECF: result    := '2D – Cupom Fiscal ECF';
  end;
end;

class function TEnum.ModeloFiscalCFRefFromStr(const pValor: string): TEnumModeloFiscalCFRef;
begin
  if pValor = '2B' then
    result := cfRefMaqReg
  else if pValor = '2C' then
    result := cfRefPDV
  else if pValor = '2D' then
    result := cfRefECF
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumModeloFiscalCFRef.', [pValor]));
end;

class function TEnum.ModeloFiscalCFRefToStr(const pEnum: TEnumModeloFiscalCFRef): string;
begin
  case pEnum of
    cfRefMaqReg: result := '2B';
    cfRefPDV: result    := '2C';
    cfRefECF: result    := '2D';
  end;
end;

class function TEnum.ModeloFiscalNFRef(const pEnum: TEnumModeloFiscalNFRef): string;
begin
  case pEnum of
    NFRefModelo11A: Result := '1 - Nota Fiscal modelo 1/1-A';
    else
         Result := '';
  end;
end;

class function TEnum.ModeloFiscalNFRefFromInt(const pValor: Integer): TEnumModeloFiscalNFRef;
begin
  case pValor of
    1: Result := NFRefModelo11A; // 1 - Nota Fiscal modelo 1/1-A.
    else
      Result := NFRefModelo11A;
  end;
end;

class function TEnum.ModeloFiscalNFRefToInt(const pEnum: TEnumModeloFiscalNFRef): Integer;
begin
  case pEnum of
    NFRefModelo11A: Result := 1; // 1 - Nota Fiscal modelo 1/1-A.
    else
      Result := 1;
  end;
end;

class function TEnum.TipoDIToStr(const pEnum: TEnumTipoDI): string;
begin
  case pEnum of
    tpDeclaracaoImportacao: Result             := '0';
    tpDeclaracaoImportacaoSimplificada: Result := '1';
  end;
end;

class function TEnum.TipoDIFromStr(const pValor: string): TEnumTipoDI;
begin
  if (pValor = '0') or (pValor = '00') then
    Result := tpDeclaracaoImportacao
  else if (pValor = '1') or (pValor = '01') then
    Result := tpDeclaracaoImportacaoSimplificada
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumTipoDI.', [pValor]));
end;

class function TEnum.TipoIntegracaoPagamentoToInt(const pEnum: TEnumTipoIntegracaoPagamento): Integer;
begin
  case pEnum of
    tiVazio: Result           := 0;
    tiIntegradoTEF: Result    := 1;
    tiNaoIntegradoPOS: Result := 2;
    else
      Result := 0;
  end;
end;

class function TEnum.TipoIntegracaoToInt(const pEnum: TEnumTipoIntegracao): Integer;
begin
  case pEnum of
    TEnumTipoIntegracao_IntegracaoEME4: Result      := 0; // 0 - Integração EME4
    TEnumTipoIntegracao_PosControle: Result         := 1; // 1 - Pos Controle
    TEnumTipoIntegracao_ShyHub: Result              := 2; // 2 - ShyHub
    TEnumTipoIntegracao_IntegracaoMercos: Result    := 3; // 3 - Integração Mercos
    TEnumTipoIntegracao_IntegracaoN49: Result       := 4; // 4 - Integração N49
    TEnumTipoIntegracao_IntegracaoConsistem: Result := 5; // 5 - Integração Consistem
    TEnumTipoIntegracao_IntegracaoMagazord: Result  := 6; // 6 - Integração Magazord
    TEnumTipoIntegracao_IntegracaoGimplus: Result   := 7; // 7 - Integração Gimplus
    TEnumTipoIntegracao_IntegracaoFraga: Result     := 8; // 8 - Integração Fraga
	  TEnumTipoIntegracao_IntegracaoWebStore: Result  := 9; // 9 - Integração WebStore
    TEnumTipoIntegracao_Totali: Result              := 98; // 98 - Totali
    else
      Result := 99; //Outros
  end;
end;

class function TEnum.ImpostosTipoNota(const pEnum: TEnumImpostosTipoNota): string;
begin
  case pEnum of
    TEnumImpostosTipoNota_Emitida: result  := 'E - Emitida';
    TEnumImpostosTipoNota_Recebida: result := 'R - Recebida';
  end;
end;

class function TEnum.ImpostosTipoNotaFromStr(const pValor: string): TEnumImpostosTipoNota;
begin
  if pValor = 'E' then
    result := TEnumImpostosTipoNota_Emitida
  else if pValor = 'E' then
    result := TEnumImpostosTipoNota_Recebida
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumImpostosTipoNota.');
end;

class function TEnum.ImpostosTipoNotaToStr(const pEnum: TEnumImpostosTipoNota): string;
begin
  case pEnum of
    TEnumImpostosTipoNota_Emitida: result  := 'E';
    TEnumImpostosTipoNota_Recebida: result := 'R';
  end;
end;

{$IFDEF DELPHIXE}


class function TEnum.PortaVirtualImpressoraGetList: TObjectList<TParLista>;
begin
  Result := TObjectList<TParLista>.Create;
  Result.Add(TParLista.Create('XPSPort:', 'Microsoft XPS Document Writer'));
  Result.Add(TParLista.Create('PORTPROMPT:', 'Microsoft Print to PDF'));
  Result.Add(TParLista.Create('SHRFAX:', 'Microsoft Shared Fax'));
  Result.Add(TParLista.Create('PDF_REDIRECT_PORT:', 'PDF reDirect Pro'));
  Result.Add(TParLista.Create('FOXIT_Reader:', 'Foxit Reader PDF Printer'));
  Result.Add(TParLista.Create('nul:', 'Send to Microsoft OneNote 16'));
end;
{$ENDIF}


class function TEnum.TipoItem(const pEnum: TEnumTipoItem): string;
begin
  case pEnum of
    tiMercadoriaRevenda: Result    := '00 – Mercadoria para Revenda';
    tiMateriaPrima: Result         := '01 – Matéria-Prima';
    tiEmbalagem: Result            := '02 – Embalagem';
    tiProdutoProcesso: Result      := '03 – Produto em Processo';
    tiProdutoAcabado: Result       := '04 – Produto Acabado';
    tiSubproduto: Result           := '05 – Subproduto';
    tiProdutoIntermediario: Result := '06 – Produto Intermediário';
    tiMaterialConsumo: Result      := '07 – Material de Uso e Consumo';
    tiAtivoImobilizado: Result     := '08 – Ativo Imobilizado';
    tiServicos: Result             := '09 – Serviços';
    tiOutrosInsumos: Result        := '10 – Outros Insumos';
    tiOutras: Result               := '99 – Outras';
  end;
end;

class function TEnum.TipoItemFromStr(const pValor: string): TEnumTipoItem;
begin
  if (pValor = '00') then // 00 – Mercadoria para Revenda
    Result := tiMercadoriaRevenda
  else if (pValor = '01') then // 01 – Matéria-Prima;
    Result := tiMateriaPrima
  else if (pValor = '02') then // 02 – Embalagem;
    Result := tiEmbalagem
  else if (pValor = '03') then // 03 – Produto em Processo;
    Result := tiProdutoProcesso
  else if (pValor = '04') then // 04 – Produto Acabado;
    Result := tiProdutoAcabado
  else if (pValor = '05') then // 05 – Subproduto;
    Result := tiSubproduto
  else if (pValor = '06') then // 06 – Produto Intermediário;
    Result := tiProdutoIntermediario
  else if (pValor = '07') then // 07 – Material de Uso e Consumo;
    Result := tiMaterialConsumo
  else if (pValor = '08') then // 08 – Ativo Imobilizado;
    Result := tiAtivoImobilizado
  else if (pValor = '09') then // 09 – Serviços;
    Result := tiServicos
  else if (pValor = '10') then // 10 – Outros Insumos;
    Result := tiOutrosInsumos
  else if (pValor = '99') then // 99 – Outras
    Result := tiOutras
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumTipoItem.', [pValor]));
end;

class function TEnum.TipoItemToStr(const pEnum: TEnumTipoItem): string;
begin
  case pEnum of
    tiMercadoriaRevenda: Result    := '00'; // 00 – Mercadoria para Revenda
    tiMateriaPrima: Result         := '01'; // 01 – Matéria-Prima;
    tiEmbalagem: Result            := '02'; // 02 – Embalagem;
    tiProdutoProcesso: Result      := '03'; // 03 – Produto em Processo;
    tiProdutoAcabado: Result       := '04'; // 04 – Produto Acabado;
    tiSubproduto: Result           := '05'; // 05 – Subproduto;
    tiProdutoIntermediario: Result := '06'; // 06 – Produto Intermediário;
    tiMaterialConsumo: Result      := '07'; // 07 – Material de Uso e Consumo;
    tiAtivoImobilizado: Result     := '08'; // 08 – Ativo Imobilizado;
    tiServicos: Result             := '09'; // 09 – Serviços;
    tiOutrosInsumos: Result        := '10'; // 10 – Outros Insumos;
    tiOutras: Result               := '99'; // 99 – Outras
  end;
end;

class function TEnum.TipoDaOperacaoToInt(const pEnum: TEnumTipoDaOperacaoMagazord): Integer;
begin
  case pEnum of
    TEnumTipoDaOperacaoMagazord_Ajuste: Result  := 0; // 0 - Ajuste
    TEnumTipoDaOperacaoMagazord_Entrada: Result := 1; // 1 - Entrada
    TEnumTipoDaOperacaoMagazord_Saida: Result   := 2; // 2 - Saida
    else
      Result := 0;
  end;
end;

class function TEnum.TipoDeEstoqueToInt(const pEnum: TEnumTipoDoEstoqueMagazord): Integer;
begin
  case pEnum of
    TEnumTipoDoEstoqueMagazord_Fisico: Result    := 1; // 1 - Fisico
    TEnumTipoDoEstoqueMagazord_Previsto: Result  := 2; // 2 - Previsto
    TEnumTipoDoEstoqueMagazord_Reservado: Result := 3; // 3 - Reservado
    TEnumTipoDoEstoqueMagazord_Virtual: Result   := 4; // 4 - Virtual
    else
      Result := 1;
  end;
end;

class function TEnum.TipoDeGatilhoCampanha(const pEnum: TEnumTipoDeGatilhoCampanha): string;
begin
  case pEnum of
    TEnumTipoDeGatilhoCampanha_OpAtual: Result  := 'O - Para operação atual';
    TEnumTipoDeGatilhoCampanha_OpFutura: Result := 'F - Cupom para uso futuro';
  end;
end;

class function TEnum.TipoDeGatilhoCampanhaFromStr(const pValor: string): TEnumTipoDeGatilhoCampanha;
begin
  if (pValor = 'F') then // F - Cupom para uso futuro
    Result := TEnumTipoDeGatilhoCampanha_OpFutura
  else
    Result := TEnumTipoDeGatilhoCampanha_OpAtual; // O - Para operação atual
end;

class function TEnum.TipoDeGatilhoCampanhaToStr(const pEnum: TEnumTipoDeGatilhoCampanha): string;
begin
  case pEnum of
    TEnumTipoDeGatilhoCampanha_OpAtual: Result  := 'O'; // O - Para operação atual
    TEnumTipoDeGatilhoCampanha_OpFutura: Result := 'F'; // F - Cupom para uso futuro
  end;
end;

class function TEnum.TipoDeJurosMora(const pEnum: TEnumTipoDeJurosMora): string;
begin
  case pEnum of
    TEnumTipoDeJurosMora_ValorDia: Result    := '1 - Valor Dia';
    TEnumTipoDeJurosMora_TaxaMensal: Result  := '2 - Taxa Mensal';
    TEnumTipoDeJurosMora_Isento: Result      := '3 - Isento';
    TEnumTipoDeJurosMora_ValorMensal: Result := '4 - Valor Mensal';
    TEnumTipoDeJurosMora_TaxaDiaria: Result  := '5 - Taxa Diária';
  end;
end;

class function TEnum.TipoDeJurosMoraFromInt(const pValor: Integer): TEnumTipoDeJurosMora;
begin
  case pValor of
    1: Result := TEnumTipoDeJurosMora_ValorDia;    // 1 - Valor Dia
    2: Result := TEnumTipoDeJurosMora_TaxaMensal;  // 2 - Taxa Mensal
    3: Result := TEnumTipoDeJurosMora_Isento;      // 3 - Isento
    4: Result := TEnumTipoDeJurosMora_ValorMensal; // 4 - Valor Mensal
    5: Result := TEnumTipoDeJurosMora_TaxaDiaria;  // 5 - Taxa Diária
    else
         Result := TEnumTipoDeJurosMora_ValorDia;
  end;
end;

class function TEnum.TipoDeJurosMoraToInt(const pEnum: TEnumTipoDeJurosMora): Integer;
begin
  case pEnum of
    TEnumTipoDeJurosMora_ValorDia: Result    := 1; // 1 - Valor Dia
    TEnumTipoDeJurosMora_TaxaMensal: Result  := 2; // 2 - Taxa Mensal
    TEnumTipoDeJurosMora_Isento: Result      := 3; // 3 - Isento
    TEnumTipoDeJurosMora_ValorMensal: Result := 4; // 4 - Valor Mensal
    TEnumTipoDeJurosMora_TaxaDiaria: Result  := 5; // 5 - Taxa Diária
    else
      Result := 1;
  end;
end;

class function TEnum.TipoLogDAV(const pEnum: TEnumTipoLogDAV): string;
begin
  case pEnum of
    tlDAVInclusao: Result  := 'I'; // I - Inclusão
    tlDAVAlteracao: Result := 'A'; // A - Alteração
    tlDAVExclusao: Result  := 'E'; // E - Exclusao
  end;
end;

class function TEnum.TipoLogDAVFromStr(const pValor: string): TEnumTipoLogDAV;
begin
  if (pValor = 'I') then // I - Inclusão
    Result := tlDAVInclusao
  else if (pValor = 'A') then // A - Alteração
    Result := tlDAVAlteracao
  else if (pValor = 'E') then // E - Exclusao
    Result := tlDAVExclusao
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumTipoLogDAV.', [pValor]));
end;

class function TEnum.TipoLogDAVToStr(const pEnum: TEnumTipoLogDAV): string;
begin
  case pEnum of
    tlDAVInclusao: Result  := 'I - Inclusão';
    tlDAVAlteracao: Result := 'A - Alteração';
    tlDAVExclusao: Result  := 'E - Exclusao';
  end;
end;

class function TEnum.TipoLogMiddleware(const pEnum: TEnumTipoLogMiddleware): string;
begin
  case pEnum of
    TEnumTipoLogMiddleware_Operacao: Result := '0 - Operação';
    TEnumTipoLogMiddleware_Aviso: Result    := '1 - Aviso';
    TEnumTipoLogMiddleware_Erro: Result     := '2 - Erro';
  end;
end;

class function TEnum.TipoLogMiddlewareFromInt(const pValor: Integer): TEnumTipoLogMiddleware;
begin
  case pValor of
    0: Result := TEnumTipoLogMiddleware_Operacao; //0 - Operação
    1: Result := TEnumTipoLogMiddleware_Aviso;    //1 - Aviso
    2: Result := TEnumTipoLogMiddleware_Erro;     //2 - Erro
    else
         Result := TEnumTipoLogMiddleware_Operacao; //0 - Operação
  end;
end;

class function TEnum.TipoLogMiddlewareToInt(const pEnum: TEnumTipoLogMiddleware): Integer;
begin
  case pEnum of
    TEnumTipoLogMiddleware_Operacao: Result := 0; //0 - Operação
    TEnumTipoLogMiddleware_Aviso: Result    := 1; //1 - Aviso
    TEnumTipoLogMiddleware_Erro: Result     := 2; //2 - Erro
    else
      Result := 0;
  end;
end;

class function TEnum.IndicadorPagamento(const pEnum: TEnumIndicadorPagamento): string;
begin
  case pEnum of
    TEnumIndicadorPagamento_NaoInformado: Result := 'Não informado';
    TEnumIndicadorPagamento_AVista: Result       := '0 - Pagamento à Vista';
    TEnumIndicadorPagamento_APrazo: Result       := '1 - Pagamento à Prazo';
  end;
end;

class function TEnum.IndicadorPagamentoFromStr(const pValor: string): TEnumIndicadorPagamento;
begin
  if pValor = '' then
    Result := TEnumIndicadorPagamento_NaoInformado
  else if pValor = '0' then
    Result := TEnumIndicadorPagamento_AVista
  else if pValor = '1' then
    Result := TEnumIndicadorPagamento_APrazo
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumIndicadorPagamento.', [pValor]));
end;

class function TEnum.IndicadorPagamentoToStr(const pEnum: TEnumIndicadorPagamento): string;
begin
  case pEnum of
    TEnumIndicadorPagamento_NaoInformado: Result := '';
    TEnumIndicadorPagamento_AVista: Result       := '0';
    TEnumIndicadorPagamento_APrazo: Result       := '1';
  end;
end;

class function TEnum.IndicadorPresenca(const pEnum: TEnumIndicadorPresenca): string;
begin
  case pEnum of
    ipNaoSeAplica: Result                     := '0 – não se aplica (nf-e de ajuste/compl.)'; // 0 – não se aplica (nf-e de ajuste/compl.)
    ipOperacaoPresencial: Result              := '1 – operação presencial'; // 1 – operação presencial
    ipOperacaoPelaInternet: Result            := '2 – operação pela Internet'; // 2 – operação pela Internet
    ipOperacaoPorTelefone: Result             := '3 – operação por telefone'; // 3 – operação por telefone
    ipNFCeEmOperacaoEntregaADomicilio: Result := '4 – NFC-e em operação com entrega a domicílio'; // 4 – NFC-e em operação com entrega a domicílio
    ipOperacaoPresForaEstab: Result           := '5 – operação presencial fora do estabelecimento'; // 5 – operação presencial fora do estabelecimento
    ipOperacaoNaoPresencial: Result           := '9 – operação não presencial (outros)'; // 9 – operação não presencial (outros)
    else
         Result := 'Não informado';
  end;
end;

class function TEnum.IndicadorPresencaFromInt(const pValor: Integer): TEnumIndicadorPresenca;
begin
  case pValor of
    0: Result := ipNaoSeAplica;                     // 0 – não se aplica (nf-e de ajuste/compl.)
    1: Result := ipOperacaoPresencial;              // 1 – operação presencial
    2: Result := ipOperacaoPelaInternet;            // 2 – operação pela Internet
    3: Result := ipOperacaoPorTelefone;             // 3 – operação por telefone
    4: Result := ipNFCeEmOperacaoEntregaADomicilio; // 4 – NFC-e em operação com entrega a domicílio
    5: Result := ipOperacaoPresForaEstab;           // 5 – operação presencial fora do estabelecimento
    9: Result := ipOperacaoNaoPresencial;           // 9 – operação não presencial (outros)
    else
         Result := ipNaoInformado;
  end;
end;

class function TEnum.IndicadorPresencaToInt(const pEnum: TEnumIndicadorPresenca): Integer;
begin
  case pEnum of
    ipNaoSeAplica: Result                     := 0; // 0 – não se aplica (nf-e de ajuste/compl.)
    ipOperacaoPresencial: Result              := 1; // 1 – operação presencial
    ipOperacaoPelaInternet: Result            := 2; // 2 – operação pela Internet
    ipOperacaoPorTelefone: Result             := 3; // 3 – operação por telefone
    ipNFCeEmOperacaoEntregaADomicilio: Result := 4; // 4 – NFC-e em operação com entrega a domicílio
    ipOperacaoPresForaEstab: Result           := 5; // 5 – operação presencial fora do estabelecimento
    ipOperacaoNaoPresencial: Result           := 9; // 9 – operação não presencial (outros)
    else
         Result := -1;
  end;
end;

class function TEnum.IntermediacaoDI(const pEnum: TEnumIntermediacaoDI): string;
begin
  case pEnum of
    inNaoInformada: Result := '0 - Não informada';
    inContaPropria: Result := '1 - Importação por conta própria';
    inContaOrdem: Result   := '2 - Importação por conta e ordem';
    inEncomenda: Result    := '3 - Importação por encomenda';
  end;
end;

class function TEnum.IntermediacaoDIFromInt(const pValor: Integer): TEnumIntermediacaoDI;
begin
  if pValor = 0 then
    Result := inNaoInformada
  else if pValor = 1 then
    Result := inContaPropria
  else if pValor = 2 then
    Result := inContaOrdem
  else if pValor = 3 then
    Result := inEncomenda
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumIntermediacaoDI.', [pValor]));
end;

class function TEnum.IntermediacaoDIToInt(const pEnum: TEnumIntermediacaoDI): Integer;
begin
  case pEnum of
    inNaoInformada: Result := 0;
    inContaPropria: Result := 1;
    inContaOrdem: Result   := 2;
    inEncomenda: Result    := 3;
    else
      Result := 0;
  end;
end;

class function TEnum.TipoMeio(const pEnum: TEnumTipoMeio): string;
begin
  case pEnum of
    tmQualquer: Result             := 'Q - Qualquer';
    tmCheque: Result               := 'H - Cheque';
    tmOutros: Result               := 'O - Outros';
    tmBoleto: Result               := 'B - Boleto';
    tmCarteiraCarne: Result        := 'N - Carteira/Carnê';
    tmTEFs: Result                 := 'T - TEFs';
    tmCartaoDebito: Result         := 'D - Cartão Débito';
    tmCartaoCredito: Result        := 'C - Cartão Crédito';
    tmPosDebito: Result            := '1 - Débito via POS';
    tmPosCredito: Result           := '2 - Crédito via POS';
    tmMoedaCorrente: Result        := 'R - Moeda Corrente';
    tmMoedaEstrangeira: Result     := 'E - Moeda Estrangeira';
    tmContaCorrente: Result        := 'F - Conta Corrente';
    tmValeCompra: Result           := 'V - Vale Compra';
    tmPendencia: Result            := 'P - Pendência';
    tmFidelidade: Result           := 'I - Fidelidade';
    tmValePresenteViaTEF: Result   := 'R - Vale Presente via TEF';
    tmValePresenteNativo: Result   := 'S - Vale Presente Nativo';
    tmDepositoBancario: Result     := '3 - Depósito Bancário';
    tmPagamentoInstantaneo: Result := '4 - Pagamento Instantâneo (PIX)';
    tmTransfBancario: Result       := '5 - Transferência bancária, Carteira Digital';
    tmProgramaFidelidade: Result   := '6 - Programa de fidelidade, Cashback, Crédito Virtual';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumTipoMeio.');
  end;
end;

class function TEnum.TipoMeioFromStr(const pValor: string): TEnumTipoMeio;
begin
  if pValor = 'Q' then
    Result := tmQualquer
  else if pValor = 'H' then
    Result := tmCheque
  else if pValor = 'O' then
    Result := tmOutros
  else if pValor = 'B' then
    Result := tmBoleto
  else if pValor = 'N' then
    Result := tmCarteiraCarne
  else if pValor = 'T' then
    Result := tmTEFs
  else if pValor = 'D' then
    Result := tmCartaoDebito
  else if pValor = 'C' then
    Result := tmCartaoCredito
  else if pValor = '1' then
    Result := tmPosDebito
  else if pValor = '2' then
    Result := tmPosCredito
  else if pValor = 'R' then
    Result := tmMoedaCorrente
  else if pValor = 'E' then
    Result := tmMoedaEstrangeira
  else if pValor = 'F' then
    Result := tmContaCorrente
  else if pValor = 'V' then
    Result := tmValeCompra
  else if pValor = '9' then
    Result := tmPendencia
  else if pValor = 'I' then
    Result := tmFidelidade
  else if pValor = 'P' then
    Result := tmValePresenteViaTEF
  else if pValor = 'S' then
    Result := tmValePresenteNativo
  else if pValor = '3' then // 3 - Depósito Bancário
    Result := tmDepositoBancario
  else if pValor = '4' then // 4 - Pagamento Instantâneo (PIX)
    Result := tmPagamentoInstantaneo
  else if pValor = '5' then // 5 - Transferência bancária, Carteira Digital
    Result := tmTransfBancario
  else if pValor = '6' then // 6 - Programa de fidelidade, Cashback, Crédito Virtual
    Result := tmProgramaFidelidade
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumTipoMeio.', [pValor]));
end;

class function TEnum.TipoMeioToStr(const pEnum: TEnumTipoMeio): string;
begin
  case pEnum of
    tmQualquer: Result             := 'Q';
    tmCheque: Result               := 'H';
    tmOutros: Result               := 'O';
    tmBoleto: Result               := 'B';
    tmCarteiraCarne: Result        := 'N';
    tmTEFs: Result                 := 'T';
    tmCartaoDebito: Result         := 'D';
    tmCartaoCredito: Result        := 'C';
    tmPosDebito: Result            := '1';
    tmPosCredito: Result           := '2';
    tmMoedaCorrente: Result        := 'R';
    tmMoedaEstrangeira: Result     := 'E';
    tmContaCorrente: Result        := 'F';
    tmValeCompra: Result           := 'V';
    tmPendencia: Result            := '9';
    tmFidelidade: Result           := 'I';
    tmValePresenteViaTEF: Result   := 'P';
    tmValePresenteNativo: Result   := 'S';
    tmDepositoBancario: Result     := '3'; // 3 - Depósito Bancário
    tmPagamentoInstantaneo: Result := '4'; // 4 - Pagamento Instantâneo (PIX)
    tmTransfBancario: Result       := '5'; // 5 - Transferência bancária, Carteira Digital
    tmProgramaFidelidade: Result   := '6'; // 6 - Programa de fidelidade, Cashback, Crédito Virtual
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumTipoMeio.');
  end;
end;

class function TEnum.TipoMPBemFromStr(const pValor: string): TEnumTipoMPBem;
begin
  Result := TEnumTipoMPBem_Vazio;

  if pValor = 'C' then
    result := TEnumTipoMPBem_Conj_CPU_Monitor_Mouse
  else if pValor = 'U' then
    result := TEnumTipoMPBem_CPU
  else if pValor = 'D' then
    result := TEnumTipoMPBem_Modem
  else if pValor = 'M' then
    result := TEnumTipoMPBem_Monitor
  else if pValor = 'O' then
    result := TEnumTipoMPBem_Mouse
  else if pValor = 'N' then
    result := TEnumTipoMPBem_Notebooks
  else if pValor = 'R' then
    result := TEnumTipoMPBem_Roteadores
  else if pValor = 'S' then
    result := TEnumTipoMPBem_Smartphones
  else if pValor = 'T' then
    result := TEnumTipoMPBem_Tablet
  else if pValor = 'E' then
    result := TEnumTipoMPBem_Teclado
  else if pValor = 'A' then
    result := TEnumTipoMPBem_AllinOne;
end;

class function TEnum.TipoMPBemToStr(const pEnum: TEnumTipoMPBem): string;
begin
  case pEnum of
    TEnumTipoMPBem_Vazio: result                  := '';
    TEnumTipoMPBem_Conj_CPU_Monitor_Mouse: result := 'C';
    TEnumTipoMPBem_CPU: result                    := 'U';
    TEnumTipoMPBem_Modem: result                  := 'D';
    TEnumTipoMPBem_Monitor: result                := 'M';
    TEnumTipoMPBem_Mouse: result                  := 'O';
    TEnumTipoMPBem_Notebooks: result              := 'N';
    TEnumTipoMPBem_Roteadores: result             := 'R';
    TEnumTipoMPBem_Smartphones: result            := 'S';
    TEnumTipoMPBem_Tablet: result                 := 'T';
    TEnumTipoMPBem_Teclado: result                := 'E';
    TEnumTipoMPBem_AllinOne: result               := 'A';
  end;
end;

class function TEnum.TipoIntegracaoFromInt(const pEnum: Integer): TEnumTipoIntegracao;
begin
  case pEnum of
    0  : Result       := TEnumTipoIntegracao_IntegracaoEME4;       // 0  - Integração EME4
    1  : Result       := TEnumTipoIntegracao_PosControle;          // 1  - Pos Controle
    2  : Result       := TEnumTipoIntegracao_ShyHub;               // 2  - ShyHub
    3  : Result       := TEnumTipoIntegracao_IntegracaoMercos;     // 3  - Integração Mercos
    4  : Result       := TEnumTipoIntegracao_IntegracaoN49;        // 4  - Integração N49
    5  : Result       := TEnumTipoIntegracao_IntegracaoConsistem;  // 5  - Integração Consistem
    6  : Result       := TEnumTipoIntegracao_IntegracaoMagazord;   // 6  - Integração Magazord
    7  : Result       := TEnumTipoIntegracao_IntegracaoGimplus;    // 7  - Integração Gimplus
    8  : Result       := TEnumTipoIntegracao_IntegracaoFraga;      // 8  - Integração Fraga
	  9  : Result       := TEnumTipoIntegracao_IntegracaoWebStore;   // 9  - Integração WebStore
    98 : Result       := TEnumTipoIntegracao_Totali;               // 98 - Totali
    else
      Result := TEnumTipoIntegracao_Outros; // 99 - Outros
  end;
end;

class function TEnum.TipoIntegracaoPagamentoFromInt(const pValor: Integer): TEnumTipoIntegracaoPagamento;
begin
  if pValor = 0 then
    Result := tiVazio
  else if pValor = 1 then
    Result := tiIntegradoTEF
  else if pValor = 2 then
    Result := tiNaoIntegradoPOS
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumTipoIntegracaoPagamento.', [IntToStr(pValor)]));
end;

class function TEnum.RecebimentoFromSkyhub(
  const pValor: string): TEnumRecebimentoOrc;
begin
  if Pos('BRASIL', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_BancoBrasil
  else
     if Pos('BRADESCO', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_Bradesco
  else
     if Pos('BANRISUL', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_Banrisul
  else
     if Pos('HSBC', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_HSBC
  else
     if Pos('ITAU', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_Itau
  else
     if Pos('PAGAMENTO DIGITAL', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_PagamentoDigital
  else
     if Pos('AMEX', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_Amex
  else
     if Pos('BOLETO', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_Boleto
  else
     if Pos('PAGSEGURO', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_PagSeguroCartao
  else
     if Pos('DINNERS', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_Dinners
  else
     if Pos('ELO', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_Elo
  else
     if Pos('HIPERCARD', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_HiperCard
  else
     if Pos('MASTERCARD', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_MasterCard
  else
     if Pos('OUTROS', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_Outros
  else
     if Pos('BOLETO PAGSEGURO', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_PagSeguroBoleto
  else
     if Pos('PAGSEGURO', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_PagSeguro
  else
     if Pos('AURA', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_Aura
  else
     if Pos('VISA', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_Visa
  else
     if Pos('WIZ', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_Wix
  else
     if Pos('PAYPAL', Uppercase(pValor)) > 0 then
    Result := TEnumRecebimentoOrc_PayPal
  else
    Result := TEnumRecebimentoOrc_NaoDefinido;
end;

class function TEnum.RecebimentoOrc(const pEnum: TEnumRecebimentoOrc): string;
begin
  case pEnum of
    TEnumRecebimentoOrc_BancoBrasil: Result      := 'Banco Brasil';
    TEnumRecebimentoOrc_Bradesco: Result         := 'Bradesco';
    TEnumRecebimentoOrc_Banrisul: Result         := 'Banrisul';
    TEnumRecebimentoOrc_HSBC: Result             := 'HSBC';
    TEnumRecebimentoOrc_Itau: Result             := 'Itau';
    TEnumRecebimentoOrc_PagamentoDigital: Result := 'Pagamento Digital';
    TEnumRecebimentoOrc_Amex: Result             := 'Amex';
    TEnumRecebimentoOrc_Boleto: Result           := 'Boleto';
    TEnumRecebimentoOrc_PagSeguroCartao: Result  := 'PagSeguro Cartão';
    TEnumRecebimentoOrc_Dinners: Result          := 'Dinners';
    TEnumRecebimentoOrc_Elo: Result              := 'Elo';
    TEnumRecebimentoOrc_HiperCard: Result        := 'HiperCard';
    TEnumRecebimentoOrc_MasterCard: Result       := 'MasterCard';
    TEnumRecebimentoOrc_Outros: Result           := 'Outros';
    TEnumRecebimentoOrc_PagSeguroBoleto: Result  := 'PagSeguro Boleto';
    TEnumRecebimentoOrc_PagSeguro: Result        := 'PagSeguro';
    TEnumRecebimentoOrc_Aura: Result             := 'Aura';
    TEnumRecebimentoOrc_Visa: Result             := 'Visa';
    TEnumRecebimentoOrc_BoletoAPrazo: Result     := 'Boleto a Prazo';
    //    TEnumRecebimentoOrc_Orcamento: Result        := 'Orçamento';
    TEnumRecebimentoOrc_Wix: Result    := 'Wix Pagamentos';
    TEnumRecebimentoOrc_PayPal: Result := 'PayPal';
    else
         Result := '';
  end;

end;

class function TEnum.RecebimentoOrcFromStr(const pValor: string): TEnumRecebimentoOrc;
begin
  if pValor = '1' then
    Result := TEnumRecebimentoOrc_BancoBrasil
  else
     if pValor = '2' then
    Result := TEnumRecebimentoOrc_Bradesco
  else
     if pValor = '3' then
    Result := TEnumRecebimentoOrc_Banrisul
  else
     if pValor = '4' then
    Result := TEnumRecebimentoOrc_HSBC
  else
     if pValor = '5' then
    Result := TEnumRecebimentoOrc_Itau
  else
     if pValor = '9' then
    Result := TEnumRecebimentoOrc_PagamentoDigital
  else
     if pValor = 'A' then
    Result := TEnumRecebimentoOrc_Amex
  else
     if pValor = 'B' then
    Result := TEnumRecebimentoOrc_Boleto
  else
     if pValor = 'C' then
    Result := TEnumRecebimentoOrc_PagSeguroCartao
  else
     if pValor = 'D' then
    Result := TEnumRecebimentoOrc_Dinners
  else
     if pValor = 'E' then
    Result := TEnumRecebimentoOrc_Elo
  else
     if pValor = 'H' then
    Result := TEnumRecebimentoOrc_HiperCard
  else
     if pValor = 'M' then
    Result := TEnumRecebimentoOrc_MasterCard
  else
     if pValor = 'O' then
    Result := TEnumRecebimentoOrc_Outros
  else
     if pValor = 'P' then
    Result := TEnumRecebimentoOrc_PagSeguroBoleto
  else
     if pValor = 'S' then
    Result := TEnumRecebimentoOrc_PagSeguro
  else
     if pValor = 'U' then
    Result := TEnumRecebimentoOrc_Aura
  else
     if pValor = 'V' then
    Result := TEnumRecebimentoOrc_Visa
  else
     if pValor = 'W' then
    Result := TEnumRecebimentoOrc_BoletoAPrazo
    //  else
    //     if pValor = 'O' then
    //    Result := TEnumRecebimentoOrc_Orcamento
  else
     if pValor = 'X' then
    Result := TEnumRecebimentoOrc_Wix
  else
     if pValor = 'Y' then
    Result := TEnumRecebimentoOrc_PayPal
  else
    Result := TEnumRecebimentoOrc_NaoDefinido;

end;

class function TEnum.RecebimentoOrcToBandeira(const pEnum: TEnumRecebimentoOrc): TEnumBandeiraCartao;
begin
  case pEnum of
    TEnumRecebimentoOrc_Amex: Result       := bcAmericanExpress;
    TEnumRecebimentoOrc_Dinners: Result    := bcDinersClub;
    TEnumRecebimentoOrc_Elo: Result        := bcElo;
    TEnumRecebimentoOrc_HiperCard: Result  := bcHipercard;
    TEnumRecebimentoOrc_MasterCard: Result := bcMastercard;
    TEnumRecebimentoOrc_Aura: Result       := bcAura;
    TEnumRecebimentoOrc_Visa: Result       := bcVisa;
    else
         Result := bcVazio;
  end;

end;

class function TEnum.RecebimentoOrcToStr(const pEnum: TEnumRecebimentoOrc): string;
begin
  case pEnum of
    TEnumRecebimentoOrc_BancoBrasil: Result      := '1';
    TEnumRecebimentoOrc_Bradesco: Result         := '2';
    TEnumRecebimentoOrc_Banrisul: Result         := '3';
    TEnumRecebimentoOrc_HSBC: Result             := '4';
    TEnumRecebimentoOrc_Itau: Result             := '5';
    TEnumRecebimentoOrc_PagamentoDigital: Result := '9';
    TEnumRecebimentoOrc_Amex: Result             := 'A';
    TEnumRecebimentoOrc_Boleto: Result           := 'B';
    TEnumRecebimentoOrc_PagSeguroCartao: Result  := 'C';
    TEnumRecebimentoOrc_Dinners: Result          := 'D';
    TEnumRecebimentoOrc_Elo: Result              := 'E';
    TEnumRecebimentoOrc_HiperCard: Result        := 'H';
    TEnumRecebimentoOrc_MasterCard: Result       := 'M';
    TEnumRecebimentoOrc_Outros: Result           := 'O';
    TEnumRecebimentoOrc_PagSeguroBoleto: Result  := 'P';
    TEnumRecebimentoOrc_PagSeguro: Result        := 'S';
    TEnumRecebimentoOrc_Aura: Result             := 'U';
    TEnumRecebimentoOrc_Visa: Result             := 'V';
    TEnumRecebimentoOrc_BoletoAPrazo: Result     := 'W';
    //    TEnumRecebimentoOrc_Orcamento: Result        := 'O';
    TEnumRecebimentoOrc_Wix: Result    := 'X';
    TEnumRecebimentoOrc_PayPal: Result := 'Y';
    else
         Result := '';
  end;

end;

class function TEnum.RegimeTributarioFromInt(const pValor: Integer): TEnumRegimeTributario;
begin
  if pValor = 0 then
    Result := rtVazio
  else if pValor = 1 then
    Result := rtSimplesNacional
  else if pValor = 2 then
    Result := rtSimplesNacionalEx
  else if pValor = 3 then
    Result := rtRegimeNormal
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumRegimeTributario.', [IntToStr(pValor)]));
end;

class function TEnum.BandeiraCartaoToInt(const pEnum: TEnumBandeiraCartao): Integer;
begin
  case pEnum of
    bcVazio: Result           := 0;
    bcVisa: Result            := 1;
    bcMastercard: Result      := 2;
    bcAmericanExpress: Result := 3;
    bcSorocred: Result        := 4;
    bcDinersClub: Result      := 5;
    bcElo: Result             := 6;
    bcHipercard: Result       := 7;
    bcAura: Result            := 8;
    bcCabal: Result           := 9;
    bcOutros: Result          := 99;
    else
      Result := 0;
  end;
end;

class function TEnum.BandeiraCartaoToStr(const pEnum: TEnumBandeiraCartao): string;
begin
  case pEnum of
    bcVazio: result           := '';
    bcVisa: result            := 'VISA';
    bcMastercard: result      := 'MASTER';
    bcAmericanExpress: result := 'AMEX';
    bcSorocred: result        := 'SOROCRED';
    bcDinersClub: result      := 'DINERS';
    bcElo: result             := 'ELO';
    bcHipercard: result       := 'HIPERCARD';
    bcAura: result            := 'AURA';
    bcCabal: result           := 'CABAL';
    bcOutros: result          := 'OUTRO';
  end;
end;

class function TEnum.BandeiraCartaoFromStr(const pDescricao: string): TEnumBandeiraCartao;
begin
  result := bcVazio;

  if Pos('VISA', pDescricao) > 0 then begin
    result := bcVisa;
  end else if Pos('MASTER', pDescricao) > 0 then begin
    result := bcMastercard;
  end else if (Pos('AMEX', pDescricao) > 0) or (Pos('AMERICAN', pDescricao) > 0) or (Pos('EXPRES', pDescricao) > 0) then begin
    result := bcAmericanExpress;
  end else if Pos('SOROCRED', pDescricao) > 0 then begin
    result := bcSorocred;
  end else if Pos('DINERS', pDescricao) > 0 then begin
    result := bcDinersClub;
  end else if Pos('ELO', pDescricao) > 0 then begin
    result := bcElo;
  end else if Pos('HIPERCARD', pDescricao) > 0 then begin
    result := bcHipercard;
  end else if Pos('AURA', pDescricao) > 0 then begin
    result := bcAura;
  end else if Pos('CABAL', pDescricao) > 0 then begin
    result := bcCabal;
  end else begin
    result := bcOutros;
  end;
end;

class function TEnum.BandeiraCartaoFromInt(const pValor: Integer): TEnumBandeiraCartao;
begin
  if pValor = 0 then
    Result := bcVazio
  else if pValor = 1 then
    Result := bcVisa
  else if pValor = 2 then
    Result := bcMastercard
  else if pValor = 3 then
    Result := bcAmericanExpress
  else if pValor = 4 then
    Result := bcSorocred
  else if pValor = 5 then
    Result := bcDinersClub
  else if pValor = 6 then
    Result := bcElo
  else if pValor = 7 then
    Result := bcHipercard
  else if pValor = 8 then
    Result := bcAura
  else if pValor = 9 then
    Result := bcCabal
  else if pValor = 17 then
    Result := bcOutros
  else if pValor = 99 then
    Result := bcOutros
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumBandeiraCartao.', [IntToStr(pValor)]));
end;

class function TEnum.TipoSATToInt(const pEnum: TEnumTipoSAT): Integer;
begin
  Result := Ord(pEnum);
end;

class function TEnum.TipoSATFromInt(const pValor: Integer): TEnumTipoSAT;
begin
  if pValor = Ord(tsAparelhoSAT) then
    Result := tsAparelhoSAT
  else if pValor = Ord(tsEmuladorOffline) then
    Result := tsEmuladorOffline
  else if pValor = Ord(tsSDKTanca) then
    Result := tsSDKTanca
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + IntToStr(pValor) + '" inválido para TEnumTipoSAT.');
end;

class function TEnum.TipoBonusToStr(const pEnum: TEnumTipoBonus): string;
begin
  case pEnum of
    tbBonusCliente: Result   := 'C';
    tbBonusIndicador: Result := 'I';
    tbBonusVendedor: Result  := 'V';
    tbBonusVendas: Result    := 'X';
    tbBonusOutros: Result    := 'O';
  end;
end;

class function TEnum.TipoBonusFromStr(const pValor: string): TEnumTipoBonus;
begin
  if pValor = 'C' then
    Result := tbBonusCliente
  else if pValor = 'I' then
    Result := tbBonusIndicador
  else if pValor = 'V' then
    Result := tbBonusVendedor
  else if pValor = 'X' then
    Result := tbBonusVendas
  else
    Result := tbBonusOutros;
end;

class function TEnum.TipoAcrescimoItemConsistem(const pEnum: TEnumTipoAcrescimoItemConsistem): string;
begin
  case pEnum of
    TEnumTipoAcrescimoItemConsistem_Percentual: Result := '0 - Percentual';
    TEnumTipoAcrescimoItemConsistem_Valor: Result      := '1 - Valor';
  end;
end;

class function TEnum.TipoAcrescimoItemConsistemFromStr(const pValor: string): TEnumTipoAcrescimoItemConsistem;
begin
 if (pValor = '0') then
   Result := TEnumTipoAcrescimoItemConsistem_Percentual // 0 - Percentual
 else if (pValor = '1') then
   Result := TEnumTipoAcrescimoItemConsistem_Valor; // 1 - Valor
end;

class function TEnum.TipoAcrescimoItemConsistemToStr(const pEnum: TEnumTipoAcrescimoItemConsistem): string;
begin
  case pEnum of
    TEnumTipoAcrescimoItemConsistem_Percentual: Result := '0';
    TEnumTipoAcrescimoItemConsistem_Valor: Result      := '1';
  end;
end;

class function TEnum.TipoAplicacaoCampanha(const pEnum: TEnumTipoAplicacaoCampanha): string;
begin
  case pEnum of
    TEnumTipoAplicacaoCampanha_Livre: Result    := 'L - Lives';
    TEnumTipoAplicacaoCampanha_PorCupom: Result := 'P - Por Cupom';
  end;
end;

class function TEnum.TipoAplicacaoCampanhaFromStr(const pValor: string): TEnumTipoAplicacaoCampanha;
begin
  if pValor = 'P' then // P - Por Cupom
    Result := TEnumTipoAplicacaoCampanha_PorCupom
  else
    Result := TEnumTipoAplicacaoCampanha_Livre; // L - Lives
end;

class function TEnum.TipoAplicacaoCampanhaToStr(const pEnum: TEnumTipoAplicacaoCampanha): string;
begin
  case pEnum of
    TEnumTipoAplicacaoCampanha_Livre: Result    := 'L'; // L - Lives
    TEnumTipoAplicacaoCampanha_PorCupom: Result := 'P'; // P - Por Cupom
  end;
end;

class function TEnum.TipoBonus(const pEnum: TEnumTipoBonus): string;
begin
  case pEnum of
    tbBonusCliente: Result   := 'C - Bônus concedido como cliente';
    tbBonusIndicador: Result := 'I - Bônus concedido como indicador';
    tbBonusVendedor: Result  := 'V - Bônus concedido como vendedor';
    tbBonusVendas: Result    := 'X - Bônus referente à vendas';
    tbBonusOutros: Result    := 'O - Outros';
  end;
end;

class function TEnum.ECFArredondaTrunca(const pEnum: TEnumECFArredondaTrunca): string;
begin
  case pEnum of
    TEnumECFArredondaTruncaNulo: result      := '';
    TEnumECFArredondaTruncaArredonda: result := 'A - Arredonda';
    TEnumECFArredondaTruncaTrunca: result    := 'T - Trunca';
  end;
end;

class function TEnum.ECFArredondaTruncaFromStr(const pValor: string): TEnumECFArredondaTrunca;
begin
  if pValor = '' then
    result := TEnumECFArredondaTruncaNulo
  else if pValor = 'A' then
    result := TEnumECFArredondaTruncaArredonda
  else if pValor = 'T' then
    result := TEnumECFArredondaTruncaTrunca
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumECFArredondaTrunca.', [pValor]));
end;

class function TEnum.ECFArredondaTruncaToStr(const pEnum: TEnumECFArredondaTrunca): string;
begin
  case pEnum of
    TEnumECFArredondaTruncaNulo: result      := '';
    TEnumECFArredondaTruncaArredonda: result := 'A';
    TEnumECFArredondaTruncaTrunca: result    := 'T';
  end;
end;

class function TEnum.EmailCriptografia(const pEnum: TEnumEmailCriptografia): string;
begin
  case pEnum of
    ecSemCriptoGrafia: result := '0 - Sem criptografia';
    ecSSL: result             := '1 - SSL';
    ecTLS: result             := '2 - TLS';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumEmailCriptografia.');
  end;
end;

class function TEnum.EmailCriptografiaFromInt(const pValor: Integer): TEnumEmailCriptografia;
begin
  if pValor = 0 then
    result := ecSemCriptoGrafia
  else if pValor = 1 then
    result := ecSSL
  else if pValor = 2 then
    result := ecTLS
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumEmailCriptografia.', [IntToStr(pValor)]));
end;

class function TEnum.EmailCriptografiaToInt(const pEnum: TEnumEmailCriptografia): Integer;
begin
  case pEnum of
    ecSemCriptoGrafia: result := 0;
    ecSSL: result             := 1;
    ecTLS: result             := 2;
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumEmailCriptografia.');
  end;
end;

class function TEnum.EmailSituacao(const pEnum: TEnumEmailSituacao): string;
begin
  case pEnum of
    esPendente: result         := 'P - Envio pendente';
    esEnviado: result          := 'E - Enviado';
    esErroNoEnvio: result      := 'X - Erro no envio';
    esErroEnvioMailTo: result  := 'D - Destinatário inválido';
    esErroEnvioCCList: result  := 'C - Destinatário CC inválido';
    esErroEnvioBCCList: result := 'B - Destinário BCC inválido';
    esErroEnvioMailFrom: Result:= 'F - Remetente inválido';
    esErroEnvioOutros: Result  := 'O - Outros erros no envio';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumEmailSituacao.');
  end;
end;

class function TEnum.EmailSituacaoFromStr(const pValor: string): TEnumEmailSituacao;
begin
  if pValor = 'P' then
    result := esPendente
  else if pValor = 'E' then
    result := esEnviado
  else if pValor = 'X' then
    result := esErroNoEnvio
  else if pValor = 'D' then
    result := esErroEnvioMailTo
  else if pValor = 'C' then
    result := esErroEnvioCCList
  else if pValor = 'B' then
    result := esErroEnvioBCCList
  else if pValor = 'F' then
    result := esErroEnvioMailFrom
  else if pValor = 'O' then
    result := esErroEnvioOutros
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumEmailSituacao.', [pValor]));
end;

class function TEnum.EmailSituacaoToStr(const pEnum: TEnumEmailSituacao): string;
begin
  case pEnum of
    esPendente: result         := 'P';
    esEnviado: result          := 'E';
    esErroNoEnvio: result      := 'X';
    esErroEnvioMailTo: result  := 'D';
    esErroEnvioCCList: result  := 'C';
    esErroEnvioBCCList: result := 'B';
    esErroEnvioMailFrom: Result := 'F';
    esErroEnvioOutros: Result  := 'O';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumEmailSituacao.');
  end;
end;

class function TEnum.EmpresaResponsavel(
  const pEnum: TEnumEmpresaResponsavel): string;
begin
  case pEnum of
    TEnumER_TotallSistemas: result := 'Totall Sistemas';
    TEnumER_TotaliSistemas: result := 'Totali Sistemas';
    TEnumER_EME4: result           := 'EME4';
  end;
end;

class function TEnum.EmpresaResponsavelFromStr(
  const pValor: string): TEnumEmpresaResponsavel;
begin
  if pValor = 'totall' then begin
    Result := TEnumER_TotallSistemas;
  end else if pValor = 'totali' then begin
    Result := TEnumER_TotaliSistemas;
  end else if pValor = 'eme4' then begin
    Result := TEnumER_EME4;
  end else begin
    Result := TEnumER_TotallSistemas;
  end;
end;

class function TEnum.EmpresaResponsavelToStr(
  const pEnum: TEnumEmpresaResponsavel): string;
begin
  case pEnum of
    TEnumER_TotallSistemas: result := 'totall';
    TEnumER_TotaliSistemas: result := 'totali';
    TEnumER_EME4: result           := 'eme4';
  end;
end;

class function TEnum.EntregaFutura(const pEnum: TEnumEntregaFutura): string;
begin
  case pEnum of
    efAberto: result     := 'A - Aberto';
    efEncomenda: result  := 'E - Encomenda';
    efprocessado: result := 'P - Processado';
    efNulo: result       := '';
  end;
end;

class function TEnum.EntregaFuturaFromStr(const pValor: string): TEnumEntregaFutura;
begin
  if pValor = 'A' then begin
    Result := efAberto;
  end else if pValor = 'E' then begin
    Result := efEncomenda;
  end else if pValor = 'P' then begin
    Result := efprocessado;
  end else begin
    Result := efNulo;
  end;
end;

class function TEnum.EntregaFuturaToStr(const pEnum: TEnumEntregaFutura): string;
begin
  case pEnum of
    efAberto: result     := 'A';
    efEncomenda: result  := 'E';
    efprocessado: result := 'P';
    efNulo: result       := '';
  end;
end;

class function TEnum.EnvioEmailFromInt(pValor: Integer): TEnumEnvioEmail;
begin
  Result := eeNaoEnvia;
  if pValor = 0 then
    Result := eeNaoEnvia
  else if pValor = 1 then
    Result := eeEnviaManual
  else if pValor = 2 then
    Result := eeEnviaAutomatico;
end;

class function TEnum.EstadoCivil(const pEnum: TEnumEstadoCivil): string;
begin
  case pEnum of
    ecIndefinido: Result   := '0 - Indefinido';
    ecSolteiro: Result     := '1 - Solteiro';
    ecCasado: Result       := '2 - Casado';
    ecViuvo: Result        := '3 - Viúvo';
    ecDivorciado: Result   := '4 - Divorciado';
    ecUniaoEstavel: Result := '5 - União estável';
    ecSeparado: Result     := '6 - Separado';
  end;
end;

class function TEnum.EstadoCivilFromInt(const pValor: Integer): TEnumEstadoCivil;
begin
  Result := ecIndefinido;
  if pValor = 0 then begin
    Result := ecIndefinido;
  end else if pValor = 1 then begin
    Result := ecSolteiro;
  end else if pValor = 2 then begin
    Result := ecCasado;
  end else if pValor = 3 then begin
    Result := ecViuvo;
  end else if pValor = 4 then begin
    Result := ecDivorciado;
  end else if pValor = 5 then begin
    Result := ecUniaoEstavel;
  end else if pValor = 6 then begin
    Result := ecSeparado;
  end;
end;

class function TEnum.EstadoCivilToInt(const pEnum: TEnumEstadoCivil): Integer;
begin
  case pEnum of
    ecIndefinido: Result   := 0; // 0 - Indefinido
    ecSolteiro: Result     := 1; // 1 - Solteiro
    ecCasado: Result       := 2; // 2 - Casado
    ecViuvo: Result        := 3; // 3 - Viúvo
    ecDivorciado: Result   := 4; // 4 - Divorciado
    ecUniaoEstavel: Result := 5; // 5 - União estável
    ecSeparado: Result     := 6; // 6 - Separado
    else
      Result := 0;
  end;
end;

class function TEnum.FinalidadeNfe(const pEnum: TEnumFinalidadeNfe): string;
begin
  case pEnum of
    fnNormal: result       := '1 - Normal';
    fnComplementar: result := '2 - Complementar';
    fnAjuste: result       := '3 - Ajuste';
    fnDevolucao: result    := '4 - Devolução';
    else
         raise EEnumeradorInvalido.Create('Finalidade de NF-e não definida');
  end;
end;

class function TEnum.FinalidadeNfeFromInt(const pValor: Integer): TEnumFinalidadeNfe;
begin
  if pValor = 1 then begin
    result := fnNormal;
  end else if pValor = 2 then begin
    result := fnComplementar;
  end else if pValor = 3 then begin
    result := fnAjuste;
  end else if pValor = 4 then begin
    result := fnDevolucao;
  end else begin
    raise EEnumeradorInvalido.Create('Finalidade de NF-e inválida');
  end;
end;

class function TEnum.FinalidadeNfeToInt(const pEnum: TEnumFinalidadeNfe): Integer;
begin
  case pEnum of
    fnNormal: result       := 1; // 1 - Normal
    fnComplementar: result := 2; // 2 - Complementar
    fnAjuste: result       := 3; // 3 - Ajuste
    fnDevolucao: result    := 4; // 4 - Devolução
    else
         raise EEnumeradorInvalido.Create('Finalidade de NF-e não definida');
  end;
end;

class function TEnum.FlagFinanceiro(const pEnum: TEnumFlagFinanceiro): string;
begin
  case pEnum of
    tfReforcoConfirmado: Result := 'R - Reforço Confirmado';
    tfReforcoEmAberto: Result   := 'A - Reforço em Aberto(Positivo)';
    tfReforcoSangria: Result    := 'I - Reforço Sangria(Negativo)';
    ttfSimples: Result          := 'S - Simples(Não Identificada)';
  end;
end;

class function TEnum.FlagFinanceiroFromStr(const pValor: string): TEnumFlagFinanceiro;
begin
  if pValor = 'R' then
    Result := tfReforcoConfirmado
  else if pValor = 'A' then
    Result := tfReforcoEmAberto
  else if pValor = 'I' then
    Result := tfReforcoSangria
  else if pValor = 'S' then
    Result := ttfSimples
  else
    Result := ttfSimples;
end;

class function TEnum.FlagFinanceiroToStr(const pEnum: TEnumFlagFinanceiro): string;
begin
  case pEnum of
    tfReforcoConfirmado: Result := 'R'; //R - Reforço Confirmado
    tfReforcoEmAberto: Result   := 'A'; //A - Reforço em Aberto(Positivo)
    tfReforcoSangria: Result    := 'I'; //I - Reforço Sangria(Negativo)
    ttfSimples: Result          := 'S'; //S - Simples(Não Identificada)
  end;
end;

class function TEnum.FlagNfe(const pEnum: TEnumFlagNfe): string;
begin
  case pEnum of
    fnNaoEnviada: result      := '0 - Não Enviada';
    fnAutorizada: result      := '1 - Autorizada';
    fnRejeitada: result       := '2 - Rejeitada';
    fnCancelada: result       := '3 - Cancelada';
    fnInutilizada: result     := '4 - Inutilizada';
    fnEnviandoAoSefaz: result := '5 - Enviando ao Sefaz';
    fnDenegada: result        := '6 - Denegada';
    fnErroImportacao: result  := '8 - Erro de Importação';
    fnNulo: result            := '';
  end;
end;

class function TEnum.FlagNfeFromSituacaoGuarda(const pEnum: TEnumSituacaoGuarda): TEnumFlagNfe;
begin
  // Seta Flag NF-e conforme situação da Guarda.
  case pEnum of
    // 0 - Não enviado
    sgEnviadoContingencia, sgSefazInoperante: Result := fnNaoEnviada;
    // 1 - Autorizada
    sgEnviado: Result := fnAutorizada;
    // 2 - Rejeitada
    sgErroValidacao, sgErroEnvio: Result := fnRejeitada;
    // 3 - Cancelado
    sgCancelada: Result := fnCancelada;
    // 4 - Inutilizado
    sgInutilizada: Result := fnInutilizada;
    // 6 - Denegada
    sgDenegado: Result := fnDenegada;
    // 8 - Erro de Importação
    sgInutilizacaoRejeitada: Result := fnErroImportacao;
    else
         Result := fnNulo;
  end;
end;

class function TEnum.FlagNfeFromStr(const pValor: string): TEnumFlagNfe;
begin
  if pValor = '0' then begin
    result := fnNaoEnviada;
  end else if pValor = '1' then begin
    result := fnAutorizada;
  end else if pValor = '2' then begin
    result := fnRejeitada;
  end else if pValor = '3' then begin
    result := fnCancelada;
  end else if pValor = '4' then begin
    result := fnInutilizada;
  end else if pValor = '5' then begin
    result := fnEnviandoAoSefaz;
  end else if pValor = '6' then begin
    result := fnDenegada;
  end else if pValor = '8' then begin
    result := fnErroImportacao;
  end else begin
    result := fnNulo;
  end;
end;

class function TEnum.FlagNfeToStr(const pEnum: TEnumFlagNfe): string;
begin
  case pEnum of
    fnNaoEnviada: result      := '0'; // 0 - Não Enviada
    fnAutorizada: result      := '1'; // 1 - Autorizada
    fnRejeitada: result       := '2'; // 2 - Rejeitada
    fnCancelada: result       := '3'; // 3 - Cancelada
    fnInutilizada: result     := '4'; // 4 - Inutilizada
    fnEnviandoAoSefaz: result := '5'; // 5 - Enviando ao Sefaz
    fnDenegada: result        := '6'; // 6 - Denegada
    fnErroImportacao: result  := '8'; // 8 - Erro de Importação
    fnNulo: result            := '';  // Nulo
  end;
end;

class function TEnum.FormadorPreco(const pEnum: TEnumFormadorPreco): string;
begin
  case pEnum of
    fpPromocaoPorPlano: result   := '2 - Promoção por Plano';
    fpDAV: result                := 'A - DAV';
    fpCambio: result             := 'C - Câmbio';
    fpDesconto: result           := 'D - Desconto';
    fpPromocaoFechamento: result := 'F - Promoção de Fechamento';
    fpInformado: result          := 'I - Informado';
    fpKit: result                := 'K - Kit';
    fpNF: result                 := 'N - NF';
    fpPromocao: result           := 'P - Promoção';
    fpFormulaSQL: result         := 'S - Fórmula SQL';
    fpTabela: result             := 'T - Tabela';
    fpNulo: result               := '';
  end;
end;

class function TEnum.FormadorPrecoFromStr(const pValor: string): TEnumFormadorPreco;
begin
  if pValor = '2' then
    Result := fpPromocaoPorPlano
  else if pValor = 'A' then
    Result := fpDAV
  else if pValor = 'C' then
    Result := fpCambio
  else if pValor = 'D' then
    Result := fpDesconto
  else if pValor = 'F' then
    Result := fpPromocaoFechamento
  else if pValor = 'I' then
    Result := fpInformado
  else if pValor = 'K' then
    Result := fpKit
  else if pValor = 'N' then
    Result := fpNF
  else if pValor = 'P' then
    Result := fpPromocao
  else if pValor = 'S' then
    Result := fpFormulaSQL
  else if pValor = 'T' then
    Result := fpTabela
  else
    Result := fpNulo;
end;

class function TEnum.FormadorPrecoToStr(const pEnum: TEnumFormadorPreco): string;
begin
  case pEnum of
    fpPromocaoPorPlano: result   := '2';
    fpDAV: result                := 'A';
    fpCambio: result             := 'C';
    fpDesconto: result           := 'D';
    fpPromocaoFechamento: result := 'F';
    fpInformado: result          := 'I';
    fpKit: result                := 'K';
    fpNF: result                 := 'N';
    fpPromocao: result           := 'P';
    fpFormulaSQL: result         := 'S';
    fpTabela: result             := 'T';
    fpNulo: result               := '';
  end;
end;

class function TEnum.FormulaUso(const pEnum: TEnumFormulaUso): string;
begin
  case pEnum of
    TEnumFormulaUsoDiversas: result                     := '1 - Diversas';
    TEnumFormulaUsoServicoAdicionalImpressao: result    := '2 - Impressão de Serviço Adicional';
    TEnumFormulaUsoServicoAdicionalNumero: result       := '3 - Numeração de Serviço Adicional';
    TEnumFormulaUsoContaCorrenteImpressao: result       := '4 - Impressão de Conta Corrente';
    TEnumFormulaUsoServicoAdicionalCancelamento: result := '5 - Cancelamento de Serviço Adicional';
  end;
end;

class function TEnum.FormulaUsoFromInt(const pValor: Integer): TEnumFormulaUso;
begin
  if pValor = 1 then
    result := TEnumFormulaUsoDiversas
  else if pValor = 2 then
    result := TEnumFormulaUsoServicoAdicionalImpressao
  else if pValor = 3 then
    result := TEnumFormulaUsoServicoAdicionalNumero
  else if pValor = 4 then
    result := TEnumFormulaUsoContaCorrenteImpressao
  else if pValor = 5 then
    result := TEnumFormulaUsoServicoAdicionalCancelamento
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + IntToStr(pValor) + '" inválido para TEnumFormulaUso.');
end;

class function TEnum.FormulaUsoToInt(const pEnum: TEnumFormulaUso): Integer;
begin
  case pEnum of
    TEnumFormulaUsoDiversas: result                     := 1;
    TEnumFormulaUsoServicoAdicionalImpressao: result    := 2;
    TEnumFormulaUsoServicoAdicionalNumero: result       := 3;
    TEnumFormulaUsoContaCorrenteImpressao: result       := 4;
    TEnumFormulaUsoServicoAdicionalCancelamento: result := 5;
    else
      Result := 1;
  end;
end;

class function TEnum.FuncionalidadePAFECF(const pEnum: TEnumFuncionalidadePAFECF): string;
begin
  case pEnum of
    fpNaoDefinida: Result                             := 'Requisito Inválido/Não Definido'; // Requisito Inválido/Não Definido
    fpExigePAFECF: Result                             := 'Exige PAF-ECF'; // EXIGEPAF
    fpEmitirDAVNaoFiscal: Result                      := 'Permitir impressão de DAV em impressora não fiscal para os estados'; // EMITIRDAVNAOFISCAL - IV.3
    fpEmitirPreVenda: Result                          := 'Permitir impressão de número de pré-venda para os estados'; // EMITIRPREVENDA - V.11
    fpRegistrarNotaManual: Result                     := 'Permitir registrar nota manual para os estados'; // REGISTRARNOTAMANUAL - XXVIII.7
    fpGerarEspelhoMFD: Result                         := 'Define se gera arquivo Espelho MFD do Menu Fiscal'; // GERAR_ESPELHO_MFD - VII.19
    fpGerarVendasIdentificadas: Result                := 'Define se gera arquivo Vendas Identificadas pelo CPF/CNPJ do Menu Fiscal'; // GERAR_VENDAS_IDENTIFICADAS - VII.22
    fpGerarArquivo1704: Result                        := 'Define se gera arquivo Arq 17/04 do Menu Fiscal'; // GERAR_ARQ_1704 - VII.5A
    fpBloquearNFNaoManualECFForaFuncionamento: Result := 'Bloqueia a emissão de NF (não manual) com ECF fora de funcionamento'; // BLOQUEAR_NF_ECF_FORA - XXVIII.7 - O requisito correto para funcionalidade é XXVIII.7B contudo não foi publicado na ER utilizada.
    fpGerarLeituraMFD: Result                         := 'Define se gera leitura da memória fiscal automaticamente na primeira Redução Z de cada mês'; // GERAR_LEITURA_MFD - XII.1
    fpGerarFiscoReducaoZ: Result                      := 'Define geração e transmissão do arquivo FISCO-REDUÇÃO-Z'; // GERAR_FISCO_REDUCAO_Z - LVIII.4
    fpBloquearFiscoReducaoZ: Result                   := 'Bloqueia PAF até transmissões pendentes do arquivo FISCO-REDUÇÃO-Z sejam enviadas'; // BLOQUEAR_FISCO_REDUCAO_Z - LVIII.4.3
    fpGerarFiscoEstoque: Result                       := 'Define geração e transmissão do arquivo FISCO-ESTOQUE'; // GERAR_FISCO_ESTOQUE - LIX.1
    fpGerarAutoRegistrosPAFECF: Result                := 'Define geração automática do arquivo Registros do PAF-ECF'; // GERAR_AUTO_REGISTROS_PAFECF - XXVI.5
    fpPermitirTrocoTEF: Result                        := 'Permitir Troco com TEF'; // PERMITIR_TROCO_TEF - XVI.4A1
  end;
end;

class function TEnum.FuncionalidadePAFECFFromStr(const pValor: string): TEnumFuncionalidadePAFECF;
begin
  if pValor = 'EXIGEPAF' then begin
    Result := fpExigePAFECF; // Exige PAF-ECF
  end else if pValor = 'EMITIRDAVNAOFISCAL' then begin
    Result := fpEmitirDAVNaoFiscal; // IV.3 - Permitir impressão de DAV em impressora não fiscal para os estados
  end else if pValor = 'EMITIRPREVENDA' then begin
    Result := fpEmitirPreVenda; // V.11 - Permitir impressão de número de pré-venda para os estados
  end else if pValor = 'REGISTRARNOTAMANUAL' then begin
    Result := fpRegistrarNotaManual; // XXVIII.7 - Permitir registrar nota manual para os estados
  end else if pValor = 'GERAR_ESPELHO_MFD' then begin
    Result := fpGerarEspelhoMFD; // VII.19 - Define se gera arquivo Espelho MFD do Menu Fiscal
  end else if pValor = 'GERAR_VENDAS_IDENTIFICADAS' then begin
    Result := fpGerarVendasIdentificadas; // VII.22 - Define se gera arquivo Vendas Identificadas pelo CPF/CNPJ do Menu Fiscal
  end else if pValor = 'GERAR_ARQ_1704' then begin
    Result := fpGerarArquivo1704; // VII.5A - Define se gera arquivo Arq 17/04 do Menu Fiscal
  end else if pValor = 'BLOQUEAR_NF_ECF_FORA' then begin
    Result := fpBloquearNFNaoManualECFForaFuncionamento; // XXVIII.7 - Bloqueia a emissão de NF (não manual) com ECF fora de funcionamento - O requisito correto para funcionalidade é XXVIII.7B contudo não foi publicado na ER utilizada.
  end else if pValor = 'GERAR_LEITURA_MFD' then begin
    Result := fpGerarLeituraMFD; // XII.1 - Define se gera leitura da memória fiscal automaticamente na primeira Redução Z de cada mês
  end else if pValor = 'GERAR_FISCO_REDUCAO_Z' then begin
    Result := fpGerarFiscoReducaoZ; // LVIII.4 - Define geração e transmissão do arquivo FISCO-REDUÇÃO-Z
  end else if pValor = 'BLOQUEAR_FISCO_REDUCAO_Z' then begin
    Result := fpBloquearFiscoReducaoZ; // LVIII.4.3 - Bloqueia PAF até transmissões pendentes do arquivo FISCO-REDUÇÃO-Z sejam enviadas
  end else if pValor = 'GERAR_FISCO_ESTOQUE' then begin
    Result := fpGerarFiscoEstoque; // LIX.1 - Define geração e transmissão do arquivo FISCO-ESTOQUE
  end else if pValor = 'GERAR_AUTO_REGISTROS_PAFECF' then begin
    Result := fpGerarAutoRegistrosPAFECF; // XXVI.5 - Define geração automática do arquivo Registros do PAF-ECF
  end else if pValor = 'PERMITIR_TROCO_TEF' then begin
    Result := fpPermitirTrocoTEF; // XVI.4A1 - Permitir Troco com TEF
  end else begin
    Result := fpNaoDefinida; // Requisito Inválido/Não Definido
  end;
end;

{$IFDEF DELPHIXE}


class function TEnum.FuncionalidadePAFECFGetList: TObjectList<TParLista>;
begin
  Result := TObjectList<TParLista>.Create;
  Result.Add(TParLista.Create(FuncionalidadePAFECFToStr(fpNaoDefinida), FuncionalidadePAFECF(fpNaoDefinida)));
  Result.Add(TParLista.Create(FuncionalidadePAFECFToStr(fpExigePAFECF), FuncionalidadePAFECF(fpExigePAFECF)));
  Result.Add(TParLista.Create(FuncionalidadePAFECFToStr(fpEmitirDAVNaoFiscal), FuncionalidadePAFECF(fpEmitirDAVNaoFiscal)));
  Result.Add(TParLista.Create(FuncionalidadePAFECFToStr(fpEmitirPreVenda), FuncionalidadePAFECF(fpEmitirPreVenda)));
  Result.Add(TParLista.Create(FuncionalidadePAFECFToStr(fpRegistrarNotaManual), FuncionalidadePAFECF(fpRegistrarNotaManual)));
  Result.Add(TParLista.Create(FuncionalidadePAFECFToStr(fpGerarEspelhoMFD), FuncionalidadePAFECF(fpGerarEspelhoMFD)));
  Result.Add(TParLista.Create(FuncionalidadePAFECFToStr(fpGerarVendasIdentificadas), FuncionalidadePAFECF(fpGerarVendasIdentificadas)));
  Result.Add(TParLista.Create(FuncionalidadePAFECFToStr(fpGerarArquivo1704), FuncionalidadePAFECF(fpGerarArquivo1704)));
  Result.Add(TParLista.Create(FuncionalidadePAFECFToStr(fpBloquearNFNaoManualECFForaFuncionamento), FuncionalidadePAFECF(fpBloquearNFNaoManualECFForaFuncionamento)));
  Result.Add(TParLista.Create(FuncionalidadePAFECFToStr(fpGerarLeituraMFD), FuncionalidadePAFECF(fpGerarLeituraMFD)));
  Result.Add(TParLista.Create(FuncionalidadePAFECFToStr(fpGerarFiscoReducaoZ), FuncionalidadePAFECF(fpGerarFiscoReducaoZ)));
  Result.Add(TParLista.Create(FuncionalidadePAFECFToStr(fpBloquearFiscoReducaoZ), FuncionalidadePAFECF(fpBloquearFiscoReducaoZ)));
  Result.Add(TParLista.Create(FuncionalidadePAFECFToStr(fpGerarFiscoEstoque), FuncionalidadePAFECF(fpGerarFiscoEstoque)));
  Result.Add(TParLista.Create(FuncionalidadePAFECFToStr(fpGerarAutoRegistrosPAFECF), FuncionalidadePAFECF(fpGerarAutoRegistrosPAFECF)));
  Result.Add(TParLista.Create(FuncionalidadePAFECFToStr(fpPermitirTrocoTEF), FuncionalidadePAFECF(fpPermitirTrocoTEF)));
end;
{$ENDIF}


class function TEnum.FuncionalidadePAFECFToStr(const pEnum: TEnumFuncionalidadePAFECF): string;
begin
  case pEnum of
    fpNaoDefinida: Result                             := ''; // Requisito Inválido/Não Definido
    fpExigePAFECF: Result                             := 'EXIGEPAF'; // Exige PAF-ECF
    fpEmitirDAVNaoFiscal: Result                      := 'EMITIRDAVNAOFISCAL'; // IV.3 - Permitir impressão de DAV em impressora não fiscal para os estados
    fpEmitirPreVenda: Result                          := 'EMITIRPREVENDA'; // V.11 - Permitir impressão de número de pré-venda para os estados
    fpRegistrarNotaManual: Result                     := 'REGISTRARNOTAMANUAL'; // XXVIII.7 - Permitir registrar nota manual para os estados
    fpGerarEspelhoMFD: Result                         := 'GERAR_ESPELHO_MFD'; // VII.19 - Define se gera arquivo Espelho MFD do Menu Fiscal
    fpGerarVendasIdentificadas: Result                := 'GERAR_VENDAS_IDENTIFICADAS'; // VII.22 - Define se gera arquivo Vendas Identificadas pelo CPF/CNPJ do Menu Fiscal
    fpGerarArquivo1704: Result                        := 'GERAR_ARQ_1704'; // VII.5A - Define se gera arquivo Arq 17/04 do Menu Fiscal
    fpBloquearNFNaoManualECFForaFuncionamento: Result := 'BLOQUEAR_NF_ECF_FORA'; // XXVIII.7 - Bloqueia a emissão de NF (não manual) com ECF fora de funcionamento - O requisito correto para funcionalidade é XXVIII.7B contudo não foi publicado na ER utilizada.
    fpGerarLeituraMFD: Result                         := 'GERAR_LEITURA_MFD'; // XII.1 - Define se gera leitura da memória fiscal automaticamente na primeira Redução Z de cada mês
    fpGerarFiscoReducaoZ: Result                      := 'GERAR_FISCO_REDUCAO_Z'; // LVIII.4 - Define geração e transmissão do arquivo FISCO-REDUÇÃO-Z
    fpBloquearFiscoReducaoZ: Result                   := 'BLOQUEAR_FISCO_REDUCAO_Z'; // LVIII.4.3 - Bloqueia PAF até transmissões pendentes do arquivo FISCO-REDUÇÃO-Z sejam enviadas
    fpGerarFiscoEstoque: Result                       := 'GERAR_FISCO_ESTOQUE'; // LIX.1 - Define geração e transmissão do arquivo FISCO-ESTOQUE
    fpGerarAutoRegistrosPAFECF: Result                := 'GERAR_AUTO_REGISTROS_PAFECF'; // XXVI.5 - Define geração automática do arquivo Registros do PAF-ECF
    fpPermitirTrocoTEF: Result                        := 'PERMITIR_TROCO_TEF'; // XVI.4A1 - Permitir Troco com TEF
  end;
end;

class function TEnum.HandShake(const pEnum: TEnumHandShake): string;
begin
  case pEnum of
    TEnumHandShake_Nenhum: Result   := 'Nenhum';
    TEnumHandShake_XON_XOFF: Result := 'XON/XOFF';
    TEnumHandShake_RTS_CTS: Result  := 'RTS/CTS';
    TEnumHandShake_DTR_DSR: Result  := 'DTR/DSR';
  end;
end;

class function TEnum.HandShakeFromStr(const pValor: string): TEnumHandShake;
begin
  if UpperCase(pValor) = UpperCase('X') then
    Result := TEnumHandShake_XON_XOFF
  else if UpperCase(pValor) = UpperCase('R') then
    Result := TEnumHandShake_RTS_CTS
  else if UpperCase(pValor) = UpperCase('D') then
    Result := TEnumHandShake_DTR_DSR
  else
    Result := TEnumHandShake_Nenhum;
end;

class function TEnum.HandShakeToStr(const pEnum: TEnumHandShake): string;
begin
  case pEnum of
    TEnumHandShake_Nenhum: Result   := 'N'; // N - Nenhum
    TEnumHandShake_XON_XOFF: Result := 'X'; // X - XON/XOFF
    TEnumHandShake_RTS_CTS: Result  := 'R'; // R - RTS/CTS
    TEnumHandShake_DTR_DSR: Result  := 'D'; // D - DTR/DSR
  end;
end;

class function TEnum.TipoParceiro(const pEnum: TEnumTipoParceiro): string;
begin
  case pEnum of
    TEnumTipoParceiro_Fisica: Result   := '0 - Física';
    TEnumTipoParceiro_Juridica: Result := '1 - Jurídica';
    TEnumTipoParceiro_Entidade: Result := '2 - Entidade';
    TEnumTipoParceiro_Especial: Result := '3 - Especial';
    TEnumTipoParceiro_ME: Result       := '4 - M.E.';
    TEnumTipoParceiro_Filial: Result   := '5 - Filial';
  end;
end;

class function TEnum.TipoParceiroFromInt(const pValor: Integer): TEnumTipoParceiro;
begin
  if pValor = 0 then begin
    Result := TEnumTipoParceiro_Fisica;
  end else if pValor = 1 then begin
    Result := TEnumTipoParceiro_Juridica;
  end else if pValor = 2 then begin
    Result := TEnumTipoParceiro_Entidade;
  end else if pValor = 3 then begin
    Result := TEnumTipoParceiro_Especial;
  end else if pValor = 4 then begin
    Result := TEnumTipoParceiro_ME
  end else if pValor = 5 then begin
    Result := TEnumTipoParceiro_Filial
  end else begin
    Result := TEnumTipoParceiro_Fisica;
  end;
end;

class function TEnum.TipoParceiroToInt(const pEnum: TEnumTipoParceiro): Integer;
begin
  case pEnum of
    TEnumTipoParceiro_Fisica: Result   := 0; // 0 - Física
    TEnumTipoParceiro_Juridica: Result := 1; // 1 - Jurídica
    TEnumTipoParceiro_Entidade: Result := 2; // 2 - Entidade
    TEnumTipoParceiro_Especial: Result := 3; // 3 - Especial
    TEnumTipoParceiro_ME: Result       := 4; // 4 - M.E.
    TEnumTipoParceiro_Filial: Result   := 5; // 5 - Filial
    else
      Result := 0;
  end;
end;

class function TEnum.DestinoOperacao(const pEnum: TEnumIdDestinoOperacao): string;
begin
  case pEnum of
    doNaoInformado: result          := 'Não informado';
    doOperacaoInterna: result       := '1 – Operação Interna';
    doOperacaoInterestadual: result := '2 – Operação Interestadual';
    doOperacaoComExterior: result   := '3 – Operação com exterior';
  end;
end;

class function TEnum.DestinoOperacaoFromStr(const pValor: string): TEnumIdDestinoOperacao;
begin
  result := doNaoInformado;

  if pValor = '1' then
    result := doOperacaoInterna
  else if pValor = '2' then
    result := doOperacaoInterestadual
  else if pValor = '3' then
    result := doOperacaoComExterior
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumIdDestinoOperacao.', [pValor]));
end;

class function TEnum.DestinoOperacaoToStr(const pEnum: TEnumIdDestinoOperacao): string;
begin
  case pEnum of
    doNaoInformado: result          := '';
    doOperacaoInterna: result       := '1';
    doOperacaoInterestadual: result := '2';
    doOperacaoComExterior: result   := '3';
  end;
end;

class function TEnum.DetTipoParceiro(const pEnum: TEnumDetTipoParceiro): string;
begin
  case pEnum of
    dtpGovernoEst: result := 'E - Governo Estadual';
    dtpGovernoFed: result := 'F - Governo Federal';
    dtpGovernoMun: result := 'M - Governo Municipal';
    dtpOutros: result     := 'O - Outros';
    dtpNulo: result       := '';
  end;
end;

class function TEnum.DetTipoParceiroFromStr(const pValor: string): TEnumDetTipoParceiro;
begin
  if pValor = 'E' then begin
    result := dtpGovernoEst;
  end else if pValor = 'F' then begin
    result := dtpGovernoFed;
  end else if pValor = 'M' then begin
    result := dtpGovernoMun;
  end else if pValor = 'O' then begin
    result := dtpOutros;
  end else begin
    result := dtpNulo;
  end;
end;

class function TEnum.DetTipoParceiroToStr(const pEnum: TEnumDetTipoParceiro): string;
begin
  case pEnum of
    dtpGovernoEst: result := 'E'; // E - Governo Estadual
    dtpGovernoFed: result := 'F'; // F - Governo Federal
    dtpGovernoMun: result := 'M'; // M - Governo Municipal
    dtpOutros: result     := 'O'; // O - Outros
    dtpNulo: result       := '';  // Nulo
  end;
end;

class function TEnum.DistribuicaoBoleto(const pEnum: TEnumDistribuicaoBoleto): string;
begin
  case pEnum of
    TEnumDistribuicaoBoleto_NaoInformado: result       := 'Não informado';
    TEnumDistribuicaoBoleto_BancoDistribui: result     := '1 - Banco distribui';
    TEnumDistribuicaoBoleto_ClienteDistribui: result   := '2 - Cliente distribui';
    TEnumDistribuicaoBoleto_BancoEnviaPorEmail: result := '3 - Banco envia por e-mail';
  end;
end;

class function TEnum.DistribuicaoBoletoFromStr(const pValor: string): TEnumDistribuicaoBoleto;
begin
  if pValor = '' then // Não informado
    Result := TEnumDistribuicaoBoleto_NaoInformado
  else if pValor = '1' then // 1 - Banco distribui
    Result := TEnumDistribuicaoBoleto_BancoDistribui
  else if pValor = '2' then // 2 - Cliente distribui
    Result := TEnumDistribuicaoBoleto_ClienteDistribui
  else if pValor = '3' then // 3 - Banco envia por e-mail
    Result := TEnumDistribuicaoBoleto_BancoEnviaPorEmail
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumDistribuicaoBoleto.');
end;

class function TEnum.DistribuicaoBoletoToStr(const pEnum: TEnumDistribuicaoBoleto): string;
begin
  case pEnum of
    TEnumDistribuicaoBoleto_NaoInformado: result       := '';
    TEnumDistribuicaoBoleto_BancoDistribui: result     := '1';
    TEnumDistribuicaoBoleto_ClienteDistribui: result   := '2';
    TEnumDistribuicaoBoleto_BancoEnviaPorEmail: result := '3';
  end;
end;

class function TEnum.DPIImpressora(const pEnum: TEnumDPIImpressora): string;
begin
  case pEnum of
    TEnumDPIImpressora_203: Result := '203 - DPI';
    TEnumDPIImpressora_300: Result := '300 - DPI';
    TEnumDPIImpressora_600: Result := '600 - DPI';
  end;
end;

class function TEnum.DPIImpressoraFromInt(const pValor: Integer): TEnumDPIImpressora;
begin
  case pValor of
    203: Result := TEnumDPIImpressora_203;
    300: Result := TEnumDPIImpressora_300;
    600: Result := TEnumDPIImpressora_600;
    else
         Result := TEnumDPIImpressora_203;
  end;
end;

{$IFDEF DELPHIXE}


class function TEnum.DPIImpressoraGetList: TObjectList<TParLista>;
begin
  Result := TObjectList<TParLista>.Create;
  Result.Add(TParLista.Create(IntToStr(DPIImpressoraToInt(TEnumDPIImpressora_203)), DPIImpressora(TEnumDPIImpressora_203)));
  Result.Add(TParLista.Create(IntToStr(DPIImpressoraToInt(TEnumDPIImpressora_300)), DPIImpressora(TEnumDPIImpressora_300)));
  Result.Add(TParLista.Create(IntToStr(DPIImpressoraToInt(TEnumDPIImpressora_600)), DPIImpressora(TEnumDPIImpressora_600)));
end;
{$ENDIF}


class function TEnum.DPIImpressoraToInt(const pEnum: TEnumDPIImpressora): Integer;
begin
  case pEnum of
    TEnumDPIImpressora_203: Result := 203;
    TEnumDPIImpressora_300: Result := 300;
    TEnumDPIImpressora_600: Result := 600;
    else
      Result := 203;
  end;
end;

class function TEnum.ModeloImpressoraToStr(pModelo: TEnumModeloImpressora): string;
begin
  case pModelo of
    miNenhuma: result     := 'Nenhuma';
    miDaruma: result      := 'Daruma';
    miEpson: result       := 'Epson';
    miBematech: result    := 'Bematech';
    miSweda: result       := 'Sweda';
    miEscVox: result      := 'EscVox';
    miDiebold: result     := 'Diebold';
    miEpsonP2: result     := 'EpsonP2';
    miCustomPos: result   := 'CustomPos';
    miPosStar: result     := 'PosStar';
    miZJiang: result      := 'ZJiang';
    miGPrinter: result    := 'GPrinter';
    miDatecs: result      := 'Datecs';
    miEscSunmi: result    := 'Sunmi';
    miExterno: result     := 'Externo';
    else
         raise EEnumeradorInvalido.Create('Opção inválida para TEnumModeloImpressora.');
  end;
end;

class function TEnum.ModoEnvioNFSe(const pEnum: TEnumModoEnvioNFSe): string;
begin
  case pEnum of
    TEnumModoEnvioNFSe_LoteAssincrono: result  := 'Lote Assincrono';
    TEnumModoEnvioNFSe_LoteSincrono: result   := 'Lote Sincrono';
    TEnumModoEnvioNFSe_Unitario: result    := 'Unitário';
    Else result := 'Automático';
  end;
end;

class function TEnum.ModoEnvioNFSeFromStr(const pValor: string): TEnumModoEnvioNFSe;
begin
  if pValor = 'A' then
    Result := TEnumModoEnvioNFSe_LoteAssincrono
  else if pValor = 'S' then
    Result := TEnumModoEnvioNFSe_LoteSincrono
  else if pValor = 'U' then
    Result := TEnumModoEnvioNFSe_Unitario
  else
    Result := TEnumModoEnvioNFSe_Automatico;
end;

class function TEnum.ModoEnvioNFSeToStr(const pEnum: TEnumModoEnvioNFSe): string;
begin
  case pEnum of
    TEnumModoEnvioNFSe_LoteAssincrono: result  := 'A';
    TEnumModoEnvioNFSe_LoteSincrono: result   := 'S';
    TEnumModoEnvioNFSe_Unitario: result    := 'U';
    Else result := '';
  end;
end;

class function TEnum.ModeloImpressoraFromStr(pModelo: string): TEnumModeloImpressora;
begin
  if UpperCase(pModelo) = Uppercase('Nenhuma') then
    result := miNenhuma
  else if UpperCase(pModelo) = Uppercase('Daruma') then
    result := miDaruma
  else if UpperCase(pModelo) = Uppercase('Epson') then
    result := miEpson
  else if UpperCase(pModelo) = Uppercase('Bematech') then
    result := miBematech
  else if UpperCase(pModelo) = Uppercase('Sweda') then
    result := miSweda
  else if UpperCase(pModelo) = Uppercase('EscVox') then
    result := miEscVox
  else if UpperCase(pModelo) = Uppercase('Diebold') then
    result := miDiebold
  else if UpperCase(pModelo) = Uppercase('EpsonP2') then
    result := miEpsonP2
  else if UpperCase(pModelo) = Uppercase('CustomPos') then
    result := miCustomPos
  else if UpperCase(pModelo) = Uppercase('PosStar') then
    result := miPosStar
  else if UpperCase(pModelo) = Uppercase('ZJiang') then
    result := miZJiang
  else if UpperCase(pModelo) = Uppercase('GPrinter') then
    result := miGPrinter
  else if UpperCase(pModelo) = Uppercase('Datecs') then
    result := miDatecs
  else if UpperCase(pModelo) = Uppercase('Sunmi') then
    result := miEscSunmi
  else if UpperCase(pModelo) = Uppercase('Externo') then
    result := miExterno
  else
    raise EEnumeradorInvalido.Create('Modelo de impressora não tratado:' + pModelo);
end;

class function TEnum.ModeloImpressora(const pEnum: TEnumModeloImpressora): string;
begin
  case pEnum of
    miNenhuma: result     := 'Nenhuma';
    miDaruma: result      := 'Daruma';
    miEpson: result       := 'Epson';
    miBematech: result    := 'Bematech';
    miSweda: result       := 'Sweda';
    miEscVox: result      := 'EscVox';
    miDiebold: result     := 'Diebold';
    miEpsonP2: result     := 'EpsonP2';
    miCustomPos: result   := 'CustomPos';
    miPosStar: result     := 'PosStar';
    miZJiang: result      := 'ZJiang';
    miGPrinter: result    := 'GPrinter';
    miDatecs: result      := 'Datecs';
    miEscSunmi: result    := 'Sunmi';
    miExterno: result     := 'Externo';
  end;
end;

{$IFDEF DELPHIXE}


class function TEnum.ModeloImpressoraGetList: TObjectList<TParLista>;
begin
  Result := TObjectList<TParLista>.Create;
  Result.Add(TParLista.Create(ModeloImpressoraToStr(miNenhuma), ModeloImpressora(miNenhuma)));
  Result.Add(TParLista.Create(ModeloImpressoraToStr(miDaruma), ModeloImpressora(miDaruma)));
  Result.Add(TParLista.Create(ModeloImpressoraToStr(miEpson), ModeloImpressora(miEpson)));
  Result.Add(TParLista.Create(ModeloImpressoraToStr(miBematech), ModeloImpressora(miBematech)));
  Result.Add(TParLista.Create(ModeloImpressoraToStr(miSweda), ModeloImpressora(miSweda)));
end;
{$ENDIF}


class function TEnum.TipoPagamentoToStr(const pEnum: TEnumTipoPagamento): string;
begin
  case pEnum of
    tfDinheiro: Result             := '01';
    tfCheque: Result               := '02';
    tfCartaoCredito: Result        := '03';
    tfCartaoDebito: Result         := '04';
    tfCreditoLoja: Result          := '05';
    tfValeAlimentacao: Result      := '10';
    tfValeRefeicao: Result         := '11';
    tfValepresente: Result         := '12';
    tfValeCombustivel: Result      := '13';
    tfBoletoBancario: Result       := '15';
    tfDepositoBancario: Result     := '16'; // 16 - Depósito Bancário
    tfPagamentoInstantaneo: Result := '17'; // 17 - Pagamento Instantâneo (PIX)
    tfTransfBancario: Result       := '18'; // 18 - Transferência bancária, Carteira Digital
    tfProgramaFidelidade: Result   := '19'; // 19 - Programa de fidelidade, Cashback, Crédito Virtual
    tfSemPagamento: Result         := '90';
    tfOutros: Result               := '99';
  end;
end;

class function TEnum.TipoPagamentoFromStr(const pValor: string): TEnumTipoPagamento;
begin
  if pValor = '01' then
    Result := tfDinheiro
  else if pValor = '02' then
    Result := tfCheque
  else if pValor = '03' then
    Result := tfCartaoCredito
  else if pValor = '04' then
    Result := tfCartaoDebito
  else if pValor = '05' then
    Result := tfCreditoLoja
  else if pValor = '10' then
    Result := tfValeAlimentacao
  else if pValor = '11' then
    Result := tfValeRefeicao
  else if pValor = '12' then
    Result := tfValepresente
  else if pValor = '13' then
    Result := tfValeCombustivel
  else if pValor = '15' then
    Result := tfBoletoBancario
  else if pValor = '16' then
    Result := tfDepositoBancario
  else if pValor = '17' then
    Result := tfPagamentoInstantaneo
  else if pValor = '18' then
    Result := tfTransfBancario
  else if pValor = '19' then
    Result := tfProgramaFidelidade
  else if pValor = '90' then
    Result := tfSemPagamento
  else
    Result := tfOutros;
end;

class function TEnum.TipoPagamentoFromTipoMeio(const pEnum: TEnumTipoMeio): TEnumTipoPagamento;
begin
  case pEnum of
    tmQualquer: Result             := tfOutros;           // Qualquer
    tmCheque: Result               := tfCheque;           // Cheque
    tmOutros: Result               := tfOutros;           // Outros
    tmBoleto: Result               := tfBoletoBancario;   // Boleto
    tmCarteiraCarne: Result        := tfCreditoLoja;      // Carteira Carne
    tmTEFs: Result                 := tfCartaoCredito;    // TEF
    tmCartaoDebito: Result         := tfCartaoDebito;     // Cartão Débito
    tmCartaoCredito: Result        := tfCartaoCredito;    // Cartão Crédito
    tmPosDebito: Result            := tfCartaoDebito;     // POS Débito
    tmPosCredito: Result           := tfCartaoCredito;    // POS Crédito
    tmMoedaCorrente: Result        := tfDinheiro;         // Moeda Corrente
    tmMoedaEstrangeira: Result     := tfDinheiro;         // Moeda Estrangeira
    tmContaCorrente: Result        := tfCreditoLoja;      // Conta Corrente
    tmValeCompra: Result           := tfValepresente;     // Vale Compra
    tmDepositoBancario: Result     := tfDepositoBancario; // 16 - Depósito Bancário
    tmPagamentoInstantaneo: Result := tfPagamentoInstantaneo; // 17 - Pagamento Instantâneo (PIX)
    tmTransfBancario: Result       := tfTransfBancario; // 18 - Transferência bancária, Carteira Digital
    tmProgramaFidelidade: Result   := tfProgramaFidelidade; // 19 - Programa de fidelidade, Cashback, Crédito Virtual
    else
         Result := tfOutros;
  end;
end;

class function TEnum.TipoPagamentoItemOrc(const pEnum: TEnumTipoPagamentoItemOrc): string;
begin
  case pEnum of
    tpContrato: result    := 'C - Contrato';
    tpFaturamento: result := 'F - Faturamento';
    tpNulo: result        := '';
  end;
end;

class function TEnum.TipoPagamentoItemOrcFromStr(const pValor: string): TEnumTipoPagamentoItemOrc;
begin
  if pValor = 'C' then begin
    result := tpContrato;
  end else if pValor = 'F' then begin
    result := tpFaturamento;
  end else begin
    result := tpNulo;
  end;
end;

class function TEnum.TipoPagamentoItemOrcToStr(const pEnum: TEnumTipoPagamentoItemOrc): string;
begin
  case pEnum of
    tpContrato: result    := 'C'; // C - Contrato
    tpFaturamento: result := 'F'; // F - Faturamento
    tpNulo: result        := '';  // Nulo
  end;
end;

class function TEnum.OperacaoGuardaToStr(const pEnum: TEnumOperacaoGuarda): string;
begin
  case pEnum of
    ogNaoDefinido: Result  := 'N';
    ogOutros: Result       := 'O';
    ogVenda: Result        := 'V';
    ogCancelamento: Result := 'C';
    else
         Result := '';
  end;
end;

class function TEnum.OrcamentoTipoPagamento(const pEnum: TEnumOrcamentoTipoPagamento): string;
begin
  case pEnum of
    TEnumOrcamentoTipoPagamento_Boleto: Result          := 'B'; // B - Boleto
    TEnumOrcamentoTipoPagamento_ContaCorrente: Result   := 'C'; // C - Conta Corrente
    TEnumOrcamentoTipoPagamento_NaoDefinido: Result     := 'N'; // N - Nao Definido
    TEnumOrcamentoTipoPagamento_ParcelaEmAberto: Result := 'P'; // P - Parcela Em Aberto
    else
         Result := ''; // Nulo
  end;
end;

class function TEnum.OrcamentoTipoPagamentoFromStr(const pValor: string): TEnumOrcamentoTipoPagamento;
begin
  if pValor = 'B' then begin
    result := TEnumOrcamentoTipoPagamento_Boleto;
  end else if pValor = 'C' then begin
    result := TEnumOrcamentoTipoPagamento_ContaCorrente;
  end else if pValor = 'P' then begin
    result := TEnumOrcamentoTipoPagamento_ParcelaEmAberto;
  end else begin
    result := TEnumOrcamentoTipoPagamento_NaoDefinido;
  end;
end;

class function TEnum.OrcamentoTipoPagamentoToStr(const pEnum: TEnumOrcamentoTipoPagamento): string;
begin
  case pEnum of
    TEnumOrcamentoTipoPagamento_Boleto: Result          := 'Boleto'; // B - Boleto
    TEnumOrcamentoTipoPagamento_ContaCorrente: Result   := 'Conta Corrente'; // C - Conta Corrente
    TEnumOrcamentoTipoPagamento_NaoDefinido: Result     := 'Não Definido'; // N - Nao Definido
    TEnumOrcamentoTipoPagamento_ParcelaEmAberto: Result := 'Parcela Em Aberto'; // P - Parcela Em Aberto
    else
         Result := ''; // Nulo
  end;
end;

class function TEnum.OrientacaoEtiqueta(const pEnum: TEnumOrientacaoEtiqueta): string;
begin
  case pEnum of
    TEnumOrientacaoEtiqueta_Normal: Result := 'Normal'; // 100 - orNormal
    TEnumOrientacaoEtiqueta_270: Result    := '270';    // 270 - or270
    TEnumOrientacaoEtiqueta_180: Result    := '170';    // 180 - or180
    TEnumOrientacaoEtiqueta_90: Result     := '90';     // 90 - or90
    else
         Result := ''; // Nulo
  end;
end;

class function TEnum.OrientacaoEtiquetaFromInt(const pValor: Integer): TEnumOrientacaoEtiqueta;
begin
  case pValor of
    100: Result := TEnumOrientacaoEtiqueta_Normal; // 100 - orNormal
    270: Result := TEnumOrientacaoEtiqueta_270;    // 270 - or270
    180: Result := TEnumOrientacaoEtiqueta_180;    // 180 - or180
    90: Result  := TEnumOrientacaoEtiqueta_90;     // 90 - or90
    else
         Result := TEnumOrientacaoEtiqueta_Nulo;
  end;
end;

class function TEnum.OrientacaoEtiquetaToInt(const pEnum: TEnumOrientacaoEtiqueta): Integer;
begin
  case pEnum of
    TEnumOrientacaoEtiqueta_Normal: Result := 100; // 100 - orNormal
    TEnumOrientacaoEtiqueta_270: Result    := 270; // 270 - or270
    TEnumOrientacaoEtiqueta_180: Result    := 170; // 180 - or180
    TEnumOrientacaoEtiqueta_90: Result     := 90;  // 90 - or90
    else
         Result := 0; // Nulo
  end;
end;

class function TEnum.OrigemCancelamento(const pEnum: TEnumOrigemCancelamento): string;
begin
  case pEnum of
    ocCheckout: result   := '1 - Checkout';
    ocBackoffice: result := '2 - Backoffice';
    ocNulo: result       := ''; // Nulo
  end;
end;

class function TEnum.OrigemCancelamentoFromStr(const pValor: string): TEnumOrigemCancelamento;
begin
  if pValor = '1' then begin
    result := ocCheckout;
  end else if pValor = '2' then begin
    result := ocBackoffice;
  end else begin
    result := ocNulo;
  end;
end;

class function TEnum.OrigemCancelamentoToStr(const pEnum: TEnumOrigemCancelamento): string;
begin
  case pEnum of
    ocCheckout: result   := '1'; // 1 - Checkout
    ocBackoffice: result := '2'; // 2 - Backoffice
    ocNulo: result       := '';  // Nulo
  end;
end;

class function TEnum.OrigemConsultaRetaguarda(const pEnum: TEnumOrigemConsultaRetaguarda): string;
begin
  case pEnum of
    cdCheckout: result    := 'C - Checkout';
    cdDecisor: result     := 'D - Decisor';
    cdRetaguarda: result  := 'R - Retaguarda';
    cdExportacao: result  := 'E - Exportação';
    cdMarketplace: result := 'M - Marketplace';
    cdO2O: result         := 'O - O2O';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumOrigemConsultaRetaguarda.');
  end;
end;

class function TEnum.OrigemConsultaRetaguardaFromStr(const pValor: string): TEnumOrigemConsultaRetaguarda;
begin
  if pValor = 'C' then
    result := cdCheckout
  else if pValor = 'D' then
    result := cdDecisor
  else if pValor = 'R' then
    Result := cdRetaguarda
  else if pValor = 'E' then
    Result := cdExportacao
  else if pValor = 'M' then
    Result := cdMarketplace
  else if pValor = 'O' then
    Result := cdO2O
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumOrigemConsultaRetaguarda.', [pValor]));
end;

class function TEnum.OrigemConsultaRetaguardaToStr(const pEnum: TEnumOrigemConsultaRetaguarda): string;
begin
  case pEnum of
    cdCheckout: result    := 'C';
    cdDecisor: result     := 'D';
    cdRetaguarda: result  := 'R';
    cdExportacao: result  := 'E';
    cdMarketplace: result := 'M';
    cdO2O: result         := 'O';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumOrigemConsultaRetaguarda.');
  end;
end;

class function TEnum.OrigemIVO(const pEnum: TEnumSituacaoOrigemIVO): string;
begin
  case pEnum of
    TEnumSituacaoOrigemIVO_Orcamento: Result       := 'O - Orçamento';
    TEnumSituacaoOrigemIVO_PedidoReposicao: Result := 'P - Pedido de Reposição';
    TEnumSituacaoOrigemIVO_Venda: Result           := 'V - Venda';
  end;
end;

class function TEnum.OrigemIVOFromStr(const pValor: string): TEnumSituacaoOrigemIVO;
begin
  if pValor = 'O' then begin
    result := TEnumSituacaoOrigemIVO_Orcamento;
  end else if pValor = 'P' then begin
    result := TEnumSituacaoOrigemIVO_Venda;
  end else begin
    result := TEnumSituacaoOrigemIVO_PedidoReposicao;
  end;
end;

class function TEnum.OrigemIVOToStr(const pEnum: TEnumSituacaoOrigemIVO): string;
begin
  case pEnum of
    TEnumSituacaoOrigemIVO_PedidoReposicao: result := 'P'; // P - Pedido de Reposição
    TEnumSituacaoOrigemIVO_Orcamento: result       := 'O'; // I - Scripts Internos
    TEnumSituacaoOrigemIVO_Venda: result           := 'V'; // V - Venda
  end;
end;

class function TEnum.OrigemLancamento(const pEnum: TEnumOrigemLancamento): string;
begin
  case pEnum of
    olBackoffice: result := 'B - Backoffice';
    olCheckout: result   := 'C - Checkout';
    olScripts: result    := 'I - Scripts Internos';
    olNulo: result       := '';
  end;
end;

class function TEnum.OrigemLancamentoFromStr(const pValor: string): TEnumOrigemLancamento;
begin
  if pValor = 'B' then begin
    result := olBackoffice;
  end else if pValor = 'C' then begin
    result := olCheckout;
  end else if pValor = 'I' then begin
    result := olScripts;
  end else begin
    result := olNulo;
  end;
end;

class function TEnum.OrigemLancamentoToStr(const pEnum: TEnumOrigemLancamento): string;
begin
  case pEnum of
    olBackoffice: result := 'B'; // B - Backoffice
    olCheckout: result   := 'C'; // C - Checkout
    olScripts: result    := 'I'; // I - Scripts Internos
    olNulo: result       := '';  // Nulo
  end;
end;

class function TEnum.OrigemLogMiddleware(const pEnum: TEnumOrigemLogMiddleware): string;
begin
  case pEnum of
    TEnumOrigemLogMiddleware_Middleware: result          := '0 - Middleware';
    TEnumOrigemLogMiddleware_IntegracaoEME4: result      := '1 - Integração EME4';
    TEnumOrigemLogMiddleware_IntegracaoMercos: result    := '2 - Integração Mercos';
    TEnumOrigemLogMiddleware_IntegracaoN49: result       := '3 - Integração N49';
    TEnumOrigemLogMiddleware_IntegracaoConsistem: result := '4 - Integração Consistem';
    TEnumOrigemLogMiddleware_IntegracaoMagazord: result  := '5 - Integração Magazord';
    TEnumOrigemLogMiddleware_IntegracaoGimplus: result   := '6 - Integração Gimplus';
    TEnumOrigemLogMiddleware_IntegracaoFraga: result     := '7 - Integração Fraga';
	TEnumOrigemLogMiddleware_IntegracaoWebStore: result  := '8 - Integração WebStore';
    else
         result := '0 - Middleware';
  end;
end;

class function TEnum.OrigemLogMiddlewareFromInt(const pValor: Integer): TEnumOrigemLogMiddleware;
begin
  case pValor of
    0: result := TEnumOrigemLogMiddleware_Middleware;          // 0 - Middleware
    1: result := TEnumOrigemLogMiddleware_IntegracaoEME4;      // 1 - Integração EME4
    2: result := TEnumOrigemLogMiddleware_IntegracaoMercos;    // 2 - Integração Mercos
    3: result := TEnumOrigemLogMiddleware_IntegracaoN49;       // 3 - Integração N49
    4: result := TEnumOrigemLogMiddleware_IntegracaoConsistem; // 4 - Integração Consistem
    5: result := TEnumOrigemLogMiddleware_IntegracaoMagazord;  // 5 - Integração Magazord
    6: result := TEnumOrigemLogMiddleware_IntegracaoGimplus;   // 6 - Integração Gimplus
    7: result := TEnumOrigemLogMiddleware_IntegracaoFraga;     // 7 - Integração Fraga
	8: result := TEnumOrigemLogMiddleware_IntegracaoWebStore;  // 8 - Integração WebStore
    else
         result := TEnumOrigemLogMiddleware_Middleware; // 0 - Middleware
  end;
end;

class function TEnum.OrigemLogMiddlewareToInt(const pEnum: TEnumOrigemLogMiddleware): Integer;
begin
  case pEnum of
    TEnumOrigemLogMiddleware_Middleware: result          := 0; // 0 - Middleware
    TEnumOrigemLogMiddleware_IntegracaoEME4: result      := 1; // 1 - Integração EME4
    TEnumOrigemLogMiddleware_IntegracaoMercos: result    := 2; // 2 - Integração Mercos
    TEnumOrigemLogMiddleware_IntegracaoN49: result       := 3; // 3 - Integração N49
    TEnumOrigemLogMiddleware_IntegracaoConsistem: result := 4; // 4 - Integração Consistem
    TEnumOrigemLogMiddleware_IntegracaoMagazord: result  := 5; // 5 - Integração Magazord
    TEnumOrigemLogMiddleware_IntegracaoGimplus: result   := 6; // 6 - Integração Gimplus
    TEnumOrigemLogMiddleware_IntegracaoFraga: result     := 7; // 7 - Integração Fraga
	TEnumOrigemLogMiddleware_IntegracaoWebStore: result  := 8; // 8 - Integração WebStore
    else
         result := 0; // 0 - Middleware
  end;
end;

class function TEnum.SistemaOrigem(const pEnum: TEnumSistemaOrigem): string;
begin
  case pEnum of
    opApp:  Result := 'A - App';
    opSite: Result := 'S - Site';
    opHome: Result := 'H - Home';
    //else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSistemaOrigem.');
  end;
end;

class function TEnum.SistemaOrigemFromStr(const pValor: string): TEnumSistemaOrigem;
begin
  if pValor = 'A' then begin
    Result := opApp;
  end else if pValor = 'S' then begin
    Result := opSite;
  end else if pValor = 'H' then begin
    Result := opHome;
  end else begin
    //raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumSistemaOrigem.', [pValor]));
  end;
end;

class function TEnum.SistemaOrigemToStr(const pEnum: TEnumSistemaOrigem): string;
begin
  case pEnum of
    opApp:  Result := 'A';
    opSite: Result := 'S';
    opHome: Result := 'H';
    //else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSistemaOrigem.');
  end;
end;

class function TEnum.OrigemProduto(const pEnum: TEnumOrigemProduto): string;
begin
  case pEnum of
    TEnumOrigemProduto_0_Nacional: result         := '0 - Nacional';
    TEnumOrigemProduto_1_EstImpDir: result        := '1 - Estrangeira Importação Direta';
    TEnumOrigemProduto_2_EstMercInt: result       := '2 - Estrangeira Mercado Interno';
    TEnumOrigemProduto_3_NacSup40: result         := '3 - Nacional (superior 40%)';
    TEnumOrigemProduto_4_NacProcProd: result      := '4 - Nacional (Processos Produtivo)';
    TEnumOrigemProduto_5_NacInf40: result         := '5 - Nacional (inferior 40%)';
    TEnumOrigemProduto_6_EstImpDirSemSim: result  := '6 - Estrangeira I.D. s/Similar';
    TEnumOrigemProduto_7_EstMercIntSemSim: result := '7 - Estrangeira M.I. s/Similar';
    TEnumOrigemProduto_8_NacImp70: result         := '8 - Nacional, Import. > a 70%';
    else
         result := '0 - Nacional';
  end;
end;

class function TEnum.OrigemProdutoFromInt(const pValor: Integer): TEnumOrigemProduto;
begin
  if pValor = 0 then
    Result := TEnumOrigemProduto_0_Nacional
  else if pValor = 1 then
    Result := TEnumOrigemProduto_1_EstImpDir
  else if pValor = 2 then
    Result := TEnumOrigemProduto_2_EstMercInt
  else if pValor = 3 then
    Result := TEnumOrigemProduto_3_NacSup40
  else if pValor = 4 then
    Result := TEnumOrigemProduto_4_NacProcProd
  else if pValor = 5 then
    Result := TEnumOrigemProduto_5_NacInf40
  else if pValor = 6 then
    Result := TEnumOrigemProduto_6_EstImpDirSemSim
  else if pValor = 7 then
    Result := TEnumOrigemProduto_7_EstMercIntSemSim
  else if pValor = 8 then
    Result := TEnumOrigemProduto_8_NacImp70
  else
    Result := TEnumOrigemProduto_0_Nacional;
end;

class function TEnum.OrigemProdutoToInt(const pEnum: TEnumOrigemProduto): Integer;
begin
  case pEnum of
    TEnumOrigemProduto_0_Nacional: result         := 0;
    TEnumOrigemProduto_1_EstImpDir: result        := 1;
    TEnumOrigemProduto_2_EstMercInt: result       := 2;
    TEnumOrigemProduto_3_NacSup40: result         := 3;
    TEnumOrigemProduto_4_NacProcProd: result      := 4;
    TEnumOrigemProduto_5_NacInf40: result         := 5;
    TEnumOrigemProduto_6_EstImpDirSemSim: result  := 6;
    TEnumOrigemProduto_7_EstMercIntSemSim: result := 7;
    TEnumOrigemProduto_8_NacImp70: result         := 8;
    else
         result := 0;
  end;
end;

class function TEnum.OrigemRequisicaoExterna(const pEnum: TEnumOrigemRequisicaoExterna): string;
begin
  case pEnum of
    TEnumOrigemRequisicaoExterna_NaoDefinido: Result := 'Não definido';
    TEnumOrigemRequisicaoExterna_Mobile: Result      := 'M - Mobile';
    TEnumOrigemRequisicaoExterna_Internet: Result    := 'I - Internet';
    TEnumOrigemRequisicaoExterna_Outros: Result      := 'O - Outros';
  end;
end;

class function TEnum.OrigemRequisicaoExternaDesc(const pEnum: TEnumOrigemRequisicaoExterna): string;
begin
  case pEnum of
    TEnumOrigemRequisicaoExterna_NaoDefinido: Result := 'NAO DEFINIDO';
    TEnumOrigemRequisicaoExterna_Mobile: Result      := 'MOBILE';
    TEnumOrigemRequisicaoExterna_Internet: Result    := 'INTERNET';
    TEnumOrigemRequisicaoExterna_Outros: Result      := 'OUTROS';
  end;
end;

class function TEnum.OrigemRequisicaoExternaFromStr(const pValor: string): TEnumOrigemRequisicaoExterna;
begin
  if pValor = 'M' then begin
    Result := TEnumOrigemRequisicaoExterna_Mobile; // M - Mobile
  end else if pValor = 'I' then begin
    Result := TEnumOrigemRequisicaoExterna_Internet; // I - Internet
  end else if pValor = 'O' then begin
    Result := TEnumOrigemRequisicaoExterna_Outros; // O - Outros
  end else begin
    Result := TEnumOrigemRequisicaoExterna_NaoDefinido; // Não definido
  end;
end;

class function TEnum.OrigemRequisicaoExternaToStr(const pEnum: TEnumOrigemRequisicaoExterna): string;
begin
  case pEnum of
    TEnumOrigemRequisicaoExterna_NaoDefinido: Result := ''; // Não definido
    TEnumOrigemRequisicaoExterna_Mobile: Result      := 'M'; // M - Mobile
    TEnumOrigemRequisicaoExterna_Internet: Result    := 'I'; // I - Internet
    TEnumOrigemRequisicaoExterna_Outros: Result      := 'O'; // O - Outros
  end;
end;

class function TEnum.OrigemTipo(const pEnum: TEnumOrigemTipo): string;
begin
  case pEnum of
    TEnumOrigemTipoOS: result         := '1 - OS';
    TEnumOrigemTipoDAV: result        := '2 - DAV';
    TEnumOrigemTipoPreVenda: result   := '3 - Pré-Venda';
    TEnumOrigemTipoReforco: result    := '4 - Reforço';
    TEnumOrigemTipoValeCompra: result := '5 - Vale Compra';
    TEnumOrigemTipoOSLocal: result    := '6 - O.S. Local (Totali PoS)';
    TEnumOrigemTipoDAVLocal: result   := '7 - DAV Local (Totali PoS)';
    TEnumOrigemTipoCPF_CNPJ: result   := '8 - CPF ou CNPJ';
    TEnumOrigemTipoVenda: result      := '9 - Venda';
  end;
end;

class function TEnum.OrigemTipoFromInt(const pValor: Integer): TEnumOrigemTipo;
begin
  if pValor = 1 then
    result := TEnumOrigemTipoOS
  else if pValor = 2 then
    result := TEnumOrigemTipoDAV
  else if pValor = 3 then
    result := TEnumOrigemTipoPreVenda
  else if pValor = 4 then
    result := TEnumOrigemTipoReforco
  else if pValor = 5 then
    result := TEnumOrigemTipoValeCompra
  else if pValor = 6 then
    result := TEnumOrigemTipoOSLocal
  else if pValor = 7 then
    result := TEnumOrigemTipoDAVLocal
  else if pValor = 8 then
    result := TEnumOrigemTipoCPF_CNPJ
  else if pValor = 9 then
    result := TEnumOrigemTipoVenda
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + IntToStr(pValor) + '" inválido para TEnumOrigemTipo.');
end;

class function TEnum.OrigemTipoToInt(const pEnum: TEnumOrigemTipo): Integer;
begin
  case pEnum of
    TEnumOrigemTipoOS: result         := 1;
    TEnumOrigemTipoDAV: result        := 2;
    TEnumOrigemTipoPreVenda: result   := 3;
    TEnumOrigemTipoReforco: result    := 4;
    TEnumOrigemTipoValeCompra: result := 5;
    TEnumOrigemTipoOSLocal: result    := 6;
    TEnumOrigemTipoDAVLocal: result   := 7;
    TEnumOrigemTipoCPF_CNPJ: result   := 8;
    TEnumOrigemTipoVenda: result      := 9;
    else
      Result := 2;
  end;
end;

class function TEnum.ParceiroDenegado(const pEnum: TEnumParceiroDenegado): string;
begin
  case pEnum of
    TEnumParceiroDenegado_Nao: result           := '1 - Não';
    TEnumParceiroDenegado_Sim: result           := '2 - Sim';
    TEnumParceiroDenegado_PermiteVendas: result := '3 - Sim. Permitir Vendas';
  end;
end;

class function TEnum.ParceiroDenegadoFromInt(const pValor: Integer): TEnumParceiroDenegado;
begin
  case pValor of
    2: Result := TEnumParceiroDenegado_Sim;           // 2 - Sim
    3: Result := TEnumParceiroDenegado_PermiteVendas; // 3 - Sim. Permitir Vendas
    else
         Result := TEnumParceiroDenegado_Nao; // 1 - Não
  end;
end;

class function TEnum.ParceiroDenegadoToInt(const pEnum: TEnumParceiroDenegado): Integer;
begin
  case pEnum of
    TEnumParceiroDenegado_Nao: result           := 1; // 1 - Não
    TEnumParceiroDenegado_Sim: result           := 2; // 2 - Sim
    TEnumParceiroDenegado_PermiteVendas: result := 3; // 3 - Sim. Permitir Vendas
    else
      Result := 1;
  end;
end;

class function TEnum.PenAtu(const pEnum: TEnumPenAtu): string;
begin
  case pEnum of
    pnAProcessar: result  := 'T - A processar';
    pnProcessando: result := 'P - Processando';
    pnNulo: result        := '';
  end;
end;

class function TEnum.PenAtuFromStr(const pValor: string): TEnumPenAtu;
begin
  if pValor = 'T' then
    Result := pnAProcessar
  else if pValor = 'P' then
    Result := pnProcessando
  else
    Result := pnNulo;
end;

class function TEnum.PenAtuToStr(const pEnum: TEnumPenAtu): string;
begin
  case pEnum of
    pnAProcessar: result  := 'T';
    pnProcessando: result := 'P';
    pnNulo: result        := '';
  end;
end;

class function TEnum.PerfilFromStr(const pValor: string): TEnumPerfil;
begin
  if pValor = 'T' then
    Result := pPerfil_T
  else if pValor = 'V' then
    Result := pPerfil_V
  else if pValor = 'W' then
    Result := pPerfil_W
    //else if pValor = 'R' then
    //  Result := pPerfil_R
    //else if pValor = 'S' then
    //  Result := pPerfil_S
    //else if pValor = 'U' then
    //  Result := pPerfil_U
    //else if pValor = 'X' then
    //  Result := pPerfil_X
    //else if pValor = 'Y' then
    //  Result := pPerfil_Y
    //else if pValor = 'Z' then
    //  Result := pPerfil_Z
    //else if pValor = '9' then
    //  Result := pPerfil_9
  else
    Result := pPerfil_NaoDefinido;
end;

class function TEnum.PerfilToStr(const pEnum: TEnumPerfil): string;
begin
  case pEnum of
    pPerfil_NaoDefinido: Result := '';
    pPerfil_T: Result           := 'T';
    pPerfil_V: Result           := 'V';
    pPerfil_W: Result           := 'W';
    //pPerfil_R: Result := 'R';
    //pPerfil_S: Result := 'S';
    //pPerfil_U: Result := 'U';
    //pPerfil_X: Result := 'X';
    //pPerfil_Y: Result := 'Y';
    //pPerfil_Z: Result := 'Z';
    //pPerfil_9: Result := '9';
  end;
end;

class function TEnum.PeriodoEntrega(const pEnum: TEnumPeriodoEntrega): string;
begin
  case pEnum of
    peManha: result := 'M - Manhã';
    peTarde: result := 'T - Tarde';
    peNoite: result := 'N - Noite';
    peNulo: result  := '';
  end;
end;

class function TEnum.PeriodoEntregaFromStr(const pValor: string): TEnumPeriodoEntrega;
begin
  if pValor = 'M' then begin
    result := peManha;
  end else if pValor = 'T' then begin
    result := peTarde;
  end else if pValor = 'N' then begin
    result := peNoite;
  end else begin
    result := peNulo;
  end;
end;

class function TEnum.PeriodoEntregaToStr(const pEnum: TEnumPeriodoEntrega): string;
begin
  case pEnum of
    peManha: result := 'M'; // M - Manhã
    peTarde: result := 'T'; // T - Tarde
    peNoite: result := 'N'; // N - Noite
    peNulo: result  := '';  // Nulo
  end;
end;

class function TEnum.PosicaoReciboDanfe(pEnum: TEnumPosicaoReciboDanfe): string;
begin
  case pEnum of
    TEnumPosicaoReciboDanfe_Cabecalho: Result := '0 - Cabeçalho';
    TEnumPosicaoReciboDanfe_Rodape: Result    := '1 - Rodapé';
    TEnumPosicaoReciboDanfe_Esquerda: Result  := '2 - Esquerda';
  end;
end;

class function TEnum.PosicaoReciboDamdfe(pEnum: TEnumPosicaoReciboDamdfe): string;
begin
  case pEnum of
    TEnumPosicaoReciboDamdfe_Cabecalho: Result := '0 - Cabeçalho';
    TEnumPosicaoReciboDamdfe_Rodape: Result    := '1 - Rodapé';
    TEnumPosicaoReciboDamdfe_Esquerda: Result  := '2 - Esquerda';
  end;
end;

class function TEnum.PosicaoReciboDacte(pEnum: TEnumPosicaoReciboDacte): string;
begin
  case pEnum of
    TEnumPosicaoReciboDacte_Cabecalho: Result := '0 - Cabeçalho';
    TEnumPosicaoReciboDacte_Rodape: Result    := '1 - Rodapé';
    TEnumPosicaoReciboDacte_Esquerda: Result  := '2 - Esquerda';
  end;
end;

class function TEnum.PosicaoReciboDanfeFromInt(pValor: Integer): TEnumPosicaoReciboDanfe;
begin
  case pValor of
    0: Result := TEnumPosicaoReciboDanfe_Cabecalho; // 0 - Cabeçalho
    1: Result := TEnumPosicaoReciboDanfe_Rodape;    // 1 - Rodapé
    2: Result := TEnumPosicaoReciboDanfe_Esquerda;  // 2 - Esquerda
    else
         Result := TEnumPosicaoReciboDanfe_Cabecalho; // 0 - Cabeçalho
  end;
end;

{$IFDEF DELPHIXE}


class function TEnum.PosicaoReciboDanfeGetList: TObjectList<TParLista>;
begin
  Result := TObjectList<TParLista>.Create;
  Result.Add(TParLista.Create(IntToStr(PosicaoReciboDanfeToInt(TEnumPosicaoReciboDanfe_Cabecalho)), PosicaoReciboDanfe(TEnumPosicaoReciboDanfe_Cabecalho)));
  Result.Add(TParLista.Create(IntToStr(PosicaoReciboDanfeToInt(TEnumPosicaoReciboDanfe_Rodape)), PosicaoReciboDanfe(TEnumPosicaoReciboDanfe_Rodape)));
  Result.Add(TParLista.Create(IntToStr(PosicaoReciboDanfeToInt(TEnumPosicaoReciboDanfe_Esquerda)), PosicaoReciboDanfe(TEnumPosicaoReciboDanfe_Esquerda)));
end;

class function TEnum.PosicaoReciboDacteGetList: TObjectList<TParLista>;
begin
  Result := TObjectList<TParLista>.Create;
  Result.Add(TParLista.Create(IntToStr(PosicaoReciboDacteToInt(TEnumPosicaoReciboDacte_Cabecalho)), PosicaoReciboDacte(TEnumPosicaoReciboDacte_Cabecalho)));
  Result.Add(TParLista.Create(IntToStr(PosicaoReciboDacteToInt(TEnumPosicaoReciboDacte_Rodape)), PosicaoReciboDacte(TEnumPosicaoReciboDacte_Rodape)));
  Result.Add(TParLista.Create(IntToStr(PosicaoReciboDacteToInt(TEnumPosicaoReciboDacte_Esquerda)), PosicaoReciboDacte(TEnumPosicaoReciboDacte_Esquerda)));
end;

class function TEnum.PosicaoReciboDamdfeGetList: TObjectList<TParLista>;
begin
  Result := TObjectList<TParLista>.Create;
  Result.Add(TParLista.Create(IntToStr(PosicaoReciboDamdfeToInt(TEnumPosicaoReciboDamdfe_Cabecalho)), PosicaoReciboDamdfe(TEnumPosicaoReciboDamdfe_Cabecalho)));
  Result.Add(TParLista.Create(IntToStr(PosicaoReciboDamdfeToInt(TEnumPosicaoReciboDamdfe_Rodape)), PosicaoReciboDamdfe(TEnumPosicaoReciboDamdfe_Rodape)));
  Result.Add(TParLista.Create(IntToStr(PosicaoReciboDamdfeToInt(TEnumPosicaoReciboDamdfe_Esquerda)), PosicaoReciboDamdfe(TEnumPosicaoReciboDamdfe_Esquerda)));
end;

{$ENDIF}


class function TEnum.PosicaoReciboDanfeToInt(pEnum: TEnumPosicaoReciboDanfe): Integer;
begin
  case pEnum of
    TEnumPosicaoReciboDanfe_Cabecalho: Result := 0; // 0 - Cabeçalho
    TEnumPosicaoReciboDanfe_Rodape: Result    := 1; // 1 - Rodapé
    TEnumPosicaoReciboDanfe_Esquerda: Result  := 2; // 2 - Esquerda
    else
      Result := 0;
  end;
end;

class function TEnum.PosicaoReciboDacteFromInt(pValor: Integer): TEnumPosicaoReciboDacte;
begin
  case pValor of
    0: Result := TEnumPosicaoReciboDacte_Cabecalho; // 0 - Cabeçalho
    1: Result := TEnumPosicaoReciboDacte_Rodape;    // 1 - Rodapé
    2: Result := TEnumPosicaoReciboDacte_Esquerda;  // 2 - Esquerda
    else
         Result := TEnumPosicaoReciboDacte_Cabecalho; // 0 - Cabeçalho
  end;
end;

class function TEnum.PosicaoReciboDacteToInt(pEnum: TEnumPosicaoReciboDacte): Integer;
begin
  case pEnum of
    TEnumPosicaoReciboDacte_Cabecalho: Result := 0; // 0 - Cabeçalho
    TEnumPosicaoReciboDacte_Rodape: Result    := 1; // 1 - Rodapé
    TEnumPosicaoReciboDacte_Esquerda: Result  := 2; // 2 - Esquerda
    else
      Result := 0;
  end;
end;

class function TEnum.PosicaoReciboDamdfeFromInt(pValor: Integer): TEnumPosicaoReciboDamdfe;
begin
  case pValor of
    0: Result := TEnumPosicaoReciboDamdfe_Cabecalho; // 0 - Cabeçalho
    1: Result := TEnumPosicaoReciboDamdfe_Rodape;    // 1 - Rodapé
    2: Result := TEnumPosicaoReciboDamdfe_Esquerda;  // 2 - Esquerda
    else
         Result := TEnumPosicaoReciboDamdfe_Cabecalho; // 0 - Cabeçalho
  end;
end;

class function TEnum.PosicaoReciboDamdfeToInt(pEnum: TEnumPosicaoReciboDamdfe): Integer;
begin
  case pEnum of
    TEnumPosicaoReciboDamdfe_Cabecalho: Result := 0; // 0 - Cabeçalho
    TEnumPosicaoReciboDamdfe_Rodape: Result    := 1; // 1 - Rodapé
    TEnumPosicaoReciboDamdfe_Esquerda: Result  := 2; // 2 - Esquerda
    else
      Result := 0;
  end;
end;

class function TEnum.PrazoCancelamentoFromModeloUF(const pModelo: TEnumModeloDocumento; const pUF: string): Double;
const
  DFeUFPrazoNFe: array [0 .. 26] of Double = (
    // Prazo - UF - Descrição
    24,  // AC - Acre
    24,  // AL - Alagoas
    24,  // AM - Amazonas
    24,  // AP - Amapá
    24,  // BA - Bahia
    24,  // CE - Ceará
    24,  // DF - Distrito Federal
    24,  // ES - Espírito Santo
    24,  // GO - Goiás
    24,  // MA - Maranhão
    24,  // MG - Minas Gerais
    24,  // MS - Mato Grosso do Sul
    2,   // MT - Mato Grosso
    24,  // PA - Pará
    24,  // PB - Paraíba
    24,  // PE - Pernambuco
    24,  // PI - Piauí
    168, // PR - Paraná
    24,  // RJ - Rio de Janeiro
    24,  // RN - Rio Grande do Norte
    24,  // RO - Rondônia
    24,  // RR - Roraima
    168, // RS - Rio Grande do Sul
    24,  // SC - Santa Catarina
    24,  // SE - Sergipe
    24,  // SP - São Paulo
    24   // TO - Tocantins
     );

  DFeUFPrazoNFCe: array [0 .. 26] of Double = (
    // Prazo - UF - Descrição
    24, // AC - Acre
    24, // AL - Alagoas
    24, // AM - Amazonas
    24, // AP - Amapá
    24, // BA - Bahia
    24, // CE - Ceará
    24, // DF - Distrito Federal
    24, // ES - Espírito Santo
    24, // GO - Goiás
    24, // MA - Maranhão
    24, // MG - Minas Gerais
    24, // MS - Mato Grosso do Sul
    24, // MT - Mato Grosso
    24, // PA - Pará
    24, // PB - Paraíba
    24, // PE - Pernambuco
    24, // PI - Piauí
    24, // PR - Paraná
    24, // RJ - Rio de Janeiro
    24, // RN - Rio Grande do Norte
    24, // RO - Rondônia
    24, // RR - Roraima
    0.5, // RS - Rio Grande do Sul  // 30 Minutos
    24, // SC - Santa Catarina
    24, // SE - Sergipe
    24, // SP - São Paulo
    24  // TO - Tocantins
     );
var
  I: Integer;
begin
  Result := 24; // Prazo definido na Legislação Nacional tanto para NFe quanto NFCe

  for I := low(BR_UF) to high(BR_UF) do begin
    if BR_UF[I] = pUF then begin
      case pModelo of
        mdNFCe: Result := DFeUFPrazoNFCe[I];
        mdNFe: Result  := DFeUFPrazoNFe[I];
        else
             raise Exception.Create('Prazo não definido para Modelo informado.');
      end;
      Break;
    end;
  end;
end;

class function TEnum.PromocaoItemOrc(const pEnum: TEnumPromocaoItemOrc): string;
begin
  case pEnum of
    poNaoPromocional: result := 'N - Não Promocional no Plano';
    poPromocional: result    := 'E - Promocional no Plano';
    poQualquer: result       := 'Q - Qualquer Plano';
    else
         result := '';
  end;
end;

class function TEnum.PromocaoItemOrcFromStr(const pValor: string): TEnumPromocaoItemOrc;
begin
  if pValor = 'N' then begin
    Result := poNaoPromocional;
  end else if pValor = 'E' then begin
    Result := poPromocional;
  end else if pValor = 'Q' then begin
    Result := poQualquer;
  end else begin
    Result := poNulo;
  end;
end;

class function TEnum.PromocaoItemOrcToStr(const pEnum: TEnumPromocaoItemOrc): string;
begin
  case pEnum of
    poNaoPromocional: result := 'N'; // N - Não Promocional no Plano
    poPromocional: result    := 'E'; // P - Promocional no Plano
    poQualquer: result       := 'Q'; // Q - Qualquer Plano
    else
         result := '';
  end;
end;

class function TEnum.RegimeTributarioToInt(const pEnum: TEnumRegimeTributario): Integer;
begin
  case pEnum of
    rtVazio: Result             := 0;
    rtSimplesNacional: Result   := 1;
    rtSimplesNacionalEx: Result := 2;
    rtRegimeNormal: Result      := 3;
    else Result                 := 0;
  end;
end;

class function TEnum.RegimeTributarioFromStr(const pValor: string): EnumRegimeTributario;
begin
  if pValor = 'S' then
    Result := rtSimples
  else if pValor = 'E' then
    Result := rtSimplesComExcesso
  else if pValor = 'R' then
    Result := rtReal
  else
    Result := rtPresumido;
end;

class function TEnum.RegimeTributarioFromStrEME4(const pValor: string): EnumRegimeTributario;
begin
  if pValor = '10' then
    Result := rtSimplesComExcesso
  else if pValor = '7' then
    Result := rtReal
  else
    Result := rtPresumido;
end;

class function TEnum.RegimeTributarioToStr(const pEnum: EnumRegimeTributario): string;
begin
  case pEnum of
    rtSimples: Result           := 'S';
    rtSimplesComExcesso: Result := 'E';
    rtReal: Result              := 'R';
    rtPresumido: Result         := 'P';
  end;
end;

class function TEnum.RegimeTributarioToStrEME4(const pEnum: EnumRegimeTributario): string;
begin
  case pEnum of
    rtSimplesComExcesso: Result := '10';
    rtReal: Result              := '7';
    rtPresumido: Result         := '8';
  end;
end;

class function TEnum.RegimeUFFromInt(const pValor: Integer): TEnumRegimeUF;
begin
  Result := TEnumRegimeUF_Normal;

  if pValor = 0 then
    result := TEnumRegimeUF_Normal
  else if pValor = 1 then
    result := TEnumRegimeUF_Especial;
end;

class function TEnum.RegimeUFToInt(const pEnum: TEnumRegimeUF): Integer;
begin
  case pEnum of
    TEnumRegimeUF_Normal: result   := 0;
    TEnumRegimeUF_Especial: result := 1;
    else
      Result := 0;
  end;
end;

class function TEnum.RegraTipoSubstituicaoFromInt(const pValor: Integer): TEnumRegraTipoSubstituicao;
begin
  if pValor = 1 then
    result := TEnumRegraTipoSubstituicao_Tributa
  else if pValor = 2 then
    result := TEnumRegraTipoSubstituicao_DestacaST
  else if pValor = 1 then
    result := TEnumRegraTipoSubstituicao_CalculaST
  else
    Result := TEnumRegraTipoSubstituicao_Tributa;
end;

class function TEnum.RegraTipoSubstituicaoToInt(const pEnum: TEnumRegraTipoSubstituicao): Integer;
begin
  case pEnum of
    TEnumRegraTipoSubstituicao_Tributa: result   := 1;
    TEnumRegraTipoSubstituicao_DestacaST: result := 2;
    TEnumRegraTipoSubstituicao_CalculaST: result := 3;
    else
      Result := 1;
  end;
end;

class function TEnum.RelacaoParceiro(const pEnum: TEnumRelacaoParceiro): string;
begin
  case pEnum of
    rpCliente: Result               := '0 - Todo parceiro é um Cliente';
    rpFilial: Result                := '1 - Filial';
    rpClienteTransportadora: Result := 'A - Cliente Transportadora';
    rpCartoes: Result               := 'C - Cartões';
    rpFornecedor: Result            := 'F - Fornecedor';
    rpIndicadorVenda: Result        := 'I - Indicador Venda';
    rpMarca: Result                 := 'M - Marca';
    rpTecInterno: Result            := 'N - Técnico Interno';
    rpMotorista: Result             := 'O - Motorista';
    rpRepresentante: Result         := 'R - Representante';
    rpTransportador: Result         := 'T - Transportador';
    rpTecExterno: Result            := 'X - Técnico Externo';
    else
         Result := '0 - Todo parceiro é um Cliente';
  end;
end;

class function TEnum.RelacaoParceiroFromStr(const pValor: string): TEnumRelacaoParceiro;
begin
  if pValor = '0' then
    Result := rpCliente //0 - Todo parceiro é um Cliente
  else if pValor = '1' then
    Result := rpFilial //1 - Filial
  else if pValor = 'A' then
    Result := rpClienteTransportadora //A - Cliente Transportadora
  else if pValor = 'C' then
    Result := rpCartoes //C - Cartões
  else if pValor = 'F' then
    Result := rpFornecedor //F - Fornecedor
  else if pValor = 'I' then
    Result := rpIndicadorVenda //I - Indicador Venda
  else if pValor = 'M' then
    Result := rpMarca //M - Marca
  else if pValor = 'N' then
    Result := rpTecInterno //N - Técnico Interno
  else if pValor = 'O' then
    Result := rpMotorista //O - Motorista
  else if pValor = 'R' then
    Result := rpRepresentante //R - Representante
  else if pValor = 'T' then
    Result := rpTransportador //T - Transportador
  else if pValor = 'X' then
    Result := rpTecExterno //X - Técnico Externo
  else
    Result := rpCliente; //0 - Todo parceiro é um Cliente
end;

class function TEnum.RelacaoParceiroToStr(const pEnum: TEnumRelacaoParceiro): string;
begin
  case pEnum of
    rpCliente: Result               := '0'; //0 - Todo parceiro é um Cliente
    rpFilial: Result                := '1'; //1 - Filial
    rpClienteTransportadora: Result := 'A'; //A - Cliente Transportadora
    rpCartoes: Result               := 'C'; //C - Cartões
    rpFornecedor: Result            := 'F'; //F - Fornecedor
    rpIndicadorVenda: Result        := 'I'; //I - Indicador Venda
    rpMarca: Result                 := 'M'; //M - Marca
    rpTecInterno: Result            := 'N'; //N - Técnico Interno
    rpMotorista: Result             := 'O'; //O - Motorista
    rpRepresentante: Result         := 'R'; //R - Representante
    rpTransportador: Result         := 'T'; //T - Transportador
    rpTecExterno: Result            := 'X'; //X - Técnico Externo
    else
         Result := '0'; //0 - Todo parceiro é um Cliente
  end;
end;

class function TEnum.RequisitoPerfilFromStr(const pValor: string): TEnumRequisitoPerfil;
begin
  if pValor = 'E' then
    Result := rpExigido
  else if pValor = 'EUF' then
    Result := rpExigidoUF
  else if pValor = 'NE' then
    Result := rpNaoExigido
  else if pValor = 'A' then
    Result := rpAceito
  else if pValor = 'NAC' then
    Result := rpNaoAceito
  else if pValor = 'ND' then
    Result := rpNaoDefinido
  else if pValor = '?' then
    Result := rpNaoExistenteER
  else
    Result := rpNulo;
end;

class function TEnum.RequisitoPerfilToStr(const pEnum: TEnumRequisitoPerfil): string;
begin
  case pEnum of
    rpNulo: Result           := '';
    rpExigido: Result        := 'E';
    rpExigidoUF: Result      := 'EUF';
    rpNaoExigido: Result     := 'NE';
    rpAceito: Result         := 'A';
    rpNaoAceito: Result      := 'NAC';
    rpNaoDefinido: Result    := 'ND';
    rpNaoExistenteER: Result := '?';
  end;
end;

class function TEnum.ResponEmissaoTituloBancario(const pEnum: TEnumResponEmissaoTituloBancario): string;
begin
  case pEnum of
    TEnumResponEmissaoTituloBancario_BancoEmite: result   := '1 - Banco Emite';
    TEnumResponEmissaoTituloBancario_CliEmite: result     := '2 - Cliente Emite';
    TEnumResponEmissaoTituloBancario_BancoReemite: result := '3 - Banco Reemite';
    TEnumResponEmissaoTituloBancario_BancoNaoReemite: result := '4 - Banco Nao Reemite';
  end;
end;

class function TEnum.ResponEmissaoTituloBancarioFromStr(const pValor: string): TEnumResponEmissaoTituloBancario;
begin
  if pValor = '1' then // 1 - Banco Emite
    Result := TEnumResponEmissaoTituloBancario_BancoEmite
  else if pValor = '2' then // 2 - Cliente Emite
    Result := TEnumResponEmissaoTituloBancario_CliEmite
  else if pValor = '3' then // 3 - Banco Reemite
    Result := TEnumResponEmissaoTituloBancario_BancoReemite
  else if pValor = '4' then // 4 - Banco Nao Reemite
    Result := TEnumResponEmissaoTituloBancario_BancoNaoReemite
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumResponEmissaoTituloBancario.');
end;

class function TEnum.ResponEmissaoTituloBancarioToStr(const pEnum: TEnumResponEmissaoTituloBancario): string;
begin
  case pEnum of
    TEnumResponEmissaoTituloBancario_BancoEmite: result   := '1'; // 1 - Banco Emite
    TEnumResponEmissaoTituloBancario_CliEmite: result     := '2'; // 2 - Cliente Emite
    TEnumResponEmissaoTituloBancario_BancoReemite: result := '3'; // 3 - Banco Reemite
    TEnumResponEmissaoTituloBancario_BancoNaoReemite: result := '4'; // 4 - Banco Nao Reemite
  end;
end;

class function TEnum.OperacaoGuardaFromStr(const pValor: string): TEnumOperacaoGuarda;
begin
  if pValor = 'N' then
    Result := ogNaoDefinido
  else if pValor = 'O' then
    Result := ogOutros
  else if pValor = 'V' then
    Result := ogVenda
  else if pValor = 'C' then
    Result := ogCancelamento
  else
    Result := ogOutros;
end;

class function TEnum.StatusImportacaoToInt(const pEnum: TEnumStatusImportacao): Integer;
begin
  Result := Ord(pEnum);
end;


class function TEnum.StatusRecebimentoTerceiro(const pEnum: TEnumStatusRecebimentoTerceiro): string;
begin
  case pEnum of
    rtAEstornar: Result := 'S - A Estornar';
    rtAberto: Result    := 'A - Aberto';
    rtEstornado: Result := 'E - Estornado';
    rtPago: Result      := 'P - Pago';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumStatusRecebimentoTerceiro.');
  end;
end;

class function TEnum.StatusRecebimentoTerceiroFromStr(const pValor: string): TEnumStatusRecebimentoTerceiro;
begin
  if pValor = 'S' then
    Result := rtAEstornar
  else if pValor = 'A' then
    Result := rtAberto
  else if pValor = 'E' then
    Result := rtEstornado
  else if pValor = 'P' then
    Result := rtPago
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumStatusRecebimentoTerceiro.', [pValor]));
end;

class function TEnum.StatusRecebimentoTerceiroToStr(const pEnum: TEnumStatusRecebimentoTerceiro): string;
begin
  case pEnum of
    rtAEstornar: Result := 'S';
    rtAberto: Result    := 'A';
    rtEstornado: Result := 'E';
    rtPago: Result      := 'P';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumStatusRecebimentoTerceiro.');
  end;
end;

class function TEnum.StatusRequisicaoExterna(const pEnum: TEnumStatusRequisicaoExterna): string;
begin
  case pEnum of
    TEnumStatusRequisicaoExterna_NaoDefinido: Result := '';
    TEnumStatusRequisicaoExterna_Recebida: Result    := 'R - Recebida';
    TEnumStatusRequisicaoExterna_Atendida: Result    := 'A - Atendida';
    TEnumStatusRequisicaoExterna_Denegada: Result    := 'D - Denegada';
  end;
end;

class function TEnum.StatusRequisicaoExternaFromStr(const pValor: string): TEnumStatusRequisicaoExterna;
begin
  if pValor = '' then
    Result := TEnumStatusRequisicaoExterna_NaoDefinido
  else if pValor = 'R' then
    Result := TEnumStatusRequisicaoExterna_Recebida
  else if pValor = 'A' then
    Result := TEnumStatusRequisicaoExterna_Atendida
  else if pValor = 'D' then
    Result := TEnumStatusRequisicaoExterna_Denegada
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumStatusRequisicaoExterna.', [pValor]));
end;

class function TEnum.StatusRequisicaoExternaToStr(const pEnum: TEnumStatusRequisicaoExterna): string;
begin
  case pEnum of
    TEnumStatusRequisicaoExterna_NaoDefinido: Result := '';
    TEnumStatusRequisicaoExterna_Recebida: Result    := 'R';
    TEnumStatusRequisicaoExterna_Atendida: Result    := 'A';
    TEnumStatusRequisicaoExterna_Denegada: Result    := 'D';
  end;
end;

class function TEnum.StatusReservaFidelidade(const pEnum: TEnumStatusReservaFidelidade): String;
begin
  case pEnum of
    rfCancelamentoEmAndamento: Result := 'Cancelamento da Reserva em andamento.';
    rfCancelamentoRealizado:   Result := 'Reserva cancelada com sucesso!';
    rfConfirmacaoEmAndamento:  Result := 'Confirmação da Reserva em andamento.';
    rfConfirmacaoRealizado:    Result := 'Reserva confirmada com sucesso!';
    rfDevolucaoEmAndamento:    Result := 'Devolução da venda em andamento.';
    rfDevolucaoRealizado:      Result := 'Devolução da venda confirmada com sucesso!';
    rfReservaEmAndamento:      Result := 'Reserva de saldo em andamento.';
    rfReservaRealizada:        Result := 'Reserva de saldo realizada com sucesso.';
  end;
end;

class function TEnum.StatusReservaFidelidadeFromStr(const pValor: String): TEnumStatusReservaFidelidade;
begin
  if pValor = 'CA' then
    Result := rfCancelamentoEmAndamento
  else if pValor = 'CR' then
    Result := rfCancelamentoRealizado
  else if pValor = 'AA' then
    Result := rfConfirmacaoEmAndamento
  else if pValor = 'AR' then
    Result := rfConfirmacaoRealizado
  else if pValor = 'DA' then
    Result := rfDevolucaoEmAndamento
  else if pValor = 'DR' then
    Result := rfDevolucaoRealizado
  else if pValor = 'RA' then
    Result := rfReservaEmAndamento
  else if pValor = 'RR' then
    Result := rfReservaRealizada
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumStatusReservaFidelidade.', [pValor]));
end;

class function TEnum.StatusReservaFidelidadeToStr(const pEnum: TEnumStatusReservaFidelidade): String;
begin
  case pEnum of
    rfCancelamentoEmAndamento: Result := 'CA';
    rfCancelamentoRealizado:   Result := 'CR';
    rfConfirmacaoEmAndamento:  Result := 'AA';
    rfConfirmacaoRealizado:    Result := 'AR';
    rfDevolucaoEmAndamento:    Result := 'DA';
    rfDevolucaoRealizado:      Result := 'DR';
    rfReservaEmAndamento:      Result := 'RA';
    rfReservaRealizada:        Result := 'RR';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumStatusReservaFidelidade.');
  end;
end;

class function TEnum.StatusVericacaoCargaWebStore(const pEnum: TEnumStatusVericacaoCargaWebStore): string;
begin
  case pEnum of
    TEnumStatusVericacaoCargaWebStore_AguardandoImportacao: Result := '1';
    TEnumStatusVericacaoCargaWebStore_ImportacaoEmAdamento: Result := '2';
    TEnumStatusVericacaoCargaWebStore_ImportacaoConcluida:  Result := '3';
    TEnumStatusVericacaoCargaWebStore_ImportacaoCancelada:  Result := '4';
    TEnumStatusVericacaoCargaWebStore_ErroImportacao:       Result := '99';
    else
    Result := 'NaoDefinido';
  end;
end;

class function TEnum.StatusVericacaoCargaWebStoreFromStr(const pValor: string): TEnumStatusVericacaoCargaWebStore;
begin
  if (pValor = '1') then
    Result := TEnumStatusVericacaoCargaWebStore_AguardandoImportacao
  else if (pValor = '2') then
    Result := TEnumStatusVericacaoCargaWebStore_ImportacaoEmAdamento
  else if (pValor = '3') then
    Result := TEnumStatusVericacaoCargaWebStore_ImportacaoConcluida
  else if (pValor = '4') then
    Result := TEnumStatusVericacaoCargaWebStore_ImportacaoCancelada
  else if (pValor = '99') then
    Result := TEnumStatusVericacaoCargaWebStore_ErroImportacao
  else
    Result := TEnumStatusVericacaoCargaWebStore_AguardandoImportacao;
end;


class function TEnum.StatusImportacaoFromInt(const pValor: Integer): TEnumStatusImportacao;
begin
  if pValor = Ord(siImportar) then
    Result := siImportar
  else if pValor = Ord(siOk) then
    Result := siOk
  else if pValor = Ord(siErro) then
    Result := siErro
  else
    raise EEnumeradorInvalido.Create('Opção inválida para TEnumStatusImportacao.');
end;

class function TEnum.SituacaoGuarda(const pEnum: TEnumSituacaoGuarda): string;
begin
  case pEnum of
    sgNaoProcessado: Result                     := 'N - Não Processado';
    sgAEnviar: Result                           := '0 - A Enviar';
    sgEnviado: Result                           := '1 - Enviado';
    sgEnviadoContingencia: Result               := '2 - Enviado em Contingência';
    sgAguardandoVerificacao: Result             := '9 - Nota Fiscal Aguardando Verificação de Status';
    sgSefazInoperante: Result                   := 'I - Inoperante';
    sgErroValidacao: Result                     := 'V - Erro de Validação';
    sgErroEnvio: Result                         := 'E - Erro de Envio';
    sgCancelada: Result                         := 'C - Cancelado';
    sgDenegado: Result                          := 'D - Denegado';
    sgInutilizada: Result                       := 'Z - Numeração Inutilizada';
    sgInutilizacaoRejeitada: Result             := 'Y - Inutilização Rejeitada';
    sgCancelamentoRejeitado: Result             := 'X - Cancelamento Rejeitado';
    sgResumoDFe: Result                         := 'R - Resumo do DF-e';
    sgAguardandoDownloadDFe: Result             := 'M - DF-e Aguardando Download XML';
    sgEncerrado: Result                         := 'F - MDF-e encerrado';
    sgProcessamentoManifestacaoPendente: Result := 'P - Manifesto aguardando o processamento no SEFAZ';
    else
         Result := '';
  end;
end;

class function TEnum.SituacaoGuardaFromStr(const pValor: string): TEnumSituacaoGuarda;
begin
  if pValor = 'N' then
    Result := sgNaoProcessado
  else if pValor = '0' then
    Result := sgAEnviar
  else if pValor = '1' then
    Result := sgEnviado
  else if pValor = '2' then
    Result := sgEnviadoContingencia
  else if pValor = '9' then
    Result := sgAguardandoVerificacao
  else if pValor = 'I' then
    Result := sgSefazInoperante
  else if pValor = 'V' then
    Result := sgErroValidacao
  else if pValor = 'E' then
    Result := sgErroEnvio
  else if pValor = 'D' then
    Result := sgDenegado
  else if pValor = 'C' then
    Result := sgCancelada
  else if pValor = 'Z' then
    Result := sgInutilizada
  else if pValor = 'Y' then
    Result := sgInutilizacaoRejeitada
  else if pValor = 'X' then
    Result := sgCancelamentoRejeitado
  else if pValor = 'R' then
    Result := sgResumoDFe
  else if pValor = 'M' then
    Result := sgAguardandoDownloadDFe
  else if pValor = 'F' then
    Result := sgEncerrado
  else if pValor = 'P' then
    Result := sgProcessamentoManifestacaoPendente
  else
    Result := sgNulo;
end;

class function TEnum.SituacaoGuardaToStr(const pEnum: TEnumSituacaoGuarda): string;
begin
  case pEnum of
    sgNaoProcessado: Result                     := 'N';
    sgAEnviar: Result                           := '0';
    sgEnviado: Result                           := '1';
    sgEnviadoContingencia: Result               := '2';
    sgAguardandoVerificacao: Result             := '9';
    sgSefazInoperante: Result                   := 'I';
    sgErroValidacao: Result                     := 'V';
    sgErroEnvio: Result                         := 'E';
    sgDenegado: Result                          := 'D';
    sgCancelada: Result                         := 'C';
    sgInutilizada: Result                       := 'Z';
    sgInutilizacaoRejeitada: Result             := 'Y';
    sgCancelamentoRejeitado: Result             := 'X';
    sgResumoDFe: Result                         := 'R';
    sgAguardandoDownloadDFe: Result             := 'M';
    sgEncerrado: Result                         := 'F';
    sgProcessamentoManifestacaoPendente: Result := 'P';
    else
         Result := '';
  end;
end;

class function TEnum.SitTributISSQN(const pEnum: TEnumSitTributISSQN): string;
begin
  case pEnum of
    TEnumSitTributISSQN_Isenta: result     := 'I - Isenta';
    TEnumSitTributISSQN_Normal: result     := 'N - Normal';
    TEnumSitTributISSQN_Retida: result     := 'R - Retida';
    TEnumSitTributISSQN_Substituta: result := 'S - Substituta';
    TEnumSitTributISSQN_Nula: result       := '';
  end;
end;

class function TEnum.SitTributISSQNFromStr(const pValor: string): TEnumSitTributISSQN;
begin
  if pValor = 'I' then
    Result := TEnumSitTributISSQN_Isenta
  else if pValor = 'N' then
    Result := TEnumSitTributISSQN_Normal
  else if pValor = 'R' then
    Result := TEnumSitTributISSQN_Retida
  else if pValor = 'S' then
    Result := TEnumSitTributISSQN_Substituta
  else
    Result := TEnumSitTributISSQN_Nula;
end;

class function TEnum.SitTributISSQNFromStr_EME4(const pValor: string): TEnumSitTributISSQN;
begin
  if pValor = '2' then
    Result := TEnumSitTributISSQN_Normal
  else if pValor = '1' then
    Result := TEnumSitTributISSQN_Retida
  else
    Result := TEnumSitTributISSQN_Nula;
end;

class function TEnum.SitTributISSQNToStr(const pEnum: TEnumSitTributISSQN): string;
begin
  Result := '';

  case pEnum of
    TEnumSitTributISSQN_Isenta: result     := 'I';
    TEnumSitTributISSQN_Normal: result     := 'N';
    TEnumSitTributISSQN_Retida: result     := 'R';
    TEnumSitTributISSQN_Substituta: result := 'S';
    TEnumSitTributISSQN_Nula: result       := '';
  end;
end;

class function TEnum.ResponsavelRetencao(const pEnum: TEnumResponsavelRetencao): string;
begin
  case pEnum of
    TEnumResponsavelRetencao_Tomador:   result   := '1 - Tomador';
    TEnumResponsavelRetencao_Prestador: result   := '2 - Prestador';
    TEnumResponsavelRetencao_Nenhum:    result   := 'Nenhum';
  end;
end;

class function TEnum.ResponsavelRetencaoFromStr_EME4(const pValor: string): TEnumResponsavelRetencao;
begin
  if pValor = '1' then
    Result := TEnumResponsavelRetencao_Tomador
  else if pValor = '2' then
    Result := TEnumResponsavelRetencao_Prestador
  else
    Result := TEnumResponsavelRetencao_Nenhum;
end;

class function TEnum.ResponsavelRetencaoToStr(const pEnum: TEnumResponsavelRetencao): string;
begin
  Result := '';

  case pEnum of
    TEnumResponsavelRetencao_Tomador:   result     := '1';
    TEnumResponsavelRetencao_Prestador: result     := '2';
    TEnumResponsavelRetencao_Nenhum:    result     := '';
  end;
end;

class function TEnum.SituacaoItem(const pEnum: TEnumSituacaoItem): string;
begin
  case pEnum of
    tfNormal: Result    := 'Normal';
    tfCancelado: Result := 'Cancelado';
  end;
end;

class function TEnum.SituacaoItemCotacao(pTipo: string): TEnumSituacaoItemCotacao;
begin
  if pTipo = 'A' then
    Result := TEnumSituacaoItemCotacao_Aberta // A - Aberto
  else if pTipo = 'C' then
    Result := TEnumSituacaoItemCotacao_Cancelada // C - Cancelado
  else if pTipo = 'F' then
    Result := TEnumSituacaoItemCotacao_Finalizada // F - Finalizado
  else
    raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSituacaoItemCotacao.');
end;

class function TEnum.SituacaoItemCotacaoToStr(pEnum: TEnumSituacaoItemCotacao): string;
begin
  case pEnum of
    TEnumSituacaoItemCotacao_Aberta: result     := 'A'; // A - Aberto
    TEnumSituacaoItemCotacao_Cancelada: result  := 'C'; // C - Cancelado
    TEnumSituacaoItemCotacao_Finalizada: result := 'F'; // F - Finalizado
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSituacaoItemCotacao.');
  end;
end;

class function TEnum.SituacaoItemFornecedor(pTipo: string): TEnumSituacaoItemFornecedor;
begin
  if pTipo = 'A' then
    Result := TEnumSituacaoItemFornecedor_Aberta // A - Aberto
  else if pTipo = 'C' then
    Result := TEnumSituacaoItemFornecedor_Cancelada // C - Cancelado
  else if pTipo = 'R' then
    Result := TEnumSituacaoItemFornecedor_Recebida // R - Recebido
  else
    raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSituacaoItemFornecedor.');
end;

class function TEnum.SituacaoItemFornecedorToStr(pEnum: TEnumSituacaoItemFornecedor): string;
begin
  case pEnum of
    TEnumSituacaoItemFornecedor_Aberta: result    := 'A'; // A - Aberto
    TEnumSituacaoItemFornecedor_Cancelada: result := 'C'; // C - Cancelado
    TEnumSituacaoItemFornecedor_Recebida: result  := 'R'; // R - Recebido
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSituacaoItemFornecedor.');
  end;
end;

class function TEnum.SituacaoItemFornecedorVencedor(pTipo: string): TEnumSituacaoItemFornecedorVencedor;
begin
  if pTipo = 'T' then
    Result := TEnumSituacaoItemFornecedorVencedor_True // T - True
  else if pTipo = 'F' then
    Result := TEnumSituacaoItemFornecedorVencedor_False // F - False
  else
    raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSituacaoItemFornecedorVencedor.');
end;

class function TEnum.SituacaoItemFornecedorVencedorToStr(pEnum: TEnumSituacaoItemFornecedorVencedor): string;
begin
  case pEnum of
    TEnumSituacaoItemFornecedorVencedor_True: result  := 'T'; // T - True
    TEnumSituacaoItemFornecedorVencedor_False: result := 'F'; // F - False
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSituacaoItemFornecedorVencedor.');
  end;
end;

class function TEnum.SituacaoItemFromStr(const pValor: string): TEnumSituacaoItem;
begin
  if pValor = 'N' then begin
    Result := tfNormal;
  end else begin
    Result := tfCancelado;
  end;
end;

class function TEnum.SituacaoItemTEF(const pEnum: TEnumSituacaoItemTEF): string;
begin
  case pEnum of
    siAberto: result    := 'A - Aberto';
    siPago: result      := 'P - Pago';
    siCancelado: result := 'C - Cancelado';
  end;
end;

class function TEnum.SituacaoItemTEFFromStr(const pValor: string): TEnumSituacaoItemTEF;
begin
  if pValor = 'A' then
    Result := siAberto
  else if pValor = 'P' then
    Result := siPago
  else if pValor = 'C' then
    Result := siCancelado
  else
    raise EEnumeradorInvalido.Create('Situação do item de TEF inválida: ' + pValor);
end;

class function TEnum.SituacaoItemTEFToStr(const pEnum: TEnumSituacaoItemTEF): string;
begin
  case pEnum of
    siAberto: result    := 'A'; // A - Aberto
    siPago: result      := 'P'; // P - Pago
    siCancelado: result := 'C'; // C - Cancelado
  end;
end;

class function TEnum.SituacaoItemToStr(const pEnum: TEnumSituacaoItem): string;
begin
  case pEnum of
    tfNormal: result    := 'N';
    tfCancelado: result := 'C';
  end;
end;

class function TEnum.SituacaoRecebimento(const pEnum: TEnumSituacaoRecebimento): string;
begin
  case pEnum of
    paAberto: Result    := 'A - Aberto';
    paCancelado: Result := 'C - Cancelado';
    paEstornado: Result := 'X - Estornado';
    paPago: Result      := 'P - Pago';
    else
         Result := '';
  end;
end;

class function TEnum.SituacaoRecebimentoFromStr(const pValor: string): TEnumSituacaoRecebimento;
begin
  if pValor = 'A' then
    Result := paAberto
  else if pValor = 'C' then
    Result := paCancelado
  else if pValor = 'X' then
    Result := paEstornado
  else if pValor = 'P' then
    Result := paPago
  else
    raise EEnumeradorInvalido.Create('Situacao de recebimento desconhecida.');
end;

class function TEnum.SituacaoRecebimentoToStr(const pEnum: TEnumSituacaoRecebimento): string;
begin
  case pEnum of
    paAberto: Result    := 'A';
    paCancelado: Result := 'C';
    paEstornado: Result := 'X';
    paPago: Result      := 'P';
    else
         Result := '';
  end;
end;

class function TEnum.SituacaoItemOrcamento(const pEnum: TEnumSituacaoItemOrc): string;
begin
  case pEnum of
    soCancelado: result   := 'C - Cancelado';
    soConcluido: result   := 'O - Concluído';
    soEmAberto: result    := 'A - Em aberto';
    soEmAndamento: result := 'T - Em andamento';
    soVendido: result     := 'E - Faturado/Vendido';
    soReservado: result   := 'R - Reservado';
    else
         result := '';
  end;
end;

class function TEnum.SituacaoItemOrcamentoFromStr(const pValor: string): TEnumSituacaoItemOrc;
begin
  if pValor = 'C' then begin
    Result := soCancelado;
  end else if pValor = 'O' then begin
    Result := soConcluido;
  end else if pValor = 'A' then begin
    Result := soEmAberto;
  end else if pValor = 'T' then begin
    Result := soEmAndamento;
  end else if pValor = 'E' then begin
    Result := soVendido;
  end else if pValor = 'R' then begin
    Result := soReservado;
  end
  else
    Result := soEmAberto;
end;

class function TEnum.SituacaoItemOrcamentoToStr(const pEnum: TEnumSituacaoItemOrc): string;
begin
  case pEnum of
    soCancelado: result   := 'C'; //C - Cancelado
    soConcluido: result   := 'O'; //O - Concluído
    soEmAberto: result    := 'A'; //A - Em aberto
    soEmAndamento: result := 'T'; //T - Em andamento
    soVendido: result     := 'E'; //E - Faturado/Vendido
    soReservado: result   := 'R'; //R - Reservado
    else
         result := '';
  end;
end;

class function TEnum.SituacaoSeparacao(const pEnum: TEnumSituacaoSeparacao): string;
begin
  case pEnum of
    ssAberto: Result      := 'A - Aberto';
    ssCancelado: Result   := 'C - Cancelado';
    ssDevolver: Result    := 'D - Devolver';
    ssFalta: Result       := 'F - Em Falta';
    ssEncomendado: Result := 'O - Encomendado';
    ssEntregue: Result    := 'E - Entregue';
    ssNaoSeparar: Result  := 'N - Não Separar';
    ssSeparado: Result    := 'P - Separado';
  end;
end;

class function TEnum.SituacaoSeparacaoFromStr(const pValor: string): TEnumSituacaoSeparacao;
begin
  if pValor = 'A' then //A - Aberto
    Result := ssAberto
  else if pValor = 'C' then //C - Cancelado
    Result := ssCancelado
  else if pValor = 'D' then //D - Devolver
    Result := ssDevolver
  else if pValor = 'F' then //F - Em Falta
    Result := ssFalta
  else if pValor = 'O' then //O - Encomendado
    Result := ssEncomendado
  else if pValor = 'E' then //E - Entregue
    Result := ssEntregue
  else if pValor = 'N' then //N - Não Separar
    Result := ssNaoSeparar
  else if pValor = 'P' then //P - Separado
    Result := ssSeparado
  else
    Result := ssAberto;
end;

class function TEnum.SituacaoSeparacaoOrc(const pEnum: TEnumSituacaoSeparacaoOrc): string;
begin
  case pEnum of
    ssoAberto: result     := 'A - Aberto';
    ssoProcessado: result := 'P - Processado';
    ssNulo: result        := '';
  end;
end;

class function TEnum.SituacaoSeparacaoOrcFromStr(const pValor: string): TEnumSituacaoSeparacaoOrc;
begin
  if pValor = 'A' then begin
    result := ssoAberto;
  end else if pValor = 'P' then begin
    result := ssoProcessado;
  end else begin
    result := ssNulo;
  end;
end;

class function TEnum.SituacaoSeparacaoOrcToStr(const pEnum: TEnumSituacaoSeparacaoOrc): string;
begin
  case pEnum of
    ssoAberto: result     := 'A'; // A - Aberto
    ssoProcessado: result := 'P'; // P - Processado
    ssNulo: result        := '';  // Nulo
  end;
end;

class function TEnum.SituacaoSeparacaoToStr(const pEnum: TEnumSituacaoSeparacao): string;
begin
  case pEnum of
    ssAberto: Result      := 'A'; //A - Aberto
    ssCancelado: Result   := 'C'; //C - Cancelado
    ssDevolver: Result    := 'D'; //D - Devolver
    ssFalta: Result       := 'F'; //F - Em Falta
    ssEncomendado: Result := 'O'; //O - Encomendado
    ssEntregue: Result    := 'E'; //E - Entregue
    ssNaoSeparar: Result  := 'N'; //N - Não Separar
    ssSeparado: Result    := 'P'; //P - Separado
  end;
end;

class function TEnum.SituacaoServicoAdicional(const pEnum: TEnumSituacaoServicoAdicional): string;
begin
  case pEnum of
    saAberto: Result    := 'A - Aberto';
    saCancelado: Result := 'C - Cancelado';
    saDevolvido: Result := 'D - Devolvido';
    saVendido: Result   := 'F - Vendido';
  end;
end;

class function TEnum.SituacaoServicoAdicionalFromStr(const pValor: string): TEnumSituacaoServicoAdicional;
begin
  if pValor = 'A' then
    Result := saAberto
  else if pValor = 'C' then
    Result := saCancelado
  else if pValor = 'D' then
    Result := saDevolvido
  else if pValor = 'F' then
    Result := saVendido
  else
    Result := saAberto;
end;

class function TEnum.SituacaoServicoAdicionalToStr(const pEnum: TEnumSituacaoServicoAdicional): string;
begin
  case pEnum of
    saAberto: Result    := 'A';
    saCancelado: Result := 'C';
    saDevolvido: Result := 'D';
    saVendido: Result   := 'F';
  end;
end;

class function TEnum.SituacaoTEF(const pEnum: TEnumSituacaoTEF): string;
begin
  case pEnum of
    stCancelado: result     := 'C - Cancelado';
    stSucesso: result       := 'S - Sucesso';
    stImpressaoOk: result   := 'M - Impressão Ok';
    stErroImpressao: result := 'E - Erro na Impressão';
  end;
end;

class function TEnum.SituacaoTEFFromStr(const pValor: string): TEnumSituacaoTEF;
begin
  if pValor = 'C' then
    result := stCancelado
  else if pValor = 'S' then
    result := stSucesso
  else if pValor = 'M' then
    result := stImpressaoOk
  else if pValor = 'E' then
    result := stErroImpressao
  else
    result := stSucesso;
end;

class function TEnum.SituacaoTEFToStr(const pEnum: TEnumSituacaoTEF): string;
begin
  case pEnum of
    stCancelado: result     := 'C'; // C - Cancelado
    stSucesso: result       := 'S'; // S - Sucesso
    stImpressaoOk: result   := 'M'; // M - Impressão Ok
    stErroImpressao: result := 'E'; // E - Erro na Impressão
  end;
end;

class function TEnum.SituacaoTransitoImportacao(const pEnum: TEnumSituacaoTransitoImportacao): string;
begin
  case pEnum of
    tiImportacaoEmTransito: Result   := '1 - Importação em trânsito';
    tiImportacaoRecebida: Result     := '2 - Importação Recebida';
    tiTransitoImportacaoNulo: Result := '';
  end;
end;

class function TEnum.SituacaoTransitoImportacaoFromStr(const pValor: string): TEnumSituacaoTransitoImportacao;
begin
  if pValor = '1' then //1 - Importação em trânsito
    Result := tiImportacaoEmTransito
  else if pValor = '2' then //2 - Importação Recebida
    Result := tiImportacaoRecebida
  else //Nulo
    Result := tiTransitoImportacaoNulo;
end;

class function TEnum.SituacaoTransitoImportacaoToStr(const pEnum: TEnumSituacaoTransitoImportacao): string;
begin
  case pEnum of
    tiImportacaoEmTransito: Result   := '1'; //1 - Importação em trânsito
    tiImportacaoRecebida: Result     := '2'; //2 - Importação Recebida
    tiTransitoImportacaoNulo: Result := '';  //Nulo
  end;
end;

class function TEnum.SituacaoPedidoDeCompra(const pEnum: TEnumSituacaoPedidoDeCompra): string;
begin
  case pEnum of
    TEnumSituacaoPedidoDeCompra_Aberto: Result    := 'A - Aberto';
    TEnumSituacaoPedidoDeCompra_Cancelado: Result := 'C - Cancelado';
    TEnumSituacaoPedidoDeCompra_Entregue: Result  := 'E - Entregue';
    TEnumSituacaoPedidoDeCompra_Reprovado: Result := '0 - Reprovado';
    TEnumSituacaoPedidoDeCompra_Aprovado: Result  := '2 - Aprovado';
  end;
end;

class function TEnum.SituacaoPedidoDeCompraFromStr(const pValor: string): TEnumSituacaoPedidoDeCompra;
begin
  if pValor = 'A' then
    Result := TEnumSituacaoPedidoDeCompra_Aberto
  else if pValor = 'C' then
    Result := TEnumSituacaoPedidoDeCompra_Cancelado
  else if pValor = 'E' then
    Result := TEnumSituacaoPedidoDeCompra_Entregue
  else if pValor = '0' then
    Result := TEnumSituacaoPedidoDeCompra_Reprovado
  else if pValor = '2' then
    Result := TEnumSituacaoPedidoDeCompra_Aprovado
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumSituacaoPedidoDeCompra.', [pValor]));
end;

class function TEnum.SituacaoPedidoDeCompraItem(const pEnum: TEnumSituacaoPedidoDeCompraItem): string;
begin
  case pEnum of
    TEnumSituacaoPedidoDeCompraItem_Aberto: Result    := 'A - Aberto';
    TEnumSituacaoPedidoDeCompraItem_Cancelado: Result := 'C - Cancelado';
    TEnumSituacaoPedidoDeCompraItem_Entregue: Result  := 'E - Entregue';
  end;
end;

class function TEnum.SituacaoPedidoDeCompraItemFromStr(const pValor: string): TEnumSituacaoPedidoDeCompraItem;
begin
  if pValor = 'A' then
    Result := TEnumSituacaoPedidoDeCompraItem_Aberto
  else if pValor = 'C' then
    Result := TEnumSituacaoPedidoDeCompraItem_Cancelado
  else if pValor = 'E' then
    Result := TEnumSituacaoPedidoDeCompraItem_Entregue
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumSituacaoPedidoDeCompraItem.', [pValor]));
end;

class function TEnum.SituacaoPedidoDeCompraItemToStr(const pEnum: TEnumSituacaoPedidoDeCompraItem): string;
begin
  case pEnum of
    TEnumSituacaoPedidoDeCompraItem_Aberto: Result    := 'A'; // A - Aberto
    TEnumSituacaoPedidoDeCompraItem_Cancelado: Result := 'C'; // C - Cancelado
    TEnumSituacaoPedidoDeCompraItem_Entregue: Result  := 'E'; // E - Entregue
  end;
end;

class function TEnum.SituacaoPedidoDeCompraToStr(const pEnum: TEnumSituacaoPedidoDeCompra): string;
begin
  case pEnum of
    TEnumSituacaoPedidoDeCompra_Aberto: Result    := 'A'; // A - Aberto
    TEnumSituacaoPedidoDeCompra_Cancelado: Result := 'C'; // C - Cancelado
    TEnumSituacaoPedidoDeCompra_Entregue: Result  := 'E'; // E - Entregue
    TEnumSituacaoPedidoDeCompra_Reprovado: Result := '0'; // 0 - Reprovado
    TEnumSituacaoPedidoDeCompra_Aprovado: Result  := '2'; // 2 - Aprovado
  end;
end;

class function TEnum.SituacaoPedidoMagazord(const pEnum: TEnumSituacaoPedidoMagazord): Integer;
begin
  case pEnum of
    TEnumSituacaoPedidoMagazord_NotaFiscalEmitida: Result         := 6;
    TEnumSituacaoPedidoMagazord_Transporte: Result                := 7;
    TEnumSituacaoPedidoMagazord_Entregue: Result                  := 8;
    TEnumSituacaoPedidoMagazord_DevolvidoEstoqueDep1: Result      := 20;
    TEnumSituacaoPedidoMagazord_DevolvidoEstoqueDepOutros: Result := 21;
    TEnumSituacaoPedidoMagazord_NotaFiscalDenegada: Result        := 28;
  end;
end;

class function TEnum.SituacaoPedidoMagazordFromStr(const pValor: string): TEnumSituacaoPedidoMagazord;
begin
 if (pValor = '6') then
   Result := TEnumSituacaoPedidoMagazord_NotaFiscalEmitida
 else if (pValor = '7') then
   Result := TEnumSituacaoPedidoMagazord_Transporte
 else if (pValor = '8') then
   Result := TEnumSituacaoPedidoMagazord_Entregue
 else if (pValor = '20') then
   Result := TEnumSituacaoPedidoMagazord_DevolvidoEstoqueDep1
 else if (pValor = '21') then
   Result := TEnumSituacaoPedidoMagazord_DevolvidoEstoqueDepOutros
 else if (pValor = '28') then
   Result := TEnumSituacaoPedidoMagazord_NotaFiscalDenegada;
end;

class function TEnum.SituacaoPedidoMagazordToStr(const pEnum: TEnumSituacaoPedidoMagazord): string;
begin
  case pEnum of
    TEnumSituacaoPedidoMagazord_NotaFiscalEmitida: Result         := '6';
    TEnumSituacaoPedidoMagazord_Transporte: Result                := '7';
    TEnumSituacaoPedidoMagazord_Entregue: Result                  := '8';
    TEnumSituacaoPedidoMagazord_DevolvidoEstoqueDep1: Result      := '20';
    TEnumSituacaoPedidoMagazord_DevolvidoEstoqueDepOutros: Result := '21';
    TEnumSituacaoPedidoMagazord_NotaFiscalDenegada: Result        := '28';
  end;
end;

class function TEnum.SituacaoPedidoMercos(const pEnum: TEnumSituacaoPedidoMercos): string;
begin
  case pEnum of
    TEnumSituacaoPedidoMercos_Cancelado: Result := '0 = Cancelado'; // 0 = Cancelado
    TEnumSituacaoPedidoMercos_Orcamento: Result := '1 = Orçamento'; // 1 = Orçamento
    TEnumSituacaoPedidoMercos_Pedido: Result    := '2 = Pedido';    // 2 = Pedido
    else
         Result := '-1 = Não Definido'; // -1 = Não Definido
  end;
end;

class function TEnum.SituacaoPedidoMercosFromStr(const pValor: string): TEnumSituacaoPedidoMercos;
begin
  if (pValor = '0') then
    Result := TEnumSituacaoPedidoMercos_Cancelado // 0 = Cancelado
  else if (pValor = '1') then
    Result := TEnumSituacaoPedidoMercos_Orcamento // 1 = Orçamento
  else if (pValor = '2') then
    Result := TEnumSituacaoPedidoMercos_Pedido // 2 = Pedido
  else
    Result := TEnumSituacaoPedidoMercos_NaoDefinido; // -1 = Não Definido
end;

class function TEnum.SituacaoPedidoMercosToStr(const pEnum: TEnumSituacaoPedidoMercos): string;
begin
  case pEnum of
    TEnumSituacaoPedidoMercos_Cancelado: Result := '0'; // 0 = Cancelado
    TEnumSituacaoPedidoMercos_Orcamento: Result := '1'; // 1 = Orçamento
    TEnumSituacaoPedidoMercos_Pedido: Result    := '2'; // 2 = Pedido
    else
         Result := '-1'; // -1 = Não Definido
  end;
end;

class function TEnum.SolucaoPendencia(const pEnum: TEnumSolucaoPendencia): string;
begin
  case pEnum of
    spCancelamentoTransacao: result := 'C - Cancelamento da Transação';
    spFechamentoCaixa: result       := 'F - Fechamento de caixa';
    spRecebimentoPendencia: result  := 'R - Recebimento de pendência';
    spEstornoRecebimento: result    := 'E - Estorno de recebimento';
    spDesfazResolucao: result       := 'D - Desfaz resolução';
    spDesfazEstorno: result         := 'X - Desfaz Estorno';
    spNaoDefinida: result           := '';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSolucaoPendencia.');
  end;
end;

class function TEnum.SolucaoPendenciaFromStr(const pValor: string): TEnumSolucaoPendencia;
begin
  Result := spNaoDefinida;
  if pValor = 'C' then
    Result := spCancelamentoTransacao
  else if pValor = 'F' then
    Result := spFechamentoCaixa
  else if pValor = 'R' then
    Result := spRecebimentoPendencia
  else if pValor = 'E' then
    Result := spEstornoRecebimento
  else if pValor = 'D' then
    Result := spDesfazResolucao
  else if pValor = 'X' then
    Result := spDesfazEstorno
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumSolucaoPendencia.', [pValor]));
end;

class function TEnum.SolucaoPendenciaToStr(const pEnum: TEnumSolucaoPendencia): string;
begin
  case pEnum of
    spCancelamentoTransacao: result := 'C';
    spFechamentoCaixa: result       := 'F';
    spRecebimentoPendencia: result  := 'R';
    spEstornoRecebimento: result    := 'E';
    spDesfazResolucao: result       := 'D';
    spDesfazEstorno: result         := 'X';
    spNaoDefinida: result           := '';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSolucaoPendencia.');
  end;
end;

class function TEnum.Search_statusWebStore(const pEnum: TEnumSearch_statusWebStore): Integer;
begin
  case pEnum of
    TEnumSearch_statusWebStore_AguardandoPagamento: Result := 1;
    TEnumSearch_statusWebStore_PagamentoConfirmado: Result := 2;
    TEnumSearch_statusWebStore_PedidoEmSeparacao: Result   := 3;
    TEnumSearch_statusWebStore_ConcluidoEnviado: Result    := 4;
    TEnumSearch_statusWebStore_Cancelado: Result           := 5;
    TEnumSearch_statusWebStore_Entregue: Result            := 6;
  end;
end;

class function TEnum.Search_statusWebStoreFromStr(const pValor: string): TEnumSearch_statusWebStore;
begin
 if (pValor = '1') then
   Result := TEnumSearch_statusWebStore_AguardandoPagamento
 else if (pValor = '2') then
   Result := TEnumSearch_statusWebStore_PagamentoConfirmado
 else if (pValor = '3') then
   Result := TEnumSearch_statusWebStore_PedidoEmSeparacao
 else if (pValor = '4') then
   Result := TEnumSearch_statusWebStore_ConcluidoEnviado
 else if (pValor = '5') then
   Result := TEnumSearch_statusWebStore_Cancelado
 else if (pValor = '6') then
   Result := TEnumSearch_statusWebStore_Entregue;
end;

class function TEnum.Search_statusWebStoreToStr(const pEnum: TEnumSearch_statusWebStore): string;
begin
  case pEnum of
    TEnumSearch_statusWebStore_AguardandoPagamento: Result := '1';
    TEnumSearch_statusWebStore_PagamentoConfirmado: Result := '2';
    TEnumSearch_statusWebStore_PedidoEmSeparacao: Result   := '3';
    TEnumSearch_statusWebStore_ConcluidoEnviado: Result    := '4';
    TEnumSearch_statusWebStore_Cancelado: Result           := '5';
    TEnumSearch_statusWebStore_Entregue: Result            := '6';
  end;
end;

class function TEnum.SerialParity(const pEnum: TEnumSerialParity): string;
begin
  case pEnum of
    TEnumSerialParity_None: Result  := 'None';
    TEnumSerialParity_Odd: Result   := 'Odd';
    TEnumSerialParity_Even: Result  := 'Even';
    TEnumSerialParity_Mark: Result  := 'Mark';
    TEnumSerialParity_Space: Result := 'Space';
  end;
end;

class function TEnum.SerialParityFromStr(const pValor: string): TEnumSerialParity;
begin
  if UpperCase(pValor) = UpperCase('O') then
    Result := TEnumSerialParity_Odd
  else if UpperCase(pValor) = UpperCase('E') then
    Result := TEnumSerialParity_Even
  else if UpperCase(pValor) = UpperCase('M') then
    Result := TEnumSerialParity_Mark
  else if UpperCase(pValor) = UpperCase('S') then
    Result := TEnumSerialParity_Space
  else
    Result := TEnumSerialParity_None;
end;

class function TEnum.SerialParityToStr(const pEnum: TEnumSerialParity): string;
begin
  case pEnum of
    TEnumSerialParity_None: Result  := 'N'; // N - None
    TEnumSerialParity_Odd: Result   := 'O'; // O - Odd
    TEnumSerialParity_Even: Result  := 'E'; // E - Even
    TEnumSerialParity_Mark: Result  := 'M'; // M - Mark
    TEnumSerialParity_Space: Result := 'S'; // S - Space
  end;
end;

class function TEnum.SerialStop(const pEnum: TEnumSerialStop): string;
begin
  case pEnum of
    TEnumSerialStop_1: Result      := '1';   // 1 - 1
    TEnumSerialStop_1eMeio: Result := '1/2'; // 1.5 - 1/2
    TEnumSerialStop_2: Result      := '2';   // 2 - 2
  end;
end;

class function TEnum.SerialStopFromStr(const pValor: string): TEnumSerialStop;
begin
  if UpperCase(pValor) = UpperCase('1.5') then
    Result := TEnumSerialStop_1eMeio
  else if UpperCase(pValor) = UpperCase('2') then
    Result := TEnumSerialStop_2
  else
    Result := TEnumSerialStop_1;
end;

class function TEnum.SerialStopToStr(const pEnum: TEnumSerialStop): string;
begin
  case pEnum of
    TEnumSerialStop_1: Result      := '1';   // 1 - 1
    TEnumSerialStop_1eMeio: Result := '1.5'; // 1.5 - 1/2
    TEnumSerialStop_2: Result      := '2';   // 2 - 2
  end;
end;

class function TEnum.ServicosCommerceAPIFromStr(const pValor: string): TEnumServicos_TCommerceAPI;
begin
  Result := TCommerceAPI_NaoEncontrado;
  if UpperCase(pValor) = UpperCase('ConsultaRetaguarda') then
    Result := TCommerceAPI_ConsultaRetaguarda
  else if UpperCase(pValor) = UpperCase('ExecutaGravaTransacoes') then
    Result := TCommerceAPI_ExecutaGravaTransacoes
  else if UpperCase(pValor) = UpperCase('Separar') then
    Result := TCommerceAPI_Separar
  else if UpperCase(pValor) = UpperCase('ParametrosMiddleware') then
    Result := TCommerceAPI_ParametrosMiddleware
  else if UpperCase(pValor) = UpperCase('ConsultaDevolucoes') then
    Result := TCommerceAPI_ConsultaDevolucoes
  else if UpperCase(pValor) = UpperCase('DadosDevolucao') then
    Result := TCommerceAPI_DadosDevolucao
  else if UpperCase(pValor) = UpperCase('ProcessaDevolucao') then
    Result := TCommerceAPI_ProcessaDevolucao
  else if UpperCase(pValor) = UpperCase('ImprimirCancSeguro') then
    Result := TCommerceAPI_ImprimirCancSeguro
  else if UpperCase(pValor) = UpperCase('ReceberMercadoriaImportacao') then
    Result := TCommerceAPI_ReceberMercadoriaImportacao
  else if UpperCase(pValor) = UpperCase('ProcessaXMLDI') then
    Result := TCommerceAPI_ProcessaXMLDI
  else if UpperCase(pValor) = UpperCase('ProcessaNotaImportacao') then
    Result := TCommerceAPI_ProcessaNotaImportacao
  else if UpperCase(pValor) = UpperCase('BloqueiaOrigem') then
    Result := TCommerceAPI_BloqueiaOrigem
  else if UpperCase(pValor) = UpperCase('DesbloqueiaOrigem') then
    Result := TCommerceAPI_DesbloqueiaOrigem
  else if UpperCase(pValor) = UpperCase('ProximoCodigo') then
    Result := TCommerceAPI_ProximoCodigo
  else if UpperCase(pValor) = UpperCase('ProcessaNFSobreRecibo') then
    Result := TCommerceAPI_ProcessaNFSobreRecibo
  else if UpperCase(pValor) = UpperCase('ListaNossoNumero') then
    Result := TCommerceAPI_ListaNossoNumero
  else if UpperCase(pValor) = UpperCase('AtualizaStatusECF') then
    Result := TCommerceAPI_AtualizaStatusECF
  else if UpperCase(pValor) = UpperCase('PersistePDV') then
    Result := TCommerceAPI_PersistePDV
  else if UpperCase(pValor) = UpperCase('ReinicializaPoS') then
    Result := TCommerceAPI_ReinicializaPoS
  else if UpperCase(pValor) = UpperCase('ReimpressaoCupomEmNotaFiscal') then
    Result := TCommerceAPI_ReimpressaoCupomEmNotaFiscal
  else if UpperCase(pValor) = UpperCase('ProcessaNFSesAutomatico') then
    Result := TCommerceAPI_ProcessaNFSesAutomatico
  else if UpperCase(pValor) = UpperCase('GeraXMLTransacoesPendentes') then
    Result := TCommerceAPI_GeraXMLTransacoesPendentes
  else if UpperCase(pValor) = UpperCase('ConsultaTitulosBancarios') then
    Result := TCommerceAPI_ConsultaTitulosBancarios
  else if UpperCase(pValor) = UpperCase('ArquivoRemessaCNAB') then
    Result := TCommerceAPI_ArquivoRemessaCNAB
  else if UpperCase(pValor) = UpperCase('ProcessaArquivoRetornoCNAB') then
    Result := TCommerceAPI_ProcessaArquivoRetornoCNAB
  else if UpperCase(pValor) = UpperCase('ProcessaNotaDeTransferencia') then
    Result := TCommerceAPI_ProcessaNotaDeTransferencia
  else if UpperCase(pValor) = UpperCase('ProcessaNotaCreditoICMS') then
    Result := TCommerceAPI_ProcessaNotaCreditoICMS
  else if UpperCase(pValor) = UpperCase('ImportaXMLDFe') then
    Result := TCommerceAPI_ImportaXMLDFe
  else if UpperCase(pValor) = UpperCase('ImportaXMLNFe') then
    Result := TCommerceAPI_ImportaXMLDFe
  else if UpperCase(pValor) = UpperCase('PersisteParceiro') then
    Result := TCommerceAPI_PersisteParceiro
  else if UpperCase(pValor) = UpperCase('PersisteDAV') then
    Result := TCommerceAPI_PersisteDAV
  else if UpperCase(pValor) = UpperCase('GeraNotaDAVPreVenda') then
    Result := TCommerceAPI_GeraNotaDAVPreVenda
  else if UpperCase(pValor) = UpperCase('ConsultaModeloOrdemDeSeparacaoDAV') then
    Result := TCommerceAPI_ConsultaModeloOrdemDeSeparacaoDAV
  else if UpperCase(pValor) = UpperCase('ConsultaModeloDeclaracaoTransporte') then
    Result := TCommerceAPI_ConsultaModeloDeclaracaoTransporte
  else if UpperCase(pValor) = UpperCase('ImprimeOrdemDeSeparacaoDAV') then
    Result := TCommerceAPI_ImprimeOrdemDeSeparacaoDAV
  else if UpperCase(pValor) = UpperCase('ImprimeDeclaracaoTransporte') then
    Result := TCommerceAPI_ImprimeDeclaracaoTransporte
  else if UpperCase(pValor) = UpperCase('SincronizaSkyhub') then
    Result := TCommerceAPI_SincronizaSkyhub
  else if UpperCase(pValor) = UpperCase('Get_OrderSkyHub') then
    Result := TCommerceAPI_Get_OrderSkyHub
  else if UpperCase(pValor) = UpperCase('CancelaOrcamento') then
    Result := TCommerceAPI_CancelaOrcamento
  else if UpperCase(pValor) = UpperCase('GerarNFESeparacaoDAV') then
    Result := TCommerceAPI_GerarNFESeparacaoDAV
  else if UpperCase(pValor) = UpperCase('SetStatusEcommerce') then
    Result := TCommerceAPI_SetStatusEcommerce
  else if UpperCase(pValor) = UpperCase('ConsultaDadosRetaguarda') then
    Result := TCommerceAPI_ConsultaDadosRetaguarda
  else if UpperCase(pValor) = UpperCase('EnviaEmailCotacaoFornecedor') then
    Result := TCommerceAPI_EnviaEmailCotacaoFornecedor
  else if UpperCase(pValor) = UpperCase('ProcessaCotacaoFornecedor') then
    Result := TCommerceAPI_ProcessaCotacaoFornecedor
  else if UpperCase(pValor) = UpperCase('AprovarCotacaoFornecedor') then
    Result := TCommerceAPI_AprovarCotacaoFornecedor
  else if UpperCase(pValor) = UpperCase('DefineVencedoresCotacaoFornecedor') then
    Result := TCommerceAPI_DefineVencedoresCotacaoFornecedor
  else if UpperCase(pValor) = UpperCase('ProcessaCFeSATComplementar') then
    Result := TCommerceAPI_ProcessaCFeSATComplementar
  else if UpperCase(pValor) = UpperCase('AtualizaStatusDFe') then
    Result := TCommerceAPI_AtualizaStatusDFe
  else if UpperCase(pValor) = UpperCase('CancelaDocumentoEmitido') then
    Result := TCommerceAPI_CancelaDocumentoEmitido
  else if UpperCase(pValor) = UpperCase('IntegracaoInventarioEstoqueEM4') then
    Result := TCommerceAPI_IntegracaoInventarioEstoqueEM4
  else if UpperCase(pValor) = UpperCase('MarcaExportacaoECommerce') then
    Result := TCommerceAPI_MarcaExportacaoECommerce
  else if UpperCase(pValor) = UpperCase('ConsultaDadosRetaguarda') then
    Result := TCommerceAPI_ConsultaDadosRetaguarda
  else if UpperCase(pValor) = UpperCase('CalculaDescontoDaCampanha') then
    Result := TCommerceAPI_CalculaDescontoDaCampanha
  else if UpperCase(pValor) = UpperCase('usuarios') then
    Result := TCommerceAPI_Usuarios
  else if UpperCase(pValor) = UpperCase('parceiros') then
    Result := TCommerceAPI_Parceiros
  else if UpperCase(pValor) = UpperCase('orcamentos') then
    Result := TCommerceAPI_Orcamentos
  else if UpperCase(pValor) = UpperCase('cancelamento') then
    Result := TCommerceAPI_Cancelamento
  else if UpperCase(pValor) = UpperCase('situacao') then
    Result := TCommerceAPI_Situacao
  else if UpperCase(pValor) = UpperCase('exportado') then
    Result := TCommerceAPI_Exportado
  else if UpperCase(pValor) = UpperCase('ConsultaDadosLGPD') then
    Result := TCommerceAPI_ConsultaDadosLGPD
  else if UpperCase(pValor) = UpperCase('ConsultaDocumentosEmitidos') then
    Result := TCommerceAPI_ConsultaDocumentosEmitidos
  else if UpperCase(pValor) = UpperCase('AnonimizarDadosLGPD') then
    Result := TCommerceAPI_AnonimizarDadosLGPD
  else if UpperCase(pValor) = UpperCase('ComparacaoDocumentosCFeSAT') then
    Result := TCommerceAPI_ComparacaoDocumentosCFeSAT
  else if UpperCase(pValor) = UpperCase('RecepcaoTransferencia') then
    Result := TCommerceAPI_RecepcaoTransferencia
  else if UpperCase(pValor) = UpperCase('tabelasdepreco') then
    Result := TCommerceAPI_TabelasDePreco
  else if UpperCase(pValor) = UpperCase('lancamentosdeestoque') then
    Result := TCommerceAPI_LancamentosDeEstoque
  else if UpperCase(pValor) = UpperCase('saldosdeestoque') then
    Result := TCommerceAPI_SaldosDeEstoque
  else if UpperCase(pValor) = UpperCase('produtos') then
    Result := TCommerceAPI_Produtos
  else if UpperCase(pValor) = UpperCase('lotes') then
    Result := TCommerceAPI_Lotes
  else if UpperCase(pValor) = UpperCase('saldodelotes') then
    Result := TCommerceAPI_SaldoDeLotes
  else if UpperCase(pValor) = UpperCase('importaxmlsguardatocommerce') then
    Result := TCommerceAPI_ImportaXMLsGuardaToCommerce
  else if UpperCase(pValor) = UpperCase('consultaquantidadevendaspromocionais') then
    Result := TCommerceAPI_ConsultaQuantidadeVendasPromocionais
  else if UpperCase(pValor) = UpperCase('AtualizarContasReceberCliente') then
    Result := TCommerceAPI_AtualizarContasReceberCliente
       ;
end;

class function TEnum.ServicosCommerceAPIToStr(const pEnum: TEnumServicos_TCommerceAPI): string;
begin
  case pEnum of
    TCommerceAPI_NaoEncontrado: result                := '';
    TCommerceAPI_ConsultaRetaguarda: result           := 'ConsultaRetaguarda';
    TCommerceAPI_ExecutaGravaTransacoes: result       := 'ExecutaGravaTransacoes';
    TCommerceAPI_Separar: result                      := 'Separar';
    TCommerceAPI_ParametrosMiddleware: result         := 'ParametrosMiddleware';
    TCommerceAPI_ConsultaDevolucoes: result           := 'ConsultaDevolucoes';
    TCommerceAPI_DadosDevolucao: result               := 'DadosDevolucao';
    TCommerceAPI_ProcessaDevolucao: result            := 'ProcessaDevolucao';
    TCommerceAPI_ImprimirCancSeguro: result           := 'ImprimirCancSeguro';
    TCommerceAPI_ReceberMercadoriaImportacao: result  := 'ReceberMercadoriaImportacao';
    TCommerceAPI_ProcessaXMLDI: result                := 'ProcessaXMLDI';
    TCommerceAPI_ProcessaNotaImportacao: result       := 'ProcessaNotaImportacao';
    TCommerceAPI_BloqueiaOrigem: result               := 'BloqueiaOrigem';
    TCommerceAPI_DesbloqueiaOrigem: result            := 'DesbloqueiaOrigem';
    TCommerceAPI_ProximoCodigo: result                := 'ProximoCodigo';
    TCommerceAPI_ProcessaNFSobreRecibo: result        := 'ProcessaNFSobreRecibo';
    TCommerceAPI_ListaNossoNumero: result             := 'ListaNossoNumero';
    TCommerceAPI_AtualizaStatusECF: result            := 'AtualizaStatusECF';
    TCommerceAPI_PersistePDV: result                  := 'PersistePDV';
    TCommerceAPI_ReinicializaPoS: result              := 'ReinicializaPoS';
    TCommerceAPI_ReimpressaoCupomEmNotaFiscal: result := 'ReimpressaoCupomEmNotaFiscal';
    TCommerceAPI_ProcessaNFSesAutomatico: result      := 'ProcessaNFSesAutomatico';
    TCommerceAPI_GeraXMLTransacoesPendentes: result   := 'GeraXMLTransacoesPendentes';
    TCommerceAPI_ConsultaTitulosBancarios: Result     := 'ConsultaTitulosBancarios';
    TCommerceAPI_ArquivoRemessaCNAB: Result           := 'ArquivoRemessaCNAB';
    TCommerceAPI_ProcessaArquivoRetornoCNAB: Result   := 'ProcessaArquivoRetornoCNAB';
    TCommerceAPI_ProcessaNotaDeTransferencia: Result  := 'ProcessaNotaDeTransferencia';
    TCommerceAPI_ProcessaNotaCreditoICMS: Result      := 'ProcessaNotaCreditoICMS';
    TCommerceAPI_ImportaXMLDFe: Result                := 'ImportaXMLDFe';
    //TCommerceAPI_ImportaXMLDFe: Result                     := 'ImportaXMLNFe';
    TCommerceAPI_PersisteParceiro: Result                  := 'PersisteParceiro';
    TCommerceAPI_PersisteDAV: Result                       := 'PersisteDAV';
    TCommerceAPI_GeraNotaDAVPreVenda: Result               := 'GeraNotaDAVPreVenda';
    TCommerceAPI_ConsultaModeloOrdemDeSeparacaoDAV: Result := 'ConsultaModeloOrdemDeSeparacaoDAV';
    TCommerceAPI_ConsultaModeloDeclaracaoTransporte: Result:= 'ConsultaDeclaracaoTransporte';
    TCommerceAPI_SincronizaSkyhub: Result                  := 'SincronizaSkyhub';
    TCommerceAPI_Get_OrderSkyHub: Result                   := 'Get_OrderSkyHub';
    TCommerceAPI_CancelaOrcamento: Result                  := 'CancelaOrcamento';
    TCommerceAPI_GerarNFESeparacaoDAV: Result              := 'GerarNFESeparacaoDAV';
    TCommerceAPI_SetStatusEcommerce: Result                := 'SetStatusEcommerce';
    TCommerceAPI_EnviaEmailCotacaoFornecedor: Result       := 'EnviaEmailCotacaoFornecedor';
    TCommerceAPI_ProcessaCotacaoFornecedor: Result         := 'ProcessaCotacaoFornecedor';
    TCommerceAPI_AprovarCotacaoFornecedor: Result          := 'AprovarCotacaoFornecedor';
    TCommerceAPI_DefineVencedoresCotacaoFornecedor: Result := 'DefineVencedoresCotacaoFornecedor';
    TCommerceAPI_ProcessaCFeSATComplementar: result        := 'ProcessaCFeSATComplementar';
    TCommerceAPI_AtualizaStatusDFe: result                 := 'AtualizaStatusDFe';
    TCommerceAPI_CancelaDocumentoEmitido: result           := 'CancelaDocumentoEmitido';
    TCommerceAPI_IntegracaoInventarioEstoqueEM4: Result    := 'IntegracaoInventarioEstoqueEM4';
    TCommerceAPI_MarcaExportacaoECommerce: Result          := 'MarcaExportacaoECommerce';
    TCommerceAPI_ConsultaDadosRetaguarda: Result           := 'ConsultaDadosRetaguarda';
    TCommerceAPI_CalculaDescontoDaCampanha: Result         := 'CalculaDescontoDaCampanha';
    TCommerceAPI_Usuarios: Result                          := 'usuarios';
    TCommerceAPI_Parceiros: Result                         := 'parceiros';
    TCommerceAPI_Orcamentos: Result                        := 'orcamentos';
    TCommerceAPI_Cancelamento: Result                      := 'cancelamento';
    TCommerceAPI_Situacao: Result                          := 'situacao';
    TCommerceAPI_Exportado: Result                         := 'exportado';
    TCommerceAPI_ConsultaDadosLGPD: Result                 := 'ConsultaDadosLGPD';
    TCommerceAPI_ConsultaDocumentosEmitidos: Result        := 'ConsultaDocumentosEmitidos';
    TCommerceAPI_AnonimizarDadosLGPD: Result               := 'AnonimizarDadosLGPD';
    TCommerceAPI_ComparacaoDocumentosCFeSAT: Result        := 'ComparacaoDocumentosCFeSAT';
    TCommerceAPI_RecepcaoTransferencia: Result             := 'RecepcaoTransferencia';
    TCommerceAPI_TabelasDePreco: Result                    := 'tabelasdepreco';
    TCommerceAPI_LancamentosDeEstoque: Result              := 'lancamentosdeestoque';
    TCommerceAPI_SaldosDeEstoque: Result                   := 'saldosdeestoque';
    TCommerceAPI_Produtos: Result                          := 'produtos';
    TCommerceAPI_Lotes: Result                             := 'lotes';
    TCommerceAPI_SaldoDeLotes: Result                      := 'saldodelotes';
    TCommerceAPI_ImportaXMLsGuardaToCommerce: Result       := 'importaxmlsguardatocommerce';
    TCommerceAPI_ConsultaQuantidadeVendasPromocionais: Result := 'consultaquantidadevendaspromocionais';
    TCommerceAPI_AtualizarContasReceberCliente: Result        := 'AtualizarContasReceberCliente';
  end;
end;

class function TEnum.ServicosCommerceLocalAPIFromStr(const pValor: string): TEnumServicos_TCommerceLocalAPI;
begin
  if UpperCase(pValor) = UpperCase('GeraBoletoPDF') then
    Result := TCommerceLocalAPI_GeraBoletoPDF
  else if UpperCase(pValor) = UpperCase('GeraBoleto') then
    Result := TCommerceLocalAPI_GeraBoleto
  else if UpperCase(pValor) = UpperCase('EnviaEmail') then
    Result := TCommerceLocalAPI_EnviaEmail
  else if UpperCase(pValor) = UpperCase('ConsultaCNPJCaptcha') then
    Result := TCommerceLocalAPI_ConsultaCNPJCaptcha
  else if UpperCase(pValor) = UpperCase('ConsultaCNPJ') then
    Result := TCommerceLocalAPI_ConsultaCNPJ
  else if UpperCase(pValor) = UpperCase('ConsultaCPFCaptcha') then
    Result := TCommerceLocalAPI_ConsultaCPFCaptcha
  else if UpperCase(pValor) = UpperCase('ConsultaCPF') then
    Result := TCommerceLocalAPI_ConsultaCPF
  else if UpperCase(pValor) = UpperCase('ConsultaModelosDAV') then
    Result := TCommerceLocalAPI_ConsultaModelosDAV
  else if UpperCase(pValor) = UpperCase('ImprimeDAV') then
    Result := TCommerceLocalAPI_ImprimeDAV
  else if UpperCase(pValor) = UpperCase('CalculaDescontoDaCampanha') then
    Result := TCommerceLocalAPI_CalculaDescontoDaCampanha
  else if UpperCase(pValor) = UpperCase('ModeloFichaCadastralCliente') then
    Result := TCommerceLocalAPI_ModeloFichaCadastralCliente
  else if UpperCase(pValor) = UpperCase('ImprimirFichaCadastralCliente') then
    Result := TCommerceLocalAPI_ImprimirFichaCadastralCliente
  else
    Result := TCommerceLocalAPI_NaoEncontrado;
end;

class function TEnum.ServicosCommerceLocalAPIToStr(const pEnum: TEnumServicos_TCommerceLocalAPI): string;
begin
  case pEnum of
    TCommerceLocalAPI_NaoEncontrado: Result               := '';
    TCommerceLocalAPI_GeraBoletoPDF: Result               := 'GeraBoletoPDF';
    TCommerceLocalAPI_GeraBoleto: Result                  := 'GeraBoleto';
    TCommerceLocalAPI_EnviaEmail: Result                  := 'EnviaEmail';
    TCommerceLocalAPI_ConsultaCNPJCaptcha: Result         := 'ConsultaCNPJCaptcha';
    TCommerceLocalAPI_ConsultaCNPJ: Result                := 'ConsultaCNPJ';
    TCommerceLocalAPI_ConsultaCPFCaptcha: Result          := 'ConsultaCPFCaptcha';
    TCommerceLocalAPI_ConsultaCPF: Result                 := 'ConsultaCPF';
    TCommerceLocalAPI_ConsultaModelosDAV: Result          := 'ConsultaModelosDAV';
    TCommerceLocalAPI_ImprimeDAV: Result                  := 'ImprimeDAV';
    TCommerceLocalAPI_CalculaDescontoDaCampanha: Result   := 'CalculaDescontoDaCampanha';
    TCommerceLocalAPI_ModeloFichaCadastralCliente: Result := 'ModeloFichaCadastralCliente';
    TCommerceLocalAPI_ImprimirFichaCadastralCliente: Result := 'ImprimirFichaCadastralCliente';
  end;
end;

class function TEnum.ServicosConexaoAPIFromStr(const pValor: string): TEnumServicos_TConexaoAPI;
begin
  Result := TConexaoAPI_NaoEncontrado;
  if UpperCase(pValor) = UpperCase('ConectaMiddleware') then
    result := TConexaoAPI_ConectaMiddleware
  else if UpperCase(pValor) = UpperCase('TestaComunicacao') then
    result := TConexaoAPI_TestaComunicacao
  else if UpperCase(pValor) = UpperCase('Sobre') then
    result := TConexaoAPI_Sobre
  else if UpperCase(pValor) = UpperCase('MiddlewareOnline') then
    result := TConexaoAPI_MiddlewareOnline
  else if UpperCase(pValor) = UpperCase('ConsultaImpressora') then
    result := TConexaoAPI_ConsultaImpressora
  else if UpperCase(pValor) = UpperCase('CadastrarAlterarEmpresa') then
    Result := TConexaoAPI_CadastrarAlterarEmpresa
  else if UpperCase(pValor) = UpperCase('CadastraXML') then
    Result := TConexaoAPI_CadastraXML
  else if UpperCase(pValor) = UpperCase('ExcluiDocumentosEmHomologacao') then
    Result := TConexaoAPI_ExcluiDocumentosEmHomologacao
  else if UpperCase(pValor) = UpperCase('token') then
    Result := TConexaoAPI_Token
  else if UpperCase(pValor) = UpperCase('validasessao') then
    Result := TConexaoAPI_ValidaSessao
       ;

end;

class function TEnum.ServicosConexaoAPIToStr(const pEnum: TEnumServicos_TConexaoAPI): string;
begin
  case pEnum of
    TConexaoAPI_NaoEncontrado: result                 := '';
    TConexaoAPI_ConectaMiddleware: result             := 'ConectaMiddleware';
    TConexaoAPI_TestaComunicacao: result              := 'TestaComunicacao';
    TConexaoAPI_Sobre: result                         := 'Sobre';
    TConexaoAPI_MiddlewareOnline: result              := 'MiddlewareOnline';
    TConexaoAPI_ConsultaImpressora: result            := 'ConsultaImpressora';
    TConexaoAPI_CadastrarAlterarEmpresa: Result       := 'CadastrarAlterarEmpresa';
    TConexaoAPI_CadastraXML: Result                   := 'CadastraXML';
    TConexaoAPI_ExcluiDocumentosEmHomologacao: Result := 'ExcluiDocumentosEmHomologacao';
    TConexaoAPI_Token: Result                         := 'token';
    TConexaoAPI_ValidaSessao: Result                  := 'validasessao';
  end;
end;

class function TEnum.ServicosConexaoLocalAPIFromStr(const pValor: string): TEnumServicos_TConexaoLocalAPI;
begin
  Result := TConexaoLocalAPI_NaoEncontrado;
  if UpperCase(pValor) = UpperCase('Sobre') then
    Result := TConexaoLocalAPI_Sobre
  else if UpperCase(pValor) = UpperCase('TestaComunicacao') then
    Result := TConexaoLocalAPI_TestaComunicacao;

end;

class function TEnum.ServicosCTeAPIFromStr(const pValor: string): TEnumServicos_TCTeAPI;
begin
  Result := TCTeAPI_NaoEncontrado;
  if UpperCase(pValor) = UpperCase('AutenticaCTe') then
    Result := TCTeAPI_AutenticaCTe
  else if UpperCase(pValor) = UpperCase('CancelarCTeSefaz') then
    Result := TCTeAPI_CancelarCTeSefaz
  else if UpperCase(pValor) = UpperCase('ConsultarCTe') then
    Result := TCTeAPI_ConsultarCTe
  else if UpperCase(pValor) = UpperCase('InutilizaCTe') then
    Result := TCTeAPI_InutilizaCTe
  else if UpperCase(pValor) = UpperCase('CTeOnLine') then
    Result := TCTeAPI_CTeOnLine
  else if UpperCase(pValor) = UpperCase('ImprimeCTeDACTE') then
    Result := TCTeAPI_ImprimeCTeDACTE
  else if UpperCase(pValor) = UpperCase('ImprimeEventoCTe') then
    Result := TCTeAPI_ImprimeEventoCTe
  else if UpperCase(pValor) = UpperCase('ImprimeCTeDACTEPeloXML') then
    Result := TCTeAPI_ImprimeCTeDACTEPeloXML
  else if UpperCase(pValor) = UpperCase('GeraCTePDFPeloXML') then
    Result := TCTeAPI_GeraCTePDFPeloXML
  else if UpperCase(pValor) = UpperCase('ConsultaPeloUltimoNSU') then
    Result := TCTeAPI_ConsultaPeloUltimoNSU
  else if UpperCase(pValor) = UpperCase('ManifestarCTe') then
    Result := TCTeAPI_ManifestarCTe
  else if UpperCase(pValor) = UpperCase('CartaCorrecao') then
    Result := TCTeAPI_CartaCorrecao
  else if UpperCase(pValor) = UpperCase('GeraCTePreviaPDFPeloXML') then
    Result := TCTeAPI_GeraCTePreviaPDFPeloXML
  else if UpperCase(pValor) = UpperCase('GeraPDFEventoCTe') then
    Result := TCTeAPI_GeraPDFEventoCTe
  else if UpperCase(pValor) = UpperCase('SetImprimirCTe') then
    Result := TCTeAPI_SetImprimirCTe
  else if UpperCase(pValor) = UpperCase('RetornaEmailsCTe') then
    Result := TCTeAPI_RetornaEmailsCTe
  else if UpperCase(pValor) = UpperCase('GetXMLEventoCTe') then
    Result := TCTeAPI_GetXMLEventoCTe
  else if UpperCase(pValor) = UpperCase('ConsultaXMLAutenticado') then
    Result := TCTeAPI_ConsultaXMLAutenticado;
end;

class function TEnum.ServicosCTeAPIToStr(const pEnum: TEnumServicos_TCTeAPI): string;
begin
  case pEnum of
    TCTeAPI_NaoEncontrado: Result           := '';
    TCTeAPI_AutenticaCTe: Result            := 'AutenticaCTe';
    TCTeAPI_CancelarCTeSefaz: Result        := 'CancelarCTeSefaz';
    TCTeAPI_ConsultarCTe: Result            := 'ConsultarCTe';
    TCTeAPI_InutilizaCTe: Result            := 'InutilizaCTe';
    TCTeAPI_CTeOnLine: Result               := 'CTeOnLine';
    TCTeAPI_ImprimeCTeDACTE: Result         := 'ImprimeCTeDACTE';
    TCTeAPI_ImprimeEventoCTe: Result        := 'ImprimeEventoCTe';
    TCTeAPI_ImprimeCTeDACTEPeloXML: Result  := 'ImprimeCTeDACTEPeloXML';
    TCTeAPI_GeraCTePDFPeloXML: Result       := 'GeraCTePDFPeloXML';
    TCTeAPI_ManifestarCTe: Result           := 'ManifestarCTe';
    TCTeAPI_CartaCorrecao: Result           := 'CartaCorrecao';
    TCTeAPI_GeraCTePreviaPDFPeloXML: Result := 'GeraCTePreviaPDFPeloXML';
    TCTeAPI_GeraPDFEventoCTe: Result        := 'GeraPDFEventoCTe';
    TCTeAPI_SetImprimirCTe: Result          := 'SetImprimirCTe';
    TCTeAPI_RetornaEmailsCTe: Result        := 'RetornaEmailsCTe';
    TCTeAPI_GetXMLEventoCTe: Result         := 'GetXMLEventoCTe';
    TCTeAPI_ConsultaXMLAutenticado: Result  := 'ConsultaXMLAutenticado'
  end;
end;

class function TEnum.ServicosFidelidadeAPIFromStr(const pValor: string): TEnumServicos_TFidelidadeAPI;
begin
  Result := TFidelidadeAPI_NaoEncontrado;
  if UpperCase(pValor) = UpperCase('ConsultaSaldo') then
    Result := TFidelidadeAPI_ConsultaSaldo
  else if UpperCase(pValor) = UpperCase('Credito') then
    Result := TFidelidadeAPI_Credito
  else if UpperCase(pValor) = UpperCase('Debito') then
    Result := TFidelidadeAPI_Debito
  else if UpperCase(pValor) = UpperCase('DebitoProvisorio') then
    Result := TFidelidadeAPI_DebitoProvisorio
  else if UpperCase(pValor) = UpperCase('AtualizaProvisorio') then
    Result := TFidelidadeAPI_AtualizaProvisorio
  else if UpperCase(pValor) = UpperCase('ListaProvisoriosPendentes') then
    Result := TFidelidadeAPI_ListaProvisoriosPendentes
  else if UpperCase(pValor) = UpperCase('DevolverPontos') then
    Result := TFidelidadeAPI_DevolverPontos
  else if UpperCase(pValor) = UpperCase('Login') then
    Result := TFidelidadeAPI_Login
  else if UpperCase(pValor) = UpperCase('RefreshToken') then
    Result := TFidelidadeAPI_RefreshToken
end;

class function TEnum.ServicosFidelidadeAPIToStr(const pEnum: TEnumServicos_TFidelidadeAPI): string;
begin
  case pEnum of
    TFidelidadeAPI_NaoEncontrado              :Result := '';
    TFidelidadeAPI_ConsultaSaldo              :Result := 'ConsultaSaldo';
    TFidelidadeAPI_Credito                    :Result := 'Credito';
    TFidelidadeAPI_Debito                     :Result := 'Debito';
    TFidelidadeAPI_DebitoProvisorio           :Result := 'DebitoProvisorio';
    TFidelidadeAPI_AtualizaProvisorio         :Result := 'AtualizaProvisorio';
    TFidelidadeAPI_ListaProvisoriosPendentes  :Result := 'ListaProvisoriosPendentes';
    TFidelidadeAPI_DevolverPontos             :Result := 'DevolverPontos';
    TFidelidadeAPI_Login                      :Result := 'Login';
    TFidelidadeAPI_RefreshToken               :Result := 'RefreshToken';
  end;
end;

class function TEnum.ServicosImpressoraNaoFiscalAPIFromStr(const pValor: string): TEnumServicos_TImpressoraNaoFiscalAPI;
begin
  Result := TImpressoraNaoFiscalAPI_NaoEncontrado;
  if UpperCase(pValor) = UpperCase('InicializaImpressoraNaoFiscal') then
    Result := TImpressoraNaoFiscalAPI_InicializaImpressoraNaoFiscal
  else if UpperCase(pValor) = UpperCase('Ativar') then
    Result := TImpressoraNaoFiscalAPI_Ativar
  else if UpperCase(pValor) = UpperCase('Desativar') then
    Result := TImpressoraNaoFiscalAPI_Desativar
  else if UpperCase(pValor) = UpperCase('imprimeTextoNaoFiscal') then
    Result := TImpressoraNaoFiscalAPI_imprimeTextoNaoFiscal
  else if UpperCase(pValor) = UpperCase('imprimeDANFENFCe') then
    Result := TImpressoraNaoFiscalAPI_imprimeDANFENFCe
  else if UpperCase(pValor) = UpperCase('imprimeEvento') then
    Result := TImpressoraNaoFiscalAPI_imprimeEvento
  else if UpperCase(pValor) = UpperCase('CortarPapel') then
    Result := TImpressoraNaoFiscalAPI_CortarPapel
  else if UpperCase(pValor) = UpperCase('AbrirGAveta') then
    Result := TImpressoraNaoFiscalAPI_AbrirGaveta
  else if UpperCase(pValor) = UpperCase('getAtivo') then
    Result := TImpressoraNaoFiscalAPI_getAtivo
  else if UpperCase(pValor) = UpperCase('SetvTroco') then
    Result := TImpressoraNaoFiscalAPI_SetvTroco
  else if UpperCase(pValor) = UpperCase('ImprimirExtratoCFeSAT') then
    Result := TImpressoraNaoFiscalAPI_ImprimirExtratoCFeSAT
  else if UpperCase(pValor) = UpperCase('ImprimirExtratoResumidoCFeSAT') then
    Result := TImpressoraNaoFiscalAPI_ImprimirExtratoResumidoCFeSAT
  else if UpperCase(pValor) = UpperCase('ImprimirExtratoCancelamento') then
    Result := TImpressoraNaoFiscalAPI_ImprimirExtratoCancelamento
  else if UpperCase(pValor) = UpperCase('SetUsaCodigoEanImpressao') then
    Result := TImpressoraNaoFiscalAPI_SetUsaCodigoEanImpressao
  else if UpperCase(pValor) = UpperCase('ImprimirCupomDeDesconto') then
    Result := TImpressoraNaoFiscalAPI_ImprimirCupomDeDesconto;
end;

class function TEnum.ServicosImpressoraNaoFiscalAPIToStr(const pEnum: TEnumServicos_TImpressoraNaoFiscalAPI): string;
begin
  case pEnum of
    TImpressoraNaoFiscalAPI_NaoEncontrado: result := '';
    TImpressoraNaoFiscalAPI_InicializaImpressoraNaoFiscal: result := 'InicializaImpressoraNaoFiscal';
    TImpressoraNaoFiscalAPI_Ativar: result                := 'Ativar';
    TImpressoraNaoFiscalAPI_Desativar: result             := 'Desativar';
    TImpressoraNaoFiscalAPI_imprimeTextoNaoFiscal: result := 'imprimeTextoNaoFiscal';
    TImpressoraNaoFiscalAPI_imprimeDANFENFCe: result      := 'imprimeDANFENFCe';
    TImpressoraNaoFiscalAPI_imprimeEvento: result         := 'imprimeEvento';
    TImpressoraNaoFiscalAPI_CortarPapel: result           := 'CortarPapel';
    TImpressoraNaoFiscalAPI_AbrirGaveta: result           := 'AbrirGaveta';
    TImpressoraNaoFiscalAPI_getAtivo: result              := 'getAtivo';
    TImpressoraNaoFiscalAPI_SetvTroco: result             := 'SetvTroco';
    TImpressoraNaoFiscalAPI_ImprimirExtratoCFeSAT: result := 'ImprimirExtratoCFeSAT';
    TImpressoraNaoFiscalAPI_ImprimirExtratoResumidoCFeSAT: result := 'ImprimirExtratoResumidoCFeSAT';
    TImpressoraNaoFiscalAPI_ImprimirExtratoCancelamento: result := 'ImprimirExtratoCancelamento';
    TImpressoraNaoFiscalAPI_SetUsaCodigoEanImpressao: result := 'SetUsaCodigoEanImpressao';
    TImpressoraNaoFiscalAPI_ImprimirCupomDeDesconto: result := 'ImprimirCupomDeDesconto';
  end;
end;

class function TEnum.ServicosMDFeAPIFromStr(const pValor: string): TEnumServicos_TMDFeAPI;
begin
  Result := TMDFeAPI_NaoEncontrado;
  if UpperCase(pValor) = UpperCase('AutenticaMDFe') then
    Result := TMDFeAPI_AutenticaMDFe
  else if UpperCase(pValor) = UpperCase('CancelarMDFeSefaz') then
    Result := TMDFeAPI_CancelarMDFeSefaz
  else if UpperCase(pValor) = UpperCase('ConsultarMDFe') then
    Result := TMDFeAPI_ConsultarMDFe
  else if UpperCase(pValor) = UpperCase('MDFeOnLine') then
    Result := TMDFeAPI_MDFeOnline
  else if UpperCase(pValor) = UpperCase('ImprimeMDFeDAMDFE') then
    Result := TMDFeAPI_ImprimeMDFeDAMDFE
  else if UpperCase(pValor) = UpperCase('ImprimeEventoMDFe') then
    Result := TMDFeAPI_ImprimeEventoMDFe
  else if UpperCase(pValor) = UpperCase('ImprimeMDFeDAMDFEPeloXML') then
    Result := TMDFeAPI_ImprimeMDFeDAMDFEPeloXML
  else if UpperCase(pValor) = UpperCase('GeraMDFePDFPeloXML') then
    Result := TMDFeAPI_GeraMDFePDFPeloXML
  else if UpperCase(pValor) = UpperCase('EncerrarMDFe') then
    Result := TMDFeAPI_EncerrarMDFe
   else if UpperCase(pValor) = UpperCase('IncluirDFe') then
    Result := TMDFeAPI_IncluirDFe
  else if UpperCase(pValor) = UpperCase('IncluirCondutor') then
    Result := TMDFeAPI_IncluirCondutor
  else if UpperCase(pValor) = UpperCase('GeraMDFePreviaPDFPeloXML') then
    Result := TMDFeAPI_GeraMDFePreviaPDFPeloXML
  else if UpperCase(pValor) = UpperCase('SetImprimirMDFe') then
    Result := TMDFeAPI_SetImprimirMDFe
  else if UpperCase(pValor) = UpperCase('RetornaEmailsMDFe') then
    Result := TMDFeAPI_RetornaEmailsMDFe
  else if UpperCase(pValor) = UpperCase('GetXMLEventoMDFe') then
    Result := TMDFeAPI_GetXMLEventoMDFe
  else if UpperCase(pValor) = UpperCase('ConsultaXMLAutenticado') then
    Result := TMDFeAPI_ConsultaXMLAutenticado
end;

class function TEnum.ServicosMDFeAPIToStr(const pEnum: TEnumServicos_TMDFeAPI): string;
begin
  case pEnum of
    TMDFeAPI_NaoEncontrado: Result            := '';
    TMDFeAPI_AutenticaMDFe: Result            := 'AutenticaMDFe';
    TMDFeAPI_CancelarMDFeSefaz: Result        := 'CancelarMDFeSefaz';
    TMDFeAPI_ConsultarMDFe: Result            := 'ConsultarMDFe';
    TMDFeAPI_MDFeOnline: Result               := 'MDFeOnLine';
    TMDFeAPI_ImprimeMDFeDAMDFE: Result        := 'ImprimeMDFeDAMDFE';
    TMDFeAPI_ImprimeEventoMDFe: Result        := 'ImprimeEventoMDFe';
    TMDFeAPI_ImprimeMDFeDAMDFEPeloXML: Result := 'ImprimeMDFeDAMDFEPeloXML';
    TMDFeAPI_GeraMDFePDFPeloXML: Result       := 'GeraMDFePDFPeloXML';
    TMDFeAPI_EncerrarMDFe: Result             := 'EncerrarMDFe';
    TMDFeAPI_IncluirDFe: Result               := 'IncluirDFe';
    TMDFeAPI_IncluirCondutor: Result          := 'IncluirCondutor';
    TMDFeAPI_GeraMDFePreviaPDFPeloXML: Result := 'GeraMDFePreviaPDFPeloXML';
    TMDFeAPI_SetImprimirMDFe: Result          := 'SetImprimirMDFe';
    TMDFeAPI_RetornaEmailsMDFe: Result        := 'RetornaEmailsMDFe';
    TMDFeAPI_GetXMLEventoMDFe: Result         := 'GetXMLEventoMDFe';
    TMDFeAPI_ConsultaXMLAutenticado: Result   := 'ConsultaXMLAutenticado';
  end;

end;

class function TEnum.ServicosMiddlewareAPIFromStr(const pValor: string): TEnumServicos_TMiddlewareAPI;
begin
  if UpperCase(pValor) = UpperCase('RegistraDocumento') then
    Result := TMiddlewareAPI_RegistraDocumento
  else if UpperCase(pValor) = UpperCase('CSRT') then
    Result := TMiddlewareAPI_CSRT
  else if UpperCase(pValor) = UpperCase('ConsultaQtdDocsPorCNPJ') then
    Result := TMiddlewareAPI_ConsultaQtdDocsPorCNPJ
  else if UpperCase(pValor) = UpperCase('AlterarDataMaximaLicencaControle') then
    Result := TMiddlewareAPI_AlterarDataMaximaLicencaControle
  else  Result := TMiddlewareAPI_NaoEncontrado;

end;

class function TEnum.ServicosMiddlewareAPIToStr(const pEnum: TEnumServicos_TMiddlewareAPI): string;
begin
  case pEnum of
    TMiddlewareAPI_NaoEncontrado: Result          := '';
    TMiddlewareAPI_RegistraDocumento: Result      := 'RegistraDocumento';
    TMiddlewareAPI_CSRT: Result                   := 'CSRT';
    TMiddlewareAPI_ConsultaQtdDocsPorCNPJ: Result := 'ConsultaQtdDocsPorCNPJ';
    TMiddlewareAPI_AlterarDataMaximaLicencaControle: Result      := 'AlterarDataMaximaLicencaControle';
  end;
end;

class function TEnum.ServicosNFeAPIFromStr(const pValor: string): TEnumServicos_TNFeAPI;
begin
  Result := TNFeAPI_NaoEncontrado;
  if UpperCase(pValor) = UpperCase('AutenticaSEFAZ') then
    Result := TNFeAPI_AutenticaSEFAZ
  else if UpperCase(pValor) = UpperCase('ProcessaXMLs') then
    Result := TNFeAPI_ProcessaXMLs
  else if UpperCase(pValor) = UpperCase('HoraSefazOnline') then
    Result := TNFeAPI_HoraSefazOnline
  else if UpperCase(pValor) = UpperCase('SefazOnLine') then
    Result := TNFeAPI_SefazOnLine
  else if UpperCase(pValor) = UpperCase('CancelarNFeSEFAZ') then
    Result := TNFeAPI_CancelarNFeSEFAZ
  else if UpperCase(pValor) = UpperCase('CancelarNFe') then
    Result := TNFeAPI_CancelarNFe
  else if UpperCase(pValor) = UpperCase('CancelarNFCe') then
    Result := TNFeAPI_CancelarNFCe
  else if UpperCase(pValor) = UpperCase('CartaCorrecao') then
    Result := TNFeAPI_CartaCorrecao
  else if UpperCase(pValor) = UpperCase('CancelaCFeSAT') then
    Result := TNFeAPI_CancelaCFeSAT
  else if UpperCase(pValor) = UpperCase('Token') then
    Result := TNFeAPI_Token
  else if UpperCase(pValor) = UpperCase('TokenID') then
    Result := TNFeAPI_TokenID
  else if UpperCase(pValor) = UpperCase('Certificado') then
    Result := TNFeAPI_Certificado
  else if UpperCase(pValor) = UpperCase('SenhaCertificado') then
    Result := TNFeAPI_SenhaCertificado
  else if UpperCase(pValor) = UpperCase('AutenticaCFeSAT') then
    Result := TNFeAPI_AutenticaCFeSAT
  else if UpperCase(pValor) = UpperCase('ConverteArqNF') then
    Result := TNFeAPI_ConverteArqNF
  else if UpperCase(pValor) = UpperCase('ValidaArqNF') then
    Result := TNFeAPI_ValidaArqNF
  else if UpperCase(pValor) = UpperCase('AutenticaArqNF') then
    Result := TNFeAPI_AutenticaArqNF
  else if UpperCase(pValor) = UpperCase('AutenticaCFeSATArqNF') then
    Result := TNFeAPI_AutenticaCFeSATArqNF
  else if UpperCase(pValor) = UpperCase('ConsultaXMLAutenticado') then
    Result := TNFeAPI_ConsultaXMLAutenticado
  else if UpperCase(pValor) = UpperCase('SATAtivo') then
    Result := TNFeAPI_SATAtivo
  else if UpperCase(pValor) = UpperCase('InutilizaSEFAZ') then
    Result := TNFeAPI_InutilizaSEFAZ
  else if UpperCase(pValor) = UpperCase('ReplicaDadosGuarda') then
    Result := TNFeAPI_ReplicaDadosGuarda
  else if UpperCase(pValor) = UpperCase('GetProximaNota') then
    Result := TNFeAPI_GetProximaNota
  else if UpperCase(pValor) = UpperCase('SetProximaNota') then
    Result := TNFeAPI_SetProximaNota
  else if UpperCase(pValor) = UpperCase('ZerarNumeroNota') then
    Result := TNFeAPI_ZerarNumeroNota
  else if UpperCase(pValor) = UpperCase('EnviaEmailGuarda') then
    Result := TNFeAPI_EnviaEmailGuarda
  else if UpperCase(pValor) = UpperCase('ImprimeDANFE') then
    Result := TNFeAPI_ImprimeDANFE
  else if UpperCase(pValor) = UpperCase('ConsultaNF') then
    Result := TNFeAPI_ConsultaNF
  else if UpperCase(pValor) = UpperCase('GetUltimaNota') then
    Result := TNFeAPI_GetUltimaNota
  else if UpperCase(pValor) = UpperCase('AutenticaNFSeAssinc') then
    Result := TNFeAPI_AutenticaNFSeAssinc
  else if UpperCase(pValor) = UpperCase('ImprimeDANFEPeloXML') then
    Result := TNFeAPI_ImprimeDANFEPeloXML
  else if UpperCase(pValor) = UpperCase('GeraPDFPeloXML') then
    Result := TNFeAPI_GeraPDFPeloXML
  else if UpperCase(pValor) = UpperCase('ImprimeEventoNFe') then
    Result := TNFeAPI_ImprimeEventoNFe
  else if UpperCase(pValor) = UpperCase('EnviaRPSsParaPrefeitura') then
    Result := TNFeAPI_EnviaRPSsParaPrefeitura
  else if UpperCase(pValor) = UpperCase('ConsultaRPSsNaPrefeitura') then
    Result := TNFeAPI_ConsultaRPSsNaPrefeitura
  else if UpperCase(pValor) = UpperCase('SituacaoGuarda') then
    Result := TNFeAPI_SituacaoGuarda
  else if UpperCase(pValor) = UpperCase('SituacaoGuardaParaNFSe') then
    Result := TNFeAPI_SituacaoGuardaParaNFSe
  else if UpperCase(pValor) = UpperCase('AutenticaErpNFeSefaz') then
    Result := TNFeAPI_AutenticaErpNFeSefaz
  else if UpperCase(pValor) = UpperCase('ConsultaStatusOperacionalSAT') then
    Result := TNFeAPI_ConsultaStatusOperacionalSAT
  else if UpperCase(pValor) = UpperCase('GetGuarda') then
    Result := TNFeAPI_GetGuarda
  else if UpperCase(pValor) = UpperCase('RegerarXMLNaGuarda') then
    Result := TNFeAPI_RegerarXMLNaGuarda
  else if UpperCase(pValor) = UpperCase('GeraXMLDFeFromTransacaoPOS') then
    Result := TNFeAPI_GeraXMLDFeFromTransacaoPOS
  else if UpperCase(pValor) = UpperCase('AutenticaCFeSATComplementar') then
    Result := TNFeAPI_AutenticaCFeSATComplementar
  else if UpperCase(pValor) = UpperCase('ConsultaPeloUltimoNSU') then
    Result := TNFeAPI_ConsultaPeloUltimoNSU
  else if UpperCase(pValor) = UpperCase('ManifestarNFe') then
    Result := TNFeAPI_ManifestarNFe
  else if UpperCase(pValor) = UpperCase('GeraPreviaPDFPeloXML') then
    Result := TNFeAPI_GeraPreviaPDFPeloXML
  else if UpperCase(pValor) = UpperCase('SetImprimirNFe') then
    Result := TNFeAPI_SetImprimirNFe
  else if UpperCase(pValor) = UpperCase('CancelaNFSePeloRPS') then
    Result := TNFeAPI_CancelaNFSePeloRPS
  else if UpperCase(pValor) = UpperCase('GeraPDFEventoNFe') then
    Result := TNFeAPI_GeraPDFEventoNFe
  else if UpperCase(pValor) = UpperCase('RetornaEmailsNFe') then
    Result := TNFeAPI_RetornaEmailsNFe
  else if UpperCase(pValor) = UpperCase('GetXMLEventoNFe') then
    Result := TNFeAPI_GetXMLEventoNFe
  else if UpperCase(pValor) = UpperCase('GeraPDFPeloXMLNFSe') then
    Result := TNFeAPI_GeraPDFPeloXMLNFSe
  else if UpperCase(pValor) = UpperCase('GeraPDFPeloNroNotaNFSe') then
    Result := TNFeAPI_GeraPDFPeloNroNotaNFSe
  else if UpperCase(pValor) = UpperCase('ImprimeDANFSEPeloXML') then
    Result := TNFeAPI_ImprimeDANFSEPeloXML
  else if UpperCase(pValor) = UpperCase('ConsultarNumeroSessaoSAT') then
    Result := TNFeAPI_ConsultarNumeroSessaoSAT
  else if UpperCase(pValor) = UpperCase('ConsultaLoteCFeSAT') then
    Result := TNFeAPI_ConsultaLoteCFeSAT
  else if UpperCase(pValor) = UpperCase('AtualizaSituacaoNFSe') then
    Result := TNFeAPI_AtualizaSituacaoNFSe
  else if UpperCase(pValor) = UpperCase('ConsultarUltimaSessaoFiscalSAT') then
    Result := TNFeAPI_ConsultarUltimaSessaoFiscalSAT
  else if UpperCase(pValor) = UpperCase('ConsultarAutenticacaoSAT') then
    Result := TNFeAPI_ConsultarAutenticacaoSAT
       ;
end;

class function TEnum.ServicosNFeAPIToStr(const pEnum: TEnumServicos_TNFeAPI): string;
begin
  case pEnum of
    TNFeAPI_NaoEncontrado: result                  := '';
    TNFeAPI_AutenticaSEFAZ: result                 := 'AutenticaSEFAZ';
    TNFeAPI_ProcessaXMLs: result                   := 'ProcessaXMLs';
    TNFeAPI_HoraSefazOnline: result                := 'HoraSefazOnline';
    TNFeAPI_SefazOnLine: result                    := 'SefazOnLine';
    TNFeAPI_CancelarNFeSEFAZ: result               := 'CancelarNFeSEFAZ';
    TNFeAPI_CancelarNFe: result                    := 'CancelarNFe';
    TNFeAPI_CancelarNFCe: result                   := 'CancelarNFCe';
    TNFeAPI_CartaCorrecao: result                  := 'CartaCorrecao';
    TNFeAPI_CancelaCFeSAT: result                  := 'CancelaCFeSAT';
    TNFeAPI_Token: result                          := 'Token';
    TNFeAPI_TokenID: result                        := 'TokenID';
    TNFeAPI_Certificado: result                    := 'Certificado';
    TNFeAPI_SenhaCertificado: result               := 'SenhaCertificado';
    TNFeAPI_AutenticaCFeSAT: result                := 'AutenticaCFeSAT';
    TNFeAPI_ConverteArqNF: result                  := 'ConverteArqNF';
    TNFeAPI_ValidaArqNF: result                    := 'ValidaArqNF';
    TNFeAPI_AutenticaArqNF: result                 := 'AutenticaArqNF';
    TNFeAPI_AutenticaCFeSATArqNF: result           := 'AutenticaCFeSATArqNF';
    TNFeAPI_ConsultaXMLAutenticado: result         := 'ConsultaXMLAutenticado';
    TNFeAPI_SATAtivo: result                       := 'SATAtivo';
    TNFeAPI_InutilizaSEFAZ: result                 := 'InutilizaSEFAZ';
    TNFeAPI_ReplicaDadosGuarda: result             := 'ReplicaDadosGuarda';
    TNFeAPI_GetProximaNota: result                 := 'GetProximaNota';
    TNFeAPI_SetProximaNota: result                 := 'SetProximaNota';
    TNFeAPI_ZerarNumeroNota: result                := 'ZerarNumeroNota';
    TNFeAPI_EnviaEmailGuarda: result               := 'EnviaEmailGuarda';
    TNFeAPI_ImprimeDANFE: result                   := 'ImprimeDANFE';
    TNFeAPI_ConsultaNF: result                     := 'ConsultaNF';
    TNFeAPI_GetUltimaNota: result                  := 'GetUltimaNota';
    TNFeAPI_AutenticaNFSeAssinc: result            := 'AutenticaNFSeAssinc';
    TNFeAPI_ImprimeDANFEPeloXML: result            := 'ImprimeDANFEPeloXML';
    TNFeAPI_GeraPDFPeloXML: result                 := 'GeraPDFPeloXML';
    TNFeAPI_ImprimeEventoNFe: result               := 'ImprimeEventoNFe';
    TNFeAPI_EnviaRPSsParaPrefeitura: result        := 'EnviaRPSsParaPrefeitura';
    TNFeAPI_ConsultaRPSsNaPrefeitura: result       := 'ConsultaRPSsNaPrefeitura';
    TNFeAPI_SituacaoGuarda: result                 := 'SituacaoGuarda';
    TNFeAPI_SituacaoGuardaParaNFSe: result         := 'SituacaoGuardaParaNFSe';
    TNFeAPI_AutenticaErpNFeSefaz: result           := 'AutenticaErpNFeSefaz';
    TNFeAPI_ConsultaStatusOperacionalSAT: result   := 'ConsultaStatusOperacionalSAT';
    TNFeAPI_GetGuarda: Result                      := 'GetGuarda';
    TNFeAPI_RegerarXMLNaGuarda: Result             := 'RegerarXMLNaGuarda';
    TNFeAPI_GeraXMLDFeFromTransacaoPOS: Result     := 'GeraXMLDFeFromTransacaoPOS';
    TNFeAPI_AutenticaCFeSATComplementar: result    := 'AutenticaCFeSATComplementar';
    TNFeAPI_ConsultaPeloUltimoNSU: Result          := 'ConsultaPeloUltimoNSU';
    TNFeAPI_ManifestarNFe: Result                  := 'ManifestarNFe';
    TNFeAPI_GeraPreviaPDFPeloXML: Result           := 'GeraPreviaPDFPeloXML';
    TNFeAPI_SetImprimirNFe: Result                 := 'SetImprimirNFe';
    TNFeAPI_GeraPDFEventoNFe: Result               := 'GeraPDFEventoNFe';
    TNFeAPI_CancelaNFSePeloRPS: Result             := 'TNFeAPI_CancelaNFSePeloRPS';
    TNFeAPI_RetornaEmailsNFe: Result               := 'RetornaEmailsNFe';
    TNFeAPI_GetXMLEventoNFe: Result                := 'GetXMLEventoNFe';
    TNFeAPI_GeraPDFPeloXMLNFSe: Result             := 'GeraPDFPeloXMLNFSe';
    TNFeAPI_ImprimeDANFSEPeloXML: Result           := 'ImprimeDANFSEPeloXML';
    TNFeAPI_ConsultarNumeroSessaoSAT: Result       := 'ConsultarNumeroSessaoSAT';
    TNFeAPI_ConsultaLoteCFeSAT: Result             := 'ConsultaLoteCFeSAT';
    TNFeAPI_AtualizaSituacaoNFSe: Result           := 'AtualizaSituacaoNFSe';
    TNFeAPI_ConsultarUltimaSessaoFiscalSAT: Result := 'ConsultarUltimaSessaoFiscalSAT';
    TNFeAPI_ConsultarAutenticacaoSAT: Result       := 'ConsultarAutenticacaoSAT';
  end;
end;

class function TEnum.ServicosNFeLocalAPIFromStr(const pValor: string): TEnumServicos_TNFeLocalAPI;
begin
  Result := TNFeLocalAPI_NaoEncontrado;
  if UpperCase(pValor) = UpperCase('ConsultaFormaEmissaoCFe') then
    Result := TNFeLocalAPI_ConsultaFormaEmissaoCFe;
end;

class function TEnum.ServicosNFeLocalAPIToStr(const pEnum: TEnumServicos_TNFeLocalAPI): string;
begin
  case pEnum of
    TNFeLocalAPI_NaoEncontrado: result           := '';
    TNFeLocalAPI_ConsultaFormaEmissaoCFe: result := 'ConsultaFormaEmissaoCFe';
  end;
end;

class function TEnum.ServicosSSLAPIFromStr(const pValor: string): TEnumServicos_TSSLAPI;
begin
  Result := TSSLAPI_NaoEncontrado;
  if UpperCase(pValor) = UpperCase('AssinarXML') then
    Result := TSSLAPI_AssinarXML;
  if UpperCase(pValor) = UpperCase('DadosCertificado') then
    Result := TSSLAPI_DadosCertificado;
end;

class function TEnum.ServicosSSLAPIToStr(const pEnum: TEnumServicos_TSSLAPI): string;
begin
  case pEnum of
    TSSLAPI_NaoEncontrado: result    := '';
    TSSLAPI_AssinarXML: result       := 'AssinarXML';
    TSSLAPI_DadosCertificado: result := 'DadosCertificado';
  end;
end;

class function TEnum.ServicosSSLLocalAPIFromStr(const pValor: string): TEnumServicos_TSSLLocalAPI;
begin
  Result := TSSLLocalAPI_NaoEncontrado;
  if UpperCase(pValor) = UpperCase('DadosCertificado') then
    Result := TSSLLocalAPI_DadosCertificado;
end;

class function TEnum.ServicosSSLLocalAPIToStr(const pEnum: TEnumServicos_TSSLLocalAPI): string;
begin
  case pEnum of
    TSSLLocalAPI_NaoEncontrado: result    := '';
    TSSLLocalAPI_DadosCertificado: result := 'DadosCertificado';
  end;
end;

class function TEnum.ServicosVeiculoAPIFromStr(const pValor: String): TEnumServicos_TVeiculoAPI;
begin
  Result := TVeiculoAPI_NaoEncontrado;
  if UpperCase(pValor) = UpperCase('ConsultaPlaca') then
    Result := TVeiculoAPI_ConsultaPlaca
  else if UpperCase(pValor) = UpperCase('Login') then
    Result := TVeiculoAPI_Login
end;

class function TEnum.ServicosVeiculoAPIToStr(const pEnum: TEnumServicos_TVeiculoAPI): string;
begin
case pEnum of
    TVeiculoAPI_NaoEncontrado                 :Result := '';
    TVeiculoAPI_ConsultaPlaca                 :Result := 'ConsultaPlaca';
    TVeiculoAPI_Login                         :Result := 'Login';
  end;
end;

class function TEnum.ServicosPAFAPIFromStr(const pValor: string): TEnumServicos_TPAFAPI;
begin
  { TODO: Métodos mantidos para compatibilidade com Checkout }
  if UpperCase(pValor) = UpperCase('PermiteGeracaoFiscoReducaoZ') then
    Result := TPAFAPI_PermiteGeracaoFiscoReducaoZ
  else if UpperCase(pValor) = UpperCase('PermiteGeracaoFiscoEstoque') then
    Result := TPAFAPI_PermiteGeracaoFiscoEstoque
  else if UpperCase(pValor) = UpperCase('TransmissaoFiscoReducaoZ') then
    Result := TPAFAPI_TransmissaoFiscoReducaoZ
  else if UpperCase(pValor) = UpperCase('TransmissaoFiscoEstoque') then
    Result := TPAFAPI_TransmissaoFiscoEstoque
  else if UpperCase(pValor) = UpperCase('InclusaoFiscoReducaoZ') then
    Result := TPAFAPI_InclusaoFiscoReducaoZ
  else if UpperCase(pValor) = UpperCase('InclusaoFiscoEstoque') then
    Result := TPAFAPI_InclusaoFiscoEstoque
  else if UpperCase(pValor) = UpperCase('MensagemPendenciasFiscoReducaoZ') then
    Result := TPAFAPI_MensagemPendenciasFiscoReducaoZ
  else if UpperCase(pValor) = UpperCase('MensagemPendenciasFiscoEstoque') then
    Result := TPAFAPI_MensagemPendenciasFiscoEstoque
    { TODO: Métodos mantidos para compatibilidade com Checkout }
  else if UpperCase(pValor) = UpperCase('PermiteGeracaoFiscoReducaoZ_2') then
    Result := TPAFAPI_PermiteGeracaoFiscoReducaoZ_2
  else if UpperCase(pValor) = UpperCase('PermiteGeracaoFiscoEstoque_2') then
    Result := TPAFAPI_PermiteGeracaoFiscoEstoque_2
  else if UpperCase(pValor) = UpperCase('TransmissaoFiscoReducaoZ_2') then
    Result := TPAFAPI_TransmissaoFiscoReducaoZ_2
  else if UpperCase(pValor) = UpperCase('TransmissaoFiscoEstoque_2') then
    Result := TPAFAPI_TransmissaoFiscoEstoque_2
  else if UpperCase(pValor) = UpperCase('InclusaoFiscoReducaoZ_2') then
    Result := TPAFAPI_InclusaoFiscoReducaoZ_2
  else if UpperCase(pValor) = UpperCase('InclusaoFiscoEstoque_2') then
    Result := TPAFAPI_InclusaoFiscoEstoque_2
  else if UpperCase(pValor) = UpperCase('MensagemPendenciasFiscoReducaoZ_2') then
    Result := TPAFAPI_MensagemPendenciasFiscoReducaoZ_2
  else if UpperCase(pValor) = UpperCase('MensagemPendenciasFiscoEstoque_2') then
    Result := TPAFAPI_MensagemPendenciasFiscoEstoque_2
  else if UpperCase(pValor) = UpperCase('UltimaTransmissaoFiscoReducaoZ') then
    Result := TPAFAPI_UltimaTransmissaoFiscoReducaoZ
  else if UpperCase(pValor) = UpperCase('UltimaTransmissaoFiscoEstoque') then
    Result := TPAFAPI_UltimaTransmissaoFiscoEstoque
  else if UpperCase(pValor) = UpperCase('UltimoRegistroFiscoReducaoZ') then
    Result := TPAFAPI_UltimoRegistroFiscoReducaoZ
  else if UpperCase(pValor) = UpperCase('UltimoRegistroFiscoEstoque') then
    Result := TPAFAPI_UltimoRegistroFiscoEstoque
  else if UpperCase(pValor) = UpperCase('MensagemPendenciasPublicFiscoReducaoZ') then
    Result := TPAFAPI_MensagemPendenciasPublicFiscoReducaoZ
  else if UpperCase(pValor) = UpperCase('MensagemPendenciasPublicFiscoEstoque') then
    Result := TPAFAPI_MensagemPendenciasPublicFiscoEstoque
  else if UpperCase(pValor) = UpperCase('ConsultarPerfilEstado') then
    Result := TPAFAPI_ConsultarPerfilEstado
  else if UpperCase(pValor) = UpperCase('GeraTabelaPerfilUFWiki') then
    Result := TPAFAPI_GeraTabelaPerfilUFWiki
  else if UpperCase(pValor) = UpperCase('VendasIdentificadas') then
    Result := TPAFAPI_VendasIdentificadas
  else if UpperCase(pValor) = UpperCase('GeracaoFiscoReducaoZ') then
    Result := TPAFAPI_GeracaoFiscoReducaoZ
  else if UpperCase(pValor) = UpperCase('GeracaoFiscoEstoque') then
    Result := TPAFAPI_GeracaoFiscoEstoque
  else if UpperCase(pValor) = UpperCase('DAVEmitidos') then
    Result := TPAFAPI_DAVEmitidos
  else if UpperCase(pValor) = UpperCase('ImprimeDAV') then
    Result := TPAFAPI_ImprimeDAV
  else if UpperCase(pValor) = UpperCase('ParametrosConfiguracao') then
    Result := TPAFAPI_ParametrosConfiguracao
  else if UpperCase(pValor) = UpperCase('TabelaIndiceTecnicoProducao') then
    Result := TPAFAPI_TabelaIndiceTecnicoProducao
  else if UpperCase(pValor) = UpperCase('IdentificacaoPAFECF') then
    Result := TPAFAPI_IdentificacaoPAFECF
  else if UpperCase(pValor) = UpperCase('RegistrosPAFECF') then
    Result := TPAFAPI_RegistrosPAFECF
  else if UpperCase(pValor) = UpperCase('GeraArquivoRequisicaoExterna') then
    Result := TPAFAPI_GeraArquivoRequisicaoExterna
  else
    Result := TPAFAPI_NaoEncontrado;
end;

class function TEnum.ServicosPAFAPIToStr(const pEnum: TEnumServicos_TPAFAPI): string;
begin
  case pEnum of
    TPAFAPI_NaoEncontrado: Result := '';
    { TODO: Métodos mantidos para compatibilidade com Checkout }
    TPAFAPI_PermiteGeracaoFiscoReducaoZ: Result     := 'PermiteGeracaoFiscoReducaoZ';
    TPAFAPI_PermiteGeracaoFiscoEstoque: Result      := 'PermiteGeracaoFiscoEstoque';
    TPAFAPI_InclusaoFiscoReducaoZ: Result           := 'InclusaoFiscoReducaoZ';
    TPAFAPI_InclusaoFiscoEstoque: Result            := 'InclusaoFiscoEstoque';
    TPAFAPI_TransmissaoFiscoReducaoZ: Result        := 'TransmissaoFiscoReducaoZ';
    TPAFAPI_TransmissaoFiscoEstoque: Result         := 'TransmissaoFiscoEstoque';
    TPAFAPI_MensagemPendenciasFiscoReducaoZ: Result := 'MensagemPendenciasFiscoReducaoZ';
    TPAFAPI_MensagemPendenciasFiscoEstoque: Result  := 'MensagemPendenciasFiscoEstoque';
    { TODO: Métodos mantidos para compatibilidade com Checkout }
    TPAFAPI_PermiteGeracaoFiscoReducaoZ_2: Result         := 'PermiteGeracaoFiscoReducaoZ_2';
    TPAFAPI_PermiteGeracaoFiscoEstoque_2: Result          := 'PermiteGeracaoFiscoEstoque_2';
    TPAFAPI_InclusaoFiscoReducaoZ_2: Result               := 'InclusaoFiscoReducaoZ_2';
    TPAFAPI_InclusaoFiscoEstoque_2: Result                := 'InclusaoFiscoEstoque_2';
    TPAFAPI_TransmissaoFiscoReducaoZ_2: Result            := 'TransmissaoFiscoReducaoZ_2';
    TPAFAPI_TransmissaoFiscoEstoque_2: Result             := 'TransmissaoFiscoEstoque_2';
    TPAFAPI_MensagemPendenciasFiscoReducaoZ_2: Result     := 'MensagemPendenciasFiscoReducaoZ_2';
    TPAFAPI_MensagemPendenciasFiscoEstoque_2: Result      := 'MensagemPendenciasFiscoEstoque_2';
    TPAFAPI_UltimaTransmissaoFiscoReducaoZ: Result        := 'UltimaTransmissaoFiscoReducaoZ';
    TPAFAPI_UltimaTransmissaoFiscoEstoque: Result         := 'UltimaTransmissaoFiscoEstoque';
    TPAFAPI_UltimoRegistroFiscoReducaoZ: Result           := 'UltimoRegistroFiscoReducaoZ';
    TPAFAPI_UltimoRegistroFiscoEstoque: Result            := 'UltimoRegistroFiscoEstoque';
    TPAFAPI_MensagemPendenciasPublicFiscoReducaoZ: Result := 'MensagemPendenciasPublicFiscoReducaoZ';
    TPAFAPI_MensagemPendenciasPublicFiscoEstoque: Result  := 'MensagemPendenciasPublicFiscoEstoque';
    TPAFAPI_ConsultarPerfilEstado: Result                 := 'ConsultarPerfilEstado';
    TPAFAPI_GeraTabelaPerfilUFWiki: Result                := 'GeraTabelaPerfilUFWiki';
    TPAFAPI_VendasIdentificadas: Result                   := 'VendasIdentificadas';
    TPAFAPI_GeracaoFiscoReducaoZ: Result                  := 'GeracaoFiscoReducaoZ';
    TPAFAPI_GeracaoFiscoEstoque: Result                   := 'GeracaoFiscoEstoque';
    TPAFAPI_DAVEmitidos: Result                           := 'DAVEmitidos';
    TPAFAPI_ImprimeDAV: Result                            := 'ImprimeDAV';
    TPAFAPI_ParametrosConfiguracao: Result                := 'ParametrosConfiguracao';
    TPAFAPI_TabelaIndiceTecnicoProducao: Result           := 'TabelaIndiceTecnicoProducao';
    TPAFAPI_IdentificacaoPAFECF: Result                   := 'IdentificacaoPAFECF';
    TPAFAPI_RegistrosPAFECF: Result                       := 'RegistrosPAFECF';
    TPAFAPI_GeraArquivoRequisicaoExterna: Result          := 'GeraArquivoRequisicaoExterna';
  end;
end;

class function TEnum.ServicosPafLocalAPIFromStr(const pValor: string): TEnumServicos_TPafLocalAPI;
begin
  if UpperCase(pValor) = UpperCase('ArquivosPAFECF') then
    Result := TPafLocalAPI_ArquivosPAFECF
  else
    Result := TPafLocalAPI_NaoEncontrado;
end;

class function TEnum.Sexo(const pEnum: TEnumSexo): string;
begin
  case pEnum of
    sxNaoConhecido: Result := '0 - Não conhecido';
    sxMasculino: Result    := '1 - Masculino';
    sxFeminino: Result     := '2 - Feminino';
  end;
end;

class function TEnum.SexoFromInt(const pValor: Integer): TEnumSexo;
begin
  Result := sxNaoConhecido;
  if pValor = 0 then begin
    Result := sxNaoConhecido;
  end else if pValor = 1 then begin
    Result := sxMasculino;
  end else if pValor = 2 then begin
    Result := sxFeminino;
  end;
end;

class function TEnum.SexoToInt(const pEnum: TEnumSexo): Integer;
begin
  case pEnum of
    sxNaoConhecido: Result := 0; // 0 - Não conhecido
    sxMasculino: Result    := 1; // 1 - Masculino
    sxFeminino: Result     := 2; // 2 - Feminino
    else
      Result := 0;
  end;
end;

class function TEnum.SitImpressaoEstorno(const pEnum: TEnumSitImpressaoEstorno): string;
begin
  case pEnum of
    sieImpressa: result := 'I - Impressa';
    siePendente: result := 'P - Pendente para Impressão';
    sieNulo: result     := ''; // Nulo
  end;
end;

class function TEnum.SitImpressaoEstornoFromStr(const pValor: string): TEnumSitImpressaoEstorno;
begin
  if pValor = 'I' then begin
    result := sieImpressa;
  end else if pValor = 'P' then begin
    result := siePendente;
  end else begin
    result := sieNulo;
  end;
end;

class function TEnum.SitImpressaoEstornoToStr(const pEnum: TEnumSitImpressaoEstorno): string;
begin
  case pEnum of
    sieImpressa: result := 'I'; // I - Impressa
    siePendente: result := 'P'; // P - Pendente para Impressão
    sieNulo: result     := '';  // Nulo
  end;
end;

class function TEnum.SitKit(const pEnum: TEnumSitKit): string;
begin
  case pEnum of
    skHeader: result  := '1 - Header';
    skNormal: result  := '2 - Normal';
    skItemKit: result := '3 - Item kit';
  end;
end;

class function TEnum.SitKitFromStr(const pValor: string): TEnumSitKit;
begin
  if pValor = '1' then begin
    Result := skHeader;
  end else if pValor = '2' then begin
    Result := skNormal;
  end else if pValor = '3' then begin
    Result := skItemKit;
  end;
end;

class function TEnum.SitKitToStr(const pEnum: TEnumSitKit): string;
begin
  case pEnum of
    skHeader: result  := '1';
    skNormal: result  := '2';
    skItemKit: result := '3';
  end;
end;

class function TEnum.SituacaoAnaliseCredito(const pEnum: TEnumSituacaoAnaliseCredito): string;
begin
  case pEnum of
    TEnumSituacaoAnaliseCreditoAberto: result         := 'A - Aberto';
    TEnumSituacaoAnaliseCreditoAprovadoLimite: result := '1 - Aprovado dentro do limite';
    TEnumSituacaoAnaliseCreditoAprovadoVenda: result  := '2 - Aprovado somente para esta venda';
    TEnumSituacaoAnaliseCreditoReprovado: result      := 'R - Reprovado';
  end;
end;

class function TEnum.SituacaoAnaliseCreditoFromStr(const pValor: string): TEnumSituacaoAnaliseCredito;
begin
  if pValor = 'A' then
    result := TEnumSituacaoAnaliseCreditoAberto
  else if pValor = '1' then
    result := TEnumSituacaoAnaliseCreditoAprovadoLimite
  else if pValor = '2' then
    result := TEnumSituacaoAnaliseCreditoAprovadoVenda
  else if pValor = 'R' then
    result := TEnumSituacaoAnaliseCreditoReprovado
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumSituacaoAnaliseCredito.', [pValor]));
end;

class function TEnum.SituacaoAnaliseCreditoToStr(const pEnum: TEnumSituacaoAnaliseCredito): string;
begin
  case pEnum of
    TEnumSituacaoAnaliseCreditoAberto: result         := 'A';
    TEnumSituacaoAnaliseCreditoAprovadoLimite: result := '1';
    TEnumSituacaoAnaliseCreditoAprovadoVenda: result  := '2';
    TEnumSituacaoAnaliseCreditoReprovado: result      := 'R';
  end;
end;

class function TEnum.SituacaoCancelamento(const pEnum: TEnumSituacaoCancelamento): string;
begin
  case pEnum of
    scVendaCanceladaNoECF: result := 'C - Venda Cancelada no ECF';
    scDevolucao: result           := 'D - Devolução';
    scTransacaoCancelada: result  := 'T - Transação Cancelada';
    scOutros: result              := 'O - Outros';
    scEstornado: result           := 'E - Estornado';
  end;
end;

class function TEnum.SituacaoCancelamentoFromStr(const pValor: string): TEnumSituacaoCancelamento;
begin
  if pValor = 'C' then
    result := scVendaCanceladaNoECF
  else if pValor = 'D' then
    result := scDevolucao
  else if pValor = 'T' then
    result := scTransacaoCancelada
  else if pValor = 'O' then
    result := scOutros
  else
    result := scEstornado;
end;

class function TEnum.SituacaoCancelamentoToStr(const pEnum: TEnumSituacaoCancelamento): string;
begin
  case pEnum of
    scVendaCanceladaNoECF: result := 'C'; // C - Venda Cancelada no ECF
    scDevolucao: result           := 'D'; // D - Devolução
    scTransacaoCancelada: result  := 'T'; // T - Transação Cancelada
    scOutros: result              := 'O'; // O - Outros
    scEstornado: result           := 'E'; // E - Estornado
  end;
end;

class function TEnum.SituacaoCotacao(pTipo: string): TEnumSituacaoCotacao;
begin
  if pTipo = 'A' then
    Result := TEnumSituacaoCotacao_Aberta // A - Aberto
  else if pTipo = 'C' then
    Result := TEnumSituacaoCotacao_Cancelada // C - Cancelado
  else if pTipo = 'E' then
    Result := TEnumSituacaoCotacao_EnviadaFornecedor // E - Enviado ao Fornecedor
  else if pTipo = 'F' then
    Result := TEnumSituacaoCotacao_Finalizada // F - Finalizado
  else
    raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSituacaoCotacao.');
end;

class function TEnum.SituacaoCotacaoFornecedor(pTipo: string): TEnumSituacaoCotacaoFornecedor;
begin
  if pTipo = 'A' then
    Result := TEnumSituacaoCotacaoFornecedor_Aberta // A - Aberto
  else if pTipo = 'C' then
    Result := TEnumSituacaoCotacaoFornecedor_Cancelada // C - Cancelado
  else if pTipo = 'E' then
    Result := TEnumSituacaoCotacaoFornecedor_Enviada // E - Enviado
  else if pTipo = 'R' then
    Result := TEnumSituacaoCotacaoFornecedor_Recebida // R - Recebido
  else
    raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSituacaoCotacaoFornecedor.');
end;

class function TEnum.SituacaoCotacaoFornecedorToStr(pEnum: TEnumSituacaoCotacaoFornecedor): string;
begin
  case pEnum of
    TEnumSituacaoCotacaoFornecedor_Aberta: result    := 'A'; // A - Aberto
    TEnumSituacaoCotacaoFornecedor_Cancelada: result := 'C'; // C - Cancelado
    TEnumSituacaoCotacaoFornecedor_Enviada: result   := 'E'; // E - Enviado
    TEnumSituacaoCotacaoFornecedor_Recebida: result  := 'R'; // R - Recebido
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSituacaoCotacaoFornecedor.');
  end;
end;

class function TEnum.SituacaoCotacaoToStr(pEnum: TEnumSituacaoCotacao): string;
begin
  case pEnum of
    TEnumSituacaoCotacao_Aberta: result            := 'A'; // A - Aberto
    TEnumSituacaoCotacao_Cancelada: result         := 'C'; // C - Cancelado
    TEnumSituacaoCotacao_EnviadaFornecedor: result := 'E'; // E - Enviado ao Fornecedor
    TEnumSituacaoCotacao_Finalizada: result        := 'F'; // F - Finalizado
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumSituacaoCotacao.');
  end;
end;

class function TEnum.SituacaoDocEmitido(const pEnum: TEnumSituacaoDocEmitido): string;
begin
  case pEnum of
    tfCancelada: result := 'C';
    tfAberta: result    := 'A';
    tfQuitada: result   := 'Q';
  end;
end;

class function TEnum.SituacaoDocEmitidoFromStr(pSituacao: string): TEnumSituacaoDocEmitido;
begin
  if pSituacao = 'C' then begin
    result := tfCancelada;
  end else if pSituacao = 'A' then begin
    result := tfAberta;
  end else if pSituacao = 'Q' then begin
    result := tfQuitada;
  end;
end;

class function TEnum.SituacaoDocumentoSAT(const pEnum: TEnumSituacaoDocumentoSAT): string;
begin
  case pEnum of
    TEnumSituacaoDocumentoSAT_NaoVinculado: Result := '0 = Não Vinculado';
    TEnumSituacaoDocumentoSAT_Vinculado: Result    := '1 = Vinculado';
    TEnumSituacaoDocumentoSAT_VinculadoComDifergencia: Result := '2 = Vinculado com Divergência';
    else
         Result := '-1 = Não Definido';
  end;
end;

class function TEnum.SituacaoDocumentoSATFromInt(const pValor: Integer): TEnumSituacaoDocumentoSAT;
begin
  case pValor of
    0: Result := TEnumSituacaoDocumentoSAT_NaoVinculado; // 0 = Não Vinculado
    1: Result := TEnumSituacaoDocumentoSAT_Vinculado;    // 1 = Vinculado
    2: Result := TEnumSituacaoDocumentoSAT_VinculadoComDifergencia; // 2 = Vinculado com Divergência
    else
         Result := TEnumSituacaoDocumentoSAT_NaoDefinido; // -1 = Não Definido
  end;
end;

class function TEnum.SituacaoDocumentoSATToInt(const pEnum: TEnumSituacaoDocumentoSAT): Integer;
begin
  case pEnum of
    TEnumSituacaoDocumentoSAT_NaoVinculado: Result := 0; // 0 = Não Vinculado
    TEnumSituacaoDocumentoSAT_Vinculado: Result    := 1; // 1 = Vinculado
    TEnumSituacaoDocumentoSAT_VinculadoComDifergencia: Result := 2; // 2 = Vinculado com Divergência
    else
         Result := -1; //-1 = Não Definido
  end;
end;

class function TEnum.StatusB2BMercos(const pEnum: TEnumStatusB2BMercos): string;
begin
  case pEnum of
    TEnumStatusB2BMercos_EmAberto: Result  := '1 = Em aberto';
    TEnumStatusB2BMercos_Concluido: Result := '2 = Concluído';
    else
         Result := '-1 = Não Definido';
  end;
end;

class function TEnum.StatusB2BMercosFromInt(const pValor: Integer): TEnumStatusB2BMercos;
begin
  case pValor of
    1: Result := TEnumStatusB2BMercos_EmAberto;  // 1 = Em aberto
    2: Result := TEnumStatusB2BMercos_Concluido; // 2 = Concluído
    else
         Result := TEnumStatusB2BMercos_NaoDefinido; // -1 = Não Definido
  end;
end;

class function TEnum.StatusB2BMercosToInt(const pEnum: TEnumStatusB2BMercos): Integer;
begin
  case pEnum of
    TEnumStatusB2BMercos_EmAberto: Result  := 1; // 1 = Em aberto
    TEnumStatusB2BMercos_Concluido: Result := 2; // 2 = Concluído
    else
         Result := -1; //-1 = Não Definido
  end;
end;

class function TEnum.StatusFaturamentoMercos(const pEnum: TEnumStatusFaturamentoMercos): string;
begin
  case pEnum of
    TEnumStatusFaturamentoMercos_NaoFaturado: Result := '0 = Não faturado';
    TEnumStatusFaturamentoMercos_ParcialmenteFaturado: Result := '1 = Parcialmente faturado';
    TEnumStatusFaturamentoMercos_Faturado: Result := '2 = Faturado';
    else
         Result := '-1 = Não Definido';
  end;
end;

class function TEnum.StatusFaturamentoMercosFromStr(const pValor: string): TEnumStatusFaturamentoMercos;
begin
  if (pValor = '0') then
    Result := TEnumStatusFaturamentoMercos_NaoFaturado // 0 = Não faturado
  else if (pValor = '1') then
    Result := TEnumStatusFaturamentoMercos_ParcialmenteFaturado // 1 = Parcialmente faturado
  else if (pValor = '2') then
    Result := TEnumStatusFaturamentoMercos_Faturado // 2 = Faturado
  else
    Result := TEnumStatusFaturamentoMercos_NaoDefinido; // -1 = Não Definido
end;

class function TEnum.StatusFaturamentoMercosToStr(const pEnum: TEnumStatusFaturamentoMercos): string;
begin
  case pEnum of
    TEnumStatusFaturamentoMercos_NaoFaturado: Result := '0'; // 0 = Não faturado
    TEnumStatusFaturamentoMercos_ParcialmenteFaturado: Result := '1'; // 1 = Parcialmente faturado
    TEnumStatusFaturamentoMercos_Faturado: Result := '2'; // 2 = Faturado
    else
         Result := '-1'; // -1 = Não Definido
  end;
end;

class function TEnum.StatusImportacao(const pEnum: TEnumStatusImportacao): string;
begin
  if pEnum = siImportar then
    Result := '0-A Importar'
  else if pEnum = siOk then
    Result := '1-Importado'
  else if pEnum = siErro then
    Result := '2-Erro na Importação'
  else
    raise EEnumeradorInvalido.Create('Opção inválida para TEnumStatusImportacao.');
end;

class function TEnum.TipoObrigatoriedadeGatilhoCampanha(const pEnum: TEnumTipoObrigatoriedadeGatilhoCampanha): string;
begin
  case pEnum of
    TEnumTipoObrigatoriedadeGatilhoCampanha_ApenasUm: Result := 'U - Apenas uma das regras aplicadas sobre os produtos';
    TEnumTipoObrigatoriedadeGatilhoCampanha_Todas: Result := 'T - Todas as regras aplicadas sobre os produtos';
  end;
end;

class function TEnum.TipoObrigatoriedadeGatilhoCampanhaFromStr(const pValor: string): TEnumTipoObrigatoriedadeGatilhoCampanha;
begin
  if (pValor = 'T') then // T - Todas as regras aplicadas sobre os produtos
    Result := TEnumTipoObrigatoriedadeGatilhoCampanha_Todas
  else
    Result := TEnumTipoObrigatoriedadeGatilhoCampanha_ApenasUm; // U - Apenas uma das regras aplicadas sobre os produtos
end;

class function TEnum.TipoObrigatoriedadeGatilhoCampanhaToStr(const pEnum: TEnumTipoObrigatoriedadeGatilhoCampanha): string;
begin
  case pEnum of
    TEnumTipoObrigatoriedadeGatilhoCampanha_ApenasUm: Result := 'U'; // U - Apenas uma das regras aplicadas sobre os produtos
    TEnumTipoObrigatoriedadeGatilhoCampanha_Todas: Result := 'T'; // T - Todas as regras aplicadas sobre os produtos
  end;
end;

class function TEnum.TipoOperacaoDAO(const pEnum: TEnumTipoOperacaoDAO): string;
begin
  case pEnum of
    todInsert: Result := 'inserir';
    todUpdate: Result := 'atualizar';
    todDelete: Result := 'excluir';
  end;
end;

class function TEnum.TipoOperacaoTEF(const pEnum: TEnumTipoOperacaoTEF): string;
begin
  case pEnum of
    toCredito: result      := 'C - Crédito';
    toDebito: result       := 'D - Débito';
    toValePresente: result := 'P - Vale Presente';
    toNulo: result         := '';
  end;
end;

class function TEnum.TipoOperacaoTEFFromStr(const pValor: string): TEnumTipoOperacaoTEF;
begin
  if pValor = 'C' then
    Result := toCredito
  else if pValor = 'D' then
    Result := toDebito
  else if pValor = 'P' then
    Result := toValePresente
  else
    Result := toNulo;
end;

class function TEnum.TipoOperacaoTEFFromStrPosControle(const pValor: string): TEnumTipoOperacaoTEF;
begin
  // 00	cheque
  // 03	cartão voucher
  // 98	dinheiro
  // 99	outro tipo de cartão
  if pValor = '01' then // 01	cartão de débito
    Result := toDebito
  else if pValor = '02' then // 02	cartão de crédito
    Result := toCredito
  else
    Result := toNulo;
end;

class function TEnum.TipoOperacaoTEFToStr(const pEnum: TEnumTipoOperacaoTEF): string;
begin
  case pEnum of
    toCredito: result      := 'C'; // C - Crédito
    toDebito: result       := 'D'; // D - Débito
    toValePresente: result := 'P'; // P - Vale Presente
    toNulo: result         := '';  // Nulo
  end;
end;

class function TEnum.TipoPedido(const pEnum: TEnumTipoPedido): string;
begin
  case pEnum of
    tpDAV: Result      := 'O - DAV';
    tpDAVOS: Result    := 'S - DAV-OS';
    tpPrevenda: Result := 'P - Pré-Venda';
    else
         Result := '';
  end;
end;

class function TEnum.TipoPedidoFromStr(const pValor: string): TEnumTipoPedido;
begin
  if pValor = 'O' then begin
    Result := tpDAV;
  end else if pValor = 'S' then begin
    Result := tpDAVOS;
  end else if pValor = 'P' then begin
    Result := tpPrevenda;
  end else begin
    Result := tpDAVNulo;
  end;
end;

class function TEnum.TipoPedidoImpressaoPAFECF(const pEnum: TEnumTipoPedido): string;
begin
  case pEnum of
    tpDAV: Result      := 'ORCAMENTO';
    tpDAVOS: Result    := 'ORD. SERV';
    tpPrevenda: Result := 'PRE-VENDA';
    else
         Result := '';
  end;
end;

class function TEnum.TipoPedidoPAFECF(const pEnum: TEnumTipoPedido): string;
begin
  case pEnum of
    tpDAV: Result      := 'ORÇAMENTO';
    tpDAVOS: Result    := 'ORDEM DE SERVIÇO';
    tpPrevenda: Result := 'PRÉ-VENDA';
    else
         Result := '';
  end;
end;

class function TEnum.TipoPedidoToStr(const pEnum: TEnumTipoPedido): string;
begin
  case pEnum of
    tpDAV: Result      := 'O';
    tpDAVOS: Result    := 'S';
    tpPrevenda: Result := 'P';
    else
         Result := '';
  end;
end;

class function TEnum.TipoPortador(const pEnum: TEnumTipoPortador): string;
begin
  case pEnum of
    tpBancos: result     := 'B - Bancos';
    tpCartoes: result    := 'C - Cartões de Crédito';
    tpECF: result        := 'E - ECFs';
    tpLimites: result    := 'L - Limites C/C';
    tpOutros: result     := 'O - Outros';
    tpPortadores: result := 'P - Portadores';
  end;
end;

class function TEnum.TipoPortadorFromStr(const pValor: string): TEnumTipoPortador;
begin
  if pValor = 'B' then
    Result := tpBancos
  else if pValor = 'C' then
    Result := tpCartoes
  else if pValor = 'E' then
    Result := tpECF
  else if pValor = 'L' then
    Result := tpLimites
  else if pValor = 'O' then
    Result := tpOutros
  else if pValor = 'P' then
    Result := tpPortadores;
end;

class function TEnum.TipoPortadorToStr(const pEnum: TEnumTipoPortador): string;
begin
  case pEnum of
    tpBancos: result     := 'B';
    tpCartoes: result    := 'C';
    tpECF: result        := 'E';
    tpLimites: result    := 'L';
    tpOutros: result     := 'O';
    tpPortadores: result := 'P';
  end;
end;

class function TEnum.TipoProduto(const pEnum: TEnumTipoProduto): string;
begin
  case pEnum of
    tfMaterial: result     := '0 - Material';
    tfServico: result      := '1 - Serviço';
    tfTerceirizado: result := '2 - Terceirizado';
  end;
end;

class function TEnum.TipoProduto001(const pEnum: TEnumTipoProduto001): string;
begin
  case pEnum of
    tp001Material: result := 'M - Material';
    tp001Servico: result  := 'S - Serviço';
    tp001Nulo: result     := '';
  end;
end;

class function TEnum.TipoProduto001FromStr(const pValor: string): TEnumTipoProduto001;
begin
  if pValor = 'M' then begin
    Result := tp001Material;
  end else if pValor = 'S' then begin
    Result := tp001Servico;
  end else begin
    Result := tp001Nulo;
  end;
end;

class function TEnum.TipoProduto001ToStr(const pEnum: TEnumTipoProduto001): string;
begin
  case pEnum of
    tp001Material: result := 'M';
    tp001Servico: result  := 'S';
    tp001Nulo: result     := '';
  end;
end;

class function TEnum.TipoProdutoFromStr(const pValor: string): TEnumTipoProduto;
begin
  Result := tfMaterial;
  if pValor = '0' then begin
    result := tfMaterial;
  end else if pValor = '1' then begin
    result := tfServico;
  end else if pValor = '2' then begin
    result := tfTerceirizado;
  end;
end;

class function TEnum.TipoProdutoToStr(const pEnum: TEnumTipoProduto): string;
begin
  case pEnum of
    tfMaterial: result     := '0';
    tfServico: result      := '1';
    tfTerceirizado: result := '2';
  end;
end;

class function TEnum.TipoTecnicoItemOrc(const pEnum: TEnumTipoTecnicoItemOrc): string;
begin
  case pEnum of
    ttCompra: result := 'F - Compra';
    ttFrete: result  := 'T - Frete';
    ttNulo: result   := '';
  end;
end;

class function TEnum.TipoTecnicoItemOrcFromStr(const pValor: string): TEnumTipoTecnicoItemOrc;
begin
  if pValor = 'F' then begin
    result := ttCompra;
  end else if pValor = 'T' then begin
    result := ttFrete;
  end else begin
    result := ttNulo;
  end;
end;

class function TEnum.TipoTecnicoItemOrcToStr(const pEnum: TEnumTipoTecnicoItemOrc): string;
begin
  case pEnum of
    ttCompra: result := 'F'; // F - Compra
    ttFrete: result  := 'T'; // T - Frete
    ttNulo: result   := '';  // Nulo
  end;
end;

class function TEnum.TipoTransacao(const pEnum: TEnumTipoTransacao): string;
begin
  case pEnum of
    ttManutencao: result                    := '1 - Manutenção e suporte';
    ttCarga: result                         := '2 - Carga';
    ttCargaInicial: result                  := '3 - Carga Inicial';
    ttVazia: result                         := '10 - Vazia';
    ttEtiquetaCliente: result               := '22 - Etiqueta de clientes';
    ttEtiquetaVolumes: result               := '33 - Etiqueta de volumes';
    ttPreVenda: result                      := '50 - Pre Venda';
    ttClienteViaPreVenda: result            := '51 - Cadastro de clientes via Pré-Venda';
    ttSolicitaCredito: result               := '52 - Solicitação de Crédito';
    ttCancelaPreVenda: result               := '59 - Cancela Pré-Venda';
    ttDAVOS: result                         := '60 - DAV-OS';
    ttAbreDia: result                       := '100 - Abre Dia';
    ttAbreCaixa: result                     := '101 - Abre Caixa';
    ttCupomFiscal: result                   := '102 - Cupom Fiscal';
    ttNotaFiscal: result                    := '103 - Nota Fiscal';
    ttNFCe: result                          := '104 - Venda (NFCe)';
    ttSAT: result                           := '105 - Venda (SAT)';
    ttRecibo: result                        := '106 - Recibo';
    ttRPS: result                           := '109 - RPS (Recibo Provisório de Serviços)';
    ttBloqueiaCaixa: result                 := '200 - Bloqueia o caixa (Shift F10)';
    ttPropagandaComBloqueio: result         := '201 - Propaganda com bloqueio de caixa  (Shift F11)';
    ttPropagandaSemBloqueio: result         := '202 - Propaganda sem bloqueio de caixa  (Shift F12)';
    ttRetiradaDeCheques: result             := '203 - Retirada de cheques';
    ttAbreGaveta: result                    := '204 - Abre gaveta';
    ttReImprimeCaixa: result                := '290 - Re-imprime caixa';
    ttFechaCaixa: result                    := '299 - Fecha caixa';
    ttEstornoDeTransacao: result            := '300 - Estorno de transações';
    ttDevolucao: result                     := '301 - Devolução';
    ttValePresente: result                  := '303 - Ativação de Vale Presente';
    ttRecargaValePresente: result           := '304 - Recarga de Vale Presente';
    ttConsultaValePresente: result          := '305 - Consulta de Vale Presente';
    ttServicosAdicionais: result            := '306 - Serviços adicionais (Seguros, garantia estendida ...)';
    ttValeGas: result                       := '307 - Vale gás';
    ttValePresenteNativo: result            := '308 - Lançamento de Vale Presente Nativo (Depósito em conta corrente)';
    ttExtratoConsignacao: result            := '312 - Extrato de consignação';
    ttRecargaTelefone: result               := '314 - Recarga de celular';
    ttCopiaVenda: result                    := '380 - Copia itens de venda';
    ttCancelamentoUltimoCF: result          := '390 - Cancelamento de Cupom Fiscal';
    ttRecebimentoDeClientes: result         := '400 - Recebimento de débitos de clientes';
    ttRecebimentoTerceiros: result          := '401 - Recebimento de contas externas (Títulos, água, luz, telefone... )';
    ttDepositoCCC: result                   := '402 - Depósito em conta corrente';
    ttRetiradaCCC: result                   := '403 - Retirada de conta corrente';
    ttExtratoCCC: result                    := '404 - Extrato de conta corrente';
    ttRecebePendencia: result               := '405 - Recebimento de pendências';
    ttExtratoBonus: result                  := '406 - Extrato de bônus';
    ttResgateBonus: result                  := '407 - Resgate de bônus';
    ttFiscalLeituraX: result                := '600 - LX (Leitura X)';
    ttFiscalLMF: result                     := '601 - LMF (Leitura de Memória Fiscal)';
    ttFiscalArquivoMF: result               := '602 - Arquivo MF (Gera arquivo de Memória Fiscal)';
    ttFiscalArquivoMFD: result              := '603 - Arquivo MFD (Gera arquivo de Memória Fiscal Detalhada)';
    ttFiscalEncerrantes: result             := '604 - Encerrantes';
    ttFiscalIdentificacaoPAF: result        := '605 - Identificação do PAF-ECF';
    ttFiscalAbastecimentosPendentes: result := '606 - Abastecimentos pendentes';
    ttFiscalVendasNoPeriodo: result         := '607 - Vendas do período';
    ttFiscalIndiceTecnicoProducao: result   := '608 - Tabela de índice técnico produção';
    ttFiscalParametros: result              := '609 - Parâmetros de configuração';
    ttFiscalRegistros: result               := '610 - Registros do PAF-ECF';
    ttFiscalArquivoDF: result               := '611 - Arquivo Fiscal do PAF-ECF para DF';
    ttFiscalRequisicoesExternas: result     := '612 - Requisições Externas Registradas';
    ttReforco: result                       := '700 - Reforço';
    ttSangria: result                       := '799 - Sangria';
    ttCadastroDeClientes: result            := '800 - Cadastro de clientes';
    ttMesclarDAV: result                    := '801 - Mescla de DAVs';
    ttImprimirDAV: result                   := '802 - Impressão de DAV';
    ttTrocaSenha: result                    := '803 - Troca de senha';
    ttPendenciasTEF: result                 := '804 - Pendências de TEF';
    ttReImpressao: result                   := '805 - Reimpressão de cupom vinculado ou gerencial';
    ttTEFAdministrativo: result             := '806 - Opções administrativas de TEF';
    ttLancamentoDeEstoque: result           := '807 - Lançamento de Estoque';
    ttCargaPinPadForcada: result            := '850 - Carga de tabelas do PinPad (Forçada)';
    ttRessarcimentoDeVale: result           := '877 - Ressarcimento de Vale Compra';
    ttMostraAlertas: result                 := '880 - Alertas do sistema (Shift F4)';
    ttStatusSefaz: result                   := '881 - Status da comunicação com o Sefaz (Shift F5)';
    ttStatusServidor: result                := '882 - Status da comunicação com o servidor (Shift F6)';
    ttStatusTEF: result                     := '883 - Status da comunicação com o TEF (Shift F7)';
    ttControleDeTransmissao: result         := '890 - Controle De Transmissao';
    ttConfiguracoes: result                 := '891 - Configurações de ambiente';
    ttFormula: result                       := '892 - Fórmula';
    ttExportacaoCadastral: result           := '893 - Exportação cadastral';
    ttImpressaoContexto: result             := '899 - Relatório de configuração';
    tteMailNFCe: result                     := '997 - Envio de e-Mail da NFC-e';
    ttCargaPinPad: result                   := '998 - Carga de tabelas do PinPad';
    ttFechaDia: result                      := '999 - Fecha dia';
  end;
end;

class function TEnum.TipoTransacaoFromInt(const pValor: Integer): TEnumTipoTransacao;
begin
  if pValor = 1 then
    result := ttManutencao
  else if pValor = 2 then
    result := ttCarga
  else if pValor = 3 then
    result := ttCargaInicial
  else if pValor = 10 then
    result := ttVazia
  else if pValor = 22 then
    result := ttEtiquetaCliente
  else if pValor = 33 then
    result := ttEtiquetaVolumes
  else if pValor = 50 then
    result := ttPreVenda
  else if pValor = 51 then
    result := ttClienteViaPreVenda
  else if pValor = 52 then
    result := ttSolicitaCredito
  else if pValor = 59 then
    result := ttCancelaPreVenda
  else if pValor = 60 then
    result := ttDAVOS
  else if pValor = 100 then
    result := ttAbreDia
  else if pValor = 101 then
    result := ttAbreCaixa
  else if pValor = 102 then
    result := ttCupomFiscal
  else if pValor = 103 then
    result := ttNotaFiscal
  else if pValor = 104 then
    result := ttNFCe
  else if pValor = 105 then
    result := ttSAT
  else if pValor = 106 then
    result := ttRecibo
  else if pValor = 109 then
    result := ttRPS
  else if pValor = 200 then
    result := ttBloqueiaCaixa
  else if pValor = 201 then
    result := ttPropagandaComBloqueio
  else if pValor = 202 then
    result := ttPropagandaSemBloqueio
  else if pValor = 203 then
    result := ttRetiradaDeCheques
  else if pValor = 204 then
    result := ttAbreGaveta
  else if pValor = 290 then
    result := ttReImprimeCaixa
  else if pValor = 299 then
    result := ttFechaCaixa
  else if pValor = 300 then
    result := ttEstornoDeTransacao
  else if pValor = 301 then
    result := ttDevolucao
  else if pValor = 303 then
    result := ttValePresente
  else if pValor = 304 then
    result := ttRecargaValePresente
  else if pValor = 305 then
    result := ttConsultaValePresente
  else if pValor = 306 then
    result := ttServicosAdicionais
  else if pValor = 307 then
    result := ttValeGas
  else if pValor = 308 then
    result := ttValePresenteNativo
  else if pValor = 312 then
    result := ttExtratoConsignacao
  else if pValor = 314 then
    result := ttRecargaTelefone
  else if pValor = 380 then
    result := ttCopiaVenda
  else if pValor = 390 then
    result := ttCancelamentoUltimoCF
  else if pValor = 400 then
    result := ttRecebimentoDeClientes
  else if pValor = 401 then
    result := ttRecebimentoTerceiros
  else if pValor = 402 then
    result := ttDepositoCCC
  else if pValor = 403 then
    result := ttRetiradaCCC
  else if pValor = 404 then
    result := ttExtratoCCC
  else if pValor = 405 then
    result := ttRecebePendencia
  else if pValor = 406 then
    result := ttExtratoBonus
  else if pValor = 407 then
    result := ttResgateBonus
  else if pValor = 600 then
    result := ttFiscalLeituraX
  else if pValor = 601 then
    result := ttFiscalLMF
  else if pValor = 602 then
    result := ttFiscalArquivoMF
  else if pValor = 603 then
    result := ttFiscalArquivoMFD
  else if pValor = 604 then
    result := ttFiscalEncerrantes
  else if pValor = 605 then
    result := ttFiscalIdentificacaoPAF
  else if pValor = 606 then
    result := ttFiscalAbastecimentosPendentes
  else if pValor = 607 then
    result := ttFiscalVendasNoPeriodo
  else if pValor = 608 then
    result := ttFiscalIndiceTecnicoProducao
  else if pValor = 609 then
    result := ttFiscalParametros
  else if pValor = 610 then
    result := ttFiscalRegistros
  else if pValor = 611 then
    result := ttFiscalArquivoDF
  else if pValor = 612 then
    result := ttFiscalRequisicoesExternas
  else if pValor = 700 then
    result := ttReforco
  else if pValor = 799 then
    result := ttSangria
  else if pValor = 800 then
    result := ttCadastroDeClientes
  else if pValor = 801 then
    result := ttMesclarDAV
  else if pValor = 802 then
    result := ttImprimirDAV
  else if pValor = 803 then
    result := ttTrocaSenha
  else if pValor = 804 then
    result := ttPendenciasTEF
  else if pValor = 805 then
    result := ttReImpressao
  else if pValor = 806 then
    result := ttTEFAdministrativo
  else if pValor = 807 then
    result := ttLancamentoDeEstoque
  else if pValor = 850 then
    result := ttCargaPinPadForcada
  else if pValor = 877 then
    result := ttRessarcimentoDeVale
  else if pValor = 880 then
    result := ttMostraAlertas
  else if pValor = 881 then
    result := ttStatusSefaz
  else if pValor = 882 then
    result := ttStatusServidor
  else if pValor = 883 then
    result := ttStatusTEF
  else if pValor = 890 then
    result := ttControleDeTransmissao
  else if pValor = 891 then
    result := ttConfiguracoes
  else if pValor = 892 then
    result := ttFormula
  else if pValor = 893 then
    result := ttExportacaoCadastral
  else if pValor = 899 then
    result := ttImpressaoContexto
  else if pValor = 997 then
    result := tteMailNFCe
  else if pValor = 998 then
    result := ttCargaPinPad
  else if pValor = 999 then
    result := ttFechaDia
  else
    raise EEnumeradorInvalido.Create('Tipo de transação não implementado');
end;

class function TEnum.TipoTransacaoToInt(const pEnum: TEnumTipoTransacao): Integer;
begin
  case pEnum of
    ttManutencao: result                    := 1;   //   1 - Manutenção e suporte
    ttCarga: result                         := 2;   //   2 - Carga
    ttCargaInicial: result                  := 3;   //   3 - Carga Inicial
    ttVazia: result                         := 10;  //  10 - Vazia
    ttEtiquetaCliente: result               := 22;  //  22 - Etiqueta de clientes
    ttEtiquetaVolumes: result               := 33;  //  33 - Etiqueta de volumes
    ttPreVenda: result                      := 50;  //  50 - Pre Venda
    ttClienteViaPreVenda: result            := 51;  //  51 - Cadastro de clientes via Pré-Venda
    ttSolicitaCredito: result               := 52;  //  52 - Solicitação de Crédito
    ttCancelaPreVenda: result               := 59;  //  59 - Cancela Pré-Venda
    ttDAVOS: result                         := 60;  //  60 - DAV-OS
    ttAbreDia: result                       := 100; // 100 - Abre Dia
    ttAbreCaixa: result                     := 101; // 101 - Abre Caixa
    ttCupomFiscal: result                   := 102; // 102 - Cupom Fiscal
    ttNotaFiscal: result                    := 103; // 103 - Nota Fiscal
    ttNFCe: result                          := 104; // 104 - Venda (NFCe)
    ttSAT: result                           := 105; // 105 - Venda (SAT)
    ttRecibo: result                        := 106; // 106 - Recibo
    ttRPS: result                           := 109; // 109 - RPS (Recibo Provisório de Serviços)
    ttBloqueiaCaixa: result                 := 200; // 200 - Bloqueia o caixa (Shift F10)
    ttPropagandaComBloqueio: result         := 201; // 201 - Propaganda com bloqueio de caixa  (Shift F11)
    ttPropagandaSemBloqueio: result         := 202; // 202 - Propaganda sem bloqueio de caixa  (Shift F12)
    ttRetiradaDeCheques: result             := 203; // 203 - Retirada de cheques
    ttAbreGaveta: result                    := 204; // 204 - Abre gaveta
    ttReImprimeCaixa: result                := 290; // 290 - Re-imprime caixa
    ttFechaCaixa: result                    := 299; // 299 - Fecha caixa
    ttEstornoDeTransacao: result            := 300; // 300 - Estorno de transações
    ttDevolucao: result                     := 301; // 301 - Devolução
    ttValePresente: result                  := 303; // 303 - Ativação de Vale Presente
    ttRecargaValePresente: result           := 304; // 304 - Recarga de Vale Presente
    ttConsultaValePresente: result          := 305; // 305 - Consulta de Vale Presente
    ttServicosAdicionais: result            := 306; // 306 - Serviços adicionais (Seguros, garantia estendida ...)
    ttValeGas: result                       := 307; // 307 - Vale gás
    ttValePresenteNativo: result            := 308; // 308 - Lançamento de Vale Presente Nativo (Depósito em conta corrente)
    ttExtratoConsignacao: result            := 312; // 312 - Extrato de consignação
    ttRecargaTelefone: result               := 314; // 314 - Recarga de celular
    ttCopiaVenda: result                    := 380; // 380 - Copia itens de venda
    ttCancelamentoUltimoCF: result          := 390; // 390 - Cancelamento de Cupom Fiscal
    ttRecebimentoDeClientes: result         := 400; // 400 - Recebimento de débitos de clientes
    ttRecebimentoTerceiros: result          := 401; // 401 - Recebimento de contas externas (Títulos, água, luz, telefone... )
    ttDepositoCCC: result                   := 402; // 402 - Depósito em conta corrente
    ttRetiradaCCC: result                   := 403; // 403 - Retirada de conta corrente
    ttExtratoCCC: result                    := 404; // 404 - Extrato de conta corrente
    ttRecebePendencia: result               := 405; // 405 - Recebimento de pendências
    ttExtratoBonus: result                  := 406; // 406 - Extrato de bônus
    ttResgateBonus: result                  := 407; // 407 - Resgate de bônus
    ttFiscalLeituraX: result                := 600; // 600 - LX (Leitura X)
    ttFiscalLMF: result                     := 601; // 601 - LMF (Leitura de Memória Fiscal)
    ttFiscalArquivoMF: result               := 602; // 602 - Arquivo MF (Gera arquivo de Memória Fiscal)
    ttFiscalArquivoMFD: result              := 603; // 603 - Arquivo MFD (Gera arquivo de Memória Fiscal Detalhada)
    ttFiscalEncerrantes: result             := 604; // 604 - Encerrantes
    ttFiscalIdentificacaoPAF: result        := 605; // 605 - Identificação do PAF-ECF
    ttFiscalAbastecimentosPendentes: result := 606; // 606 - Abastecimentos pendentes
    ttFiscalVendasNoPeriodo: result         := 607; // 607 - Vendas do período
    ttFiscalIndiceTecnicoProducao: result   := 608; // 608 - Tabela de índice técnico produção
    ttFiscalParametros: result              := 609; // 609 - Parâmetros de configuração
    ttFiscalRegistros: result               := 610; // 610 - Registros do PAF-ECF
    ttFiscalArquivoDF: result               := 611; // 611 - Arquivo Fiscal do PAF-ECF para DF
    ttFiscalRequisicoesExternas: result     := 612; // 612 - Requisições Externas Registradas
    ttReforco: result                       := 700; // 700 - Reforço
    ttSangria: result                       := 799; // 799 - Sangria
    ttCadastroDeClientes: result            := 800; // 800 - Cadastro de clientes
    ttMesclarDAV: result                    := 801; // 801 - Mescla de DAVs
    ttImprimirDAV: result                   := 802; // 802 - Impressão de DAV
    ttTrocaSenha: result                    := 803; // 803 - Troca de senha
    ttPendenciasTEF: result                 := 804; // 804 - Pendências de TEF
    ttReImpressao: result                   := 805; // 805 - Reimpressão de cupom vinculado ou gerencial
    ttTEFAdministrativo: result             := 806; // 806 - Opções administrativas de TEF
    ttLancamentoDeEstoque: result           := 807; // 807 - Lançamento de Estoque
    ttCargaPinPadForcada: result            := 850; // 850 - Carga de tabelas do PinPad (Forçada)
    ttRessarcimentoDeVale: result           := 877; // 877 - Ressarcimento de Vale Compra
    ttMostraAlertas: result                 := 880; // 880 - Alertas do sistema (Shift F4)
    ttStatusSefaz: result                   := 881; // 881 - Status da comunicação com o Sefaz (Shift F5)
    ttStatusServidor: result                := 882; // 882 - Status da comunicação com o servidor (Shift F6)
    ttStatusTEF: result                     := 883; // 883 - Status da comunicação com o TEF (Shift F7)
    ttControleDeTransmissao: result         := 890; // 890 - Controle De Transmissao
    ttConfiguracoes: result                 := 891; // 891 - Configurações de ambiente
    ttFormula: result                       := 892; // 892 - Fórmula
    ttExportacaoCadastral: result           := 893; // 893 - Exportação cadastral
    ttImpressaoContexto: result             := 899; // 899 - Relatório de configuração
    tteMailNFCe: result                     := 997; // 997 - Envio de e-Mail da NFC-e
    ttCargaPinPad: result                   := 998; // 998 - Carga de tabelas do PinPad
    ttFechaDia: result                      := 999; // 999 - Fecha dia
  end;
end;

class function TEnum.TipoTribSimples(const pEnum: TEnumTipoTribSimples): string;
begin
  case pEnum of
    ttsNaoSeAplica: result               := '';
    ttsNaoTributado: result              := 'N - Não tributado';
    ttsTributacaoOriginal: result        := 'O - Tributação original';
    ttsNaoTribExcetoSubstituidos: result := 'S - Não trib. exceto substituídos';
  end;
end;

class function TEnum.TipoTribSimplesFromStr(const pValor: string): TEnumTipoTribSimples;
begin
  Result := ttsNaoSeAplica;
  if pValor = 'N' then
    result := ttsNaoTributado
  else if pValor = 'O' then
    result := ttsTributacaoOriginal
  else if pValor = 'S' then
    result := ttsNaoTribExcetoSubstituidos;
end;

class function TEnum.TipoTribSimplesToStr(const pEnum: TEnumTipoTribSimples): string;
begin
  case pEnum of
    ttsNaoSeAplica: result               := '';
    ttsNaoTributado: result              := 'N';
    ttsTributacaoOriginal: result        := 'O';
    ttsNaoTribExcetoSubstituidos: result := 'S';
  end;
end;

class function TEnum.TipoTributacao(const pEnum: TEnumRegraTipoTributacao): string;
begin
  case pEnum of
    TEnumRegraTipoTributacao_NaoInformado: result := '';
    TEnumRegraTipoTributacao_Tributado: result    := '0 - Tributado';
    TEnumRegraTipoTributacao_NaoTributado: result := '1 - Não Tributado';
    TEnumRegraTipoTributacao_Isento: result       := '2 - Isento';
    TEnumRegraTipoTributacao_Substituido: result  := '3 - Substituído';
    TEnumRegraTipoTributacao_IsentoEstado: result := '4 - Isento no Estado';
  end;
end;

class function TEnum.TipoTributacaoFromStr(const pValor: string): TEnumRegraTipoTributacao;
begin
  result := TEnumRegraTipoTributacao_NaoInformado;

  if pValor = '0' then begin
    result := TEnumRegraTipoTributacao_Tributado;
  end else if pValor = '1' then begin
    result := TEnumRegraTipoTributacao_NaoTributado;
  end else if pValor = '2' then begin
    result := TEnumRegraTipoTributacao_Isento;
  end else if pValor = '3' then begin
    result := TEnumRegraTipoTributacao_Substituido;
  end else if pValor = '4' then begin
    result := TEnumRegraTipoTributacao_IsentoEstado;
  end;
end;

class function TEnum.TipoTributacaoPAFECFToStr(const pEnum: TEnumRegraTipoTributacao; const pTipFps: TEnumTipoItem): string;
begin
  case pEnum of
    TEnumRegraTipoTributacao_Tributado: begin
        case pTipFps of
          tiServicos: result := 'S'; // Tributado
          else
               result := 'T'; // Tributado
        end;
      end;
    TEnumRegraTipoTributacao_NaoTributado: result := 'N'; // Não Tributado
    TEnumRegraTipoTributacao_Isento: result       := 'I'; // Isento
    TEnumRegraTipoTributacao_Substituido: result  := 'F'; // Substituído
    TEnumRegraTipoTributacao_IsentoEstado: result := 'I'; // Isento no Estado
  end;
end;

class function TEnum.TipoTributacaoToStr(const pEnum: TEnumRegraTipoTributacao): string;
begin
  case pEnum of
    TEnumRegraTipoTributacao_NaoInformado: result := '';
    TEnumRegraTipoTributacao_Tributado: result    := '0'; // 0 - Tributado
    TEnumRegraTipoTributacao_NaoTributado: result := '1'; // 1 - Não Tributado
    TEnumRegraTipoTributacao_Isento: result       := '2'; // 2 - Isento
    TEnumRegraTipoTributacao_Substituido: result  := '3'; // 3 - Substituído
    TEnumRegraTipoTributacao_IsentoEstado: result := '4'; // 4 - Isento no Estado
  end;
end;

class function TEnum.TipoValorProduto(const pEnum: TEnumTipoValorProduto): string;
begin
  case pEnum of
    TEnumTipoValorProduto_Venda: Result               := 'V - Preço de venda';
    TEnumTipoValorProduto_CustoDeReposicao: Result    := 'R - Custo de reposição';
    TEnumTipoValorProduto_PrecoDeCompra: Result       := 'C - Preço de compra';
    TEnumTipoValorProduto_CustoMedioFiscal: Result    := 'M - Custo Médio Fiscal';
    TEnumTipoValorProduto_CustoMedioGerencial: Result := 'G - Custo Médio Gerencial';
    TEnumTipoValorProduto_PrecoSimulado: Result       := 'S - Preço Simulado';
  end;
end;

class function TEnum.TipoValorProdutoFromStr(const pValor: string): TEnumTipoValorProduto;
begin
  if pValor = 'V' then begin // V - Preço de venda
    result := TEnumTipoValorProduto_Venda;
  end else if pValor = 'R' then begin // R - Custo de reposição
    result := TEnumTipoValorProduto_CustoDeReposicao;
  end else if pValor = 'C' then begin // C - Preço de compra
    result := TEnumTipoValorProduto_PrecoDeCompra;
  end else if pValor = 'M' then begin // M - Custo Médio Fiscal
    result := TEnumTipoValorProduto_CustoMedioFiscal;
  end else if pValor = 'G' then begin // G - Custo Médio Gerencial
    result := TEnumTipoValorProduto_CustoMedioGerencial;
  end else if pValor = 'S' then begin // S - Preço Simulado
    result := TEnumTipoValorProduto_PrecoSimulado;
  end else begin
    result := TEnumTipoValorProduto_Venda;
  end;
end;

class function TEnum.TipoValorProdutoToStr(const pEnum: TEnumTipoValorProduto): string;
begin
  case pEnum of
    TEnumTipoValorProduto_Venda: Result               := 'V'; // V - Preço de venda
    TEnumTipoValorProduto_CustoDeReposicao: Result    := 'R'; // R - Custo de reposição
    TEnumTipoValorProduto_PrecoDeCompra: Result       := 'C'; // C - Preço de compra
    TEnumTipoValorProduto_CustoMedioFiscal: Result    := 'M'; // M - Custo Médio Fiscal
    TEnumTipoValorProduto_CustoMedioGerencial: Result := 'G'; // G - Custo Médio Gerencial
    TEnumTipoValorProduto_PrecoSimulado: Result       := 'S'; // S - Preço Simulado
  end;
end;

class function TEnum.TipoVenda(const pEnum: TEnumTipoVenda): string;
begin
  case pEnum of
    tvAmbas: result     := 'A - Ambas';
    tvDevolucao: result := '- - Devolucação';
    tvVenda: result     := '+ - Venda';
    tvNulo: result      := ''; // Nulo
  end;
end;

class function TEnum.TipoVendaFromStr(const pValor: string): TEnumTipoVenda;
begin
  if pValor = 'A' then begin
    result := tvAmbas;
  end else if pValor = '-' then begin
    result := tvDevolucao;
  end else if pValor = '+' then begin
    result := tvVenda;
  end else begin
    result := tvNulo;
  end;
end;

class function TEnum.TipoVendaToStr(const pEnum: TEnumTipoVenda): string;
begin
  case pEnum of
    tvAmbas: result     := 'A'; // A - Ambas
    tvDevolucao: result := '-'; // - - Devolucação
    tvVenda: result     := '+'; // + - Venda
    tvNulo: result      := '';  // Nulo
  end;
end;

class function TEnum.UsoCaixa(const pEnum: TEnumUsoCaixa): string;
begin
  case pEnum of
    ucSangria: result                 := '0 - Sangria';
    ucReforco: result                 := '1 - Reforço';
    ucRessarcimentoValeCompra: result := '2 - Ressarcimento de Vale Compra';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumUsoCaixa.');
  end;
end;

class function TEnum.UsoCaixaFromInt(const pValor: Integer): TEnumUsoCaixa;
begin
  if pValor = 0 then
    Result := ucSangria
  else if pValor = 1 then
    Result := ucReforco
  else if pValor = 2 then
    Result := ucRessarcimentoValeCompra
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumUsoCaixa.', [IntToStr(pValor)]));
end;

class function TEnum.UsoCaixaToInt(const pEnum: TEnumUsoCaixa): Integer;
begin
  case pEnum of
    ucSangria: result                 := 0;
    ucReforco: result                 := 1;
    ucRessarcimentoValeCompra: result := 2;
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumUsoCaixa.');
  end;
end;

class function TEnum.ViaTransporteDI(const pEnum: TEnumViaTransporteDI): string;
begin
  case pEnum of
    tiSemTransporte: Result     := '0 - Sem Via de Transporte';
    tiMaritima: Result          := '1 - Marítima';
    tiFluvial: Result           := '2 - Fluvial';
    tiLacustre: Result          := '3 - Lacustre';
    tiAerea: Result             := '4 - Aérea';
    tiPostal: Result            := '5 - Postal';
    tiFerroviaria: Result       := '6 - Ferroviária';
    tiRodoviaria: Result        := '7 - Rodoviária';
    tiConduto: Result           := '8 - Conduto / Rede Transmissão';
    tiMeiosProprios: Result     := '9 - Meios Próprios';
    tiEntradaSaidaFicta: Result := '10 - Entrada / Saída ficta';
    tiCourier: Result           := '11 - Courier';
    tiHandcarry: Result         := '12 - Handcarry (NT 2013/005 v 1.10)';
  end;
end;

class function TEnum.ViaTransporteDIFromInt(const pValor: Integer): TEnumViaTransporteDI;
begin
  if pValor = 0 then
    Result := tiSemTransporte
  else if pValor = 1 then
    Result := tiMaritima
  else if pValor = 2 then
    Result := tiFluvial
  else if pValor = 3 then
    Result := tiLacustre
  else if pValor = 4 then
    Result := tiAerea
  else if pValor = 5 then
    Result := tiPostal
  else if pValor = 6 then
    Result := tiFerroviaria
  else if pValor = 7 then
    Result := tiRodoviaria
  else if pValor = 8 then
    Result := tiConduto
  else if pValor = 9 then
    Result := tiMeiosProprios
  else if pValor = 10 then
    Result := tiEntradaSaidaFicta
  else if pValor = 11 then
    Result := tiCourier
  else if pValor = 12 then
    Result := tiHandcarry
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumViaTransporteDI.', [IntToStr(pValor)]));
end;

class function TEnum.ViaTransporteDIToInt(const pEnum: TEnumViaTransporteDI): Integer;
begin
  case pEnum of
    tiSemTransporte: Result     := 0;
    tiMaritima: Result          := 1;
    tiFluvial: Result           := 2;
    tiLacustre: Result          := 3;
    tiAerea: Result             := 4;
    tiPostal: Result            := 5;
    tiFerroviaria: Result       := 6;
    tiRodoviaria: Result        := 7;
    tiConduto: Result           := 8;
    tiMeiosProprios: Result     := 9;
    tiEntradaSaidaFicta: Result := 10;
    tiCourier: Result           := 11;
    tiHandcarry: Result         := 12;
  end;
end;

class function TEnum.VinculoItem(const pEnum: TEnumVinculoItem): string;
begin
  case pEnum of
    viAberto: result   := 'A - Aberto';
    viCompleto: result := 'C - Completo';
    viNao: result      := 'N - Não é vínculo';
  end;
end;

class function TEnum.VinculoItemFromStr(const pValor: string): TEnumVinculoItem;
begin
  Result := viNao;
  if pValor = 'A' then begin
    Result := viAberto;
  end else if pValor = 'C' then begin
    Result := viCompleto;
  end else if pValor = 'N' then begin
    Result := viNao;
  end;
end;

class function TEnum.VinculoItemToStr(const pEnum: TEnumVinculoItem): string;
begin
  case pEnum of
    viAberto: result   := 'A';
    viCompleto: result := 'C';
    viNao: result      := 'N';
  end;
end;

//class function TEnum.ImpressoraNaoFiscalFromStr(pValor: string): TEnumImpressoraNaoFiscal;
//begin
//  Result := inOutra;
//  if pValor = 'D' then
//     Result := inDaruma;
//  if pValor = 'T' then
//     Result := inTexto;
//end;
//
//class function TEnum.ImpressoraNaoFiscalToStr(pEnum: TEnumImpressoraNaoFiscal): string;
//begin
//  case pEnum of
//     inOutra  : Result := 'O';
//     inDaruma : Result := 'D';
//     inTexto  : Result := 'T';
//  else
//     raise EEnumeradorInvalido.Create('Opção inválida para TEnumImpressoraNaoFiscal.');
//  end;
//end;
//
//class function TEnum.ImpressoraNaoFiscal(pEnum: TEnumImpressoraNaoFiscal): string;
//begin
//  case pEnum of
//     inOutra  : Result := 'O - Outra';
//     inDaruma : Result := 'D - Daruma';
//     inTexto  : Result := 'T - Texto';
//  else
//     raise EEnumeradorInvalido.Create('Opção inválida para TEnumImpressoraNaoFiscal.');
//  end;
//end;
//
//class function TEnum.ImpressoraNaoFiscalGetList: TObjectList<TParLista>;
//begin
//  Result := TObjectList<TParLista>.Create;
//  Result.Add(TParLista.Create(ImpressoraNaoFiscalToStr(inDaruma), ImpressoraNaoFiscal(inDaruma)));
//  Result.Add(TParLista.Create(ImpressoraNaoFiscalToStr(inTexto), ImpressoraNaoFiscal(inTexto)));
//  Result.Add(TParLista.Create(ImpressoraNaoFiscalToStr(inOutra), ImpressoraNaoFiscal(inOutra)));
//end;

class function TEnum.LampadaSinaleira(const pEnum: TEnumLampadaSinaleira): string;
begin
  case pEnum of
    TEnumLampadaSinaleira_Verde: Result         := '1 - Verde';
    TEnumLampadaSinaleira_Amarela: Result       := '2 - Amarela';
    TEnumLampadaSinaleira_Vermelha: Result      := '3 - Vermelha';
    TEnumLampadaSinaleira_DesligarTodas: Result := '0 - Verde';
  end;
end;

class function TEnum.LampadaSinaleiraFromStr(const pValor: string): TEnumLampadaSinaleira;
begin
  if pValor = '1' then
    Result := TEnumLampadaSinaleira_Verde
  else if pValor = '2' then
    Result := TEnumLampadaSinaleira_Amarela
  else if pValor = '3' then
    Result := TEnumLampadaSinaleira_Vermelha
  else if pValor = '0' then
    Result := TEnumLampadaSinaleira_DesligarTodas;
end;

class function TEnum.LampadaSinaleiraToStr(const pEnum: TEnumLampadaSinaleira): string;
begin
  case pEnum of
    TEnumLampadaSinaleira_Verde: Result         := '1';
    TEnumLampadaSinaleira_Amarela: Result       := '2';
    TEnumLampadaSinaleira_Vermelha: Result      := '3';
    TEnumLampadaSinaleira_DesligarTodas: Result := '0';
  end;
end;

class function TEnum.LancaEstoqueFromStr(pTipo: string): TEnumLancaEstoque;
begin
  if pTipo = 'S' then
    result := leBaixa
  else
     if pTipo = 'C' then
    result := leConfirmaReserva
  else
     if pTipo = 'N' then
    result := leNao
  else
     if pTipo = 'R' then
    result := leReserva;
end;

class function TEnum.LancaEstoqueToStr(pTipo: TEnumLancaEstoque): string;
begin
  case pTipo of
    leBaixa: result           := 'S';
    leConfirmaReserva: result := 'C';
    leNao: result             := 'N';
    leReserva: result         := 'R';
  end;
end;

class function TEnum.LayoutBoleto(const pEnum: TEnumLayoutBoleto): string;
begin
  case pEnum of
    TEnumLayoutBoleto_Padrao: Result        := 'P - Padrão';
    TEnumLayoutBoleto_Carne: Result         := 'C - Carne';
    TEnumLayoutBoleto_Fatura: Result        := 'F - Fatura';
    TEnumLayoutBoleto_PadraoEntrega: Result := 'E - Padrão Entrega';
    TEnumLayoutBoleto_Outro: Result         := 'O - Outros';
  end;
end;

class function TEnum.LayoutBoletoFromStr(const pValor: string): TEnumLayoutBoleto;
begin
  if pValor = 'P' then // P - Padrão
    Result := TEnumLayoutBoleto_Padrao
  else if pValor = 'C' then // C - Carne
    Result := TEnumLayoutBoleto_Carne
  else if pValor = 'F' then // F - Fatura
    Result := TEnumLayoutBoleto_Fatura
  else if pValor = 'E' then // E - Padrão Entrega
    Result := TEnumLayoutBoleto_PadraoEntrega
  else if pValor = 'O' then // O - Outros
    Result := TEnumLayoutBoleto_Outro
  else
    Result := TEnumLayoutBoleto_Padrao; //raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumLayoutBoleto.');
end;

class function TEnum.LayoutBoletoToStr(const pEnum: TEnumLayoutBoleto): string;
begin
  case pEnum of
    TEnumLayoutBoleto_Padrao: Result        := 'P'; // P - Padrão
    TEnumLayoutBoleto_Carne: Result         := 'C'; // C - Carne
    TEnumLayoutBoleto_Fatura: Result        := 'F'; // F - Fatura
    TEnumLayoutBoleto_PadraoEntrega: Result := 'E'; // E - Padrão Entrega
    TEnumLayoutBoleto_Outro: Result         := 'O'; // O - Outros
  end;
end;

class function TEnum.LayoutRemessa(const pEnum: TEnumLayoutRemessa): string;
begin
  case pEnum of
    TEnumLayoutRemessa_240: Result := '240 - Posições';
    TEnumLayoutRemessa_400: Result := '400 - Posições';
  end;
end;

class function TEnum.LayoutRemessaFromInt(const pValor: Integer): TEnumLayoutRemessa;
begin
  case pValor of
    240: Result := TEnumLayoutRemessa_240; // 240 - Posições
    400: Result := TEnumLayoutRemessa_400; // 400 - Posições
    else
         Result := TEnumLayoutRemessa_400; // 400 - Posições
  end;
end;

class function TEnum.LayoutRemessaToInt(const pEnum: TEnumLayoutRemessa): Integer;
begin
  case pEnum of
    TEnumLayoutRemessa_240: Result := 240; // 240 - Posições
    TEnumLayoutRemessa_400: Result := 400; // 400 - Posições
  end;
end;

class function TEnum.ModeloDocumentoToCodigo(pEnum: TEnumModeloDocumento): string;
begin
  if pEnum = mdCupomFiscal then
    Result := '2D'
  else if pEnum = mdNFCe then
    Result := '65'
  else if pEnum = mdCFeSAT then
    Result := '59'
  else if pEnum = mdNFe then
    Result := '55'
  else if pEnum = mdNFSe then
    Result := 'SE' // Modelo interno criado para diferenciar notas que são NFSe
  else if pEnum = mdCTe then
    Result := '57'
  else if pEnum = mdMDFe then
    Result := '58'
  else
    Result := '00';
end;

class function TEnum.ModeloDocumentoToDFe(pEnum: TEnumModeloDocumento): string;
begin
  case pEnum of
    mdCupomFiscal: Result := 'ECF';
    mdNFCe: Result        := 'NFCe';
    mdCFeSAT: Result      := 'SAT';
    mdNFe: Result         := 'NFe';
    mdNFSe: Result        := 'NFSe';
    mdCTe: Result         := 'CTe';
    mdMDFe: Result        := 'MDFe';
    else Result           := '';
  end;
end;

class function TEnum.EnvioEmailToInt(pEnum: TEnumEnvioEmail): Integer;
begin
  case pEnum of
    eeNaoEnvia: Result        := 0;
    eeEnviaManual: Result     := 1;
    eeEnviaAutomatico: Result := 2;
  end;
end;

class function TEnum.MontagemItemOrc(const pEnum: TEnumMontagemItemOrc): string;
begin
  case pEnum of
    moInterna: result := 'I - Montagem Interna';
    moEntrega: result := 'T - Montagem na Entrega';
    moNenhuma: result := 'F - Sem Montagem';
  end;
end;

class function TEnum.MontagemItemOrcFromStr(const pValor: string): TEnumMontagemItemOrc;
begin
  if pValor = 'I' then begin
    result := moInterna;
  end else if pValor = 'T' then begin
    result := moEntrega;
  end else begin
    result := moNenhuma;
  end;
end;

class function TEnum.MontagemItemOrcToStr(const pEnum: TEnumMontagemItemOrc): string;
begin
  case pEnum of
    moInterna: result := 'I'; // I - Montagem Interna
    moEntrega: result := 'T'; // T - Montagem na Entrega
    moNenhuma: result := 'F'; // F - Sem Montagem
  end;
end;

class function TEnum.NatCredPISCOFINS(const pEnum: TEnumNatCredPISCOFINS): string;
begin
  case pEnum of
    ncAquisicaoBensRevenda: result           := '01 - Aquisição de bens para revenda';
    ncAquisicaoBensUtilComoInsumo: result    := '02 - Aquisição bens util. c/ insumo';
    ncAquisicaoServUtilComoInsumo: result    := '03 - Aquisição serv. util. insumo';
    ncEnergiaEletricaTermica: result         := '04 - Energia elétrica e térmica';
    ncAlugueisPredios: result                := '05 - Energia elétrica e térmica';
    ncAlugueisMaqEquip: result               := '06 - Aluguéis de máquinas e equip.';
    ncArmazenagemMercadoriaFrete: result     := '07 - Armazenagem mercadoria e frete';
    ncContraprestacoesMercantil: result      := '08 - Contraprestações mercatil';
    ncCreditoSobreEncargoDepreciacao: result := '09 - Créd. s/ encargos depreciação';
    ncCreditoBaseValorAquisicao: result      := '10 - Créd. c/ base valor aquisição';
    ncAmortDeprecEdificBenfImoveis: result   := '11 - Amort. deprec. edific. imóveis';
    ncDevolucaoVendasSujIncidencia: result   := '12 - Dev. de vendas suj. Incidência';
    ncOutrasOperComDireitoACredito: result   := '13 - Outras Operações direito créd.';
    ncAtividadeTransporteCargas: result      := '14 - Atividade Transporte de Cargas';
    ncCustoUnidadeImobiliaria: result        := '15 - Custo de Unidade Imobiliária';
    ncCustoUnidadeNaoConcluida: result       := '16 - Custo unidade não concluída';
    ncAtividadePrestServico: result          := '17 - Atividade de Prestação de Serv';
    ncEstoqueAberturaBens: result            := '18 - Estoque de abertura de bens';
    ncNulo: result                           := '';
  end;
end;

class function TEnum.NatCredPISCOFINSFromStr(const pValor: string): TEnumNatCredPISCOFINS;
begin
  if pValor = '01' then
    Result := ncAquisicaoBensRevenda
  else if pValor = '02' then
    Result := ncAquisicaoBensUtilComoInsumo
  else if pValor = '03' then
    Result := ncAquisicaoServUtilComoInsumo
  else if pValor = '04' then
    Result := ncEnergiaEletricaTermica
  else if pValor = '05' then
    Result := ncAlugueisPredios
  else if pValor = '06' then
    Result := ncAlugueisMaqEquip
  else if pValor = '07' then
    Result := ncArmazenagemMercadoriaFrete
  else if pValor = '08' then
    Result := ncContraprestacoesMercantil
  else if pValor = '09' then
    Result := ncCreditoSobreEncargoDepreciacao
  else if pValor = '10' then
    Result := ncCreditoBaseValorAquisicao
  else if pValor = '11' then
    Result := ncAmortDeprecEdificBenfImoveis
  else if pValor = '12' then
    Result := ncDevolucaoVendasSujIncidencia
  else if pValor = '13' then
    Result := ncOutrasOperComDireitoACredito
  else if pValor = '14' then
    Result := ncAtividadeTransporteCargas
  else if pValor = '15' then
    Result := ncCustoUnidadeImobiliaria
  else if pValor = '16' then
    Result := ncCustoUnidadeNaoConcluida
  else if pValor = '17' then
    Result := ncAtividadePrestServico
  else if pValor = '18' then
    Result := ncEstoqueAberturaBens
  else
    Result := ncNulo;
end;

class function TEnum.NatCredPISCOFINSToStr(const pEnum: TEnumNatCredPISCOFINS): string;
begin
  case pEnum of
    ncAquisicaoBensRevenda: result           := '01';
    ncAquisicaoBensUtilComoInsumo: result    := '02';
    ncAquisicaoServUtilComoInsumo: result    := '03';
    ncEnergiaEletricaTermica: result         := '04';
    ncAlugueisPredios: result                := '05';
    ncAlugueisMaqEquip: result               := '06';
    ncArmazenagemMercadoriaFrete: result     := '07';
    ncContraprestacoesMercantil: result      := '08';
    ncCreditoSobreEncargoDepreciacao: result := '09';
    ncCreditoBaseValorAquisicao: result      := '10';
    ncAmortDeprecEdificBenfImoveis: result   := '11';
    ncDevolucaoVendasSujIncidencia: result   := '12';
    ncOutrasOperComDireitoACredito: result   := '13';
    ncAtividadeTransporteCargas: result      := '14';
    ncCustoUnidadeImobiliaria: result        := '15';
    ncCustoUnidadeNaoConcluida: result       := '16';
    ncAtividadePrestServico: result          := '17';
    ncEstoqueAberturaBens: result            := '18';
    ncNulo: result                           := '';
  end;
end;

class function TEnum.ModalidadeBC(const pEnum: TEnumModalidadeBC): string;
begin
  case pEnum of
    mbMargemValorAgregado: Result := '0 - Margem Valor Agregado (%)';
    mbPauta: Result               := '1 - Pauta (Valor)';
    mbPrecoTabelado: Result       := '2 - Preço Tabelado Máx. (valor)';
    mbValorOperacao: Result       := '3 - Valor da operação';
  end;
end;

class function TEnum.ModalidadeBCFromInt(const pValor: Integer): TEnumModalidadeBC;
begin
  case pValor of
    0: Result := mbMargemValorAgregado; //0 - Margem Valor Agregado (%)
    1: Result := mbPauta;               //1 - Pauta (Valor)
    2: Result := mbPrecoTabelado;       //2 - Preço Tabelado Máx. (valor)
    3: Result := mbValorOperacao;       //3 - Valor da operação
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumModalidadeBC.');
  end;
end;

class function TEnum.ModalidadeBCST(const pEnum: TEnumModalidadeBCST): string;
begin
  case pEnum of
    bsPrecoTabelado: result       := '0 – Preço tabelado ou máximo sugerido';
    bsListaNegativa: result       := '1 - Lista Negativa (valor)';
    bsListaPositiva: result       := '2 - Lista Positiva (valor)';
    bsListaNeutra: result         := '3 - Lista Neutra (valor)';
    bsMargemValorAgregado: result := '4 - Margem Valor Agregado (%)';
    bsPauta: result               := '5 - Pauta (valor)';
    bsValordaOperacao: result     := '6 - Valor da Operação';
  end;
end;

class function TEnum.ModalidadeBCSTFromInt(const pValor: Integer): TEnumModalidadeBCST;
begin
  case pValor of
    0: result := bsPrecoTabelado;       // 0 – Preço tabelado ou máximo sugerido
    1: result := bsListaNegativa;       // 1 - Lista Negativa (valor)
    2: result := bsListaPositiva;       // 2 - Lista Positiva (valor)
    3: result := bsListaNeutra;         // 3 - Lista Neutra (valor)
    4: result := bsMargemValorAgregado; // 4 - Margem Valor Agregado (%)
    5: result := bsPauta;               // 5 - Pauta (valor)
    6: result := bsValordaOperacao      // 6 - Valor da Operação
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumModalidadeBCST.');
  end;
end;

class function TEnum.ModalidadeBCSTToInt(const pEnum: TEnumModalidadeBCST): Integer;
begin
  case pEnum of
    bsPrecoTabelado: result       := 0; // 0 – Preço tabelado ou máximo sugerido
    bsListaNegativa: result       := 1; // 1 - Lista Negativa (valor)
    bsListaPositiva: result       := 2; // 2 - Lista Positiva (valor)
    bsListaNeutra: result         := 3; // 3 - Lista Neutra (valor)
    bsMargemValorAgregado: result := 4; // 4 - Margem Valor Agregado (%)
    bsPauta: result               := 5; // 5 - Pauta (valor)
    bsValordaOperacao: result     := 6; // 6 - Valor da Operação
  end;
end;

class function TEnum.ModalidadeBCToInt(const pEnum: TEnumModalidadeBC): Integer;
begin
  case pEnum of
    mbMargemValorAgregado: Result := 0; //0 - Margem Valor Agregado (%)
    mbPauta: Result               := 1; //1 - Pauta (Valor)
    mbPrecoTabelado: Result       := 2; //2 - Preço Tabelado Máx. (valor)
    mbValorOperacao: Result       := 3; //3 - Valor da operação
  end;
end;

class function TEnum.ModalidadeFrete(const pEnum: TEnumModalidadeFrete): string;
begin
  case pEnum of
    tfEmitente: Result            := '0- Contratação do Frete por conta do Remetente (CIF)';
    tfDestinatario: Result        := '1- Contratação do Frete por conta do Destinatário (FOB)';
    tfTerceiro: Result            := '2- Contratação do Frete por conta de Terceiros';
    tfProprioEmitente: Result     := '3- Transporte Próprio por conta do Remetente';
    tfProprioDestinatario: Result := '4- Transporte Próprio por conta do Destinatário';
    tfSemFrete: Result            := '9- Sem frete';
  end;
end;

class function TEnum.ModalidadeFreteFromStr(pValor: string): TEnumModalidadeFrete;
begin
  result := tfSemFrete;

  if pValor = '0' then
    result := tfEmitente
  else if pValor = '1' then
    result := tfDestinatario
  else if pValor = '2' then
    result := tfTerceiro
  else if pValor = '3' then
    result := tfProprioEmitente
  else if pValor = '4' then
    result := tfProprioDestinatario
  else if pValor = '9' then
    result := tfSemFrete;
end;

{$IFDEF DELPHIXE}


class function TEnum.ModalidadeFreteGetList: TObjectList<TParLista>;
begin
  Result := TObjectList<TParLista>.Create;
  Result.Add(TParLista.Create(ModalidadeFreteToStr(tfEmitente), ModalidadeFrete(tfEmitente)));
  Result.Add(TParLista.Create(ModalidadeFreteToStr(tfDestinatario), ModalidadeFrete(tfDestinatario)));
  Result.Add(TParLista.Create(ModalidadeFreteToStr(tfTerceiro), ModalidadeFrete(tfTerceiro)));
  Result.Add(TParLista.Create(ModalidadeFreteToStr(tfProprioEmitente), ModalidadeFrete(tfProprioEmitente)));
  Result.Add(TParLista.Create(ModalidadeFreteToStr(tfProprioDestinatario), ModalidadeFrete(tfProprioDestinatario)));
  Result.Add(TParLista.Create(ModalidadeFreteToStr(tfSemFrete), ModalidadeFrete(tfSemFrete)));
end;
{$ENDIF}


class function TEnum.ModalidadeFreteToStr(pEnum: TEnumModalidadeFrete): string;
begin
  case pEnum of
    tfEmitente: result            := '0';
    tfDestinatario: result        := '1';
    tfTerceiro: result            := '2';
    tfProprioEmitente: result     := '3';
    tfProprioDestinatario: result := '4';
    tfSemFrete: result            := '9';
    else
         result := '9';
  end;
end;

class function TEnum.ModeloDocumento(pEnum: TEnumModeloDocumento): string;
begin
  case pEnum of
    mdCupomFiscal: Result := '2D - Cupom Fiscal';
    mdNFCe: Result        := '65 - Nota Fiscal Eletrônica Consumidor';
    mdCFeSAT: Result      := '59 - Nota Fiscal Eletrônica Consumidor SAT';
    mdNFe: Result         := '55 - Nota Fiscal Eletrônica';
    mdNFSe: Result        := 'SE - Nota Fiscal Eletrônica de Serviço';
  end;
end;

class function TEnum.ModeloDocumentoFiscal(pEnum: TEnumModeloDocumento): Boolean;
begin
  if (pEnum in [mdCupomFiscal, mdNFCe, mdCFeSAT, mdNFe, mdNFSe, mdCTe, mdMDFe]) then begin
    Result := True;
  end else begin
    Result := False;
  end;
end;

class function TEnum.ModeloDocumentoFromCodigo(pValor: string): TEnumModeloDocumento;
begin
  if pValor = '' then
    Result := mdVazio
  else if pValor = '0' then //TODO RPS não tem modelo fiscal
    Result := mdVazio
  else if pValor = '1' then //TODO Nota Manual não tem modelo fiscal
    Result := mdVazio
  else if pValor = '00' then
    Result := mdVazio   
  else if pValor = '2D' then
    Result := mdCupomFiscal
  else if pValor = '65' then
    Result := mdNFCe
  else if pValor = '55' then
    Result := mdNFe
  else if pValor = '59' then
    Result := mdCFeSAT
  else if pValor = 'SE' then // Modelo interno criado para diferenciar notas que são NFSe
    Result := mdNFSe
  else if pValor = '57' then
    Result := mdCTe
  else if pValor = '58' then
    Result := mdMDFe
  else
    Result := mdInvalido;
end;

class function TEnum.ModeloDocumentoFromInt(pValor: Integer): TEnumModeloDocumento;
begin
  case pValor of
    102: Result := mdCupomFiscal;
    103: Result := mdNFe;
    104: Result := mdNFCe;
    105: Result := mdCFeSAT;
    else
         Result := mdInvalido;
  end;
end;

class function TEnum.AmbienteSEFAZToCodigo(pEnum: TEnumAmbienteSEFAZ): Integer;
begin
  case pEnum of
    amProducao: Result    := 1;
    amHomologacao: Result := 2;
  end;
end;

class function TEnum.AmbienteSEFAZToInt(pEnum: TEnumAmbienteSEFAZ): Integer;
begin
  Result := Ord(pEnum);
end;

class function TEnum.APIResultCodFromStr(const pValor: string): TEnumAPIResultCod;
begin
  result := TEnumAPIResultCodNaoDefinido;
  if pValor = '-2' then
    result := TEnumAPIResultCodEventoNaoLocalizado
  else if pValor = '-1' then
    result := TEnumAPIResultCodGuardaNaoLocalizada
  else if pValor = '1' then
    result := TEnumAPIResultCodNotaDenegada
  else if pValor = '2' then
    result := TEnumAPIResultCodPDVJaExiste
  else if pValor = '3' then
    result := TEnumAPIResultCodNotaNaoConstaNaSefaz
  else if pValor = '4' then
    result := TEnumAPIResultCodNotaJaInutilizada
  else if pValor = '5' then
    result := TEnumAPIResultCodNFeRejeicaoCadastral
  else if pValor = '6' then
    result := TEnumAPIResultCodNFeRejeicaoErro
  else if pValor = '7' then
    result := TEnumAPIResultCodNFeSefazOffline
  else if pValor = '8' then
    result := TEnumAPIResultCodConsultaSemDados
       ;
end;

class function TEnum.APIResultCodToStr(const pEnum: TEnumAPIResultCod): string;
begin
  case pEnum of
    TEnumAPIResultCodNaoDefinido: result          := '';
    TEnumAPIResultCodEventoNaoLocalizado: result  := '-2';
    TEnumAPIResultCodGuardaNaoLocalizada: result  := '-1';
    TEnumAPIResultCodNotaDenegada: result         := '1';
    TEnumAPIResultCodPDVJaExiste: result          := '2';
    TEnumAPIResultCodNotaNaoConstaNaSefaz: result := '3';
    TEnumAPIResultCodNotaJaInutilizada: result    := '4';
    TEnumAPIResultCodNFeRejeicaoCadastral: result := '5';
    TEnumAPIResultCodNFeRejeicaoErro: result      := '6';
    TEnumAPIResultCodNFeSefazOffline: result      := '7';
    TEnumAPIResultCodConsultaSemDados: result     := '8';
  end;
end;

class function TEnum.AplicacaoRedAliqFromStr(const pValor: string): TEnumAplicacaoRedAliq;
begin
  Result := TEnumAplicacaoRedAliq_SomenteContribuintes;

  if pValor = 'C' then
    result := TEnumAplicacaoRedAliq_SomenteContribuintes
  else if pValor = 'R' then
    result := TEnumAplicacaoRedAliq_SomenteRevendas
  else if pValor = 'J' then
    result := TEnumAplicacaoRedAliq_PessoasJuridicas
  else if pValor = 'E' then
    result := TEnumAplicacaoRedAliq_PessoasJuridicasExcetoRevendas;
end;

class function TEnum.AplicacaoRedAliqToStr(const pEnum: TEnumAplicacaoRedAliq): string;
begin
  case pEnum of
    TEnumAplicacaoRedAliq_PessoasJuridicas: result := 'J';
    TEnumAplicacaoRedAliq_PessoasJuridicasExcetoRevendas: result := 'E';
    TEnumAplicacaoRedAliq_SomenteContribuintes: result := 'C';
    TEnumAplicacaoRedAliq_SomenteRevendas: result      := 'R';
  end;
end;

class function TEnum.AplicacaoRedICMSConsumidorFinalFromStr(const pValor: string): TEnumAplicacaoRedICMSConsumidorFinal;
begin
  Result := TEnumAplicacaoRedICMSConsumidorFinal_Todos;

  if pValor = 'F' then
    result := TEnumAplicacaoRedICMSConsumidorFinal_NaoAplica
  else if pValor = 'D' then
    result := TEnumAplicacaoRedICMSConsumidorFinal_SomenteDentro
  else if pValor = 'O' then
    result := TEnumAplicacaoRedICMSConsumidorFinal_SomenteFora;
end;

class function TEnum.AplicacaoRedICMSConsumidorFinalToStr(const pEnum: TEnumAplicacaoRedICMSConsumidorFinal): string;
begin
  case pEnum of
    TEnumAplicacaoRedICMSConsumidorFinal_NaoAplica: result := 'F';
    TEnumAplicacaoRedICMSConsumidorFinal_SomenteDentro: result := 'D';
    TEnumAplicacaoRedICMSConsumidorFinal_SomenteFora: result := 'O';
    TEnumAplicacaoRedICMSConsumidorFinal_Todos: result := 'T';
  end;
end;

class function TEnum.AmbienteSEFAZFromCodigo(pValor: Integer): TEnumAmbienteSEFAZ;
begin
  case pValor of
    1: Result := amProducao;
    2: Result := amHomologacao;
    else
         Result := amProducao; // Default
  end;
end;

class function TEnum.AmbienteSEFAZFromInt(pValor: Integer): TEnumAmbienteSEFAZ;
begin
  if pValor = Ord(amProducao) then
    Result := amProducao
  else if pValor = Ord(amHomologacao) then
    Result := amHomologacao
  else
    raise EEnumeradorInvalido.Create('Opção inválida para TEnumAmbienteSEFAZ.');
end;

class function TEnum.AmbienteSEFAZ(pEnum: TEnumAmbienteSEFAZ): string;
begin
  if pEnum = amProducao then
    Result := 'Produção'
  else if pEnum = amHomologacao then
    Result := 'Homologação'
  else
    raise EEnumeradorInvalido.Create('Opção inválida para TEnumAmbienteSEFAZ.');
end;

{$IFDEF DELPHIXE}


class function TEnum.AmbienteSEFAZGetList: TObjectList<TParLista>;
begin
  Result := TObjectList<TParLista>.Create;
  Result.Add(TParLista.Create(IntToStr(AmbienteSEFAZToInt(amProducao)), AmbienteSEFAZ(amProducao)));
  Result.Add(TParLista.Create(IntToStr(AmbienteSEFAZToInt(amHomologacao)), AmbienteSEFAZ(amHomologacao)));
end;
{$ENDIF}


class function TEnum.AcessoDLLToInt(pEnum: TEnumAcessoDLL): Integer;
begin
  Result := Ord(pEnum);
end;

class function TEnum.AcessoDLLFromInt(pValor: Integer): TEnumAcessoDLL;
begin
  if pValor = Ord(adNenhum) then
    Result := adNenhum
  else if pValor = Ord(adCdecl) then
    Result := adCdecl
  else if pValor = Ord(adStdcall) then
    Result := adStdcall
  else
    Result := adNenhum;
end;

class function TEnum.AcaoTituloBancario(const pEnum: TEnumAcaoTituloBancario): string;
begin
  case pEnum of
    TEnumAcaoTituloBancario_Incluir: result         := 'A - Incluir';
    TEnumAcaoTituloBancario_Cancelar: result        := 'C - Cancelar';
    TEnumAcaoTituloBancario_PagarEmCarteira: result := 'P - Pagar em carteira';
    TEnumAcaoTituloBancario_Consistir: result       := 'I - Consistir';
    TEnumAcaoTituloBancario_AlterarValores: result  := 'V - Instrução alterar valores';
    TEnumAcaoTituloBancario_AlterarData: result     := 'D - Instrução alterar data';
    TEnumAcaoTituloBancario_AlterarValor: result    := 'V - Instrução alterar valor';
  end;
end;

class function TEnum.AcaoTituloBancarioFromStr(const pValor: string): TEnumAcaoTituloBancario;
begin
  if pValor = 'A' then
    result := TEnumAcaoTituloBancario_Incluir
  else if pValor = 'C' then
    result := TEnumAcaoTituloBancario_Cancelar
  else if pValor = 'P' then
    result := TEnumAcaoTituloBancario_PagarEmCarteira
  else if pValor = 'I' then
    result := TEnumAcaoTituloBancario_Consistir
  else if pValor = 'V' then
    result := TEnumAcaoTituloBancario_AlterarValores
  else if pValor = 'D' then
    result := TEnumAcaoTituloBancario_AlterarData
  else if pValor = 'V' then
    result := TEnumAcaoTituloBancario_AlterarValor
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumAcaoTituloBancario.', [pValor]));
end;

class function TEnum.AcaoTituloBancarioToStr(const pEnum: TEnumAcaoTituloBancario): string;
begin
  case pEnum of
    TEnumAcaoTituloBancario_Incluir: result         := 'A';
    TEnumAcaoTituloBancario_Cancelar: result        := 'C';
    TEnumAcaoTituloBancario_PagarEmCarteira: result := 'P';
    TEnumAcaoTituloBancario_Consistir: result       := 'I';
    TEnumAcaoTituloBancario_AlterarValores: result  := 'V';
    TEnumAcaoTituloBancario_AlterarData: result     := 'D';
    TEnumAcaoTituloBancario_AlterarValor: result    := 'V';
  end;
end;

class function TEnum.AcessoDLL(pEnum: TEnumAcessoDLL): string;
begin
  if pEnum = adNenhum then
    Result := 'Nenhum'
  else if pEnum = adCdecl then
    Result := 'CDECL'
  else if pEnum = adStdcall then
    Result := 'STDCALL'
  else
    Result := '';
end;

{$IFDEF DELPHIXE}


class function TEnum.AcessoDLLGetList: TObjectList<TParLista>;
begin
  Result := TObjectList<TParLista>.Create;
  Result.Add(TParLista.Create(IntToStr(AcessoDLLToInt(adNenhum)), AcessoDLL(adNenhum)));
  Result.Add(TParLista.Create(IntToStr(AcessoDLLToInt(adCdecl)), AcessoDLL(adCdecl)));
  Result.Add(TParLista.Create(IntToStr(AcessoDLLToInt(adStdcall)), AcessoDLL(adStdcall)));
end;
{$ENDIF}


class function TEnum.BancoDadosFromInt(pValor: Integer): TEnumBancoDados;
begin
  if pValor = Ord(bdOracle) then
    Result := bdOracle
  else if pValor = Ord(bdPostgreSQL) then
    Result := bdPostgreSQL
  else if pValor = Ord(bdODBC) then
    Result := bdODBC
  else if pValor = Ord(bdOraClient) then
    Result := bdOraClient
  else if pValor = Ord(bdFirebird) then
    Result := bdFirebird
  else if pValor = Ord(bdSQLServer) then
    Result := bdSQLServer
  else
    Result := bdVazio;
end;

class function TEnum.BancoDadosFromStr(pValor: string): TEnumBancoDados;
begin
  if (pValor = 'ORA') or (pValor = 'Oracle') then
    Result := bdOracle
  else if (pValor = 'PG') or (pValor = 'PostgreSQL') then
    Result := bdPostgreSQL
  else if pValor = 'ODBC' then
    Result := bdODBC
  else if pValor = 'OraClient' then
    Result := bdOraClient
  else if pValor = 'Firebird' then
    Result := bdFirebird
  else if pValor = 'SQLServer' then
    Result := bdSQLServer
  else
    Result := bdVazio;
end;

{$IFDEF DELPHIXE}


class function TEnum.BancoDadosGetList: TObjectList<TParLista>;
begin
  Result := TObjectList<TParLista>.Create;
  Result.Add(TParLista.Create(IntToStr(BancoDadosToInt(bdVazio)), BancoDados(bdVazio)));
  Result.Add(TParLista.Create(IntToStr(BancoDadosToInt(bdOracle)), BancoDados(bdOracle)));
  Result.Add(TParLista.Create(IntToStr(BancoDadosToInt(bdPostgreSQL)), BancoDados(bdPostgreSQL)));
  Result.Add(TParLista.Create(IntToStr(BancoDadosToInt(bdODBC)), BancoDados(bdODBC)));
  Result.Add(TParLista.Create(IntToStr(BancoDadosToInt(bdOraClient)), BancoDados(bdOraClient)));
  Result.Add(TParLista.Create(IntToStr(BancoDadosToInt(bdFirebird)), BancoDados(bdFirebird)));
  Result.Add(TParLista.Create(IntToStr(BancoDadosToInt(bdSQLServer)), BancoDados(bdSQLServer)));
end;
{$ENDIF}


class function TEnum.BancoDadosToInt(pEnum: TEnumBancoDados): Integer;
begin
  Result := Ord(pEnum);
end;

class function TEnum.BancoDadosToStr(pEnum: TEnumBancoDados): string;
begin
  case pEnum of
    bdOracle: Result     := 'ORA';
    bdPostgreSQL: Result := 'PG';
    bdODBC: Result       := 'ODBC';
    bdOraClient: Result  := 'OraClient';
    bdFirebird: Result   := 'Firebird';
    bdSQLServer: Result  := 'SQLServer';
    bdVazio: Result      := '';
    else
         Result := '';
  end;
end;

class function TEnum.CadastroDI(const pEnum: TEnumCadastroDI): string;
begin
  case pEnum of
    caIncompleto: Result := 'I - Incompleto';
    caCompleto: Result   := 'C - Completo';
  end;
end;

class function TEnum.CadastroDIFromStr(const pValor: string): TEnumCadastroDI;
begin
  if pValor = 'I' then
    Result := caIncompleto
  else if pValor = 'C' then
    Result := caCompleto
  else
    Result := caIncompleto;
end;

class function TEnum.CadastroDIToStr(const pEnum: TEnumCadastroDI): string;
begin
  case pEnum of
    caIncompleto: Result := 'I'; //I - Incompleto
    caCompleto: Result   := 'C'; //C - Completo
  end;
end;

class function TEnum.CaixaOrigem(const pEnum: TEnumCaixaOrigem): string;
begin
  case pEnum of
    coVenda: Result                := '1 - Venda';
    coRecebimento: Result          := '2 - Recebimento';
    coSangria: Result              := '3 - Sangria';
    coReforco: Result              := '4 - Reforço';
    coDeposito: Result             := '5 - Depósito';
    coRetirada: Result             := '6 - Retirada';
    coRecebimentoDevolucao: Result := '7 - Recebimento de devolução';
    coDevolucaoVendas: Result      := '8 - Devolução de vendas';
    coDiferenca: Result            := '9 - Diferença';
    coRecebimentoTerceiro: Result  := 'T - Recebimento de terceiro';
  end;
end;

class function TEnum.CaixaOrigemFromStr(const pValor: string): TEnumCaixaOrigem;
begin
  if pValor = '1' then
    Result := coVenda
  else if pValor = '2' then
    Result := coRecebimento
  else if pValor = '3' then
    Result := coSangria
  else if pValor = '4' then
    Result := coReforco
  else if pValor = '5' then
    Result := coDeposito
  else if pValor = '6' then
    Result := coRetirada
  else if pValor = '7' then
    Result := coRecebimentoDevolucao
  else if pValor = '8' then
    Result := coDevolucaoVendas
  else if pValor = '9' then
    Result := coDiferenca
  else if pValor = 'T' then
    Result := coRecebimentoTerceiro;
end;

class function TEnum.CaixaOrigemToStr(const pEnum: TEnumCaixaOrigem): string;
begin
  case pEnum of
    coVenda: Result                := '1';
    coRecebimento: Result          := '2';
    coSangria: Result              := '3';
    coReforco: Result              := '4';
    coDeposito: Result             := '5';
    coRetirada: Result             := '6';
    coRecebimentoDevolucao: Result := '7';
    coDevolucaoVendas: Result      := '8';
    coDiferenca: Result            := '9';
    coRecebimentoTerceiro: Result  := 'T';
    else
         Result := '';
  end;
end;

class function TEnum.CalcSubFromStr(pTipo: string): TEnumCalcSub;
begin
  if pTipo = 'D' then
    result := TEnumCalcSub_Destaca
  else
    result := TEnumCalcSub_Retem;
end;

class function TEnum.CalcSubToStr(pTipo: TEnumCalcSub): string;
begin
  case pTipo of
    TEnumCalcSub_Destaca: result := 'D';
    TEnumCalcSub_Retem: result   := 'R';
  end;
end;

class function TEnum.CanalDeAplicacaoCampanha(const pEnum: TEnumCanalDeAplicacaoCampanha): string;
begin
  case pEnum of
    TEnumCanalDeAplicacaoCampanha_Todos: Result       := 'T - Todos';
    TEnumCanalDeAplicacaoCampanha_Loja: Result        := 'L - Loja';
    TEnumCanalDeAplicacaoCampanha_Omnichannel: Result := 'O - Omnichannel';
  end;
end;

class function TEnum.CanalDeAplicacaoCampanhaFromStr(const pValor: string): TEnumCanalDeAplicacaoCampanha;
begin
  if pValor = 'L' then
    Result := TEnumCanalDeAplicacaoCampanha_Loja // L - Loja
  else if pValor = 'O' then
    Result := TEnumCanalDeAplicacaoCampanha_Omnichannel // O - Omnichannel
  else
    Result := TEnumCanalDeAplicacaoCampanha_Todos; // T - Todos
end;

class function TEnum.CanalDeAplicacaoCampanhaToStr(const pEnum: TEnumCanalDeAplicacaoCampanha): string;
begin
  case pEnum of
    TEnumCanalDeAplicacaoCampanha_Todos: Result       := 'T'; // T - Todos
    TEnumCanalDeAplicacaoCampanha_Loja: Result        := 'L'; // L - Loja
    TEnumCanalDeAplicacaoCampanha_Omnichannel: Result := 'O'; // O - Omnichannel
  end;
end;

class function TEnum.RegraAcordoComercialCampanha(const pEnum: TEnumRegraAcordoComercialCampanha): string;
begin
  case pEnum of
    TEnumRegraAcordoComercialCampanha_MantemAcordo: Result      := 'M - Mantém Acordo';
    TEnumRegraAcordoComercialCampanha_AplicaMelhorPreco: Result := 'A - Aplica melhor preço para consumidor';
  end;
end;

class function TEnum.RegraAcordoComercialCampanhaFromStr(const pValor: string): TEnumRegraAcordoComercialCampanha;
begin
  if pValor = 'M' then
    Result := TEnumRegraAcordoComercialCampanha_MantemAcordo // M - Mantém acordo
  else if pValor = 'A' then
    Result := TEnumRegraAcordoComercialCampanha_AplicaMelhorPreco // A - Aplica melhor preço para consumidor
  else
    Result := TEnumRegraAcordoComercialCampanha_AplicaMelhorPreco; // A - Aplica melhor preço para consumidor
end;

class function TEnum.RegraAcordoComercialCampanhaToStr(const pEnum: TEnumRegraAcordoComercialCampanha): string;
begin
  case pEnum of
    TEnumRegraAcordoComercialCampanha_MantemAcordo: Result      := 'M'; // M - Mantém acordo
    TEnumRegraAcordoComercialCampanha_AplicaMelhorPreco: Result := 'A' // A - Aplica melhor preço para consumidor
  end;
end;


class function TEnum.CancelamentoSefaz(const pEnum: TEnumCancelamentoSefaz): string;
begin
  case pEnum of
    csNaoSeAplica: result    := '0 - Não se aplica';
    csAutenticado: result    := 'A - Autenticado';
    csNaoAutenticado: result := 'N - Não autenticado';
    csDuvida: result         := 'D - Dúvida';
  end;
end;

class function TEnum.CancelamentoSefazFromStr(const pValor: string): TEnumCancelamentoSefaz;
begin
  if pValor = '0' then
    result := csNaoSeAplica
  else if pValor = 'A' then
    result := csAutenticado
  else if pValor = 'N' then
    result := csNaoAutenticado
  else if pValor = 'D' then
    result := csDuvida;
end;

class function TEnum.CancelamentoSefazToStr(const pEnum: TEnumCancelamentoSefaz): string;
begin
  case pEnum of
    csNaoSeAplica: result    := '0';
    csAutenticado: result    := 'A';
    csNaoAutenticado: result := 'N';
    csDuvida: result         := 'D';
  end;
end;

class function TEnum.CaracteristicaCarteira(const pEnum: TEnumCaracteristicaCarteira): string;
begin
  case pEnum of
    TEnumCaracteristicaCarteira_Simples: Result            := '1 - Simples';
    TEnumCaracteristicaCarteira_Vinculada: Result          := '2 - Vinculada';
    TEnumCaracteristicaCarteira_Caucionada: Result         := '3 - Caucionada';
    TEnumCaracteristicaCarteira_Descontada: Result         := '4 - Descontada';
    TEnumCaracteristicaCarteira_SimplesComRegistro: Result := '5 - Simples (Com Registro)';
    TEnumCaracteristicaCarteira_CaucionadaComRegistro: Result := '6 - Caucionada (Com Registro)';
    TEnumCaracteristicaCarteira_Vendor: Result := '7 - Vendor';
  end;
end;

class function TEnum.CaracteristicaCarteiraFromStr(const pValor: string): TEnumCaracteristicaCarteira;
begin
  if UpperCase(pValor) = UpperCase('1') then // 1 - Simples
    Result := TEnumCaracteristicaCarteira_Simples
  else if UpperCase(pValor) = UpperCase('2') then // 2 - Vinculada
    Result := TEnumCaracteristicaCarteira_Vinculada
  else if UpperCase(pValor) = UpperCase('3') then // 3 - Caucionada
    Result := TEnumCaracteristicaCarteira_Caucionada
  else if UpperCase(pValor) = UpperCase('4') then // 4 - Descontada
    Result := TEnumCaracteristicaCarteira_Descontada
  else if UpperCase(pValor) = UpperCase('5') then // 5 - Simples (Com Registro)
    Result := TEnumCaracteristicaCarteira_SimplesComRegistro
  else if UpperCase(pValor) = UpperCase('6') then // 6 - Caucionada (Com Registro)
    Result := TEnumCaracteristicaCarteira_CaucionadaComRegistro
  else if UpperCase(pValor) = UpperCase('7') then // 7 - Vendor
    Result := TEnumCaracteristicaCarteira_Vendor
  else
    Result := TEnumCaracteristicaCarteira_Simples; //raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumCaracteristicaCarteira.');
end;

class function TEnum.CaracteristicaCarteiraToStr(const pEnum: TEnumCaracteristicaCarteira): string;
begin
  case pEnum of
    TEnumCaracteristicaCarteira_Simples: Result            := '1'; // 1 - Simples
    TEnumCaracteristicaCarteira_Vinculada: Result          := '2'; // 2 - Vinculada
    TEnumCaracteristicaCarteira_Caucionada: Result         := '3'; // 3 - Caucionada
    TEnumCaracteristicaCarteira_Descontada: Result         := '4'; // 4 - Descontada
    TEnumCaracteristicaCarteira_SimplesComRegistro: Result := '5'; // 5 - Simples (Com Registro)
    TEnumCaracteristicaCarteira_CaucionadaComRegistro: Result := '6'; // 6 - Caucionada (Com Registro)
    TEnumCaracteristicaCarteira_Vendor: Result := '7'; // 7 - Vendor
  end;
end;

class function TEnum.CategoriasMagazordFromStr(const pValor: string): TEnumTabelaIntegracao;
begin
  if (pValor = 'Departamento') then
    Result := TEnumTabelaIntegracao_Departamento
  else if (pValor = 'Classe 1') then
    Result := TEnumTabelaIntegracao_Classe1
  else if (pValor = 'Classe 2') then
    Result := TEnumTabelaIntegracao_Classe2
  else if (pValor = 'Classe 3') then
    Result := TEnumTabelaIntegracao_Classe3
  else if (pValor = 'Classe 4') then
    Result := TEnumTabelaIntegracao_Classe4
  else
    raise EEnumeradorInvalido.Create(Format('Valor de Enumerador "%s" inválido para TEnumTabelaIntegracao_Categoria.', [pvalor]));
end;

class function TEnum.CategoriasMagazordToStr(const pEnum: TEnumTabelaIntegracao): String;
begin
  case pEnum of
    TEnumTabelaIntegracao_Departamento: Result := 'Departamento';
    TEnumTabelaIntegracao_Classe1: Result := 'Classe 1';
    TEnumTabelaIntegracao_Classe2: Result := 'Classe 2';
    TEnumTabelaIntegracao_Classe3: Result := 'Classe 3';
    TEnumTabelaIntegracao_Classe4: Result := 'Classe 4';
  end;
end;

class function TEnum.CertificadoTipo(const pEnum: TEnumCertificadoTipo): string;
begin
  case pEnum of
    TEnumCertificadoTipo_A1: Result := 'A1'; // A1 - A1
    TEnumCertificadoTipo_A3: Result := 'A3'; // A3 - A3
  end;
end;

class function TEnum.CertificadoTipoFromStr(const pValor: string): TEnumCertificadoTipo;
begin
  if UpperCase(pValor) = UpperCase('A1') then
    Result := TEnumCertificadoTipo_A1
  else if UpperCase(pValor) = UpperCase('A3') then
    Result := TEnumCertificadoTipo_A3
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumCertificadoTipo.');
end;

class function TEnum.CertificadoTipoToStr(const pEnum: TEnumCertificadoTipo): string;
begin
  case pEnum of
    TEnumCertificadoTipo_A1: Result := 'A1'; // A1 - A1
    TEnumCertificadoTipo_A3: Result := 'A3'; // A3 - A3
  end;
end;

class function TEnum.ParamCfgSistemaTipoToStr(const pEnum: TEnumParamCfgSistemaTipo): string;
begin
  case pEnum of
    TEnumParamCfgSistemaTipo_NaoInformado: Result := '';
    TEnumParamCfgSistemaTipo_Texto: Result        := 'T';
    TEnumParamCfgSistemaTipo_Numerico: Result     := 'N';
    TEnumParamCfgSistemaTipo_Inteiro: Result      := 'I';
    TEnumParamCfgSistemaTipo_Booleano: Result     := 'B';
    TEnumParamCfgSistemaTipo_Data: Result         := 'D';
  end;
end;

class function TEnum.ParamCfgSistemaTipoFromStr(const pValor: string): TEnumParamCfgSistemaTipo;
begin
  Result := TEnumParamCfgSistemaTipo_NaoInformado;

  if pValor = 'T' then
    Result := TEnumParamCfgSistemaTipo_Texto
  else if pValor = 'N' then
    Result := TEnumParamCfgSistemaTipo_Numerico
  else if pValor = 'I' then
    Result := TEnumParamCfgSistemaTipo_Inteiro
  else if pValor = 'B' then
    Result := TEnumParamCfgSistemaTipo_Booleano
  else if pValor = 'D' then
    Result := TEnumParamCfgSistemaTipo_Data;
end;

class function TEnum.ParamCfgSistemaTipo(const pEnum: TEnumParamCfgSistemaTipo): string;
begin
  case pEnum of
    TEnumParamCfgSistemaTipo_NaoInformado: Result := 'Não informado';
    TEnumParamCfgSistemaTipo_Texto: Result        := 'T - Texto';
    TEnumParamCfgSistemaTipo_Numerico: Result     := 'N - Numérico';
    TEnumParamCfgSistemaTipo_Inteiro: Result      := 'I - Inteiro';
    TEnumParamCfgSistemaTipo_Booleano: Result     := 'B - Booleano';
    TEnumParamCfgSistemaTipo_Data: Result         := 'D - Data';
  end;
end;

class function TEnum.VariacaoCustoTipoToStr(const pEnum: TEnumVariacaoCustoTipo): string;
begin
  case pEnum of
    TEnumVariacaoCustoTipo_UltimaCompra: Result := 'C';
    TEnumVariacaoCustoTipo_Grade: Result        := 'G';
  end;
end;

class function TEnum.VersaoMDFeFromStr(const pValor: string): TEnumVersaoMDFe;
begin
  if copy(pValor, 1, 4) = '3.00' then begin
    result := vm300;
  end else begin
    result := vmNaoDefinido;
  end;
end;

class function TEnum.VersaoMDFeToFloat(const pEnum: TEnumVersaoMDFe): Currency;
begin
  case pEnum of
    vm300: Result := 3;
  end;

end;

class function TEnum.VersaoNfe(const pEnum: TEnumVersaoNfe): string;
begin
  case pEnum of
    vn310: result         := 'Versão 3.1';
    vn400: result         := 'Versão 4.0';
    vnNaoDefinido: result := '';
  end;
end;

class function TEnum.VersaoNfeFromFloat(const pValor: Currency): TEnumVersaoNfe;
begin
  if pValor = 3.1 then begin
    result := vn310;
  end else if pValor = 4 then begin
    result := vn400;
  end else begin
    result := vnNaoDefinido;
  end;
end;

class function TEnum.VersaoNfeFromStr(const pValor: string): TEnumVersaoNfe;
begin
  if copy(pValor, 1, 4) = '3.10' then begin
    result := vn310;
  end else if copy(pValor, 1, 4) = '4.00' then begin
    result := vn400;
  end else begin
    result := vnNaoDefinido;
  end;
end;

class function TEnum.VersaoNfeToFloat(const pEnum: TEnumVersaoNfe): Currency;
begin
  case pEnum of
    vn310: result := 3.1; // 3.1
    vn400: result := 4;   // 4.0
  end;
end;

class function TEnum.VersaoNfeToStr(const pEnum: TEnumVersaoNfe): string;
begin
  case pEnum of
    vn310: result := '3.10'; // 3.1
    vn400: result := '4.00'; // 4.0
  end;
end;

class function TEnum.VersaoQRCodeUF(const pUF: string): string;
const
  DFeUFVersaoQRCode: array [0 .. 26] of string = (
    // Versão - UF - Descrição
    '2',  // AC - Acre
    '2',  // AL - Alagoas
    '2',  // AM - Amazonas
    '2',  // AP - Amapá
    '2',  // BA - Bahia
    '2',  // CE - Ceará
    '2',  // DF - Distrito Federal
    '2',  // ES - Espírito Santo
    '2',  // GO - Goiás
    '2',  // MA - Maranhão
    '2',  // MG - Minas Gerais
    '2',  // MS - Mato Grosso do Sul
    '2',  // MT - Mato Grosso
    '2',  // PA - Pará
    '2',  // PB - Paraíba
    '2',  // PE - Pernambuco
    '2',  // PI - Piauí
    '2',  // PR - Paraná
    '2',  // RJ - Rio de Janeiro
    '2',  // RN - Rio Grande do Norte
    '2',  // RO - Rondônia
    '2',  // RR - Roraima
    '2',  // RS - Rio Grande do Sul
    '2',  // SC - Santa Catarina
    '2',  // SE - Sergipe
    '2',  // SP - São Paulo
    '2'   // TO - Tocantins
     );
var
  I: Integer;
begin
  Result := '2'; // Versão padrão

  for I := low(BR_UF) to high(BR_UF) do begin
    if BR_UF[I] = pUF then begin
      Result := DFeUFVersaoQRCode[I];
      Break;
    end;
  end;

end;

class function TEnum.VariacaoCustoTipoFromStr(const pValor: string): TEnumVariacaoCustoTipo;
begin
  if pValor = 'C' then
    Result := TEnumVariacaoCustoTipo_UltimaCompra
  else if pValor = 'G' then
    Result := TEnumVariacaoCustoTipo_Grade
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumVariacaoCustoTipo.');
end;

class function TEnum.VariacaoCustoTipo(const pEnum: TEnumVariacaoCustoTipo): string;
begin
  case pEnum of
    TEnumVariacaoCustoTipo_UltimaCompra: Result := 'C - Última Compra';
    TEnumVariacaoCustoTipo_Grade: Result        := 'G - Grade';
  end;
end;

class function TEnum.ClassificacaoDeTipoDeTarefa(const pEnum: TEnumClassificacaoDeTipoDeTarefa): string;
begin
  case pEnum of
    TEnumClassificacaoDeTipoDeTarefa_Ambos: Result    := 'Ambos';
    TEnumClassificacaoDeTipoDeTarefa_Suporte: Result  := 'Suporte';
    TEnumClassificacaoDeTipoDeTarefa_Workflow: Result := 'WorkFlow';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumClassificacaoDeTipoDeTarefa.');
  end;
end;

class function TEnum.ClassificacaoDeTipoDeTarefaFromStr(const pValor: string): TEnumClassificacaoDeTipoDeTarefa;
begin
  if pValor = 'A' then
    Result := TEnumClassificacaoDeTipoDeTarefa_Ambos
  else if pValor = 'S' then
    Result := TEnumClassificacaoDeTipoDeTarefa_Suporte
  else if pValor = 'W' then
    Result := TEnumClassificacaoDeTipoDeTarefa_Workflow
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumClassificacaoDeTipoDeTarefa.', [pValor]));
end;

class function TEnum.ClassificacaoDeTipoDeTarefaToStr(const pEnum: TEnumClassificacaoDeTipoDeTarefa): string;
begin
  case pEnum of
    TEnumClassificacaoDeTipoDeTarefa_Ambos: Result    := 'A';
    TEnumClassificacaoDeTipoDeTarefa_Suporte: Result  := 'S';
    TEnumClassificacaoDeTipoDeTarefa_Workflow: Result := 'W';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumClassificacaoDeTipoDeTarefa.');
  end;
end;

class function TEnum.CobrancaDeTarefa(const pEnum: TEnumCobrancaDeTarefa): string;
begin
  case pEnum of
    TEnumCobrancaDeTarefa_ADefinir: Result := 'A Definir';
    TEnumCobrancaDeTarefa_AFaturar: Result := 'A Faturar';
    TEnumCobrancaDeTarefa_Contrato: Result := 'Contrato';
    TEnumCobrancaDeTarefa_Cortesia: Result := 'Cortesia';
    TEnumCobrancaDeTarefa_Faturado: Result := 'Faturado';
    TEnumCobrancaDeTarefa_Revenda: Result  := 'Revenda';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumCobrancaDeTarefa.');
  end;
end;

class function TEnum.CobrancaDeTarefaFromStr(const pValor: string): TEnumCobrancaDeTarefa;
begin
  if pValor = 'D' then
    Result := TEnumCobrancaDeTarefa_ADefinir
  else if pValor = 'A' then
    Result := TEnumCobrancaDeTarefa_AFaturar
  else if pValor = 'C' then
    Result := TEnumCobrancaDeTarefa_Contrato
  else if pValor = 'S' then
    Result := TEnumCobrancaDeTarefa_Cortesia
  else if pValor = 'F' then
    Result := TEnumCobrancaDeTarefa_Faturado
  else if pValor = 'R' then
    Result := TEnumCobrancaDeTarefa_Revenda
  else
    raise EEnumeradorInvalido.Create(Format('Valor de enumerador "%s" inválido para TEnumCobrancaDeTarefa.', [pValor]));
end;

class function TEnum.CobrancaDeTarefaToStr(const pEnum: TEnumCobrancaDeTarefa): string;
begin
  case pEnum of
    TEnumCobrancaDeTarefa_ADefinir: Result := 'D';
    TEnumCobrancaDeTarefa_AFaturar: Result := 'A';
    TEnumCobrancaDeTarefa_Contrato: Result := 'C';
    TEnumCobrancaDeTarefa_Cortesia: Result := 'S';
    TEnumCobrancaDeTarefa_Faturado: Result := 'F';
    TEnumCobrancaDeTarefa_Revenda: Result  := 'R';
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumCobrancaDeTarefa.');
  end;
end;

class function TEnum.CodigoEmpresa(const pEnum: TEnumCodigoEmpresa): string;
begin
  case pEnum of
    TEnumCodigoEmpresa_NaoDefinido: Result := '-1 - Não Definido'; // -1 - Não Definido
    TEnumCodigoEmpresa_TOTALL: Result      := '0 - TOTALI'; // 0 - Totall
    TEnumCodigoEmpresa_INTERSYS: Result    := '1 - INTERSYS'; // 1 - INTERSYS
    TEnumCodigoEmpresa_ADVANCE: Result     := '2 - ADVANCE'; // 2 - ADVANCE
    TEnumCodigoEmpresa_SARAIVA: Result     := '3 - SARAIVA'; // 3 - SARAIVA
    TEnumCodigoEmpresa_MODERNA: Result     := '4 - MODERNA'; // 4 - MODERNA
    TEnumCodigoEmpresa_WALLIS: Result      := '5 - WALLIS'; // 5 - WALLIS
    TEnumCodigoEmpresa_BENNER: Result      := '6 - BENNER'; // 6 - BENNER
    TEnumCodigoEmpresa_MLBC: Result        := '7 - MLBC'; // 7 - MLBC
    TEnumCodigoEmpresa_KINDER: Result      := '8 - KINDER'; // 8 - KINDER
    TEnumCodigoEmpresa_GIMBA: Result       := '9 - GIMBA'; // 9 - GIMBA
    TEnumCodigoEmpresa_PCIA: Result        := '10 - PCIA'; // 10 - PCIA
    TEnumCodigoEmpresa_LIG: Result         := '11 - LIG';  // 11 - LIG
    TEnumCodigoEmpresa_N49: Result         := '12 - N49';  // 12 - N49
    TEnumCodigoEmpresa_VNDA: Result        := '13 - VNDA'; // 12 - VNDA
  end;
end;

class function TEnum.CodigoEmpresaFromInt(const pValor: Integer): TEnumCodigoEmpresa;
begin
  case pValor of
    0: Result  := TEnumCodigoEmpresa_TOTALL;   // 0 - Totall
    1: Result  := TEnumCodigoEmpresa_INTERSYS; // 1 - INTERSYS
    2: Result  := TEnumCodigoEmpresa_ADVANCE;  // 2 - ADVANCE
    3: Result  := TEnumCodigoEmpresa_SARAIVA;  // 3 - SARAIVA
    4: Result  := TEnumCodigoEmpresa_MODERNA;  // 4 - MODERNA
    5: Result  := TEnumCodigoEmpresa_WALLIS;   // 5 - WALLIS
    6: Result  := TEnumCodigoEmpresa_BENNER;   // 6 - BENNER
    7: Result  := TEnumCodigoEmpresa_MLBC;     // 7 - MLBC
    8: Result  := TEnumCodigoEmpresa_KINDER;   // 8 - KINDER
    9: Result  := TEnumCodigoEmpresa_GIMBA;    // 9 - GIMBA
    10: Result := TEnumCodigoEmpresa_PCIA;     // 10 - PCIA
    11: Result := TEnumCodigoEmpresa_LIG;      // 11 - LIG
    12: Result := TEnumCodigoEmpresa_N49;      // 12 - N49
    13: Result := TEnumCodigoEmpresa_VNDA;     // 13 - VNDA
    else
         Result := TEnumCodigoEmpresa_NaoDefinido; // -1 - Não Definido
  end;
end;

class function TEnum.CodigoEmpresaToInt(const pEnum: TEnumCodigoEmpresa): Integer;
begin
  Result := -1; // -1 - TEnumCodigoEmpresa_NaoDefinido

  case pEnum of
    TEnumCodigoEmpresa_TOTALL: Result   := 0;  // 0 - Totall
    TEnumCodigoEmpresa_INTERSYS: Result := 1;  // 1 - INTERSYS
    TEnumCodigoEmpresa_ADVANCE: Result  := 2;  // 2 - ADVANCE
    TEnumCodigoEmpresa_SARAIVA: Result  := 3;  // 3 - SARAIVA
    TEnumCodigoEmpresa_MODERNA: Result  := 4;  // 4 - MODERNA
    TEnumCodigoEmpresa_WALLIS: Result   := 5;  // 5 - WALLIS
    TEnumCodigoEmpresa_BENNER: Result   := 6;  // 6 - BENNER
    TEnumCodigoEmpresa_MLBC: Result     := 7;  // 7 - MLBC
    TEnumCodigoEmpresa_KINDER: Result   := 8;  // 8 - KINDER
    TEnumCodigoEmpresa_GIMBA: Result    := 9;  // 9 - GIMBA
    TEnumCodigoEmpresa_PCIA: Result     := 10; //10 - PCIA
    TEnumCodigoEmpresa_LIG: Result      := 11; //11 - LIG
    TEnumCodigoEmpresa_N49: Result      := 12; //12 - N49
    TEnumCodigoEmpresa_VNDA: Result     := 13; //13 - VNDA
  end;
end;

class function TEnum.CodigoOperacaoBlocoX(const pEnum: TEnumCodigoOperacaoBlocoX): string;
begin
  case pEnum of
    TEnumCodigoOperacaoBlocoX_Ok: Result                  := 'OK'; // 0 - OK
    TEnumCodigoOperacaoBlocoX_XMLInvalido: Result         := 'XML inválido'; // 1 - XML inválido: [ERRO]
    TEnumCodigoOperacaoBlocoX_ReciboNaoEncontrado: Result := 'Recibo não encontrado'; // 2 - Recibo não encontrado
    TEnumCodigoOperacaoBlocoX_NaoPossuiPermissao: Result  := 'Não possui permissão de acesso ao recibo'; // 3 - Não possui permissão de acesso ao recibo
    TEnumCodigoOperacaoBlocoX_ErroInesperado: Result      := 'Ocorreu um erro inesperado'; // 9999 - Ocorreu um erro inesperado: [ERRO]
    else
         Result := 'Não Definido'; // -1 - Não Definido
  end;
end;

class function TEnum.CodigoOperacaoBlocoXFromInt(const pValor: Integer): TEnumCodigoOperacaoBlocoX;
begin
  case pValor of
    0: Result    := TEnumCodigoOperacaoBlocoX_Ok;          // 0 - OK
    1: Result    := TEnumCodigoOperacaoBlocoX_XMLInvalido; // 1 - XML inválido: [ERRO]
    2: Result    := TEnumCodigoOperacaoBlocoX_ReciboNaoEncontrado; // 2 - Recibo não encontrado
    3: Result    := TEnumCodigoOperacaoBlocoX_NaoPossuiPermissao; // 3 - Não possui permissão de acesso ao recibo
    9999: Result := TEnumCodigoOperacaoBlocoX_ErroInesperado; // 9999 - Ocorreu um erro inesperado: [ERRO]
    else
         Result := TEnumCodigoOperacaoBlocoX_NaoDefinido; // -1 - Não Definido
  end;
end;

class function TEnum.CodigoOperacaoBlocoXToInt(const pEnum: TEnumCodigoOperacaoBlocoX): Integer;
begin
  case pEnum of
    TEnumCodigoOperacaoBlocoX_Ok: Result                  := 0; // 0 - OK
    TEnumCodigoOperacaoBlocoX_XMLInvalido: Result         := 1; // 1 - XML inválido: [ERRO]
    TEnumCodigoOperacaoBlocoX_ReciboNaoEncontrado: Result := 2; // 2 - Recibo não encontrado
    TEnumCodigoOperacaoBlocoX_NaoPossuiPermissao: Result  := 3; // 3 - Não possui permissão de acesso ao recibo
    TEnumCodigoOperacaoBlocoX_ErroInesperado: Result      := 9999; // 9999 - Ocorreu um erro inesperado: [ERRO]
    else
         Result := -1; // -1 - Não Definido
  end;
end;

class function TEnum.CodigoProcessamentoBlocoX(const pEnum: TEnumCodigoProcessamentoBlocoX): string;
begin
  case pEnum of
    TEnumCodigoProcessamentoBlocoX_Aguardando: Result := 'Aguardando'; // 0 - Aguardando
    TEnumCodigoProcessamentoBlocoX_Sucesso: Result    := 'Sucesso'; // 1 - Sucesso
    TEnumCodigoProcessamentoBlocoX_Erro: Result       := 'Erro'; // 2 - Erro
    TEnumCodigoProcessamentoBlocoX_Cancelado: Result  := 'Cancelado'; // 3 - Cancelado
    else
         Result := 'Não Definido'; // -1 - Não Definido
  end;
end;

class function TEnum.CodigoProcessamentoBlocoXFromInt(const pValor: Integer): TEnumCodigoProcessamentoBlocoX;
begin
  case pValor of
    0: Result := TEnumCodigoProcessamentoBlocoX_Aguardando; // 0 - Aguardando
    1: Result := TEnumCodigoProcessamentoBlocoX_Sucesso; // 1 - Sucesso
    2: Result := TEnumCodigoProcessamentoBlocoX_Erro;      // 2 - Erro
    3: Result := TEnumCodigoProcessamentoBlocoX_Cancelado; // 3 - Cancelado
    else
         Result := TEnumCodigoProcessamentoBlocoX_NaoDefinido; // -1 - Não Definido
  end;
end;

class function TEnum.CodigoProcessamentoBlocoXToInt(const pEnum: TEnumCodigoProcessamentoBlocoX): Integer;
begin
  case pEnum of
    TEnumCodigoProcessamentoBlocoX_Aguardando: Result := 0; // 0 - Aguardando
    TEnumCodigoProcessamentoBlocoX_Sucesso: Result    := 1; // 1 - Sucesso
    TEnumCodigoProcessamentoBlocoX_Erro: Result       := 2; // 2 - Erro
    TEnumCodigoProcessamentoBlocoX_Cancelado: Result  := 3; // 3 - Cancelado
    else
         Result := -1; // -1 - Não Definido
  end;
end;

class function TEnum.GabaritoConteudo(const pEnum: TEnumGabaritoConteudo): string;
begin
  case pEnum of
    TEnumGabaritoConteudo_NaoInformado: Result     := 'N - Não Informado';
    TEnumGabaritoConteudo_ReferenciaBasica: Result := 'B - Referência Básica';
    TEnumGabaritoConteudo_Referencia: Result       := 'R - Referência';
    TEnumGabaritoConteudo_Valor: Result            := 'V - Valor';
    TEnumGabaritoConteudo_Quantidade: Result       := 'Q - Quantidade';
    TEnumGabaritoConteudo_Digito11: Result         := 'D - Dígito 11';
    TEnumGabaritoConteudo_Digito10: Result         := '0 - Dígito 10';
    TEnumGabaritoConteudo_Digito7: Result          := '7 - Dígito 7';
    TEnumGabaritoConteudo_Lote: Result             := 'L - Lote';
  end;
end;

class function TEnum.GabaritoConteudoFromStr(const pValor: string): TEnumGabaritoConteudo;
begin
  Result := TEnumGabaritoConteudo_NaoInformado;

  if pValor = 'B' then
    Result := TEnumGabaritoConteudo_ReferenciaBasica
  else if pValor = 'R' then
    Result := TEnumGabaritoConteudo_Referencia
  else if pValor = 'V' then
    Result := TEnumGabaritoConteudo_Valor
  else if pValor = 'Q' then
    Result := TEnumGabaritoConteudo_Quantidade
  else if pValor = 'D' then
    Result := TEnumGabaritoConteudo_Digito11
  else if pValor = '0' then
    Result := TEnumGabaritoConteudo_Digito10
  else if pValor = '7' then
    Result := TEnumGabaritoConteudo_Digito7
  else if pValor = 'L' then
    Result := TEnumGabaritoConteudo_Lote;
end;

class function TEnum.GabaritoConteudoToStr(const pEnum: TEnumGabaritoConteudo): string;
begin
  case pEnum of
    TEnumGabaritoConteudo_NaoInformado: Result     := 'N';
    TEnumGabaritoConteudo_ReferenciaBasica: Result := 'B';
    TEnumGabaritoConteudo_Referencia: Result       := 'R';
    TEnumGabaritoConteudo_Valor: Result            := 'V';
    TEnumGabaritoConteudo_Quantidade: Result       := 'Q';
    TEnumGabaritoConteudo_Digito11: Result         := 'D';
    TEnumGabaritoConteudo_Digito10: Result         := '0';
    TEnumGabaritoConteudo_Digito7: Result          := '7';
    TEnumGabaritoConteudo_Lote: Result             := 'L';
  end;
end;

class function TEnum.MotivoDesoneracao(const pEnum: TEnumMotivoDesoneracao): string;
begin
  case pEnum of
    TEnumMotivoDesoneracao_NaoDefinido: Result            := '0 - Não Definido'; // 0 - Não Definido
    TEnumMotivoDesoneracao_TAXI: Result                   := '1 - TAXI'; // 1 - TAXI
    TEnumMotivoDesoneracao_DEFICIENTE_FISICO: Result      := '2 - DEFICIENTE_FISICO'; // 2 - Deficiente Fisico
    TEnumMotivoDesoneracao_PRODUTOR_AGROPECUARIO: Result  := '3 - PRODUTOR_AGROPECUARIO'; // 3 - ProdutorAgropecuario
    TEnumMotivoDesoneracao_FROTISTA_LOCADORA: Result      := '4 - FROTISTA_LOCADORA'; // 4 - Frotista/Locadora
    TEnumMotivoDesoneracao_DIPLOMATICO_CONSULAR: Result   := '5 - DIPLOMATICO_CONSULAR'; // 5 - Diplomático/Consular
    TEnumMotivoDesoneracao_UTILITARIOS_AMAZONIA: Result   := '6 - UTILITARIOS_AMAZONIA'; // 6 - Utilitários/Motocicletas Amazônia/Área Livre
    TEnumMotivoDesoneracao_SUFRAMA: Result                := '7 - SUFRAMA '; // 7 - SUFRAMA
    TEnumMotivoDesoneracao_VENDA_ORGAO_PUBLICO: Result    := '8 - VENDA_ORGAO_PUBLICO'; // 8 - Venda a órgão Público
    TEnumMotivoDesoneracao_OUTROS: Result                 := '9 - OUTROS'; // 9 - Outros
    TEnumMotivoDesoneracao_DEFICIENTE_CONDUTOR: Result    := '10 - DEFICIENTE_CONDUTOR'; // 10 - Deficiente Condutor
    TEnumMotivoDesoneracao_DEFICIENT_NAO_CONDUTOR: Result := '11 - DEFICIENT_NAO_CONDUTOR'; // 11 - Deficiente Não Condutor
    TEnumMotivoDesoneracao_ORGAO_FOMENTO: Result          := '12 - ORGAO_FOMENTO'; // 12 - Órgão de Fomento e Desenvolvimento Agropecuário
  end;
end;

class function TEnum.MotivoDesoneracaoFromInt(const pValor: Integer): TEnumMotivoDesoneracao;
begin
  case pValor of
    1: Result  := TEnumMotivoDesoneracao_TAXI; // 1 - TAXI
    2: Result  := TEnumMotivoDesoneracao_DEFICIENTE_FISICO; // 2 - DEFICIENTE_FISICO
    3: Result  := TEnumMotivoDesoneracao_PRODUTOR_AGROPECUARIO; // 3 - PRODUTOR_AGROPECUARIO
    4: Result  := TEnumMotivoDesoneracao_FROTISTA_LOCADORA; // 4 - FROTISTA_LOCADORA
    5: Result  := TEnumMotivoDesoneracao_DIPLOMATICO_CONSULAR; // 5 - DIPLOMATICO_CONSULAR
    6: Result  := TEnumMotivoDesoneracao_UTILITARIOS_AMAZONIA; // 6 - UTILITARIOS_AMAZONIA
    7: Result  := TEnumMotivoDesoneracao_SUFRAMA; //  7 - SUFRAMA
    8: Result  := TEnumMotivoDesoneracao_VENDA_ORGAO_PUBLICO; // 8 - VENDA_ORGAO_PUBLICO
    9: Result  := TEnumMotivoDesoneracao_OUTROS; // 9 - OUTROS
    10: Result := TEnumMotivoDesoneracao_DEFICIENTE_CONDUTOR; // 10 - DEFICIENTE_CONDUTOR
    11: Result := TEnumMotivoDesoneracao_DEFICIENT_NAO_CONDUTOR; // 11 - DEFICIENT_NAO_CONDUTOR
    12: Result := TEnumMotivoDesoneracao_ORGAO_FOMENTO; // 12 - ORGAO_FOMENTO
    else
         Result := TEnumMotivoDesoneracao_NaoDefinido; // 0 - Não Definido
  end;
end;

class function TEnum.MotivoDesoneracaoToInt(const pEnum: TEnumMotivoDesoneracao): Integer;
begin
  Result := 0; // 0 - TEnumMotivoDesoneracao_NaoDefinido

  case pEnum of
    TEnumMotivoDesoneracao_TAXI: Result                   := 1; // 1 - TAXI
    TEnumMotivoDesoneracao_DEFICIENTE_FISICO: Result      := 2; // 2 - DEFICIENTE_FISICO
    TEnumMotivoDesoneracao_PRODUTOR_AGROPECUARIO: Result  := 3; // 3 - PRODUTOR_AGROPECUARIO
    TEnumMotivoDesoneracao_FROTISTA_LOCADORA: Result      := 4; // 4 - FROTISTA_LOCADORA
    TEnumMotivoDesoneracao_DIPLOMATICO_CONSULAR: Result   := 5; // 5 - DIPLOMATICO_CONSULAR
    TEnumMotivoDesoneracao_UTILITARIOS_AMAZONIA: Result   := 6; // 6 - UTILITARIOS_AMAZONIA
    TEnumMotivoDesoneracao_SUFRAMA: Result                := 7; // 7 - SUFRAMA
    TEnumMotivoDesoneracao_VENDA_ORGAO_PUBLICO: Result    := 8; // 8 - VENDA_ORGAO_PUBLICO
    TEnumMotivoDesoneracao_OUTROS: Result                 := 9; // 9 - OUTROS
    TEnumMotivoDesoneracao_DEFICIENTE_CONDUTOR: Result    := 10; // 10 - DEFICIENTE_CONDUTOR
    TEnumMotivoDesoneracao_DEFICIENT_NAO_CONDUTOR: Result := 11; // 11 - DEFICIENT_NAO_CONDUTOR
    TEnumMotivoDesoneracao_ORGAO_FOMENTO: Result          := 12; // 12 - ORGAO_FOMENTO
  end;
end;

class function TEnum.ComisaoSobrefromInt(pValor: Integer): TEnumComissaoSobre;
begin
  case pValor of
    0: result := tfLiquidoAoVender;               // 0 - Líquido ao Vender
    1: result := tfBrutoAoVender;                 // 1 - Bruto ao Vender
    2: result := tfAReceberNoVencimento;          // 2 - A receber no Vencimento
    3: result := tfRecebidoNoRecebimento;         // 3 - Recebido no Recebimento
    4: result := tfAReceberNoRecebimento;         // 4 - A receber no Recebimento
    5: result := tfRecebidoDataCompensacaoCheque; // 5 - Valor Recebido na Data da Compensação de Cheque
    6: result := tfAReceberDataCompensacaoCheque; // 6 - Valor a Receber na Data da Compensação de Cheque
    7: result := tfSobreMarkup;                   // 7 - Comissão sobre Markup
    8: result := tfMarkupNoMomentoDaVenda;        // 8 - Markup no momento da Venda
  end;
end;

class function TEnum.ComisaoSobreToInt(const pEnum: TEnumComissaoSobre): Integer;
begin
  case pEnum of
    tfLiquidoAoVender: Result               := 0; // 0 - Líquido ao Vender
    tfBrutoAoVender: Result                 := 1; // 1 - Bruto ao Vender
    tfAReceberNoVencimento: Result          := 2; // 2 - A receber no Vencimento
    tfRecebidoNoRecebimento: Result         := 3; // 3 - Recebido no Recebimento
    tfAReceberNoRecebimento: Result         := 4; // 4 - A receber no Recebimento
    tfRecebidoDataCompensacaoCheque: Result := 5; // 5 - Valor Recebido na Data da Compensação de Cheque
    tfAReceberDataCompensacaoCheque: Result := 6; // 6 - Valor a Receber na Data da Compensação de Cheque
    tfSobreMarkup: Result                   := 7; // 7 - Comissão sobre Markup
    tfMarkupNoMomentoDaVenda: Result        := 8; // 8 - Markup no momento da Venda
  end;
end;

class function TEnum.ConexaoMiddlewareTipoRetorno(const pEnum: TEnumConexaoMiddlewareTipoRetorno): string;
begin
  case pEnum of
    TEnumConexaoMiddlewareTipoRetorno_Simples: Result  := 'S - Simples';
    TEnumConexaoMiddlewareTipoRetorno_Completo: Result := 'C - Completo';
  end;
end;

class function TEnum.ConexaoMiddlewareTipoRetornoFromStr(const pValor: string): TEnumConexaoMiddlewareTipoRetorno;
begin
  Result := TEnumConexaoMiddlewareTipoRetorno_Simples;

  if pValor = 'C' then
    Result := TEnumConexaoMiddlewareTipoRetorno_Completo;
end;

class function TEnum.ConexaoMiddlewareTipoRetornoToStr(const pEnum: TEnumConexaoMiddlewareTipoRetorno): string;
begin
  case pEnum of
    TEnumConexaoMiddlewareTipoRetorno_Simples: Result  := 'S';
    TEnumConexaoMiddlewareTipoRetorno_Completo: Result := 'C';
  end;
end;

class function TEnum.ContaCorrenteStatus(const pEnum: TEnumContaCorrenteStatus): string;
begin
  case pEnum of
    ccsAberto: result      := 'A - Aberto';
    ccsFaturamento: result := 'F - Faturamento';
    ccsPagamento: result   := 'P - Pagamento';
    ccsSuspensos: result   := 'S - Suspensos';
  end;
end;

class function TEnum.ContaCorrenteStatusFromStr(const pValor: string): TEnumContaCorrenteStatus;
begin
  if pValor = 'A' then
    Result := ccsAberto
  else
     if pValor = 'F' then
    Result := ccsFaturamento
  else
     if pValor = 'P' then
    Result := ccsPagamento
  else
     if pValor = 'S' then
    Result := ccsSuspensos;
end;

class function TEnum.ContaCorrenteStatusToStr(const pEnum: TEnumContaCorrenteStatus): string;
begin
  case pEnum of
    ccsAberto: result      := 'A';
    ccsFaturamento: result := 'F';
    ccsPagamento: result   := 'P';
    ccsSuspensos: result   := 'S';
  end;
end;

class function TEnum.ContaCorrenteTipoLanc(const pEnum: TEnumContaCorrenteTipoLanc): string;
begin
  case pEnum of
    tlContrato: result                := 'A - Contrato';
    tlTrocoRecebimento: result        := 'B - Troco no recebimento';
    tlRecebimentoCC: result           := 'C - Recebimento de C/C';
    tlDepositoCC: result              := 'D - Depósito na C/C';
    tlEstornoCC: result               := 'E - Estorno de C/C';
    tlDebitoFornecedor: result        := 'F - Débito para o fornecedor';
    tlFaturaClienteGlobal: result     := 'G - Fatura cliente global';
    tlRecebimentoCheque: result       := 'H - Recebimento de Cheque';
    tlRetiradaCC: result              := 'I - Retirada de C/C';
    tlCreditoComissao: result         := 'J - Credita comissão';
    tlValeCompra: result              := 'K - Vale compra';
    tlDevolucaoVendaCC: result        := 'L - Devolução de venda em C/C';
    tlRecebimentoCCMeioCC: result     := 'M  - Receb. de C/C com o meio C/C';
    tlEstornoCCNoCanc: result         := 'N - Estorno de C/C no cancelamento';
    tlFaturamentoOS: result           := 'O - Faturamento referente a OS';
    tlGeraCCCartaoProprio: result     := 'P - Gera C/C cartão próprio';
    tlEstornoFaturamentoCC: result    := 'Q - Estorno de faturamento de C/C';
    tlRecebimentoRec: result          := 'R - Recebimento de REC';
    tlDescRecebimentoRec: result      := 'S - Desconto no recebimento de C/C';
    tlTrocoVenda: result              := 'T - Troco na venda';
    tlEstornoParcContraLancCC: result := 'U - Estorno parc. contra lanc. C/C';
    tlVendaComCC: result              := 'V - Venda com C/C';
    tlConciliacaoBanc: result         := 'W - Conciliação banc./Gerar cred.';
    tlExportaCCC: result              := 'X - Exporta CCC';
    tlLancamentoExtrato: result       := 'Z - Lançamento extrato';
    tlNulo: result                    := '';
  end;
end;

class function TEnum.ContaCorrenteTipoLancFromStr(const pValor: string): TEnumContaCorrenteTipoLanc;
begin
  if pValor = 'A' then
    Result := tlContrato
  else if pValor = 'B' then
    Result := tlTrocoRecebimento
  else if pValor = 'C' then
    Result := tlRecebimentoCC
  else if pValor = 'D' then
    Result := tlDepositoCC
  else if pValor = 'E' then
    Result := tlEstornoCC
  else if pValor = 'F' then
    Result := tlDebitoFornecedor
  else if pValor = 'G' then
    Result := tlFaturaClienteGlobal
  else if pValor = 'H' then
    Result := tlRecebimentoCheque
  else if pValor = 'I' then
    Result := tlRetiradaCC
  else if pValor = 'J' then
    Result := tlCreditoComissao
  else if pValor = 'K' then
    Result := tlValeCompra
  else if pValor = 'L' then
    Result := tlDevolucaoVendaCC
  else if pValor = 'M' then
    Result := tlRecebimentoCCMeioCC
  else if pValor = 'N' then
    Result := tlEstornoCCNoCanc
  else if pValor = 'O' then
    Result := tlFaturamentoOS
  else if pValor = 'P' then
    Result := tlGeraCCCartaoProprio
  else if pValor = 'Q' then
    Result := tlEstornoFaturamentoCC
  else if pValor = 'R' then
    Result := tlRecebimentoRec
  else if pValor = 'S' then
    Result := tlDescRecebimentoRec
  else if pValor = 'T' then
    Result := tlTrocoVenda
  else if pValor = 'U' then
    Result := tlEstornoParcContraLancCC
  else if pValor = 'V' then
    Result := tlVendaComCC
  else if pValor = 'W' then
    Result := tlConciliacaoBanc
  else if pValor = 'X' then
    Result := tlExportaCCC
  else if pValor = 'Z' then
    Result := tlLancamentoExtrato
  else
    Result := tlNulo;
end;

class function TEnum.ContaCorrenteTipoLancToStr(const pEnum: TEnumContaCorrenteTipoLanc): string;
begin
  case pEnum of
    tlContrato: result                := 'A';
    tlTrocoRecebimento: result        := 'B';
    tlRecebimentoCC: result           := 'C';
    tlDepositoCC: result              := 'D';
    tlEstornoCC: result               := 'E';
    tlDebitoFornecedor: result        := 'F';
    tlFaturaClienteGlobal: result     := 'G';
    tlRecebimentoCheque: result       := 'H';
    tlRetiradaCC: result              := 'I';
    tlCreditoComissao: result         := 'J';
    tlValeCompra: result              := 'K';
    tlDevolucaoVendaCC: result        := 'L';
    tlRecebimentoCCMeioCC: result     := 'M';
    tlEstornoCCNoCanc: result         := 'N';
    tlFaturamentoOS: result           := 'O';
    tlGeraCCCartaoProprio: result     := 'P';
    tlEstornoFaturamentoCC: result    := 'Q';
    tlRecebimentoRec: result          := 'R';
    tlDescRecebimentoRec: result      := 'S';
    tlTrocoVenda: result              := 'T';
    tlEstornoParcContraLancCC: result := 'U';
    tlVendaComCC: result              := 'V';
    tlConciliacaoBanc: result         := 'W';
    tlExportaCCC: result              := 'X';
    tlLancamentoExtrato: result       := 'Z';
    tlNulo: result                    := '';
  end;
end;

class function TEnum.BancoDados(pEnum: TEnumBancoDados): string;
begin
  if pEnum = bdOracle then
    Result := 'Oracle'
  else if pEnum = bdPostgreSQL then
    Result := 'PostgreSQL'
  else if pEnum = bdODBC then
    Result := 'ODBC'
  else if pEnum = bdOraClient then
    Result := 'OraClient'
  else if pEnum = bdFirebird then
    Result := 'Firebird'
  else if pEnum = bdSQLServer then
    Result := 'SQLServer'
  else if pEnum = bdVazio then
    Result := 'Nenhum'
  else
    Result := '';
end;

class function TEnum.TipoConexaoFromInt(pValor: Integer): TEnumTipoConexao;
begin
  if pValor = Ord(tcBancoDados) then
    Result := tcBancoDados
  else if pValor = Ord(tcXML) then
    Result := tcXML
  else if pValor = Ord(tcJSON) then
    Result := tcJSON
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + IntToStr(pValor) + '" inválido para TEnumTipoConexao.');
end;

class function TEnum.TipoConexaoToInt(pEnum: TEnumTipoConexao): Integer;
begin
  Result := Ord(pEnum);
end;

class function TEnum.TipoConta(const pEnum: TEnumTipoConta): string;
begin
  case pEnum of
    ttfGerencial: result    := 'G - Gerencial';
    ttfNumeraria: result    := 'N - Numerária';
    ttfMovimentacao: result := 'M - Transferência';
    ttfNulo: result         := '';
  end;
end;

class function TEnum.TipoContaFromStr(const pValor: string): TEnumTipoConta;
begin
  if pValor = 'G' then begin
    result := ttfGerencial;
  end else if pValor = 'N' then begin
    result := ttfNumeraria;
  end else if pValor = 'M' then begin
    result := ttfMovimentacao;
  end else begin
    result := ttfNulo;
  end;
end;

class function TEnum.TipoContaToStr(const pEnum: TEnumTipoConta): string;
begin
  case pEnum of
    ttfGerencial: result    := 'G'; // G - Gerencial
    ttfNumeraria: result    := 'N'; // N - Numerária
    ttfMovimentacao: result := 'M'; // M - Transferência
    ttfNulo: result         := '';  // Nulo
  end;
end;

class function TEnum.TipoDeMulta(const pEnum: TEnumTipoDeMulta): string;
begin
  case pEnum of
    TEnumTipoDeMulta_PercentualCorrigido: Result := '# - Percentual Corrigido';
    TEnumTipoDeMulta_Valor: Result               := '$ - Valor';
    TEnumTipoDeMulta_Percentual: Result          := '% - Percentual';
    TEnumTipoDeMulta_ValorCorrigido: Result      := '@ - Valor Corrigido';
  end;
end;

class function TEnum.TipoDeMultaFromStr(const pValor: string): TEnumTipoDeMulta;
begin
  if pValor = '#' then begin // # - Percentual Corrigido
    result := TEnumTipoDeMulta_PercentualCorrigido;
  end else if pValor = '$' then begin // $ - Valor
    result := TEnumTipoDeMulta_Valor;
  end else if pValor = '@' then begin // @ - Valor Corrigido
    result := TEnumTipoDeMulta_ValorCorrigido;
  end else begin // % - Percentual
    result := TEnumTipoDeMulta_Percentual;
  end;
end;

class function TEnum.TipoDeMultaToStr(const pEnum: TEnumTipoDeMulta): string;
begin
  case pEnum of
    TEnumTipoDeMulta_PercentualCorrigido: Result := '#'; // # - Percentual Corrigido
    TEnumTipoDeMulta_Valor: Result               := '$'; // $ - Valor
    TEnumTipoDeMulta_Percentual: Result          := '%'; // % - Percentual
    TEnumTipoDeMulta_ValorCorrigido: Result      := '@'; // @ - Valor Corrigido
  end;
end;

class function TEnum.TipoDerivacaoMagazord(const pEnum: TEnumTipoDerivacaoMagazord): Integer;
begin
  case pEnum of
    TEnumTipoDerivacaoMagazord_Cor: Result      := 1; //Cor
    TEnumTipoDerivacaoMagazord_Tamanho: Result  := 2; //Tamanho
    TEnumTipoDerivacaoMagazord_Unico: Result    := 3; //Unico
    TEnumTipoDerivacaoMagazord_CorFilha: Result := 4; //Cor Filha
  end;
end;

class function TEnum.TipoDerivacaoMagazordFromStr(const pValor: string): TEnumTipoDerivacaoMagazord;
begin
 if (pValor = '1') then
   Result := TEnumTipoDerivacaoMagazord_Cor       // 1 - Cor
 else if (pValor = '2') then
   Result := TEnumTipoDerivacaoMagazord_Tamanho   // 2 - Tamanho
 else if (pValor = '3') then
   Result := TEnumTipoDerivacaoMagazord_Unico     // 3 - Unico
 else if (pValor = '4') then
   Result := TEnumTipoDerivacaoMagazord_CorFilha; // 4 - Cor Filha
end;

class function TEnum.TipoDerivacaoMagazordToStr(const pEnum: TEnumTipoDerivacaoMagazord): string;
begin
  case pEnum of
    TEnumTipoDerivacaoMagazord_Cor: Result      := '1'; //Cor
    TEnumTipoDerivacaoMagazord_Tamanho: Result  := '2'; //Tamanho
    TEnumTipoDerivacaoMagazord_Unico: Result    := '3'; //Unico
    TEnumTipoDerivacaoMagazord_CorFilha: Result := '4'; //Cor Filha
  end;
end;

class function TEnum.TipoDescontoAplicadoCampanha(const pEnum: TEnumTipoDescontoAplicadoCampanha): string;
begin
  case pEnum of
    TEnumTipoDescontoAplicadoCampanha_PrecoFixo: Result  := 'F - Preço Fixo por Produto';
    TEnumTipoDescontoAplicadoCampanha_Percentual: Result := 'P - Percentual';
    TEnumTipoDescontoAplicadoCampanha_Valor: Result      := 'V - Valor';
  end;
end;

class function TEnum.TipoDescontoAplicadoCampanhaFromStr(const pValor: string): TEnumTipoDescontoAplicadoCampanha;
begin
  if pValor = 'P' then begin // P - Percentual
    result := TEnumTipoDescontoAplicadoCampanha_Percentual;
  end else if pValor = 'V' then begin // V - Valor
    result := TEnumTipoDescontoAplicadoCampanha_Valor;
  end else begin // F - Preço Fixo por Produto
    result := TEnumTipoDescontoAplicadoCampanha_PrecoFixo;
  end;
end;

class function TEnum.TipoDescontoAplicadoCampanhaToStr(const pEnum: TEnumTipoDescontoAplicadoCampanha): string;
begin
  case pEnum of
    TEnumTipoDescontoAplicadoCampanha_PrecoFixo: Result  := 'F'; // F - Preço Fixo por Produto
    TEnumTipoDescontoAplicadoCampanha_Percentual: Result := 'P'; // P - Percentual
    TEnumTipoDescontoAplicadoCampanha_Valor: Result      := 'V'; // V - Valor
  end;
end;

class function TEnum.TipoDescontoConsistem(const pEnum: TEnumTipoDescontoConsistem): Integer;
begin
  case pEnum of
    TEnumTipoDescontoConsistem_Percentual: Result := 0; // 0 - Percentual
    TEnumTipoDescontoConsistem_Valor: Result      := 1; // 1 - Valor
  end;
end;

class function TEnum.TipoDescontoConsistemFromStr(const pValor: string): TEnumTipoDescontoConsistem;
begin
 if (pValor = '0') then
   Result := TEnumTipoDescontoConsistem_Percentual // 0 - Percentual
 else if (pValor = '1') then
   Result := TEnumTipoDescontoConsistem_Valor; // 1 - Valor
end;

class function TEnum.TipoDescontoConsistemToStr(const pEnum: TEnumTipoDescontoConsistem): string;
begin
  case pEnum of
    TEnumTipoDescontoConsistem_Percentual: Result := '0';
    TEnumTipoDescontoConsistem_Valor: Result      := '1';
  end;
end;

class function TEnum.TipoDescontoItemConsistem(const pEnum: TEnumTipoDescontoItemConsistem): Integer;
begin
  case pEnum of
    TEnumTipoDescontoItemConsistem_Percentual: Result := 0; // '0 - Percentual';
    TEnumTipoDescontoItemConsistem_Valor: Result      := 1; // '1 - Valor';
  end;
end;

class function TEnum.TipoDescontoItemConsistemFromStr(const pValor: string): TEnumTipoDescontoItemConsistem;
begin
 if (pValor = '0') then
   Result := TEnumTipoDescontoItemConsistem_Percentual // 0 - Percentual
 else if (pValor = '1') then
   Result := TEnumTipoDescontoItemConsistem_Valor; // 1 - Valor
end;

class function TEnum.TipoDescontoItemConsistemToStr(const pEnum: TEnumTipoDescontoItemConsistem): string;
begin
  case pEnum of
    TEnumTipoDescontoItemConsistem_Percentual: Result := '0';
    TEnumTipoDescontoItemConsistem_Valor: Result      := '1';
  end;
end;

class function TEnum.TipoDetalheItemOrc(const pEnum: TEnumTipoDetalheItemOrc): string;
begin
  case pEnum of
    tdKit: result   := 'K - Kit';
    tdTinta: result := 'T - Tinta';
    tdNulo: result  := '';
  end;
end;

class function TEnum.TipoDetalheItemOrcFromStr(const pValor: string): TEnumTipoDetalheItemOrc;
begin
  if pValor = 'K' then begin
    result := tdKit;
  end else if pValor = 'T' then begin
    result := tdTinta;
  end else begin
    result := tdNulo;
  end;
end;

class function TEnum.TipoDetalheItemOrcToStr(const pEnum: TEnumTipoDetalheItemOrc): string;
begin
  case pEnum of
    tdKit: result   := 'K'; // K - Kit
    tdTinta: result := 'T'; // T - Tinta
    tdNulo: result  := '';  // Nulo
  end;
end;

class function TEnum.TipoDocumentoFiscal(const pEnum: TEnumTipoDocumentoFiscal): string;
begin
  case pEnum of
    tpNaoInformado: result := '';            // Nulo
    tpEntrada: result      := '0 - Entrada'; // 0 - Entrada
    tpSaida: result        := '1 - Saída';   // 1 - Saída
  end;
end;

class function TEnum.TipoDocumentoFiscalFromInt(const pValor: Integer): TEnumTipoDocumentoFiscal;
begin
  case pValor of
    0: result := tpEntrada; // 0 - Entrada
    1: result := tpSaida;   // 1 - Saída
    else
         result := tpNaoInformado; // Nulo
  end;
end;

class function TEnum.TipoDocumentoFiscalFromStr(const pValor: string): TEnumTipoDocumentoFiscal;
begin
  if pValor = '+' then // + - Entrada
    Result := tpEntrada
  else if pValor = '-' then // - - Saída
    Result := tpSaida
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumTipoDocumentoFiscal.');
end;

class function TEnum.TipoDocumentoFiscalToInt(const pEnum: TEnumTipoDocumentoFiscal): Integer;
begin
  case pEnum of
    tpNaoInformado: result := -1; // Nulo
    tpEntrada: result      := 0;  // 0 - Entrada
    tpSaida: result        := 1;  // 1 - Saída
  end;
end;

class function TEnum.TipoDocumentoFromStr(const pValor: string): TEnumTipoDocumento;
begin
  Result := TEnumTipoDocumento_RG;

  if pValor = 'IE' then begin
    Result := TEnumTipoDocumento_IE;
  end;
end;

class function TEnum.TipoDocumentoTituloBancario(const pEnum: TEnumTipoDocumentoTituloBancario): string;
begin
  case pEnum of
    TEnumTipoDocumentoTituloBancario_Tradicional: result := '1 - Tradicional';
    TEnumTipoDocumentoTituloBancario_Escritural: result  := '2 - Escritural';
  end;
end;

class function TEnum.TipoDocumentoTituloBancarioFromStr(const pValor: string): TEnumTipoDocumentoTituloBancario;
begin
  if pValor = '1' then // 1 - Tradicional
    Result := TEnumTipoDocumentoTituloBancario_Tradicional
  else if pValor = '2' then // 2 - Escritural
    Result := TEnumTipoDocumentoTituloBancario_Escritural
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumTipoDocumentoTituloBancario.');
end;

class function TEnum.TipoDocumentoTituloBancarioToStr(const pEnum: TEnumTipoDocumentoTituloBancario): string;
begin
  case pEnum of
    TEnumTipoDocumentoTituloBancario_Tradicional: result := '1'; //1 - Tradicional
    TEnumTipoDocumentoTituloBancario_Escritural: result  := '2'; //2 - Escritural
  end;
end;

class function TEnum.TipoDocumentoToStr(const pEnum: TEnumTipoDocumento): string;
begin
  case pEnum of
    TEnumTipoDocumento_RG: result := 'RG';
    TEnumTipoDocumento_IE: result := 'IE';
  end;
end;

class function TEnum.TipoDocumentoImportacao(const pEnum: TEnumTipoDocumentoImportacao): string;
begin
  case pEnum of
    tiDeclaracaoImportacao: Result             := '0 - Declaração de Importação';
    tiDeclaracaoSimplificadaImportacao: Result := '1 - Declaração Simplificada de Importação';
    tiDeclaracaoImportacaoNulo: Result         := '';
  end;
end;

class function TEnum.TipoDocumentoImportacaoFromStr(const pValor: string): TEnumTipoDocumentoImportacao;
begin
  if pValor = '0' then //0 - Declaração de Importação
    Result := tiDeclaracaoImportacao
  else if pValor = '1' then //1 - Declaração Simplificada de Importação
    Result := tiDeclaracaoSimplificadaImportacao
  else //Nulo
    Result := tiDeclaracaoImportacaoNulo;
end;

class function TEnum.TipoDocumentoImportacaoToStr(const pEnum: TEnumTipoDocumentoImportacao): string;
begin
  case pEnum of
    tiDeclaracaoImportacao: Result             := '0'; //0 - Declaração de Importação
    tiDeclaracaoSimplificadaImportacao: Result := '1'; //1 - Declaração Simplificada de Importação
    tiDeclaracaoImportacaoNulo: Result         := '';  //Nulo
  end;
end;

class function TEnum.TipoEmissao(const pEnum: TEnumTipoEmissao): string;
begin
  case pEnum of
    TEnumTipoEmissao_Normal: Result := 'Emissão Normal';
    TEnumTipoEmissao_SVCAN: Result  := 'Contingência SVC-AN';
    TEnumTipoEmissao_SVCRS: Result  := 'Contingência SVC-RS';
    //TEnumTipoEmissao_FSEG : Result := 'Contingência em Formulário de Segurança';
    //TEnumTipoEmissao_EPEC : Result := 'Contingência EPEC';
    //TEnumTipoEmissao_FSDA : Result := 'Contingência em Formulário de Segurança FS-DA';
    //TEnumTipoEmissao_SCAN: Result := 'Contingência SCAN (desativado)';
    //TEnumTipoEmissao_SVCSP: Result := 'Contingência SVC-SP';
    TEnumTipoEmissao_OffLine: Result := 'Emissão Off-Line NFCe';
    else
         Result := 'Emissão Normal';
  end;
end;

class function TEnum.TipoEmissaoContingenciaFromModeloUF(const pModelo: TEnumModeloDocumento; const pUF: string): TEnumTipoEmissao;
var
  i: Integer;

const
  { TODO:
    Manual: \\ttadm\Anexos_PRJ\Totall\NFe\Manual de Orientação Contribuinte v 6.00 - Minuta.pdf
   "Ambiente de Contingência Alternativo"
   I - pela Sefaz Virtual do Ambiente Nacional, disponibilizada pela Secretaria da Receita Federal do Brasil, para os Estados do
   Acre, Alagoas, Amapá, Minas Gerais, Paraíba, Rio de Janeiro, Rio Grande do Sul, Rondônia, Roraima, Santa Catarina, Sergipe, São Paulo e Tocantins e para o Distrito Federal;
   II - pela Sefaz Virtual do Rio Grande do Sul, disponibilizada pelo Estado do Rio Grande do Sul, para os estados do
   Amazonas, Bahia, Ceará, Espírito Santo, Goiás, Maranhão, Mato Grosso, Mato Grosso do Sul, Pará, Pernambuco, Piauí, Paraná e Rio Grande do Norte.

   Site: http://www.nfe.fazenda.gov.br/portal/disponibilidade.aspx
   Estados ES e RN estão como Ambiente Nacional para serviço de autorização assim seguiremos o mesmo
   Autorizadores em contingência:
   - UF que utilizam a SVC-AN - Sefaz Virtual de Contingência Ambiente Nacional: AC, AL, AP, DF, ES, MG, PB, RJ, RN, RO, RR, RS, SC, SE, SP, TO
   - UF que utilizam a SVC-RS - Sefaz Virtual de Contingência Rio Grande do Sul: AM, BA, CE, GO, MA, MS, MT, PA, PE, PI, PR
  }
  DFeUFTipoEmissaoNFe: array [0 .. 26] of TEnumTipoEmissao = (
    // Ambiente              - UF - Descrição
    TEnumTipoEmissao_SVCAN, // AC - Acre
    TEnumTipoEmissao_SVCAN, // AL - Alagoas
    TEnumTipoEmissao_SVCRS, // AM - Amazonas
    TEnumTipoEmissao_SVCAN, // AP - Amapá
    TEnumTipoEmissao_SVCRS, // BA - Bahia
    TEnumTipoEmissao_SVCRS, // CE - Ceará
    TEnumTipoEmissao_SVCAN, // DF - Distrito Federal
    TEnumTipoEmissao_SVCAN, // ES - Espírito Santo
    TEnumTipoEmissao_SVCRS, // GO - Goiás
    TEnumTipoEmissao_SVCRS, // MA - Maranhão
    TEnumTipoEmissao_SVCAN, // MG - Minas Gerais
    TEnumTipoEmissao_SVCRS, // MS - Mato Grosso do Sul
    TEnumTipoEmissao_SVCRS, // MT - Mato Grosso
    TEnumTipoEmissao_SVCRS, // PA - Pará
    TEnumTipoEmissao_SVCAN, // PB - Paraíba
    TEnumTipoEmissao_SVCRS, // PE - Pernambuco
    TEnumTipoEmissao_SVCRS, // PI - Piauí
    TEnumTipoEmissao_SVCRS, // PR - Paraná
    TEnumTipoEmissao_SVCAN, // RJ - Rio de Janeiro
    TEnumTipoEmissao_SVCAN, // RN - Rio Grande do Norte
    TEnumTipoEmissao_SVCAN, // RO - Rondônia
    TEnumTipoEmissao_SVCAN, // RR - Roraima
    TEnumTipoEmissao_SVCAN, // RS - Rio Grande do Sul
    TEnumTipoEmissao_SVCAN, // SC - Santa Catarina
    TEnumTipoEmissao_SVCAN, // SE - Sergipe
    TEnumTipoEmissao_SVCAN, // SP - São Paulo
    TEnumTipoEmissao_SVCAN  // TO - Tocantins
     );

  DFeUFTipoEmissaoNFCe: array [0 .. 26] of TEnumTipoEmissao = (
    // Ambiente                - UF - Descrição
    TEnumTipoEmissao_OffLine, // AC - Acre
    TEnumTipoEmissao_OffLine, // AL - Alagoas
    TEnumTipoEmissao_OffLine, // AM - Amazonas
    TEnumTipoEmissao_OffLine, // AP - Amapá
    TEnumTipoEmissao_OffLine, // BA - Bahia
    TEnumTipoEmissao_OffLine, // CE - Ceará
    TEnumTipoEmissao_OffLine, // DF - Distrito Federal
    TEnumTipoEmissao_OffLine, // ES - Espírito Santo
    TEnumTipoEmissao_OffLine, // GO - Goiás
    TEnumTipoEmissao_OffLine, // MA - Maranhão
    TEnumTipoEmissao_OffLine, // MG - Minas Gerais
    TEnumTipoEmissao_OffLine, // MS - Mato Grosso do Sul
    TEnumTipoEmissao_OffLine, // MT - Mato Grosso
    TEnumTipoEmissao_OffLine, // PA - Pará
    TEnumTipoEmissao_OffLine, // PB - Paraíba
    TEnumTipoEmissao_OffLine, // PE - Pernambuco
    TEnumTipoEmissao_OffLine, // PI - Piauí
    TEnumTipoEmissao_OffLine, // PR - Paraná
    TEnumTipoEmissao_OffLine, // RJ - Rio de Janeiro
    TEnumTipoEmissao_OffLine, // RN - Rio Grande do Norte
    TEnumTipoEmissao_OffLine, // RO - Rondônia
    TEnumTipoEmissao_OffLine, // RR - Roraima
    TEnumTipoEmissao_OffLine, // RS - Rio Grande do Sul
    TEnumTipoEmissao_OffLine, // SC - Santa Catarina
    TEnumTipoEmissao_OffLine, // SE - Sergipe
    TEnumTipoEmissao_OffLine, // SP - São Paulo
    TEnumTipoEmissao_OffLine  // TO - Tocantins
     );

  DFeUFTipoEmissaoMDFe: array [0 .. 26] of TEnumTipoEmissao = (
    // Ambiente              - UF - Descrição
    TEnumTipoEmissao_SVCAN, // AC - Acre
    TEnumTipoEmissao_SVCAN, // AL - Alagoas
    TEnumTipoEmissao_SVCAN, // AM - Amazonas
    TEnumTipoEmissao_SVCAN, // AP - Amapá
    TEnumTipoEmissao_SVCAN, // BA - Bahia
    TEnumTipoEmissao_SVCAN, // CE - Ceará
    TEnumTipoEmissao_SVCAN, // DF - Distrito Federal
    TEnumTipoEmissao_SVCAN, // ES - Espírito Santo
    TEnumTipoEmissao_SVCAN, // GO - Goiás
    TEnumTipoEmissao_SVCAN, // MA - Maranhão
    TEnumTipoEmissao_SVCAN, // MG - Minas Gerais
    TEnumTipoEmissao_SVCAN, // MS - Mato Grosso do Sul
    TEnumTipoEmissao_SVCAN, // MT - Mato Grosso
    TEnumTipoEmissao_SVCAN, // PA - Pará
    TEnumTipoEmissao_SVCAN, // PB - Paraíba
    TEnumTipoEmissao_SVCAN, // PE - Pernambuco
    TEnumTipoEmissao_SVCAN, // PI - Piauí
    TEnumTipoEmissao_SVCAN, // PR - Paraná
    TEnumTipoEmissao_SVCAN, // RJ - Rio de Janeiro
    TEnumTipoEmissao_SVCAN, // RN - Rio Grande do Norte
    TEnumTipoEmissao_SVCAN, // RO - Rondônia
    TEnumTipoEmissao_SVCAN, // RR - Roraima
    TEnumTipoEmissao_SVCAN, // RS - Rio Grande do Sul
    TEnumTipoEmissao_SVCAN, // SC - Santa Catarina
    TEnumTipoEmissao_SVCAN, // SE - Sergipe
    TEnumTipoEmissao_SVCAN, // SP - São Paulo
    TEnumTipoEmissao_SVCAN  // TO - Tocantins
     );
begin
  case pModelo of
    mdNFCe: Result := TEnumTipoEmissao_OffLine; // 8 - Emissão Off-Line NFCe
    mdNFe: Result  := TEnumTipoEmissao_SVCAN;   // 1 - Contingência SVC-AN
    mdMDFe: Result  := TEnumTipoEmissao_SVCAN;   // 1 - Contingência SVC-AN
  end;

  for i := low(BR_UF) to high(BR_UF) do begin
    if BR_UF[I] = pUF then begin
      case pModelo of
        mdNFCe: Result := DFeUFTipoEmissaoNFCe[I];
        mdNFe: Result  := DFeUFTipoEmissaoNFe[I];
        mdMDFe: Result  := DFeUFTipoEmissaoMDFe[I];
        else
             raise Exception.Create('Tipo de Emissão não encontrar para Modelo informado.');
      end;
      Exit;
    end;
  end;
end;

class function TEnum.TipoEmissaoFromInt(const pValor: Integer): TEnumTipoEmissao;
begin
  case pValor of
    0: Result := TEnumTipoEmissao_Normal; // 0 - Emissão Normal
    1: Result := TEnumTipoEmissao_SVCAN;  // 1 - Contingência SVC-AN
    2: Result := TEnumTipoEmissao_SVCRS;  // 2 - Contingência SVC-RS
    //3: Result := TEnumTipoEmissao_FSEG; // 3 - Contingência em Formulário de Segurança
    //4: Result := TEnumTipoEmissao_EPEC; // 4 - Contingência EPEC
    //5: Result := TEnumTipoEmissao_FSDA; // 5 - Contingência em Formulário de Segurança FS-DA
    //6: Result := TEnumTipoEmissao_SCAN; // 6 - Contingência SCAN (desativado)
    //7: Result := TEnumTipoEmissao_SVCSP; // 7 - Contingência SVC-SP
    8: Result := TEnumTipoEmissao_OffLine; // 8 - Emissão Off-Line NFCe
    else
         Result := TEnumTipoEmissao_Normal;
  end;
end;

class function TEnum.TipoEmissaoToInt(const pEnum: TEnumTipoEmissao): Integer;
begin
  case pEnum of
    TEnumTipoEmissao_Normal: Result := 0; // 0 - Emissão Normal
    TEnumTipoEmissao_SVCAN: Result  := 1; // 1 - Contingência SVC-AN
    TEnumTipoEmissao_SVCRS: Result  := 2; // 2 - Contingência SVC-RS
    //TEnumTipoEmissao_FSEG: Result := 3; // 3 - Contingência em Formulário de Segurança
    //TEnumTipoEmissao_EPEC: Result := 4; // 4 - Contingência EPEC
    //TEnumTipoEmissao_FSDA: Result := 5; // 5 - Contingência em Formulário de Segurança FS-DA
    //TEnumTipoEmissao_SCAN: Result := 6; // 6 - Contingência SCAN (desativado)
    //TEnumTipoEmissao_SVCSP: Result := 7; // 7 - Contingência SVC-SP
    TEnumTipoEmissao_OffLine: Result := 8; // 8 - Emissão Off-Line NFCe
    else
         Result := 0; // 0 - Emissão Normal
  end;
end;

class function TEnum.TipoEntrega(const pEnum: TEnumTipoEntrega): string;
begin
  case pEnum of
    tfClienteLeva: result       := '0 - Cliente Leva';
    tfDepositoEntrega: result   := '1 - Depósito Entrega';
    tfLojaEntrega: result       := '2 - Loja Entrega';
    tfRetiraNoDeposito: result  := '3 - Retira no Depósito';
    tfEmOutraLoja: result       := '4 - Em Outra Loja';
    tfEntregaFutura: result     := '5 - Entrega Futura';
    tfApenasOrcamento: result   := '6 - Apenas Orçamento';
    tfVendaSobEncomenda: result := '7 - Venda Sob Encomenda';
  end;
end;

class function TEnum.TipoEntregaFromStr(const pValor: string): TEnumTipoEntrega;
begin
  result := tfClienteLeva; // Default

  if pValor = '0' then begin
    result := tfClienteLeva;
  end else if pValor = '1' then begin
    result := tfDepositoEntrega;
  end else if pValor = '2' then begin
    result := tfLojaEntrega;
  end else if pValor = '3' then begin
    result := tfRetiraNoDeposito;
  end else if pValor = '4' then begin
    result := tfEmOutraLoja;
  end else if pValor = '5' then begin
    result := tfEntregaFutura;
  end else if pValor = '6' then begin
    result := tfApenasOrcamento;
  end else if pValor = '7' then begin
    result := tfVendaSobEncomenda;
  end;
end;

class function TEnum.TipoEntregaItemOrc(const pEnum: TEnumTipoEntregaItemOrc): string;
begin
  case pEnum of
    teClienteLeva: result       := '0 - Cliente Leva';
    teDepositoEntrega: result   := '1 - Depósito Entrega';
    teLojaEntrega: result       := '2 - Loja Entrega';
    teRetiraDeposito: result    := '3 - Retira no Depósito';
    teEmOutraLoja: result       := '4 - Em Outra Loja';
    teEntregaFutura: result     := '5 - Entrega Futura';
    teApenasOrcamento: result   := '6 - Apenas Orçamento';
    teVendaSobEncomenda: result := '7 - Venda Sob Encomenda';
  end;
end;

class function TEnum.TipoEntregaItemOrcFromStr(const pValor: string): TEnumTipoEntregaItemOrc;
begin
  result := teClienteLeva; // default

  if pValor = '0' then begin
    result := teClienteLeva;
  end else if pValor = '1' then begin
    result := teDepositoEntrega;
  end else if pValor = '2' then begin
    result := teLojaEntrega;
  end else if pValor = '3' then begin
    result := teRetiraDeposito;
  end else if pValor = '4' then begin
    result := teEmOutraLoja;
  end else if pValor = '5' then begin
    result := teEntregaFutura;
  end else if pValor = '6' then begin
    result := teApenasOrcamento;
  end else if pValor = '7' then begin
    result := teVendaSobEncomenda;
  end;
end;

class function TEnum.TipoEntregaItemOrcFromTipoEntrega(const pEnum: TEnumTipoEntrega): TEnumTipoEntregaItemOrc;
begin
  case pEnum of
    tfClienteLeva: result       := teClienteLeva;
    tfDepositoEntrega: result   := teDepositoEntrega;
    tfLojaEntrega: result       := teLojaEntrega;
    tfRetiraNoDeposito: result  := teRetiraDeposito;
    tfEmOutraLoja: result       := teEmOutraLoja;
    tfEntregaFutura: result     := teEntregaFutura;
    tfApenasOrcamento: result   := teApenasOrcamento;
    tfVendaSobEncomenda: result := teVendaSobEncomenda;
  end;
end;

class function TEnum.TipoEntregaItemOrcToStr(const pEnum: TEnumTipoEntregaItemOrc): string;
begin
  case pEnum of
    teClienteLeva: result       := '0'; // 0 - Cliente Leva
    teDepositoEntrega: result   := '1'; // 1 - Depósito Entrega
    teLojaEntrega: result       := '2'; // 2 - Loja Entrega
    teRetiraDeposito: result    := '3'; // 3 - Retira no Depósito
    teEmOutraLoja: result       := '4'; // 4 - Em Outra Loja
    teEntregaFutura: result     := '5'; // 5 - Entrega Futura
    teApenasOrcamento: result   := '6'; // 6 - Apenas Orçamento
    teVendaSobEncomenda: result := '7'; // 7 - Venda Sob Encomenda
  end;
end;

class function TEnum.TipoEntregaToStr(const pEnum: TEnumTipoEntrega): string;
begin
  case pEnum of
    tfClienteLeva: result       := '0'; // 0 - Cliente Leva
    tfDepositoEntrega: result   := '1'; // 1 - Depósito Entrega
    tfLojaEntrega: result       := '2'; // 2 - Loja Entrega
    tfRetiraNoDeposito: result  := '3'; // 3 - Retira no Depósito
    tfEmOutraLoja: result       := '4'; // 4 - Em Outra Loja
    tfEntregaFutura: result     := '5'; // 5 - Entrega Futura
    tfApenasOrcamento: result   := '6'; // 6 - Apenas Orçamento
    tfVendaSobEncomenda: result := '7'; // 7 - Venda Sob Encomenda
  end;
end;

class function TEnum.TipoExportacaoCotacaoFornecedor(pTipo: string): TEnumTipoExportacaoCotacaoFornecedor;
begin
  if pTipo = 'J' then
    Result := TEnumTipoExportacaoCotacaoFornecedor_JSON // J - JSON
  else if pTipo = 'E' then
    Result := TEnumTipoExportacaoCotacaoFornecedor_Excel // E - Excel
  else
    raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumTipoExportacaoCotacaoFornecedor.');
end;

class function TEnum.TipoExportacaoCotacaoFornecedorToStr(pEnum: TEnumTipoExportacaoCotacaoFornecedor): string;
begin
  case pEnum of
    TEnumTipoExportacaoCotacaoFornecedor_JSON: result  := 'J'; // J - JSON
    TEnumTipoExportacaoCotacaoFornecedor_Excel: result := 'E'; // E - Excel
    else raise EEnumeradorInvalido.Create('Opção de enumerador não implementada para TEnumTipoExportacaoCotacaoFornecedor.');
  end;
end;

class function TEnum.TipoNatureza(const pEnum: TEnumTipoNatureza): string;
begin
  case pEnum of
    TEnumTipoNatureza_Compra: result                  := 'P - Compra';
    TEnumTipoNatureza_ConsumoInterno: result          := 'C - Consumo interno';
    TEnumTipoNatureza_Devolucao: result               := 'D - Devolução';
    TEnumTipoNatureza_DevolucaoCompra: result         := 'M - Devolução de compra';
    TEnumTipoNatureza_EntradaViaTransferencia: result := 'E - Entrada via transferência';
    TEnumTipoNatureza_NaoClassificado: result         := 'N - Não classificado';
    TEnumTipoNatureza_NotaComVinculoAnterior: result  := 'A - Nota com vínculo anterior';
    TEnumTipoNatureza_NotaComVinculoFuturo: result    := 'F - Nota com vínculo futuro';
    TEnumTipoNatureza_SaidaViaTransferencia: result   := 'S - Saida via transferência';
    TEnumTipoNatureza_Venda: result                   := 'V - Venda';
    TEnumTipoNatureza_DevolucaoTransferencia: result  := 'R - Devolução de transferência';
    TEnumTipoNatureza_ComplementarAjuste: result      := 'J - Complementar/Ajuste';
    TEnumTipoNatureza_Estorno: result                 := 'B - Estorno';
    TEnumTipoNatureza_Sobra: result                   := 'O - Sobra';
    TEnumTipoNatureza_Importacao: result              := 'I - Importação';
    TEnumTipoNatureza_NaoInformado: result            := '';
  end;
end;

class function TEnum.TipoNaturezaFromStr(const pValor: string): TEnumTipoNatureza;
begin
  Result := TEnumTipoNatureza_NaoInformado;
  if pValor = 'P' then
    Result := TEnumTipoNatureza_Compra
  else if pValor = 'C' then
    Result := TEnumTipoNatureza_ConsumoInterno
  else if pValor = 'D' then
    Result := TEnumTipoNatureza_Devolucao
  else if pValor = 'M' then
    Result := TEnumTipoNatureza_DevolucaoCompra

  else if pValor = 'E' then
    Result := TEnumTipoNatureza_EntradaViaTransferencia
  else if pValor = 'N' then
    Result := TEnumTipoNatureza_NaoClassificado
  else if pValor = 'A' then
    Result := TEnumTipoNatureza_NotaComVinculoAnterior
  else if pValor = 'F' then
    Result := TEnumTipoNatureza_NotaComVinculoFuturo
  else if pValor = 'S' then
    Result := TEnumTipoNatureza_SaidaViaTransferencia
  else if pValor = 'V' then
    Result := TEnumTipoNatureza_Venda
  else if pValor = 'R' then
    Result := TEnumTipoNatureza_DevolucaoTransferencia
  else if pValor = 'J' then
    Result := TEnumTipoNatureza_ComplementarAjuste
  else if pValor = 'B' then
    Result := TEnumTipoNatureza_Estorno
  else if pValor = 'O' then
    Result := TEnumTipoNatureza_Sobra
  else if pValor = 'I' then
    Result := TEnumTipoNatureza_Importacao;
end;

class function TEnum.TipoNaturezaToStr(const pEnum: TEnumTipoNatureza): string;
begin
  case pEnum of
    TEnumTipoNatureza_Compra: result                  := 'P';
    TEnumTipoNatureza_ConsumoInterno: result          := 'C';
    TEnumTipoNatureza_Devolucao: result               := 'D';
    TEnumTipoNatureza_DevolucaoCompra: result         := 'M';
    TEnumTipoNatureza_EntradaViaTransferencia: result := 'E';
    TEnumTipoNatureza_NaoClassificado: result         := 'N';
    TEnumTipoNatureza_NotaComVinculoAnterior: result  := 'A';
    TEnumTipoNatureza_NotaComVinculoFuturo: result    := 'F';
    TEnumTipoNatureza_SaidaViaTransferencia: result   := 'S';
    TEnumTipoNatureza_Venda: result                   := 'V';
    TEnumTipoNatureza_DevolucaoTransferencia: result  := 'R';
    TEnumTipoNatureza_ComplementarAjuste: result      := 'J';
    TEnumTipoNatureza_Estorno: result                 := 'B';
    TEnumTipoNatureza_Sobra: result                   := 'O';
    TEnumTipoNatureza_Importacao: result              := 'I';
    TEnumTipoNatureza_NaoInformado: result            := '';
  end;
end;

class function TEnum.TipoNfEspecial(const pEnum: TEnumTipoNfEspecial): string;
begin
  case pEnum of
    tneAvulsa: result    := 'A - Avulsa';
    tneImportada: result := 'I - Importada';
    tneNulo: result      := '';
  end;
end;

class function TEnum.TipoNfEspecialFromStr(const pValor: string): TEnumTipoNfEspecial;
begin
  if pValor = 'A' then begin
    result := tneAvulsa;
  end else if pValor = 'I' then begin
    result := tneImportada;
  end else begin
    result := tneNulo;
  end;
end;

class function TEnum.TipoNfEspecialToStr(const pEnum: TEnumTipoNFEspecial): string;
begin
  case pEnum of
    tneAvulsa: result    := 'A'; // A - Avulsa
    tneImportada: result := 'I'; // I - Importada
    tneNulo: result      := '';  // Nulo
  end;
end;

class function TEnum.TipoNotaFromStr(pTipo: string): TEnumTipoNota;
begin
  if pTipo = 'A' then
    Result := tnAmbas // A - Ambas (NFF)
  else if pTipo = 'F' then
    Result := tnFatura // F - Fatura
  else if pTipo = 'N' then
    Result := tnNotaFiscal; // N - Nota Fiscal
end;

class function TEnum.TipoNotaToStr(pTipo: TEnumTipoNota): string;
begin
  case pTipo of
    tnAmbas: result      := 'A';
    tnFatura: result     := 'F';
    tnNotaFiscal: result := 'N';
  end;
end;

class function TEnum.TipoCampoExtraMercos(const pEnum: TEnumTipoCampoExtraMercos): string;
begin
  case pEnum of
    TEnumTipoCampoExtraMercos_TextoLivre: Result     := '0 = Texto livre';
    TEnumTipoCampoExtraMercos_Data: Result           := '1 = data';
    TEnumTipoCampoExtraMercos_Numerico: Result       := '2 = numérico';
    TEnumTipoCampoExtraMercos_Hora: Result           := '3 = hora';
    TEnumTipoCampoExtraMercos_Lista: Result          := '4 = Lista';
    TEnumTipoCampoExtraMercos_SomenteLeitura: Result := '5 = Somente leitura';
    else
         Result := '-1 = Não Definido';
  end;
end;

class function TEnum.TipoCampoExtraMercosFromStr(const pValor: string): TEnumTipoCampoExtraMercos;
begin
  if (pValor = '0') then
    Result := TEnumTipoCampoExtraMercos_TextoLivre // 0 = Texto livre
  else if (pValor = '1') then
    Result := TEnumTipoCampoExtraMercos_Data // 1 = data
  else if (pValor = '2') then
    Result := TEnumTipoCampoExtraMercos_Numerico // 2 = numérico
  else if (pValor = '3') then
    Result := TEnumTipoCampoExtraMercos_Hora // 3 = hora
  else if (pValor = '4') then
    Result := TEnumTipoCampoExtraMercos_Lista // 4 = Lista
  else if (pValor = '5') then
    Result := TEnumTipoCampoExtraMercos_SomenteLeitura // 5 = Somente leitura
  else
    Result := TEnumTipoCampoExtraMercos_NaoDefinido; // -1 = Não Definido
end;

class function TEnum.TipoCampoExtraMercosToStr(const pEnum: TEnumTipoCampoExtraMercos): string;
begin
  case pEnum of
    TEnumTipoCampoExtraMercos_TextoLivre: Result     := '0'; // 0 = Texto livre
    TEnumTipoCampoExtraMercos_Data: Result           := '1'; // 1 = data
    TEnumTipoCampoExtraMercos_Numerico: Result       := '2'; // 2 = numérico
    TEnumTipoCampoExtraMercos_Hora: Result           := '3'; // 3 = hora
    TEnumTipoCampoExtraMercos_Lista: Result          := '4'; // 4 = Lista
    TEnumTipoCampoExtraMercos_SomenteLeitura: Result := '5'; // 5 = Somente leitura
    else
         Result := '-1'; // -1 = Não Definido
  end;
end;

class function TEnum.TipoCarteiraTituloBancario(const pEnum: TEnumTipoCarteiraTituloBancario): string;
begin
  case pEnum of
    TEnumTipoCarteiraTituloBancario_Registrada: result := '1'; // 1 - Registrada
    TEnumTipoCarteiraTituloBancario_Simples: result    := '2'; // 2 - Simples
    TEnumTipoCarteiraTituloBancario_Eletronica: result := '3'; // 3 - Eletronica
  end;
end;

class function TEnum.TipoCarteiraTituloBancarioFromStr(const pValor: string): TEnumTipoCarteiraTituloBancario;
begin
  if pValor = '1' then // 1 - Registrada
    Result := TEnumTipoCarteiraTituloBancario_Registrada
  else if pValor = '2' then // 2 - Simples
    Result := TEnumTipoCarteiraTituloBancario_Simples
  else if pValor = '3' then // 3 - Eletronica
    Result := TEnumTipoCarteiraTituloBancario_Eletronica
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumTipoCarteiraTituloBancario.');
end;

class function TEnum.TipoCarteiraTituloBancarioToStr(const pEnum: TEnumTipoCarteiraTituloBancario): string;
begin
  case pEnum of
    TEnumTipoCarteiraTituloBancario_Registrada: result := '1'; // 1 - Registrada
    TEnumTipoCarteiraTituloBancario_Simples: result    := '2'; // 2 - Simples
    TEnumTipoCarteiraTituloBancario_Eletronica: result := '3'; // 3 - Eletronica
  end;
end;

class function TEnum.TipoCobrancaTEF(const pEnum: TEnumTipoCobrancaTEF): string;
begin
  case pEnum of
    tcPortadores: result     := 'P - Portadores';
    tcBancos: result         := 'B - Bancos';
    tcCartoesCredito: result := 'C - Cartões de Crédito';
    tcECFs: result           := 'E - ECFs';
  end;
end;

class function TEnum.TipoCobrancaTEFFromStr(const pValor: string): TEnumTipoCobrancaTEF;
begin
  if pValor = 'P' then
    Result := tcPortadores
  else if pValor = 'B' then
    Result := tcBancos
  else if pValor = 'C' then
    Result := tcCartoesCredito
  else if pValor = 'E' then
    Result := tcECFs
  else
    raise EEnumeradorInvalido.Create('Tipo de cobrança de TEF não implementado: ' + pValor);
end;

class function TEnum.TipoCobrancaTEFToStr(const pEnum: TEnumTipoCobrancaTEF): string;
begin
  case pEnum of
    tcPortadores: result     := 'P'; // P - Portadores
    tcBancos: result         := 'B'; // B - Bancos
    tcCartoesCredito: result := 'C'; // C - Cartões de Crédito
    tcECFs: result           := 'E'; // E - ECFs
  end;
end;

class function TEnum.TipoCodBarraImpressora(const pEnum: TEnumTipoCodBarraImpressora): string;
begin
  case pEnum of
    TEnumTipoCodBarraImpressora_EAN13: Result       := 'EAN13';
    TEnumTipoCodBarraImpressora_EAN8: Result        := 'EAN8';
    TEnumTipoCodBarraImpressora_STANDARD: Result    := 'STANDARD';
    TEnumTipoCodBarraImpressora_INTERLEAVED: Result := 'INTERLEAVED';
    TEnumTipoCodBarraImpressora_CODE128: Result     := 'CODE128';
    TEnumTipoCodBarraImpressora_CODE39: Result      := 'CODE39';
    TEnumTipoCodBarraImpressora_CODE93: Result      := 'CODE93';
    TEnumTipoCodBarraImpressora_UPCA: Result        := 'UPCA';
    TEnumTipoCodBarraImpressora_CODABAR: Result     := 'CODABAR';
    TEnumTipoCodBarraImpressora_MSI: Result         := 'MSI';
    TEnumTipoCodBarraImpressora_CODE11: Result      := 'CODE11';
  end;
end;

class function TEnum.TipoCodBarraImpressoraFromStr(const pValor: string): TEnumTipoCodBarraImpressora;
begin
  if pValor = 'F' then // F - EAN13
    Result := TEnumTipoCodBarraImpressora_EAN13
  else if pValor = 'G' then // G - EAN8
    Result := TEnumTipoCodBarraImpressora_EAN8
  else if pValor = 'J' then // J - STANDARD
    Result := TEnumTipoCodBarraImpressora_STANDARD
  else if pValor = 'D' then // D - INTERLEAVED
    Result := TEnumTipoCodBarraImpressora_INTERLEAVED
  else if pValor = 'E' then // E - CODE128
    Result := TEnumTipoCodBarraImpressora_CODE128
  else if pValor = 'A' then // A - CODE39
    Result := TEnumTipoCodBarraImpressora_CODE39
  else if pValor = 'O' then // O - CODE93
    Result := TEnumTipoCodBarraImpressora_CODE93
  else if pValor = 'B' then // B - UPCA
    Result := TEnumTipoCodBarraImpressora_UPCA
  else if pValor = 'I' then // I - CODABAR
    Result := TEnumTipoCodBarraImpressora_CODABAR
  else if pValor = 'K' then // K - MSI
    Result := TEnumTipoCodBarraImpressora_MSI
  else if pValor = '1' then // 1 - CODE11
    Result := TEnumTipoCodBarraImpressora_CODE11
  else
    Result := TEnumTipoCodBarraImpressora_STANDARD;
  //raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumTipoCodBarraImpressora.');
end;

class function TEnum.TipoCodBarraImpressoraToStr(const pEnum: TEnumTipoCodBarraImpressora): string;
begin
  case pEnum of
    TEnumTipoCodBarraImpressora_EAN13: Result       := 'F'; // F - EAN13
    TEnumTipoCodBarraImpressora_EAN8: Result        := 'G'; // G - EAN8
    TEnumTipoCodBarraImpressora_STANDARD: Result    := 'J'; // J - STANDARD
    TEnumTipoCodBarraImpressora_INTERLEAVED: Result := 'D'; // D - INTERLEAVED
    TEnumTipoCodBarraImpressora_CODE128: Result     := 'E'; // E - CODE128
    TEnumTipoCodBarraImpressora_CODE39: Result      := 'A'; // A - CODE39
    TEnumTipoCodBarraImpressora_CODE93: Result      := 'O'; // O - CODE93
    TEnumTipoCodBarraImpressora_UPCA: Result        := 'B'; // B - UPCA
    TEnumTipoCodBarraImpressora_CODABAR: Result     := 'I'; // I - CODABAR
    TEnumTipoCodBarraImpressora_MSI: Result         := 'K'; // K - MSI
    TEnumTipoCodBarraImpressora_CODE11: Result      := '1'; // 1 - CODE11
  end;
end;

class function TEnum.TipoCodigoImpressoCupomDeDesconto(const pEnum: TEnumTipoCodigoImpressoCupomDeDesconto): string;
begin
  case pEnum of
    TEnumTipoCodigoImpressoCupomDeDesconto_Barras: Result := 'B - Barras';
    TEnumTipoCodigoImpressoCupomDeDesconto_QRCode: Result := 'Q - QR-Code';
  end;
end;

class function TEnum.TipoCodigoImpressoCupomDeDescontoFromStr(const pValor: string): TEnumTipoCodigoImpressoCupomDeDesconto;
begin
  if pValor = 'B' then begin // B - Barras
    result := TEnumTipoCodigoImpressoCupomDeDesconto_Barras;
  end else begin // Q - QR-Code
    result := TEnumTipoCodigoImpressoCupomDeDesconto_QRCode;
  end;
end;

class function TEnum.TipoCodigoImpressoCupomDeDescontoToStr(const pEnum: TEnumTipoCodigoImpressoCupomDeDesconto): string;
begin
  case pEnum of
    TEnumTipoCodigoImpressoCupomDeDesconto_Barras: Result := 'B'; // B - Barras
    TEnumTipoCodigoImpressoCupomDeDesconto_QRCode: Result := 'Q'; // Q - QR-Code
    else
         Result := 'Q'; // Q - QR-Code
  end;
end;

class function TEnum.TipoComercio(const pEnum: TEnumTipoComercio): string;
begin
  case pEnum of
    TEnumTipoComercio_Varejo: result  := 'V - Varejo';
    TEnumTipoComercio_Atacado: result := 'A - Atacado/Equiparado a Indústria';
  end;
end;

class function TEnum.TipoComercioFromStr(const pValor: string): TEnumTipoComercio;
begin
  result := TEnumTipoComercio_Varejo;
  if pValor = 'V' then
    result := TEnumTipoComercio_Varejo
  else if pValor = 'A' then
    result := TEnumTipoComercio_Atacado;
end;

class function TEnum.TipoComercioToStr(const pEnum: TEnumTipoComercio): string;
begin
  case pEnum of
    TEnumTipoComercio_Varejo: result  := 'V';
    TEnumTipoComercio_Atacado: result := 'A';
  end;
end;

class function TEnum.TipoComunicacaoImpressora(const pEnum: TEnumTipoComunicacaoImpressora): string;
begin
  case pEnum of
    TEnumTipoComunicacaoImpressora_Normal: Result := 'Normal';
    TEnumTipoComunicacaoImpressora_PPLA: Result   := 'PPLA';
    TEnumTipoComunicacaoImpressora_PPLB: Result   := 'PPLB';
    TEnumTipoComunicacaoImpressora_ZPLII: Result  := 'ZPLII';
    TEnumTipoComunicacaoImpressora_EPL2: Result   := 'EPL2';
  end;
end;

{$IFDEF DELPHIXE}


class function TEnum.TipoComunicacaoImpressoraGetList: TObjectList<TParLista>;
begin
  Result := TObjectList<TParLista>.Create;
  Result.Add(TParLista.Create(TipoComunicacaoImpressoraToStr(TEnumTipoComunicacaoImpressora_Normal), TipoComunicacaoImpressora(TEnumTipoComunicacaoImpressora_Normal)));
  Result.Add(TParLista.Create(TipoComunicacaoImpressoraToStr(TEnumTipoComunicacaoImpressora_PPLA), TipoComunicacaoImpressora(TEnumTipoComunicacaoImpressora_PPLA)));
  Result.Add(TParLista.Create(TipoComunicacaoImpressoraToStr(TEnumTipoComunicacaoImpressora_PPLB), TipoComunicacaoImpressora(TEnumTipoComunicacaoImpressora_PPLB)));
  Result.Add(TParLista.Create(TipoComunicacaoImpressoraToStr(TEnumTipoComunicacaoImpressora_ZPLII), TipoComunicacaoImpressora(TEnumTipoComunicacaoImpressora_ZPLII)));
  Result.Add(TParLista.Create(TipoComunicacaoImpressoraToStr(TEnumTipoComunicacaoImpressora_EPL2), TipoComunicacaoImpressora(TEnumTipoComunicacaoImpressora_EPL2)));
end;
{$ENDIF}


class function TEnum.TipoComunicacaoImpressoraFileExt(const pEnum: TEnumTipoComunicacaoImpressora): string;
begin
  case pEnum of
    TEnumTipoComunicacaoImpressora_Normal: Result := 'rtm';
    TEnumTipoComunicacaoImpressora_PPLA: Result   := 'ppla';
    TEnumTipoComunicacaoImpressora_PPLB: Result   := 'pplb';
    TEnumTipoComunicacaoImpressora_ZPLII: Result  := 'zplii';
    TEnumTipoComunicacaoImpressora_EPL2: Result   := 'epl2';
  end;
end;

class function TEnum.TipoComunicacaoImpressoraFromStr(const pValor: string): TEnumTipoComunicacaoImpressora;
begin
  if pValor = 'A' then
    result := TEnumTipoComunicacaoImpressora_PPLA // A - PPLA
  else if pValor = 'B' then
    result := TEnumTipoComunicacaoImpressora_PPLB // B - PPLB
  else if pValor = 'Z' then
    result := TEnumTipoComunicacaoImpressora_ZPLII // Z - ZPLII
  else if pValor = 'E' then
    result := TEnumTipoComunicacaoImpressora_EPL2 // E - EPL2
  else
    Result := TEnumTipoComunicacaoImpressora_Normal; // N - Normal
end;

class function TEnum.TipoComunicacaoImpressoraToStr(const pEnum: TEnumTipoComunicacaoImpressora): string;
begin
  case pEnum of
    TEnumTipoComunicacaoImpressora_Normal: Result := 'N'; // N - Normal
    TEnumTipoComunicacaoImpressora_PPLA: Result   := 'A'; // A - PPLA
    TEnumTipoComunicacaoImpressora_PPLB: Result   := 'B'; // B - PPLB
    TEnumTipoComunicacaoImpressora_ZPLII: Result  := 'Z'; // Z - ZPLII
    TEnumTipoComunicacaoImpressora_EPL2: Result   := 'E'; // E - EPL2
  end;
end;

class function TEnum.UFFromCodigoIbge(const pValor: Integer): TEnumUF;
begin
  if pValor = 12 then
    Result := ufAcre
  else if pValor = 27 then
    Result := ufAlagoas
  else if pValor = 13 then
    Result := ufAmazonas
  else if pValor = 16 then
    Result := ufAmapa
  else if pValor = 29 then
    Result := ufBahia
  else if pValor = 23 then
    Result := ufCeara
  else if pValor = 53 then
    Result := ufDistritoFederal
  else if pValor = 32 then
    Result := ufEspiritoSanto
  else if pValor = 52 then
    Result := ufGoias
  else if pValor = 21 then
    Result := ufMaranhao
  else if pValor = 31 then
    Result := ufMinasGerais
  else if pValor = 50 then
    Result := ufMatoGrossoDoSul
  else if pValor = 51 then
    Result := ufMatoGrosso
  else if pValor = 15 then
    Result := ufPara
  else if pValor = 25 then
    Result := ufParaiba
  else if pValor = 26 then
    Result := ufPernambuco
  else if pValor = 22 then
    Result := ufPiaui
  else if pValor = 41 then
    Result := ufParana
  else if pValor = 33 then
    Result := ufRioDeJaneiro
  else if pValor = 24 then
    Result := ufRioGrandeDoNorte
  else if pValor = 11 then
    Result := ufRondonia
  else if pValor = 14 then
    Result := ufRoraima
  else if pValor = 43 then
    Result := ufRioGrandeDoSul
  else if pValor = 42 then
    Result := ufSantaCatarina
  else if pValor = 28 then
    Result := ufSergipe
  else if pValor = 35 then
    Result := ufSaoPaulo
  else if pValor = 17 then
    Result := ufTocantins
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + IntToStr(pValor) + '" inválido para TEnumUF.');
end;

class function TEnum.UFToSigla(const pEnum: TEnumUF): string;
begin
  if pEnum = ufAcre then
    Result := 'AC'
  else if pEnum = ufAlagoas then
    Result := 'AL'
  else if pEnum = ufAmazonas then
    Result := 'AM'
  else if pEnum = ufAmapa then
    Result := 'AP'
  else if pEnum = ufBahia then
    Result := 'BA'
  else if pEnum = ufCeara then
    Result := 'CE'
  else if pEnum = ufDistritoFederal then
    Result := 'DF'
  else if pEnum = ufEspiritoSanto then
    Result := 'ES'
  else if pEnum = ufGoias then
    Result := 'GO'
  else if pEnum = ufMaranhao then
    Result := 'MA'
  else if pEnum = ufMinasGerais then
    Result := 'MG'
  else if pEnum = ufMatoGrossoDoSul then
    Result := 'MS'
  else if pEnum = ufMatoGrosso then
    Result := 'MT'
  else if pEnum = ufPara then
    Result := 'PA'
  else if pEnum = ufParaiba then
    Result := 'PB'
  else if pEnum = ufPernambuco then
    Result := 'PE'
  else if pEnum = ufPiaui then
    Result := 'PI'
  else if pEnum = ufParana then
    Result := 'PR'
  else if pEnum = ufRioDeJaneiro then
    Result := 'RJ'
  else if pEnum = ufRioGrandeDoNorte then
    Result := 'RN'
  else if pEnum = ufRondonia then
    Result := 'RO'
  else if pEnum = ufRoraima then
    Result := 'RR'
  else if pEnum = ufRioGrandeDoSul then
    Result := 'RS'
  else if pEnum = ufSantaCatarina then
    Result := 'SC'
  else if pEnum = ufSergipe then
    Result := 'SE'
  else if pEnum = ufSaoPaulo then
    Result := 'SP'
  else if pEnum = ufTocantins then
    Result := 'TO'
  else
    raise EEnumeradorInvalido.Create('Enumerador inválido para TEnumUF.');
end;

class function TEnum.UnidadeImpressora(const pEnum: TEnumUnidadeImpressora): string;
begin
  case pEnum of
    TEnumUnidadeImpressora_Milimetros: Result         := 'M - Milimetros';
    TEnumUnidadeImpressora_Polegadas: Result          := 'P - Polegadas';
    TEnumUnidadeImpressora_Dots: Result               := 'D - Dots';
    TEnumUnidadeImpressora_DecimoDeMilimetros: Result := '0 - Decimo De Milimetros';
  end;
end;

class function TEnum.UnidadeImpressoraFromStr(const pValor: string): TEnumUnidadeImpressora;
begin
  if pValor = 'M' then // M - Milimetros
    Result := TEnumUnidadeImpressora_Milimetros
  else if pValor = 'P' then // P - Polegadas
    Result := TEnumUnidadeImpressora_Polegadas
  else if pValor = 'D' then // D - Dots
    Result := TEnumUnidadeImpressora_Dots
  else if pValor = '0' then // 0 - Decimo De Milimetros
    Result := TEnumUnidadeImpressora_DecimoDeMilimetros
  else
    Result := TEnumUnidadeImpressora_Milimetros;
end;

class function TEnum.UnidadeImpressoraToStr(const pEnum: TEnumUnidadeImpressora): string;
begin
  case pEnum of
    TEnumUnidadeImpressora_Milimetros: Result         := 'M'; // M - Milimetros
    TEnumUnidadeImpressora_Polegadas: Result          := 'P'; // P - Polegadas
    TEnumUnidadeImpressora_Dots: Result               := 'D'; // D - Dots
    TEnumUnidadeImpressora_DecimoDeMilimetros: Result := '0'; // 0 - Decimo De Milimetros
  end;
end;

class function TEnum.ExigibilidadeISSToStr(const pEnum: TEnumExigibilidadeISS): string;
begin
  if pEnum = TEnumExigibilidadeISS_Nulo then
    Result := ''
  else if pEnum = TEnumExigibilidadeISS_Exigivel then
    Result := '0'
  else if pEnum = TEnumExigibilidadeISS_NaoIncidencia then
    Result := '1'
  else if pEnum = TEnumExigibilidadeISS_Isencao then
    Result := '2'
  else if pEnum = TEnumExigibilidadeISS_Exportacao then
    Result := '3'
  else if pEnum = TEnumExigibilidadeISS_Imunidade then
    Result := '4'
  else if pEnum = TEnumExigibilidadeISS_SuspensaDecisaoJudicial then
    Result := '5'
  else if pEnum = TEnumExigibilidadeISS_SuspensaProcessoAdministrativo then
    Result := '6'
  else if pEnum = TEnumExigibilidadeISS_ISSFixo then
    Result := '7'
  else
    raise EEnumeradorInvalido.Create('Enumerador inválido para TEnumExigibilidadeISS.');
end;

class function TEnum.ExigibilidadeISSFromStr(const pValor: string): TEnumExigibilidadeISS;
begin
  // Totall PoS envia como "-1" ou "9" quando não for informado.
  if (pValor = '') or (pValor = '-1') or (pValor = '9') then
    Result := TEnumExigibilidadeISS_Nulo
  else if pValor = '0' then
    Result := TEnumExigibilidadeISS_Exigivel
  else if pValor = '1' then
    Result := TEnumExigibilidadeISS_NaoIncidencia
  else if pValor = '2' then
    Result := TEnumExigibilidadeISS_Isencao
  else if pValor = '3' then
    Result := TEnumExigibilidadeISS_Exportacao
  else if pValor = '4' then
    Result := TEnumExigibilidadeISS_Imunidade
  else if pValor = '5' then
    Result := TEnumExigibilidadeISS_SuspensaDecisaoJudicial
  else if pValor = '6' then
    Result := TEnumExigibilidadeISS_SuspensaProcessoAdministrativo
  else if pValor = '7' then
    Result := TEnumExigibilidadeISS_ISSFixo
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumExigibilidadeISS.');
end;

class function TEnum.ExigibilidadeISSFromStrEME4(const pValor: string): TEnumExigibilidadeISS;
begin
  // Totall PoS envia como "-1" ou "9" quando não for informado.
  if (pValor = '') or (pValor = '-1') or (pValor = '9') then
    Result := TEnumExigibilidadeISS_Nulo
  else if (pValor = '1') or (pValor = '0') then
    Result := TEnumExigibilidadeISS_Exigivel
  else if pValor = '2' then
    Result := TEnumExigibilidadeISS_NaoIncidencia
  else if pValor = '3' then
    Result := TEnumExigibilidadeISS_Isencao
  else if pValor = '4' then
    Result := TEnumExigibilidadeISS_Exportacao
  else if pValor = '5' then
    Result := TEnumExigibilidadeISS_Imunidade
  else if pValor = '6' then
    Result := TEnumExigibilidadeISS_SuspensaDecisaoJudicial
  else if pValor = '7' then
    Result := TEnumExigibilidadeISS_SuspensaProcessoAdministrativo
  else if pValor = '8' then
    Result := TEnumExigibilidadeISS_ISSFixo
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumExigibilidadeISS.');
end;

class function TEnum.ExibeCodigoBarraEtiqueta(const pEnum: TEnumExibeCodigoBarraEtiqueta): string;
begin
  case pEnum of
    TEnumExibeCodigoBarraEtiqueta_Padrao: Result := 'P - Padrão';
    TEnumExibeCodigoBarraEtiqueta_Sim: Result    := 'S - Sim';
    TEnumExibeCodigoBarraEtiqueta_Nao: Result    := 'N - Não';
  end;
end;

class function TEnum.ExibeCodigoBarraEtiquetaFromStr(const pValor: string): TEnumExibeCodigoBarraEtiqueta;
begin
  if pValor = 'S' then begin
    result := TEnumExibeCodigoBarraEtiqueta_Sim
  end else if pValor = 'N' then begin
    result := TEnumExibeCodigoBarraEtiqueta_Nao
  end else begin
    result := TEnumExibeCodigoBarraEtiqueta_Padrao;
  end;
end;

class function TEnum.ExibeCodigoBarraEtiquetaToStr(const pEnum: TEnumExibeCodigoBarraEtiqueta): string;
begin
  case pEnum of
    TEnumExibeCodigoBarraEtiqueta_Padrao: Result := 'P'; // P - Padrão
    TEnumExibeCodigoBarraEtiqueta_Sim: Result    := 'S'; // S - Sim
    TEnumExibeCodigoBarraEtiqueta_Nao: Result    := 'N'; // N - Não
  end;
end;

class function TEnum.ExigibilidadeISS(const pEnum: TEnumExigibilidadeISS): string;
begin
  if pEnum = TEnumExigibilidadeISS_Nulo then
    Result := ''
  else if pEnum = TEnumExigibilidadeISS_Exigivel then
    Result := '0 - Exigível'
  else if pEnum = TEnumExigibilidadeISS_NaoIncidencia then
    Result := '1 - Não Incidência'
  else if pEnum = TEnumExigibilidadeISS_Isencao then
    Result := '2 - Isenção'
  else if pEnum = TEnumExigibilidadeISS_Exportacao then
    Result := '3 - Exportação'
  else if pEnum = TEnumExigibilidadeISS_Imunidade then
    Result := '4 - Imunidade'
  else if pEnum = TEnumExigibilidadeISS_SuspensaDecisaoJudicial then
    Result := '5 - Suspensa por Decisão Judicial'
  else if pEnum = TEnumExigibilidadeISS_SuspensaProcessoAdministrativo then
    Result := '6 - Suspensa por Processo Administrativo'
  else if pEnum = TEnumExigibilidadeISS_ISSFixo then
    Result := '7 - ISS Fixo'
  else
    raise EEnumeradorInvalido.Create('Enumerador inválido para TEnumExigibilidadeISS.');
end;

class function TEnum.NaturezaOuOperacaoDaNFSeToStr(const pEnum: TEnumNaturezaOuOperacaoDaNFSe): string;
begin
  if pEnum = TEnumNaturezaOuOperacaoDaNFSe_Nulo then
    Result := ''
  else if pEnum = TEnumNaturezaOuOperacaoDaNFSe_SemDeducao then
    Result := '0'
  else if pEnum = TEnumNaturezaOuOperacaoDaNFSe_ComDeducaoMateriais then
    Result := '1'
  else if pEnum = TEnumNaturezaOuOperacaoDaNFSe_ImuneIsenta then
    Result := '2'
  else if pEnum = TEnumNaturezaOuOperacaoDaNFSe_DevolucaoSimplesRemessa then
    Result := '3'
  else if pEnum = TEnumNaturezaOuOperacaoDaNFSe_Intermediacao then
    Result := '4'
  else
    raise EEnumeradorInvalido.Create('Enumerador inválido para TEnumNaturezaOuOperacaoDaNFSe.');
end;

class function TEnum.NaturezaOuOperacaoDaNFSeFromStr(const pValor: string): TEnumNaturezaOuOperacaoDaNFSe;
begin
  // Totall PoS envia como "999" quando não for informado.
  if (pValor = '') or (pValor = '999') then
    Result := TEnumNaturezaOuOperacaoDaNFSe_Nulo
  else if pValor = '0' then
    Result := TEnumNaturezaOuOperacaoDaNFSe_SemDeducao
  else if pValor = '1' then
    Result := TEnumNaturezaOuOperacaoDaNFSe_ComDeducaoMateriais
  else if pValor = '2' then
    Result := TEnumNaturezaOuOperacaoDaNFSe_ImuneIsenta
  else if pValor = '3' then
    Result := TEnumNaturezaOuOperacaoDaNFSe_DevolucaoSimplesRemessa
  else if pValor = '4' then
    Result := TEnumNaturezaOuOperacaoDaNFSe_Intermediacao
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumNaturezaOuOperacaoDaNFSe.');
end;

class function TEnum.NaturezaOuOperacaoDaNFSe(const pEnum: TEnumNaturezaOuOperacaoDaNFSe): string;
begin
  if pEnum = TEnumNaturezaOuOperacaoDaNFSe_Nulo then
    Result := ''
  else if pEnum = TEnumNaturezaOuOperacaoDaNFSe_SemDeducao then
    Result := '0 - Sem Dedução'
  else if pEnum = TEnumNaturezaOuOperacaoDaNFSe_ComDeducaoMateriais then
    Result := '1 - Com Dedução de Materiais'
  else if pEnum = TEnumNaturezaOuOperacaoDaNFSe_ImuneIsenta then
    Result := '2 - Imune/Isenta'
  else if pEnum = TEnumNaturezaOuOperacaoDaNFSe_DevolucaoSimplesRemessa then
    Result := '3 - Devolução de Simples Remessa'
  else if pEnum = TEnumNaturezaOuOperacaoDaNFSe_Intermediacao then
    Result := '4 - Intermediação'
  else
    raise EEnumeradorInvalido.Create('Enumerador inválido para TEnumNaturezaOuOperacaoDaNFSe.');
end;

class function TEnum.TipoDeTributacaoServicoToStr(const pEnum: TEnumTipoDeTributacaoServico): string;
begin
  if pEnum = TEnumTipoDeTributacaoServico_Nulo then
    Result := ''
  else if pEnum = TEnumTipoDeTributacaoServico_IsentaISS then
    Result := '0'
  else if pEnum = TEnumTipoDeTributacaoServico_NaoIncidencianoMunic then
    Result := '1'
  else if pEnum = TEnumTipoDeTributacaoServico_Imune then
    Result := '2'
  else if pEnum = TEnumTipoDeTributacaoServico_ExigibilidadeSusp then
    Result := '3'
  else if pEnum = TEnumTipoDeTributacaoServico_NaoTributavel then
    Result := '4'
  else if pEnum = TEnumTipoDeTributacaoServico_Tributavel then
    Result := '5'
  else if pEnum = TEnumTipoDeTributacaoServico_TributavelFixo then
    Result := '6'
  else if pEnum = TEnumTipoDeTributacaoServico_TributavelSN then
    Result := '7'
  else if pEnum = TEnumTipoDeTributacaoServico_MEI then
    Result := '8'
  else
    raise EEnumeradorInvalido.Create('Enumerador inválido para TEnumTipoDeTributacaoServico.');
end;

class function TEnum.InstrucaoBaixaTitulo(const pEnum: TEnumInstrucaoBaixaTitulo): string;
begin
  case pEnum of
    TEnumInstrucaoBaixaTitulo_SemInstrucoes: Result := '0 - Sem Instruções';
    TEnumInstrucaoBaixaTitulo_Baixar: Result        := '1 - Baixar / Devolver';
    TEnumInstrucaoBaixaTitulo_NaoBaixar: Result     := '2 - Não Baixar / Não Devolver';
  end;
end;

class function TEnum.InstrucaoBaixaTituloFromInt(const pValor: Integer): TEnumInstrucaoBaixaTitulo;
begin
  case pValor of
    0: Result := TEnumInstrucaoBaixaTitulo_SemInstrucoes; // 0 - Sem Instruções
    1: Result := TEnumInstrucaoBaixaTitulo_Baixar;        // 1 - Baixar / Devolver
    2: Result := TEnumInstrucaoBaixaTitulo_NaoBaixar;     // 2 - Não Baixar / Não Devolver
    else
         Result := TEnumInstrucaoBaixaTitulo_SemInstrucoes; // 0 - Sem Instruções
  end;
end;

class function TEnum.InstrucaoBaixaTituloToInt(const pEnum: TEnumInstrucaoBaixaTitulo): Integer;
begin
  Result := 0;
  case pEnum of
    TEnumInstrucaoBaixaTitulo_SemInstrucoes: Result := 0;
    TEnumInstrucaoBaixaTitulo_Baixar: Result        := 1;
    TEnumInstrucaoBaixaTitulo_NaoBaixar: Result     := 2;
  end;
end;

class function TEnum.TipoDiasProtesto(const pEnum: TEnumTipoDiasProtesto): string;
begin
  Result := '0 - Sem Instruções';
  case pEnum of
    TEnumTipoDiasProtesto_SemInstrucoes: Result         := '0 - Sem Instruções';
    TEnumTipoDiasProtesto_ProtestarDiasCorridos: Result := '1 - Protestar (Dias Corridos)';
    TEnumTipoDiasProtesto_ProtestarDiasUteis: Result    := '2 - Protestar (Dias Úteis)';
    TEnumTipoDiasProtesto_NaoProtestar: Result          := '3 - Não Protestar';
  end;
end;

class function TEnum.TipoDiasProtestoFromInt(const pValor: Integer): TEnumTipoDiasProtesto;
begin
  case pValor of
    0: Result := TEnumTipoDiasProtesto_SemInstrucoes; // 0 - Sem Instruções
    1: Result := TEnumTipoDiasProtesto_ProtestarDiasCorridos; // 1 - Protestar (Dias Corridos)
    2: Result := TEnumTipoDiasProtesto_ProtestarDiasUteis; // 2 - Protestar (Dias Úteis)
    3: Result := TEnumTipoDiasProtesto_NaoProtestar;       // 3 - Não Protestar
    else
         Result := TEnumTipoDiasProtesto_SemInstrucoes; // 0 - Sem Instruções
  end;
end;

class function TEnum.TipoDiasProtestoToInt(const pEnum: TEnumTipoDiasProtesto): Integer;
begin
  case pEnum of
    TEnumTipoDiasProtesto_SemInstrucoes: Result         := 0; // 0 - Sem Instruções
    TEnumTipoDiasProtesto_ProtestarDiasCorridos: Result := 1; // 1 - Protestar (Dias Corridos)
    TEnumTipoDiasProtesto_ProtestarDiasUteis: Result    := 2; // 2 - Protestar (Dias Úteis)
    TEnumTipoDiasProtesto_NaoProtestar: Result          := 3; // 3 - Não Protestar
  end;
end;

class function TEnum.TipoDeTributacaoServicoFromStr(const pValor: string): TEnumTipoDeTributacaoServico;
begin
  // Totall PoS envia como "99" quando não for informado.
  if (pValor = '') or (pValor = '99') then
    Result := TEnumTipoDeTributacaoServico_Nulo
  else if pValor = '0' then
    Result := TEnumTipoDeTributacaoServico_IsentaISS
  else if pValor = '1' then
    Result := TEnumTipoDeTributacaoServico_NaoIncidencianoMunic
  else if pValor = '2' then
    Result := TEnumTipoDeTributacaoServico_Imune
  else if pValor = '3' then
    Result := TEnumTipoDeTributacaoServico_ExigibilidadeSusp
  else if pValor = '4' then
    Result := TEnumTipoDeTributacaoServico_NaoTributavel
  else if pValor = '5' then
    Result := TEnumTipoDeTributacaoServico_Tributavel
  else if pValor = '6' then
    Result := TEnumTipoDeTributacaoServico_TributavelFixo
  else if pValor = '7' then
    Result := TEnumTipoDeTributacaoServico_TributavelSN
  else if pValor = '8' then
    Result := TEnumTipoDeTributacaoServico_MEI
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumTipoDeTributacaoServico.');
end;

class function TEnum.TipoDeTributacaoServicoFromStrEME4(const pValor: string): TEnumTipoDeTributacaoServico;
begin
  // Totall PoS envia como "99" quando não for informado.
  if (pValor = '') or (pValor = '99') then
    Result := TEnumTipoDeTributacaoServico_Nulo
  else if pValor = '0' then
    Result := TEnumTipoDeTributacaoServico_IsentaISS
  else if pValor = '1' then
    Result := TEnumTipoDeTributacaoServico_Imune
  else if pValor = '2' then
    Result := TEnumTipoDeTributacaoServico_NaoIncidencianoMunic
  else if pValor = '3' then
    Result := TEnumTipoDeTributacaoServico_NaoTributavel
  else if pValor = '4' then
    Result := TEnumTipoDeTributacaoServico_Tributavel
  else if pValor = '5' then
    Result := TEnumTipoDeTributacaoServico_TributavelFixo
  else if pValor = '6' then
    Result := TEnumTipoDeTributacaoServico_TributavelSN
  else if pValor = '7' then
    Result := TEnumTipoDeTributacaoServico_ExigibilidadeSusp
  else if pValor = '8' then
    Result := TEnumTipoDeTributacaoServico_MEI
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumTipoDeTributacaoServico.');
end;

class function TEnum.TipoDeTributacaoServico(const pEnum: TEnumTipoDeTributacaoServico): string;
begin
  if pEnum = TEnumTipoDeTributacaoServico_Nulo then
    Result := ''
  else if pEnum = TEnumTipoDeTributacaoServico_IsentaISS then
    Result := '0 - Isenta ISS'
  else if pEnum = TEnumTipoDeTributacaoServico_NaoIncidencianoMunic then
    Result := '1 - Não Incidência no Município'
  else if pEnum = TEnumTipoDeTributacaoServico_Imune then
    Result := '2 - Imune'
  else if pEnum = TEnumTipoDeTributacaoServico_ExigibilidadeSusp then
    Result := '3 - Exigibilidade Suspensa'
  else if pEnum = TEnumTipoDeTributacaoServico_NaoTributavel then
    Result := '4 - Não Tributável'
  else if pEnum = TEnumTipoDeTributacaoServico_Tributavel then
    Result := '5 - Tributável'
  else if pEnum = TEnumTipoDeTributacaoServico_TributavelFixo then
    Result := '6 - Tributável Fixo'
  else if pEnum = TEnumTipoDeTributacaoServico_TributavelSN then
    Result := '7 - Tributável SN'
  else if pEnum = TEnumTipoDeTributacaoServico_MEI then
    Result := '8 - MEI'
  else
    raise EEnumeradorInvalido.Create('Enumerador inválido para TEnumTipoDeTributacaoServico.');
end;

class function TEnum.RegTriEspNFSeToInt(const pEnum: TEnumRegTriEspNFSe): Integer;
begin
  if pEnum = TEnumRegTriEspNFSe_Nenhum then
    Result := 0
  else if pEnum = TEnumRegTriEspNFSe_MicroempresaMunicipal then
    Result := 1
  else if pEnum = TEnumRegTriEspNFSe_Estimativa then
    Result := 2
  else if pEnum = TEnumRegTriEspNFSe_SociedadeProfissionais then
    Result := 3
  else if pEnum = TEnumRegTriEspNFSe_Cooperativa then
    Result := 4
  else if pEnum = TEnumRegTriEspNFSe_MicroempresarioIndividual then
    Result := 5
  else if pEnum = TEnumRegTriEspNFSe_MicroempresarioEmpresaPP then
    Result := 6
  else if pEnum = TEnumRegTriEspNFSe_LucroReal then
    Result := 7
  else if pEnum = TEnumRegTriEspNFSe_LucroPresumido then
    Result := 8
  else if pEnum = TEnumRegTriEspNFSe_SimplesNacional then
    Result := 9
  else
    raise EEnumeradorInvalido.Create('Enumerador inválido para TEnumRegTriEspNFSe.');
end;

class function TEnum.RegTriEspNFSeFromInt(const pValor: Integer): TEnumRegTriEspNFSe;
begin
  if pValor = 0 then
    Result := TEnumRegTriEspNFSe_Nenhum
  else if pValor = 1 then
    Result := TEnumRegTriEspNFSe_MicroempresaMunicipal
  else if pValor = 2 then
    Result := TEnumRegTriEspNFSe_Estimativa
  else if pValor = 3 then
    Result := TEnumRegTriEspNFSe_SociedadeProfissionais
  else if pValor = 4 then
    Result := TEnumRegTriEspNFSe_Cooperativa
  else if pValor = 5 then
    Result := TEnumRegTriEspNFSe_MicroempresarioIndividual
  else if pValor = 6 then
    Result := TEnumRegTriEspNFSe_MicroempresarioEmpresaPP
  else if pValor = 7 then
    Result := TEnumRegTriEspNFSe_LucroReal
  else if pValor = 8 then
    Result := TEnumRegTriEspNFSe_LucroPresumido
  else if pValor = 9 then
    Result := TEnumRegTriEspNFSe_SimplesNacional
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + IntToStr(pValor) + '" inválido para TEnumRegTriEspNFSe.');
end;

class function TEnum.RegTriEspNFSe(const pEnum: TEnumRegTriEspNFSe): string;
begin
  if pEnum = TEnumRegTriEspNFSe_Nenhum then
    Result := '0 - Nenhum'
  else if pEnum = TEnumRegTriEspNFSe_MicroempresaMunicipal then
    Result := '1 - Microempresa Municipal'
  else if pEnum = TEnumRegTriEspNFSe_Estimativa then
    Result := '2 - Estimativa'
  else if pEnum = TEnumRegTriEspNFSe_SociedadeProfissionais then
    Result := '3 - Sociedade de Profissionais'
  else if pEnum = TEnumRegTriEspNFSe_Cooperativa then
    Result := '4 - Cooperativa'
  else if pEnum = TEnumRegTriEspNFSe_MicroempresarioIndividual then
    Result := '5 - Microempresario Individual'
  else if pEnum = TEnumRegTriEspNFSe_MicroempresarioEmpresaPP then
    Result := '6 - Microempresario Empresa PP'
  else if pEnum = TEnumRegTriEspNFSe_LucroReal then
    Result := '7 - Lucro Real'
  else if pEnum = TEnumRegTriEspNFSe_LucroPresumido then
    Result := '8 - Lucro Presumido'
  else if pEnum = TEnumRegTriEspNFSe_SimplesNacional then
    Result := '9 - Simples Nacional'
  else
    raise EEnumeradorInvalido.Create('Enumerador inválido para TEnumRegTriEspNFSe.');
end;

class function TEnum.ServicosAPIToStr(const pEnum: TEnumServicosAPI): string;
begin
  case pEnum of
    TEnumServicosAPI_TConexaoAPI: Result             := 'TConexaoAPI';
    TEnumServicosAPI_TNFeAPI: Result                 := 'TNFeAPI';
    TEnumServicosAPI_TCTeAPI: Result                 := 'TCTeAPI';
    TEnumServicosAPI_TMDFeAPI: Result                := 'TMDFeAPI';
    TEnumServicosAPI_TCommerceAPI: Result            := 'TCommerceAPI';
    TEnumServicosAPI_TImpressoraNaoFiscalAPI: Result := 'TImpressoraNaoFiscalAPI';
    TEnumServicosAPI_TNFeLocalAPI: Result            := 'TNFeLocalAPI';
    TEnumServicosAPI_TSSLAPI: Result                 := 'TSSLAPI';
    TEnumServicosAPI_TSSLLocalAPI: Result            := 'TSSLLocalAPI';
    TEnumServicosAPI_TPAFAPI: Result                 := 'TPAFAPI';
    TEnumServicosAPI_TPafLocalAPI: Result            := 'TPafLocalAPI';
    TEnumServicosAPI_TCommerceLocalAPI: Result       := 'TCommerceLocalAPI';
    TEnumServicosAPI_TConexaoLocalAPI: Result        := 'TConexaoLocalAPI';
    TEnumServicosAPI_TMiddlewareAPI: Result          := 'TMiddlewareAPI';
    else
         raise EEnumeradorInvalido.Create('Enumerador inválido para TEnumServicos.');
  end;
end;

class function TEnum.ServicosAPIFromStr(const pValor: string): TEnumServicosAPI;
begin
  if (pValor = 'TConexaoAPI') then
    Result := TEnumServicosAPI_TConexaoAPI
  else if pValor = 'TNFeAPI' then
    Result := TEnumServicosAPI_TNFeAPI
  else if pValor = 'TCTeAPI' then
    Result := TEnumServicosAPI_TCTeAPI
  else if pValor = 'TMDFeAPI' then
    Result := TEnumServicosAPI_TMDFeAPI
  else if pValor = 'TCommerceAPI' then
    Result := TEnumServicosAPI_TCommerceAPI
  else if pValor = 'TImpressoraNaoFiscalAPI' then
    Result := TEnumServicosAPI_TImpressoraNaoFiscalAPI
  else if pValor = 'TNFeLocalAPI' then
    Result := TEnumServicosAPI_TNFeLocalAPI
  else if pValor = 'TSSLAPI' then
    Result := TEnumServicosAPI_TSSLAPI
  else if (pValor = 'TSSLLocalAPI') then
    Result := TEnumServicosAPI_TSSLLocalAPI
  else if (pValor = 'TPAFAPI') then
    Result := TEnumServicosAPI_TPAFAPI
  else if (pValor = 'TPafLocalAPI') then
    Result := TEnumServicosAPI_TPafLocalAPI
  else if (pValor = 'TCommerceLocalAPI') then
    Result := TEnumServicosAPI_TCommerceLocalAPI
  else if (pValor = 'TConexaoLocalAPI') then
    Result := TEnumServicosAPI_TConexaoLocalAPI
  else if (pValor = 'TMiddlewareAPI') then
    Result := TEnumServicosAPI_TMiddlewareAPI
  else
    raise EEnumeradorInvalido.Create('Valor de enumerador "' + pValor + '" inválido para TEnumServicos.');
end;

{$IFDEF DELPHIXE}
class function TEnum.RegTriEspNFSeGetList: TObjectList<TParLista>;
begin
  Result := TObjectList<TParLista>.Create;
  Result.Add(TParLista.Create(RegTriEspNFSeToInt(TEnumRegTriEspNFSe_Nenhum), RegTriEspNFSe(TEnumRegTriEspNFSe_Nenhum)));
  Result.Add(TParLista.Create(RegTriEspNFSeToInt(TEnumRegTriEspNFSe_MicroempresaMunicipal), RegTriEspNFSe(TEnumRegTriEspNFSe_MicroempresaMunicipal)));
  Result.Add(TParLista.Create(RegTriEspNFSeToInt(TEnumRegTriEspNFSe_Estimativa), RegTriEspNFSe(TEnumRegTriEspNFSe_Estimativa)));
  Result.Add(TParLista.Create(RegTriEspNFSeToInt(TEnumRegTriEspNFSe_SociedadeProfissionais), RegTriEspNFSe(TEnumRegTriEspNFSe_SociedadeProfissionais)));
  Result.Add(TParLista.Create(RegTriEspNFSeToInt(TEnumRegTriEspNFSe_Cooperativa), RegTriEspNFSe(TEnumRegTriEspNFSe_Cooperativa)));
  Result.Add(TParLista.Create(RegTriEspNFSeToInt(TEnumRegTriEspNFSe_MicroempresarioIndividual), RegTriEspNFSe(TEnumRegTriEspNFSe_MicroempresarioIndividual)));
  Result.Add(TParLista.Create(RegTriEspNFSeToInt(TEnumRegTriEspNFSe_MicroempresarioEmpresaPP), RegTriEspNFSe(TEnumRegTriEspNFSe_MicroempresarioEmpresaPP)));
  Result.Add(TParLista.Create(RegTriEspNFSeToInt(TEnumRegTriEspNFSe_LucroReal), RegTriEspNFSe(TEnumRegTriEspNFSe_LucroReal)));
  Result.Add(TParLista.Create(RegTriEspNFSeToInt(TEnumRegTriEspNFSe_LucroPresumido), RegTriEspNFSe(TEnumRegTriEspNFSe_LucroPresumido)));
  Result.Add(TParLista.Create(RegTriEspNFSeToInt(TEnumRegTriEspNFSe_SimplesNacional), RegTriEspNFSe(TEnumRegTriEspNFSe_SimplesNacional)));
end;
{$ENDIF}

class function TEnum.SituacaoLancamento(const pValor: string): TEnumSituacaoLancamento;
begin
  if pValor = 'N' then
    Result := TEnumSituacaoLancamento_Normal
  else if pValor = 'C' then
    Result := TEnumSituacaoLancamento_Cancelado
  else
    raise EEnumeradorInvalido.Create('Enumerador inválido para TEnumSituacaoLancamento.');
end;

class function TEnum.TipoLancamento(const pValor: string): TEnumTipoLancamento;
begin
  if pValor = 'I' then
    Result := TEnumTipoLancamento_Inicial
  else if pValor = 'A' then
    Result := TEnumTipoLancamento_Ajuste
  else
    raise EEnumeradorInvalido.Create('Enumerador inválido para TEnumTipoLancamento.');
end;

class function TEnum.TipoConexao(pEnum: TEnumTipoConexao): string;
begin
  if pEnum = tcBancoDados then
    Result := 'Banco de Dados'
  else if pEnum = tcXML then
    Result := 'XML'
  else if pEnum = tcJSON then
    Result := 'JSON'
  else
    raise EEnumeradorInvalido.Create('Enumerador inválido para TEnumTipoConexao.');
end;

{ TParLista }

constructor TParLista.Create(pValor, pDescricao: string);
begin
  FValor     := pValor;
  FDescricao := pDescricao;
end;

constructor TParLista.Create(pValor: Integer; pDescricao: string);
begin
  FValor     := IntToStr(pValor);
  FDescricao := pDescricao;
end;

end.
