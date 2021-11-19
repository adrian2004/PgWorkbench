unit unitConfirmCon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.IniFiles, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TformConfirmCon = class(TForm)
    btConfirm: TButton;
    btCancelar: TButton;
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

uses UnitDM, UnitPrincipal;

procedure TformConfirmCon.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TformConfirmCon.btConfirmClick(Sender: TObject);
var
  ArquivoINI: TIniFile;
  caminho: string;
begin
  caminho := GetCurrentDir;
  ArquivoINI := TIniFile.Create(caminho + 'CONFIG.ini');
  ArquivoINI.WriteString('DB', 'SERVER', mainScreen.gridListDB.Fields[1].AsString);
  ArquivoINI.WriteString('DB', 'USER_NAME', mainScreen.gridListDB.Fields[2].AsString);
  ArquivoINI.WriteString('DB', 'PASSWORD', mainScreen.gridListDB.Fields[3].AsString);
  ArquivoINI.WriteString('DB', 'DATABASE', mainScreen.gridListDB.Fields[4].AsString);
  ArquivoINI.WriteString('DB', 'DRIVERID', mainScreen.gridListDB.Fields[5].AsString);
  ArquivoINI.WriteString('DB', 'PORT', mainScreen.gridListDB.Fields[6].AsString);
  ArquivoINI.Free;
  ShowMessage('Conectado com sucesso!');

  Close;
end;

end.
