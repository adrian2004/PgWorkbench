object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 266
  ClientWidth = 622
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
    Left = 152
    Top = 72
    Width = 303
    Height = 31
    Caption = 'Deseja excluir esse servidor?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSim: TButton
    Left = 136
    Top = 152
    Width = 89
    Height = 41
    Caption = 'Sim'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnSimClick
  end
  object btnNao: TButton
    Left = 392
    Top = 152
    Width = 91
    Height = 41
    Caption = 'N'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnNaoClick
  end
end
