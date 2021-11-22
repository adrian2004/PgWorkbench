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

uses unitConfirmCon, UnitPrincipal, UnitNewDM;

procedure TformSelectServer.btCancSSClick(Sender: TObject);
begin
  Close;
end;

procedure TformSelectServer.btConnSSClick(Sender: TObject);
begin
  formConfirmCon.ShowModal;
end;

procedure TformSelectServer.btEditSSClick(Sender: TObject);
var
server :String;
database: String;
sql :String;
begin
  server := mainScreen.gridListDB.Fields[1].AsString;
  database := mainScreen.gridListDB.Fields[4].AsString;

   UnitNewDM.DataModule2.queryAlterDM.SQL.Add('UPDATE connection SET apelido=:apelido WHERE server = '+''''+server+''''+' AND database = '+''''+database+'''');
   UnitNewDM.DataModule2.queryAlterDM.SQL.Add('UPDATE connection SET server=:server WHERE server = '+''''+server+''''+' AND database = '+''''+database+'''');
   UnitNewDM.DataModule2.queryAlterDM.SQL.Add('UPDATE connection SET username=:username WHERE server = '+''''+server+''''+' AND database = '+''''+database+'''');
   UnitNewDM.DataModule2.queryAlterDM.SQL.Add('UPDATE connection SET password=:password WHERE server = '+''''+server+''''+' AND database = '+''''+database+'''');
   UnitNewDM.DataModule2.queryAlterDM.SQL.Add('UPDATE connection SET database=:database WHERE server = '+''''+server+''''+' AND database = '+''''+database+'''');
   UnitNewDM.DataModule2.queryAlterDM.SQL.Add('UPDATE connection SET port=:port WHERE server = '+''''+server+''''+' AND database = '+''''+database+'''');
end;

end.
