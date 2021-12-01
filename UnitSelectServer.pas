unit UnitSelectServer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TformSelectServer = class(TForm)
    Label1: TLabel;
    btConnSS: TButton;
    btEditSS: TButton;
    btDelSS: TButton;
    btCancSS: TButton;
    DBGrid1: TDBGrid;
    procedure btConnSSClick(Sender: TObject);
    procedure btCancSSClick(Sender: TObject);
    procedure btEditSSClick(Sender: TObject);
    procedure btDelSSClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSelectServer: TformSelectServer;

implementation

{$R *.dfm}

uses unitConfirmCon, UnitPrincipal, UnitNewDM, UnitAlterDB, unitConfirmExclude,
  UnitDM;

procedure TformSelectServer.btCancSSClick(Sender: TObject);
begin
  Close;
end;

procedure TformSelectServer.btConnSSClick(Sender: TObject);
begin
  formConfirmCon.ShowModal;
end;

procedure TformSelectServer.btDelSSClick(Sender: TObject);
begin
  unitConfirmExclude.Form1.ShowModal;
end;

procedure TformSelectServer.btEditSSClick(Sender: TObject);
begin
  UnitAlterDB.formAlterDb.ShowModal;
end;

procedure TformSelectServer.FormShow(Sender: TObject);
begin
  UnitDM.DataModule1.queryDM2.SQL.Clear;

  UnitDM.DataModule1.queryDM2.SQL.ADD('SELECT server, database, port, username FROM connection ');
  UnitDM.DataModule1.queryDM2.SQL.ADD('WHERE id_con = ' + mainScreen.gridListDB.Fields[7].AsString);

  UnitDM.DataModule1.queryDM2.Open;

end;

end.
