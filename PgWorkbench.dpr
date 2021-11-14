program PgWorkbench;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {mainScreen},
  UnitDM in 'UnitDM.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TmainScreen, mainScreen);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
