unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, System.IniFiles;

type
  TDataModule1 = class(TDataModule)
    conConexao: TFDConnection;
    tbConexao: TFDTable;
    dsConexao: TDataSource;
    queryDM: TFDQuery;
    tbConexaoapelido: TWideStringField;
    tbConexaoserver: TWideStringField;
    tbConexaousername: TWideStringField;
    tbConexaopassword: TWideStringField;
    tbConexaodatabase: TWideStringField;
    tbConexaodriverid: TWideStringField;
    tbConexaoport: TWideStringField;
    tbConexaoid_con: TIntegerField;
    tbConexao2: TFDTable;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField7: TWideStringField;
    dsConexao2: TDataSource;
    queryDM2: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
