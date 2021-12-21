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
  OnActivate = disableSmokeEffect
  OnDeactivate = enableSmokeEffect
  PixelsPerInch = 96
  TextHeight = 15
  object Button1: TButton
    Left = 232
    Top = 360
    Width = 153
    Height = 41
    Caption = 'Show Dialog'
    TabOrder = 0
    OnClick = onClickShowDialog
  end
end
