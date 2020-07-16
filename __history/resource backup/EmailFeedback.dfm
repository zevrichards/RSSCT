object EmailForm: TEmailForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Provide Feedback'
  ClientHeight = 170
  ClientWidth = 283
  Color = clBtnFace
  Constraints.MaxHeight = 208
  Constraints.MaxWidth = 307
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 283
    Height = 16
    Align = alTop
    Alignment = taCenter
    Caption = 'Only'
    ExplicitWidth = 25
  end
  object Label2: TLabel
    Left = 0
    Top = 16
    Width = 283
    Height = 16
    Align = alTop
    Alignment = taCenter
    Caption = 'Please tell us what we can do to improve.'
    ExplicitWidth = 239
  end
  object Label3: TLabel
    Left = 8
    Top = 119
    Width = 107
    Height = 16
    Caption = '255 characters left'
  end
  object Memo1: TMemo
    Left = 8
    Top = 32
    Width = 267
    Height = 89
    MaxLength = 255
    TabOrder = 0
    OnChange = Memo1Change
  end
  object EmailButton: TButton
    Left = 80
    Top = 137
    Width = 113
    Height = 25
    Caption = 'Submit Feedback'
    TabOrder = 1
    OnClick = EmailButtonClick
  end
end
