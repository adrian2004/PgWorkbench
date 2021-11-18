unit unitAddDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, System.IniFiles;

type
  TformAddDb = class(TForm)
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

uses UnitNewDM;



procedure TformAddDb.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TformAddDb.btNewDBClick(Sender: TObject);
var
  ArquivoINI: TIniFile;
  caminho: string;
begin
  caminho := GetCurrentDir;

  ArquivoINI := TIniFile.Create(caminho + 'CONFIG.ini');
  ArquivoINI.WriteString('DB', 'USER_NAME', txtNewUsername.Text);
  ArquivoINI.WriteString('DB', 'PASSWORD', txtNewPassword.Text);
  ArquivoINI.WriteString('DB', 'DATABASE', txtNewDatabase.Text);
  ArquivoINI.WriteString('DB', 'SERVER', txtNewServer.Text);
  ArquivoINI.WriteString('DB', 'PORT', txtNewPorta.Text);
  ArquivoINI.Free;
  ShowMessage('Conectado com sucesso!');

  try
    UnitNewDM.DataModule2.conDb.Close;
    UnitNewDM.DataModule2.conDb.Params.Clear;
    UnitNewDM.DataModule2.conDb.Params.Database := arquivoINI.ReadString('DB', 'DATABASE', '');
    UnitNewDM.DataModule2.conDb.Params.UserName := arquivoINI.ReadString('DB', 'USER_NAME', '');
    UnitNewDM.DataModule2.conDb.Params.Add('PASSWORD=' + arquivoINI.ReadString('DB', 'PASSWORD', ''));
    UnitNewDM.DataModule2.conDb.Params.Add('SERVER=' + arquivoINI.ReadString('DB', 'SERVER', ''));
    UnitNewDM.DataModule2.conDb.Params.Add('PORT=' + arquivoINI.ReadString('DB', 'PORT', ''));
    UnitNewDM.DataModule2.conDb.DriverName := 'PG';
    UnitNewDM.DataModule2.conDb.Open;
  finally

  end;
end;

end.
