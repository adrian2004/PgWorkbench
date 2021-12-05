unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, System.IniFiles;

type
  TmainScreen = class(TForm)
    pnNavbar: TPanel;
    gridListDB: TDBGrid;
    Label1: TLabel;
    editFilter: TEdit;
    pnLanding: TPanel;
    pnControl: TPanel;
    imgNewDb: TImage;
    lbNewDb: TLabel;
    imgAddDb: TImage;
    lbAddDb: TLabel;
    gridListData: TDBGrid;
    lbOpenQuery: TLabel;
    imgQuery: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Image4: TImage;
    Image5: TImage;
    Label4: TLabel;
    Image6: TImage;
    Label5: TLabel;
    Label6: TLabel;
    procedure lbNewDbMouseEnter(Sender: TObject);
    procedure imgNewDbMouseEnter(Sender: TObject);
    procedure imgNewDbMouseLeave(Sender: TObject);
    procedure lbNewDbMouseLeave(Sender: TObject);
    procedure imgAddDbMouseEnter(Sender: TObject);
    procedure imgAddDbMouseLeave(Sender: TObject);
    procedure lbAddDbMouseEnter(Sender: TObject);
    procedure lbAddDbMouseLeave(Sender: TObject);
    procedure btnRunSqlClick(Sender: TObject);
    procedure lbAddDbClick(Sender: TObject);
    procedure gridListDBCellClick(Column: TColumn);
    procedure lbOpenQueryClick(Sender: TObject);
    procedure lbOpenQueryMouseEnter(Sender: TObject);
    procedure lbOpenQueryMouseLeave(Sender: TObject);
    procedure imgQueryClick(Sender: TObject);
    procedure imgAddDbClick(Sender: TObject);
    procedure imgQueryMouseEnter(Sender: TObject);
    procedure imgQueryMouseLeave(Sender: TObject);
    procedure lbNewDbClick(Sender: TObject);
    procedure imgNewDbClick(Sender: TObject);
    procedure gridListDBDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure editFilterChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainScreen: TmainScreen;

implementation

{$R *.dfm}

uses UnitDM, unitAddDB, UnitNewDM, UnitQuery, UnitSelectServer,
  unitCreateServer;

procedure TmainScreen.btnRunSqlClick(Sender: TObject);
begin
  formAddDb.ShowModal;
end;

procedure TmainScreen.editFilterChange(Sender: TObject);
begin
  UnitDM.DataModule1.tbConexao.Filter := 'apelido LIKE ''%'+editFilter.Text+'%''';
  UnitDM.DataModule1.tbConexao.Filtered := true;
end;

procedure TmainScreen.gridListDBCellClick(Column: TColumn);
begin
  formSelectServer.ShowModal;
end;

procedure TmainScreen.gridListDBDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  nLinha: integer;
begin
  // obtém o número do registro (linha)
  nLinha := gridListDb.DataSource.DataSet.RecNo;

  // verifica se o número da linha é par ou ímpar, aplicando as cores
  if Odd(nLinha) then
    gridListDb.Canvas.Brush.Color := clMenu
  else
    gridListDb.Canvas.Brush.Color := clWhite;

  // pinta a linha
  gridListDb.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TmainScreen.imgAddDbClick(Sender: TObject);
begin
  formAddDb.ShowModal;
end;

procedure TmainScreen.imgAddDbMouseEnter(Sender: TObject);
begin
  lbAddDb.Font.Style := [fsUnderline,fsItalic];
end;

procedure TmainScreen.imgAddDbMouseLeave(Sender: TObject);
begin
  lbAddDb.Font.Style := [fsItalic];
end;

procedure TmainScreen.imgNewDbClick(Sender: TObject);
begin
  unitCreateServer.Form2.ShowModal;
end;

procedure TmainScreen.imgNewDbMouseEnter(Sender: TObject);
begin
  lbNewDb.Font.Style := [fsUnderline,fsItalic];
end;

procedure TmainScreen.imgNewDbMouseLeave(Sender: TObject);
begin
    lbNewDb.Font.Style := [fsItalic];
end;

procedure TmainScreen.imgQueryClick(Sender: TObject);
begin
  if UnitNewDM.DataModule2.conDb.Connected = false then
    ShowMessage('Nenhuma base conectada...')
  else
    queryEditor.ShowModal;
end;

procedure TmainScreen.imgQueryMouseEnter(Sender: TObject);
begin
  lbOpenQuery.Font.Style := [fsUnderline,fsItalic];
end;

procedure TmainScreen.imgQueryMouseLeave(Sender: TObject);
begin
  lbOpenQuery.Font.Style := [fsItalic];
end;

procedure TmainScreen.lbAddDbClick(Sender: TObject);
begin
  formAddDb.ShowModal;
end;

procedure TmainScreen.lbAddDbMouseEnter(Sender: TObject);
begin
  lbAddDb.Font.Style := [fsUnderline,fsItalic];
end;

procedure TmainScreen.lbAddDbMouseLeave(Sender: TObject);
begin
  lbAddDb.Font.Style := [fsItalic];
end;

procedure TmainScreen.lbNewDbClick(Sender: TObject);
begin
  unitCreateServer.Form2.ShowModal;
end;

procedure TmainScreen.lbNewDbMouseEnter(Sender: TObject);
begin
  lbNewDb.Font.Style := [fsUnderline,fsItalic];
end;

procedure TmainScreen.lbNewDbMouseLeave(Sender: TObject);
begin
    lbNewDb.Font.Style := [fsItalic];
end;

procedure TmainScreen.lbOpenQueryClick(Sender: TObject);
begin
  if UnitNewDM.DataModule2.conDb.Connected = false then
    ShowMessage('Nenhuma base conectada...')
  else
    queryEditor.ShowModal;
end;

procedure TmainScreen.lbOpenQueryMouseEnter(Sender: TObject);
begin
  lbOpenQuery.Font.Style := [fsUnderline,fsItalic];
end;

procedure TmainScreen.lbOpenQueryMouseLeave(Sender: TObject);
begin
  lbOpenQuery.Font.Style := [fsItalic];
end;

end.
