object queryEditor: TqueryEditor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Editor SQL'
  ClientHeight = 658
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
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
      Caption = 'P'#225'gina 1'
      object memoQuery1: TMemo
        Left = 0
        Top = 3
        Width = 589
        Height = 389
        Lines.Strings = (
          'memoQuery1')
        TabOrder = 0
      end
    end
  end
  object Button1: TButton
    Left = 548
    Top = 450
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 448
    Top = 450
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = Button2Click
  end
end
