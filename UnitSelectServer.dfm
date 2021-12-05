object formSelectServer: TformSelectServer
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'formSelectServer'
  ClientHeight = 419
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 95
    Top = 8
    Width = 423
    Height = 37
    Caption = 'O que deseja fazer com esta base'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btConnSS: TButton
    Left = 95
    Top = 288
    Width = 90
    Height = 41
    Caption = 'Conectar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btConnSSClick
  end
  object btEditSS: TButton
    Left = 271
    Top = 288
    Width = 90
    Height = 41
    Caption = 'Alterar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btEditSSClick
  end
  object btDelSS: TButton
    Left = 447
    Top = 288
    Width = 90
    Height = 41
    Caption = 'Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btDelSSClick
  end
  object btCancSS: TButton
    Left = 271
    Top = 352
    Width = 90
    Height = 41
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btCancSSClick
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 48
    Width = 577
    Height = 225
    DataSource = DataModule1.dsConexao2
    DrawingStyle = gdsClassic
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
