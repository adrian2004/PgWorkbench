unit unitAddDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, System.IniFiles;

type
  TNovo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btNewDB: TButton;
    btCancel: TButton;
    txtNewPorta: TEdit;
    txtNewServer: TEdit;
    txtNewUsername: TEdit;
    txtNewPassword: TEdit;
    txtNewDatabase: TEdit;
    Label6: TLabel;
    txtNewApelido: TEdit;
    procedure btNewDBClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Novo: TNovo;

implementation

{$R *.dfm}

uses UnitNewDM, UnitDM, UnitPrincipal;



procedure TNovo.btCancelClick(Sender: TObject);
begin
  txtNewApelido.Clear;
  txtNewServer.Clear;
  txtNewUsername.Clear;
  txtNewPassword.Clear;
  txtNewDatabase.Clear;
  txtNewPorta.Clear;

  UnitPrincipal.mainScreen.gridListDB.DataSource.DataSet.Refresh;

  Close;
end;

procedure TNovo.btNewDBClick(Sender: TObject);

begin

  UnitDM.DataModule1.queryDM.Close;
  UnitDM.DataModule1.queryDM.SQL.Clear;
  UnitDM.DataModule1.queryDM.SQL.Add('INSERT INTO CONNECTION (APELIDO, SERVER, PORT, USERNAME, PASSWORD, DATABASE, DRIVERID) ');
  UnitDM.DataModule1.queryDM.SQL.Add('VALUES (''' + txtNewApelido.Text + ''',''' +  txtNewServer.Text + ''',''' +  txtNewPorta.Text + ''',''' + txtNewUsername.Text + ''',''' + txtNewPassword.Text + ''',''' + txtNewDatabase.Text + ''',''PG'')');
  UnitDM.DataModule1.queryDM.ExecSQL;

  ShowMessage('Servidor adcionado!');

  txtNewApelido.Clear;
  txtNewServer.Clear;
  txtNewUsername.Clear;
  txtNewPassword.Clear;
  txtNewDatabase.Clear;
  txtNewPorta.Clear;

  UnitPrincipal.mainScreen.gridListDB.DataSource.DataSet.Refresh;

  Close;
end;

procedure TNovo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  txtNewApelido.Clear;
  txtNewServer.Clear;
  txtNewUsername.Clear;
  txtNewPassword.Clear;
  txtNewDatabase.Clear;
  txtNewPorta.Clear;

  UnitPrincipal.mainScreen.gridListDB.DataSource.DataSet.Refresh;
end;

end.
