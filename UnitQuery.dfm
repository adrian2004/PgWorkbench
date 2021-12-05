object queryEditor: TqueryEditor
  Left = 304
  Top = 87
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Editor SQL'
  ClientHeight = 583
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pgcQuery: TPageControl
    Left = 16
    Top = 8
    Width = 600
    Height = 489
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'SQL'
      object memoQuery1: TMemo
        Left = 1
        Top = 3
        Width = 589
        Height = 453
        TabOrder = 0
      end
    end
    object tabResult: TTabSheet
      Caption = 'Resultado'
      ImageIndex = 1
      object gridQueryResult: TDBGrid
        Left = 0
        Top = 3
        Width = 589
        Height = 389
        DataSource = DataModule2.dsQuery
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
  end
  object Button1: TButton
    Left = 537
    Top = 527
    Width = 75
    Height = 32
    HelpType = htKeyword
    Caption = 'Executar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 456
    Top = 527
    Width = 75
    Height = 31
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object pnQuery: TPanel
    Left = 16
    Top = 512
    Width = 425
    Height = 63
    TabOrder = 3
    object lbRows: TLabel
      Left = 11
      Top = 10
      Width = 3
      Height = 15
    end
    object lbError: TLabel
      Left = 11
      Top = 31
      Width = 3
      Height = 15
    end
  end
end
