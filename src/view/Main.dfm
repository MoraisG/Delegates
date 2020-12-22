object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 120
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnNormal: TButton
    Left = 24
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Normal'
    TabOrder = 0
    OnClick = btnNormalClick
  end
  object btnAcess: TButton
    Left = 24
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Inj. Acess'
    TabOrder = 1
    OnClick = btnAcessClick
  end
  object btnFin: TButton
    Left = 24
    Top = 103
    Width = 75
    Height = 25
    Caption = 'Inj. Fin'
    TabOrder = 2
    OnClick = btnFinClick
  end
  object btnAmbos: TButton
    Left = 24
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Inj. Ambos'
    TabOrder = 3
    OnClick = btnAmbosClick
  end
end
