unit UnitAlterDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TformAlterDb = class(TForm)
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
    procedure FormShow(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btNewDBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formAlterDb: TformAlterDb;

implementation

{$R *.dfm}

uses UnitPrincipal, UnitDM;

procedure TformAlterDb.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TformAlterDb.btNewDBClick(Sender: TObject);
begin
  UnitDM.DataModule1.queryDM.Close;
  UnitDM.DataModule1.queryDM.SQL.Clear;
  UnitDM.DataModule1.queryDM.SQL.Add('UPDATE connection SET ');
  UnitDM.DataModule1.queryDM.SQL.Add('apelido = ''' + txtNewApelido.Text + ''' , ');
  UnitDM.DataModule1.queryDM.SQL.Add('server = ''' + txtNewServer.Text + ''' , ');
  UnitDM.DataModule1.queryDM.SQL.Add('port = ''' + txtNewPorta.Text + ''' , ');
  UnitDM.DataModule1.queryDM.SQL.Add('username = ''' + txtNewUsername.Text + ''' , ');
  UnitDM.DataModule1.queryDM.SQL.Add('password = ''' + txtNewPassword.Text + ''' , ');
  UnitDM.DataModule1.queryDM.SQL.Add('database = ''' + txtNewDatabase.Text+ ''' ');
  UnitDM.DataModule1.queryDM.SQL.Add('WHERE id_con = ' + mainScreen.gridListDB.Fields[7].AsString);
  UnitDM.DataModule1.queryDM.ExecSQL;

  ShowMessage('Servidor alterado!');

  txtNewApelido.Clear;
  txtNewServer.Clear;
  txtNewUsername.Clear;
  txtNewPassword.Clear;
  txtNewDatabase.Clear;
  txtNewPorta.Clear;

  UnitPrincipal.mainScreen.gridListDB.DataSource.DataSet.Refresh;

  Close;

end;

procedure TformAlterDb.FormShow(Sender: TObject);
begin
  txtNewApelido.Text := mainScreen.gridListDB.Fields[0].AsString;
  txtNewServer.Text := mainScreen.gridListDB.Fields[1].AsString;
  txtNewUsername.Text := mainScreen.gridListDB.Fields[2].AsString;
  txtNewPassword.Text := mainScreen.gridListDB.Fields[3].AsString;
  txtNewDatabase.Text := mainScreen.gridListDB.Fields[4].AsString;
  txtNewPorta.Text := mainScreen.gridListDB.Fields[6].AsString;
end;

end.
