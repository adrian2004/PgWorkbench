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
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnRemove: TBitBtn;
    btnNew: TBitBtn;
    gridListDB: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    pnLanding: TPanel;
    pnControl: TPanel;
    imgNewDb: TImage;
    lbNewDb: TLabel;
    imgAddDb: TImage;
    lbAddDb: TLabel;
    DBGrid1: TDBGrid;
    procedure lbNewDbMouseEnter(Sender: TObject);
    procedure imgNewDbMouseEnter(Sender: TObject);
    procedure imgNewDbMouseLeave(Sender: TObject);
    procedure lbNewDbMouseLeave(Sender: TObject);
    procedure imgAddDbMouseEnter(Sender: TObject);
    procedure imgAddDbMouseLeave(Sender: TObject);
    procedure lbAddDbMouseEnter(Sender: TObject);
    procedure lbAddDbMouseLeave(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure imgAddDbClick(Sender: TObject);
    procedure lbAddDbClick(Sender: TObject);
    procedure gridListDBCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainScreen: TmainScreen;

implementation

{$R *.dfm}

uses UnitDM, unitAddDB, unitConfirmCon, UnitNewDM;

procedure TmainScreen.btnAddClick(Sender: TObject);
begin
  formAddDb.ShowModal;
end;

procedure TmainScreen.gridListDBCellClick(Column: TColumn);
begin
  formConfirmCon.ShowModal;
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

procedure TmainScreen.imgNewDbMouseEnter(Sender: TObject);
begin
    lbNewDb.Font.Style := [fsUnderline,fsItalic];
end;

procedure TmainScreen.imgNewDbMouseLeave(Sender: TObject);
begin
    lbNewDb.Font.Style := [fsItalic];
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

procedure TmainScreen.lbNewDbMouseEnter(Sender: TObject);
begin
  lbNewDb.Font.Style := [fsUnderline,fsItalic];
end;

procedure TmainScreen.lbNewDbMouseLeave(Sender: TObject);
begin
    lbNewDb.Font.Style := [fsItalic];
end;

end.
