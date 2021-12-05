program PgWorkbench;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {mainScreen},
  UnitDM in 'UnitDM.pas' {DataModule1: TDataModule},
  unitAddDB in 'unitAddDB.pas' {Novo},
  UnitNewDM in 'UnitNewDM.pas' {DataModule2: TDataModule},
  UnitQuery in 'UnitQuery.pas' {queryEditor},
  UnitSelectServer in 'UnitSelectServer.pas' {formSelectServer},
  UnitAlterDB in 'UnitAlterDB.pas' {Alterar},
  unitConfirmExclude in 'unitConfirmExclude.pas' {Confirmar},
  unitCreateServer in 'unitCreateServer.pas' {Criar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TmainScreen, mainScreen);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TNovo, Novo);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TqueryEditor, queryEditor);
  Application.CreateForm(TformSelectServer, formSelectServer);
  Application.CreateForm(TAlterar, Alterar);
  Application.CreateForm(TConfirmar, Confirmar);
  Application.CreateForm(TCriar, Criar);
  Application.Run;
end.
