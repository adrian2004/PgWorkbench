unit unitConfirmCon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.IniFiles, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TformConfirmCon = class(TForm)
    btConfirm: TButton;
    btCancelar: TButton;
    Label1: TLabel;
    procedure btConfirmClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formConfirmCon: TformConfirmCon;

implementation

{$R *.dfm}

uses UnitDM, UnitPrincipal, UnitNewDM;

procedure TformConfirmCon.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TformConfirmCon.btConfirmClick(Sender: TObject);
begin
  UnitNewDM.DataModule2.conDb.CloneConnection;
  UnitNewDM.DataModule2.conDb.Params.Clear;

  UnitNewDM.DataModule2.conDb.Params.Values['Server'] := mainScreen.gridListDB.Fields[1].AsString;
  UnitNewDM.DataModule2.conDb.Params.Values['User_name'] := mainScreen.gridListDB.Fields[2].AsString;
  UnitNewDM.DataModule2.conDb.Params.Values['Password'] := mainScreen.gridListDB.Fields[3].AsString;
  UnitNewDM.DataModule2.conDb.Params.Values['Database'] := mainScreen.gridListDB.Fields[4].AsString;
  UnitNewDM.DataModule2.conDb.Params.Values['Driverid'] := 'PG';
  UnitNewDM.DataModule2.conDb.Params.Values['Port'] := mainScreen.gridListDB.Fields[6].AsString;

  UnitNewDM.DataModule2.conDb.Connected := true;

  ShowMessage('Conectado com sucesso!');

  UnitNewDM.DataModule2.queryNewDM.SQL.Clear;
  UnitNewDM.DataModule2.queryNewDM.SQL.Add('SELECT datname FROM pg_database;');
  UnitNewDM.DataModule2.queryNewDM.ExecSQL;

  Close;
end;

end.
