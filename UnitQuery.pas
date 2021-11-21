unit UnitQuery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.DBCtrls;

type
  TqueryEditor = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    memoQuery: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  queryEditor: TqueryEditor;

implementation

{$R *.dfm}

end.
