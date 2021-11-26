unit UnitQuery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.DBCtrls;

type
  TqueryEditor = class(TForm)
    pgcQuery: TPageControl;
    TabSheet1: TTabSheet;
    memoQuery1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  queryEditor: TqueryEditor;

implementation

{$R *.dfm}

uses UnitNewDM;

procedure TqueryEditor.Button1Click(Sender: TObject);
begin
  UnitNewDM.DataModule2.queryMain.SQL.Add(memoQuery1.Text);
  UnitNewDM.DataModule2.queryMain.ExecSQL;
  ShowMessage('Executado com sucesso!');
end;

procedure TqueryEditor.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
