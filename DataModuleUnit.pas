unit DataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.DBClient, SimpleDS, Datasnap.Provider;

type
  TDM = class(TDataModule)
    Conn: TSQLConnection;
    DSPv: TSimpleDataSet;
    DSPvN_Pv_Insta: TIntegerField;
    DSPvRef_Courri: TStringField;
    DSPvDat_RO: TDateField;
    DSPvAdrs: TStringField;
    DSPvTele: TIntegerField;
    DSPvEmail: TStringField;
    DSPvFax: TIntegerField;
    DSPvType_Res: TStringField;
    DSPvTra_eff_desi: TStringField;
    DSPvMar: TStringField;
    DSPvN_serie: TStringField;
    DSPvQnt: TIntegerField;
    DSPvObs: TStringField;
    DSPvNum_dep: TIntegerField;
    DSPvNum_serv_com: TIntegerField;
    DSPvNum_cl: TIntegerField;
    SrcPv: TDataSource;
    QueryPv: TSQLQuery;
    DSDecharge: TSimpleDataSet;
    SrcDecharge: TDataSource;
    QueryDecharge: TSQLQuery;
    DSDechargeN_Dech: TIntegerField;
    DSDechargeRef: TStringField;
    DSDechargeQtn: TIntegerField;
    DSDechargeNum_deploy: TIntegerField;
    DSDechargeNum_mag_let: TIntegerField;
    DSDodation: TSimpleDataSet;
    SrcDodation: TDataSource;
    QueryDodation: TSQLQuery;
    DSDeploy: TSimpleDataSet;
    DSComm: TSimpleDataSet;
    DSLet: TSimpleDataSet;
    DSCentral: TSimpleDataSet;
    DSCommN_srv: TIntegerField;
    DSCommDep: TStringField;
    SrcComm: TDataSource;
    QueryComm: TSQLQuery;
    SrcCentral: TDataSource;
    QueryClient: TSQLQuery;
    DSClient: TSimpleDataSet;
    SrcClient: TDataSource;
    DSClientN_cl: TIntegerField;
    DSClientNom_cl: TStringField;
    DSClientPre_cl: TStringField;
    DSClientNum_srv_com: TIntegerField;
    SrcDeploy: TDataSource;
    SrcLet: TDataSource;
    DSComm1: TSimpleDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DSCommnom: TStringField;
    DSCentralN_mag_Cen: TIntegerField;
    DSCentralnom: TStringField;
    DSCentralDep: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
