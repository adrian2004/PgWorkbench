object queryEditor: TqueryEditor
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Editor SQL'
  ClientHeight = 433
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 23
    Top = 8
    Width = 600
    Height = 425
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'P'#225'gina 1'
      object memoQuery: TDBMemo
        Left = 16
        Top = 16
        Width = 561
        Height = 376
        TabOrder = 0
      end
    end
  end
end
