unit UnitSelectServer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TformSelectServer = class(TForm)
    Label1: TLabel;
    btConnSS: TButton;
    btEditSS: TButton;
    btDelSS: TButton;
    btCancSS: TButton;
    procedure btConnSSClick(Sender: TObject);
    procedure btCancSSClick(Sender: TObject);
    procedure btEditSSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSelectServer: TformSelectServer;

implementation

{$R *.dfm}

uses unitConfirmCon, UnitPrincipal, UnitNewDM, UnitAlterDB;

procedure TformSelectServer.btCancSSClick(Sender: TObject);
begin
  Close;
end;

procedure TformSelectServer.btConnSSClick(Sender: TObject);
begin
  formConfirmCon.ShowModal;
end;

procedure TformSelectServer.btEditSSClick(Sender: TObject);
begin
  UnitAlterDB.formAlterDb.ShowModal;
end;

end.
