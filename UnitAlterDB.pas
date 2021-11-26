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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formAlterDb: TformAlterDb;

implementation

{$R *.dfm}

uses UnitPrincipal;

procedure TformAlterDb.btCancelClick(Sender: TObject);
begin
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
