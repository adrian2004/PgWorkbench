unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, System.IniFiles, ShellApi;

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
    imgInfo: TImage;
    Image5: TImage;
    Label4: TLabel;
    imgHelp: TImage;
    lbInfo: TLabel;
    lbHelp: TLabel;
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
    procedure lbHelpClick(Sender: TObject);
    procedure imgHelpClick(Sender: TObject);
    procedure lbInfoMouseEnter(Sender: TObject);
    procedure lbInfoMouseLeave(Sender: TObject);
    procedure imgInfoMouseEnter(Sender: TObject);
    procedure imgInfoMouseLeave(Sender: TObject);
    procedure imgHelpMouseEnter(Sender: TObject);
    procedure imgHelpMouseLeave(Sender: TObject);
    procedure lbHelpMouseEnter(Sender: TObject);
    procedure lbHelpMouseLeave(Sender: TObject);
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
  Novo.ShowModal;
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
  // obt�m o n�mero do registro (linha)
  nLinha := gridListDb.DataSource.DataSet.RecNo;

  // verifica se o n�mero da linha � par ou �mpar, aplicando as cores
  if Odd(nLinha) then
    gridListDb.Canvas.Brush.Color := clMenu
  else
    gridListDb.Canvas.Brush.Color := clWhite;

  // pinta a linha
  gridListDb.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TmainScreen.imgHelpClick(Sender: TObject);
begin
  shellexecute(handle,'open','https://github.com/adrian2004/PgWorkbench/blob/master/README.md',nil,nil,0);
end;

procedure TmainScreen.imgHelpMouseEnter(Sender: TObject);
begin
  lbHelp.Font.Style := [fsUnderline,fsItalic];
end;

procedure TmainScreen.imgHelpMouseLeave(Sender: TObject);
begin
  lbHelp.Font.Style := [fsItalic];
end;

procedure TmainScreen.imgInfoMouseEnter(Sender: TObject);
begin
  lbInfo.Font.Style := [fsUnderline,fsItalic];
end;

procedure TmainScreen.imgInfoMouseLeave(Sender: TObject);
begin
  lbInfo.Font.Style := [fsItalic];
end;

procedure TmainScreen.imgAddDbClick(Sender: TObject);
begin
  Novo.ShowModal;
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
  unitCreateServer.Criar.ShowModal;
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

procedure TmainScreen.lbHelpClick(Sender: TObject);
begin
  shellexecute(handle,'open','https://github.com/adrian2004/PgWorkbench/blob/master/README.md',nil,nil,0);
end;

procedure TmainScreen.lbHelpMouseEnter(Sender: TObject);
begin
  lbHelp.Font.Style := [fsUnderline,fsItalic];
end;

procedure TmainScreen.lbHelpMouseLeave(Sender: TObject);
begin
  lbHelp.Font.Style := [fsItalic];
end;

procedure TmainScreen.lbInfoMouseEnter(Sender: TObject);
begin
  lbInfo.Font.Style := [fsUnderline,fsItalic];
end;

procedure TmainScreen.lbInfoMouseLeave(Sender: TObject);
begin
    lbInfo.Font.Style := [fsItalic];
end;

procedure TmainScreen.lbAddDbClick(Sender: TObject);
begin
  Novo.ShowModal;
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
  unitCreateServer.Criar.ShowModal;
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
