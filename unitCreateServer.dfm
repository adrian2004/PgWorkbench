object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form2'
  ClientHeight = 294
  ClientWidth = 429
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 272
    Top = 61
    Width = 28
    Height = 15
    Caption = 'Porta'
  end
  object Label2: TLabel
    Left = 272
    Top = 13
    Width = 32
    Height = 15
    Caption = 'Server'
  end
  object Label3: TLabel
    Left = 40
    Top = 109
    Width = 53
    Height = 15
    Caption = 'Username'
  end
  object Label4: TLabel
    Left = 40
    Top = 157
    Width = 50
    Height = 15
    Caption = 'Password'
  end
  object Label5: TLabel
    Left = 40
    Top = 61
    Width = 48
    Height = 15
    Caption = 'Database'
  end
  object Label6: TLabel
    Left = 40
    Top = 13
    Width = 41
    Height = 15
    Caption = 'Apelido'
  end
  object btNewDB: TButton
    Left = 133
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Registrar'
    TabOrder = 5
    OnClick = btNewDBClick
  end
  object btCancel: TButton
    Left = 229
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = btCancelClick
  end
  object txtNewPorta: TEdit
    Left = 272
    Top = 82
    Width = 121
    Height = 23
    Enabled = False
    ReadOnly = True
    TabOrder = 0
    Text = '5432'
  end
  object txtNewServer: TEdit
    Left = 272
    Top = 32
    Width = 121
    Height = 23
    Enabled = False
    ReadOnly = True
    TabOrder = 7
    Text = 'localhost'
  end
  object txtNewUsername: TEdit
    Left = 40
    Top = 130
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object txtNewPassword: TEdit
    Left = 40
    Top = 178
    Width = 121
    Height = 23
    PasswordChar = '*'
    TabOrder = 4
  end
  object txtNewDatabase: TEdit
    Left = 40
    Top = 82
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object txtNewApelido: TEdit
    Left = 40
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 1
  end
end
