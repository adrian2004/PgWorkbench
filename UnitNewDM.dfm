object DataModule2: TDataModule2
  OldCreateOrder = True
  Height = 251
  Width = 486
  object conDb: TFDConnection
    Params.Strings = (
      'DriverID=PG')
    LoginPrompt = False
    Left = 8
    Top = 8
  end
  object dsNew: TDataSource
    DataSet = cdNew
    Left = 200
    Top = 8
  end
  object queryNewDM: TFDQuery
    MasterSource = dsNew
    Connection = conDb
    SQL.Strings = (
      
        'SELECT tablename as Tabelas FROM pg_catalog.pg_tables WHERE sche' +
        'maname != '#39'pg_catalog'#39' AND schemaname != '#39'information_schema'#39';')
    Left = 56
    Top = 8
  end
  object dspNew: TDataSetProvider
    DataSet = queryNewDM
    Left = 104
    Top = 8
  end
  object cdNew: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNew'
    Left = 152
    Top = 8
  end
  object queryMain: TFDQuery
    MasterSource = dsQuery
    Connection = conDb
    Left = 56
    Top = 82
  end
  object dsQuery: TDataSource
    DataSet = cdsQuery
    Left = 216
    Top = 88
  end
  object cdsQuery: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQuery'
    Left = 168
    Top = 88
  end
  object dspQuery: TDataSetProvider
    DataSet = queryMain
    Left = 112
    Top = 96
  end
end
