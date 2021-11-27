program PgWorkbench;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {mainScreen},
  UnitDM in 'UnitDM.pas' {DataModule1: TDataModule},
  unitAddDB in 'unitAddDB.pas' {formAddDb},
  UnitNewDM in 'UnitNewDM.pas' {DataModule2: TDataModule},
  unitConfirmCon in 'unitConfirmCon.pas' {formConfirmCon},
  UnitQuery in 'UnitQuery.pas' {queryEditor},
  UnitSelectServer in 'UnitSelectServer.pas' {formSelectServer},
  UnitAlterDB in 'UnitAlterDB.pas' {formAlterDb},
  unitConfirmExclude in 'unitConfirmExclude.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TmainScreen, mainScreen);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TformAddDb, formAddDb);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TformConfirmCon, formConfirmCon);
  Application.CreateForm(TqueryEditor, queryEditor);
  Application.CreateForm(TformSelectServer, formSelectServer);
  Application.CreateForm(TformAlterDb, formAlterDb);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
