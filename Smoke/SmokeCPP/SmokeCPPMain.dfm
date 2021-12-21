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
  OnActivate = disableSmokeEffect
  OnDeactivate = enableSmokeEffect
  PixelsPerInch = 96
  TextHeight = 15
  object Button1: TButton
    Left = 240
    Top = 328
    Width = 137
    Height = 57
    Caption = 'Show Dialog'
    TabOrder = 0
    OnClick = onClickShowDialog
  end
end
