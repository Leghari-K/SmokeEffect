object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Windows 11 Smoke Effect Demo Delphi'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 88
    Top = 88
    Width = 82
    Height = 15
    Caption = 'Test UI Controls'
  end
  object Button1: TButton
    Left = 232
    Top = 360
    Width = 153
    Height = 41
    Caption = 'Show Dialog'
    TabOrder = 0
    OnClick = onClickShowDialog
  end
  object Button2: TButton
    Left = 88
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
  end
  object CheckBox1: TCheckBox
    Left = 88
    Top = 160
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 2
  end
  object RadioButton1: TRadioButton
    Left = 232
    Top = 160
    Width = 113
    Height = 17
    Caption = 'RadioButton1'
    TabOrder = 3
  end
  object RadioButton2: TRadioButton
    Left = 368
    Top = 160
    Width = 113
    Height = 17
    Caption = 'RadioButton2'
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 88
    Top = 208
    Width = 377
    Height = 23
    TabOrder = 5
    Text = 'Some text in this edit box.'
  end
end
