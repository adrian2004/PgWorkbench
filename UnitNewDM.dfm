object DataModule2: TDataModule2
  Height = 328
  Width = 486
  PixelsPerInch = 120
  object conDb: TFDConnection
    Params.Strings = (
      'DriverID=PG')
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object dsNew: TDataSource
    DataSet = cdNew
    Left = 336
    Top = 40
  end
  object queryNewDM: TFDQuery
    MasterSource = dsNew
    Connection = conDb
    SQL.Strings = (
      
        'SELECT tablename as Tabelas FROM pg_catalog.pg_tables WHERE sche' +
        'maname != '#39'pg_catalog'#39' AND schemaname != '#39'information_schema'#39';')
    Left = 144
    Top = 56
  end
  object dspNew: TDataSetProvider
    DataSet = queryNewDM
    Left = 224
    Top = 40
  end
  object cdNew: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNew'
    Left = 280
    Top = 48
  end
  object queryAlterDM: TFDQuery
    Connection = conDb
    Left = 136
    Top = 128
  end
  object queryMain: TFDQuery
    Connection = conDb
    Left = 128
    Top = 224
  end
end
