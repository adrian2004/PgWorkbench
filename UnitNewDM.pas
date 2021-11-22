unit UnitNewDM;

interface

uses
  System.SysUtils, System.Classes, System.IniFiles, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Datasnap.Provider, Datasnap.DBClient;

type
  TDataModule2 = class(TDataModule)
    conDb: TFDConnection;
    dsNew: TDataSource;
    queryNewDM: TFDQuery;
    dspNew: TDataSetProvider;
    cdNew: TClientDataSet;
    queryAlterDM: TFDQuery;
//    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

//procedure TDataModule2.DataModuleCreate(Sender: TObject);
//var
//  arquivoINI : TIniFile;
//  caminho : string;
//begin
//    caminho := GetCurrentDir;
//
//  try
//    arquivoINI := TIniFile.Create(caminho + '\CONFIG.INI');
//    conDb.Close;
//    conDb.Params.Clear;
//    conDb.Params.Database := arquivoINI.ReadString('DB', 'DATABASE', '');
//    conDb.Params.UserName := arquivoINI.ReadString('DB', 'USER_NAME', '');
//    conDb.Params.Add('PASSWORD=' + arquivoINI.ReadString('DB', 'PASSWORD', ''));
//    conDb.Params.Add('SERVER=' + arquivoINI.ReadString('DB', 'SERVER', ''));
//    conDb.Params.Add('PORT=' + arquivoINI.ReadString('DB', 'PORT', ''));
//    conDb.DriverName := 'PG';
//    conDb.Open;
//  finally
//
//  end;
//end;

end.
