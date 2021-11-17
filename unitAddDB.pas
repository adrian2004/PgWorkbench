unit unitAddDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TformAddDb = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btNewDB: TButton;
    btCancel: TButton;
    txtNewApelido: TEdit;
    txtNewServer: TEdit;
    txtNewUsername: TEdit;
    txtNewPassword: TEdit;
    txtNewDatabase: TEdit;
    procedure btNewDBClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formAddDb: TformAddDb;

implementation

{$R *.dfm}

uses UnitDM;

procedure TformAddDb.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TformAddDb.btNewDBClick(Sender: TObject);
begin
  ShowMessage(
  txtNewApelido.Text + #13#10 +
  txtNewServer.Text + #13#10 +
  txtNewUsername.Text + #13#10 +
  txtNewPassword.Text + #13#10 +
  txtNewDatabase.Text
  );

  //missing server parameter
  UnitDM.DataModule1.conConexao.Params.UserName := txtNewUsername.Text;
  UnitDM.DataModule1.conConexao.Params.Password := txtNewPassword.Text;
  UnitDM.DataModule1.conConexao.Params.Database := txtNewDatabase.Text;
  UnitDM.DataModule1.conConexao.Params.DriverID := 'PG';

end;

end.
