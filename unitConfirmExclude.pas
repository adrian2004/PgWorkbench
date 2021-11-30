unit unitConfirmExclude;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    btnSim: TButton;
    btnNao: TButton;
    procedure btnNaoClick(Sender: TObject);
    procedure btnSimClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UnitPrincipal, UnitDM;

procedure TForm1.btnNaoClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.btnSimClick(Sender: TObject);
begin

  UnitDM.DataModule1.queryDM.Close;
  UnitDM.DataModule1.queryDM.SQL.Clear;
  UnitDM.DataModule1.queryDM.SQL.Add('DELETE FROM connection WHERE id_con = ' + mainScreen.gridListDB.Fields[7].AsString);
  UnitDM.DataModule1.queryDM.ExecSQL;

  ShowMessage('Servidor deletado!');

  UnitPrincipal.mainScreen.gridListDB.DataSource.DataSet.Refresh;

  Close;
end;

end.
