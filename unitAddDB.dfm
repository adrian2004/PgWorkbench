object formAddDb: TformAddDb
  Left = 0
  Top = 0
  Caption = 'formAddDb'
  ClientHeight = 433
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 128
    Top = 67
    Width = 41
    Height = 15
    Caption = 'Apelido'
  end
  object Label2: TLabel
    Left = 128
    Top = 117
    Width = 32
    Height = 15
    Caption = 'Server'
  end
  object Label3: TLabel
    Left = 128
    Top = 165
    Width = 53
    Height = 15
    Caption = 'Username'
  end
  object Label4: TLabel
    Left = 128
    Top = 213
    Width = 50
    Height = 15
    Caption = 'Password'
  end
  object Label5: TLabel
    Left = 128
    Top = 261
    Width = 48
    Height = 15
    Caption = 'Database'
  end
  object btNewDB: TButton
    Left = 128
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Registrar'
    TabOrder = 0
    OnClick = btNewDBClick
  end
  object btCancel: TButton
    Left = 224
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btCancelClick
  end
  object txtNewApelido: TEdit
    Left = 128
    Top = 88
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object txtNewServer: TEdit
    Left = 128
    Top = 136
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object txtNewUsername: TEdit
    Left = 128
    Top = 186
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object txtNewPassword: TEdit
    Left = 128
    Top = 234
    Width = 121
    Height = 23
    TabOrder = 5
  end
  object txtNewDatabase: TEdit
    Left = 128
    Top = 282
    Width = 121
    Height = 23
    TabOrder = 6
  end
end
