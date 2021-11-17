object DataModule1: TDataModule1
  Height = 251
  Width = 486
  PixelsPerInch = 120
  object conConexao: TFDConnection
    Params.Strings = (
      'Server=127.0.0.1'
      'User_Name=postgres'
      'Password=1203'
      'Database=pgworkbench'
      'DriverID=PG')
    LoginPrompt = False
    Left = 64
    Top = 24
  end
  object tbConexao: TFDTable
    Connection = conConexao
    TableName = '"connection"'
    Left = 176
    Top = 24
  end
  object dsConexao: TDataSource
    DataSet = tbConexao
    Left = 272
    Top = 24
  end
  object conDb: TFDConnection
    Params.Strings = (
      'Server=127.0.0.1'
      'User_Name=postgres'
      'Password=1203'
      'Database=pgworkbench'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 120
  end
end
