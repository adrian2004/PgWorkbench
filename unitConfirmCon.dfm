object formConfirmCon: TformConfirmCon
  Left = 0
  Top = 0
  Caption = 'Confirm'
  ClientHeight = 196
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object btConfirm: TButton
    Left = 104
    Top = 72
    Width = 129
    Height = 25
    Caption = 'Conectar'
    TabOrder = 0
    OnClick = btConfirmClick
  end
  object btCancelar: TButton
    Left = 256
    Top = 72
    Width = 129
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btCancelarClick
  end
end
