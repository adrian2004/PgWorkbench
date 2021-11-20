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
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 384
    Top = 48
  end
  object queryNewDM: TFDQuery
    MasterSource = DataSource1
    Connection = conDb
    SQL.Strings = (
      
        'SELECT tablename FROM pg_catalog.pg_tables WHERE schemaname != '#39 +
        'pg_catalog'#39' AND schemaname != '#39'information_schema'#39';')
    Left = 136
    Top = 40
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = queryNewDM
    Left = 224
    Top = 48
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 328
    Top = 48
  end
end
