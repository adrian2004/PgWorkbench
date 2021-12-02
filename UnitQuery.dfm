object queryEditor: TqueryEditor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Editor SQL'
  ClientHeight = 544
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pgcQuery: TPageControl
    Left = 23
    Top = 8
    Width = 600
    Height = 425
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'SQL'
      object memoQuery1: TMemo
        Left = 0
        Top = 3
        Width = 589
        Height = 389
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
    Left = 409
    Top = 448
    Width = 94
    Height = 39
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
    Left = 522
    Top = 448
    Width = 94
    Height = 39
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
    Left = 27
    Top = 449
    Width = 360
    Height = 38
    TabOrder = 3
    object lbRows: TLabel
      Left = 8
      Top = 11
      Width = 3
      Height = 15
    end
  end
end
