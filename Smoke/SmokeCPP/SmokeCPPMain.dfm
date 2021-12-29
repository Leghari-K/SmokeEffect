object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Windows 11 Smoke Effect Demo'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 64
    Top = 72
    Width = 82
    Height = 15
    Caption = 'Test UI Controls'
  end
  object Button1: TButton
    Left = 240
    Top = 328
    Width = 137
    Height = 57
    Caption = 'Show Dialog'
    TabOrder = 0
    OnClick = onClickShowDialog
  end
  object Button2: TButton
    Left = 64
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
  end
  object CheckBox1: TCheckBox
    Left = 64
    Top = 160
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 2
  end
  object RadioButton1: TRadioButton
    Left = 280
    Top = 160
    Width = 113
    Height = 17
    Caption = 'RadioButton1'
    TabOrder = 3
  end
  object RadioButton2: TRadioButton
    Left = 424
    Top = 160
    Width = 113
    Height = 17
    Caption = 'RadioButton2'
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 64
    Top = 216
    Width = 457
    Height = 23
    TabOrder = 5
    Text = 
      'Smoke Effect uses dim/transparnt Forms/Form content to highlight' +
      ' dialogs.'
  end
end
