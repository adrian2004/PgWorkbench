unit UnitQuery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TqueryEditor = class(TForm)
    pgcQuery: TPageControl;
    TabSheet1: TTabSheet;
    memoQuery1: TMemo;
    Button1: TButton;
    Button2: TButton;
    tabResult: TTabSheet;
    gridQueryResult: TDBGrid;
    pnQuery: TPanel;
    lbRows: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  queryEditor: TqueryEditor;

implementation

{$R *.dfm}

uses UnitNewDM, UnitPrincipal;

procedure TqueryEditor.Button1Click(Sender: TObject);
begin
  UnitNewDM.DataModule2.cdsQuery.Close;
  UnitNewDM.DataModule2.queryMain.SQL.Add(memoQuery1.Text);

  if (memoQuery1.Text[1] in ['s','S']) then
  begin
    UnitNewDM.DataModule2.queryMain.Open;
    UnitNewDM.DataModule2.cdsQuery.Open;
    pgcQuery.ActivePageIndex := 1;
    lbRows.Caption := UnitNewDM.DataModule2.queryMain.RowsAffected.ToString + ' linhas retornadas';
  end;
  if (memoQuery1.Text[1] in ['i','I']) then
  begin
    UnitNewDM.DataModule2.queryMain.ExecSQL;
    lbRows.Caption := UnitNewDM.DataModule2.queryMain.RowsAffected.ToString + ' linhas afetadas';
  end;
  if (memoQuery1.Text[1] in ['c','C']) then
  begin
    UnitNewDM.DataModule2.queryMain.ExecSQL;
    lbRows.Caption := UnitNewDM.DataModule2.queryMain.RowsAffected.ToString + ' linhas afetadas';
  end;
  if (memoQuery1.Text[1] in ['u','U']) then
  begin
    UnitNewDM.DataModule2.queryMain.ExecSQL;

    lbRows.Caption := UnitNewDM.DataModule2.queryMain.RowsAffected.ToString + ' linhas afetadas';
  end;

  UnitPrincipal.mainScreen.gridListDB.DataSource.DataSet.Refresh;
  UnitPrincipal.mainScreen.gridListData.DataSource.DataSet.Refresh;
  UnitNewDM.DataModule2.queryMain.SQL.Clear;
end;

procedure TqueryEditor.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TqueryEditor.FormShow(Sender: TObject);
begin
  pgcQuery.ActivePageIndex := 0;
end;

end.
