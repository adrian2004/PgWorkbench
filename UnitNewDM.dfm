object DataModule2: TDataModule2
  Height = 251
  Width = 486
  PixelsPerInch = 120
  object conDb: TFDConnection
    Params.Strings = (
      'DriverID=PG')
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object FDTable1: TFDTable
    Connection = conDb
    Left = 128
    Top = 40
  end
  object DataSource1: TDataSource
    Left = 200
    Top = 40
  end
  object queryNewDM: TFDQuery
    MasterSource = DataSource1
    Connection = conDb
    Left = 280
    Top = 40
  end
end
