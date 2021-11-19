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
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 24
  end
  object tbConexao: TFDTable
    Active = True
    DetailFields = 'apelido;database;driverid;password;port;server;username'
    Connection = conConexao
    TableName = '"connection"'
    Left = 176
    Top = 24
    object tbConexaoapelido: TWideStringField
      FieldName = 'apelido'
      Origin = 'apelido'
    end
    object tbConexaoserver: TWideStringField
      FieldName = 'server'
      Origin = 'server'
    end
    object tbConexaousername: TWideStringField
      FieldName = 'username'
      Origin = 'username'
    end
    object tbConexaopassword: TWideStringField
      FieldName = 'password'
      Origin = '"password"'
      Size = 30
    end
    object tbConexaodatabase: TWideStringField
      FieldName = 'database'
      Origin = '"database"'
    end
    object tbConexaodriverid: TWideStringField
      FieldName = 'driverid'
      Origin = 'driverid'
      Size = 5
    end
    object tbConexaoport: TWideStringField
      FieldName = 'port'
      Origin = 'port'
      Size = 10
    end
  end
  object dsConexao: TDataSource
    DataSet = tbConexao
    Left = 280
    Top = 24
  end
  object queryDM: TFDQuery
    MasterSource = dsConexao
    MasterFields = 'apelido;database;driverid;password;server;username'
    Connection = conConexao
    Left = 360
    Top = 24
  end
end
