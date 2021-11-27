unit unitCreateServer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btNewDB: TButton;
    btCancel: TButton;
    txtNewPorta: TEdit;
    txtNewServer: TEdit;
    txtNewUsername: TEdit;
    txtNewPassword: TEdit;
    txtNewDatabase: TEdit;
    txtNewApelido: TEdit;
    procedure btCancelClick(Sender: TObject);
    procedure btNewDBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses UnitDM, UnitPrincipal;

procedure TForm2.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TForm2.btNewDBClick(Sender: TObject);
begin

  UnitDM.DataModule1.queryDM.Close;
  UnitDM.DataModule1.queryDM.SQL.Clear;
  UnitDM.DataModule1.queryDM.SQL.Add('INSERT INTO CONNECTION (APELIDO, SERVER, PORT, USERNAME, PASSWORD, DATABASE, DRIVERID) ');
  UnitDM.DataModule1.queryDM.SQL.Add('VALUES (''' + txtNewApelido.Text + ''',''' +  txtNewServer.Text + ''',''' +  txtNewPorta.Text + ''',''' + txtNewUsername.Text + ''',''' + txtNewPassword.Text + ''',''' + txtNewDatabase.Text + ''',''PG'')');
  UnitDM.DataModule1.queryDM.ExecSQL;

  ShowMessage('Base local criada!');

  txtNewApelido.Clear;
  txtNewServer.Clear;
  txtNewUsername.Clear;
  txtNewPassword.Clear;
  txtNewDatabase.Clear;
  txtNewPorta.Clear;

  UnitPrincipal.mainScreen.gridListDB.DataSource.DataSet.Refresh;

  Close;
end;

end.
