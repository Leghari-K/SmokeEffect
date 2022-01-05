unit SmokeDelphiForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)

    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    procedure onClickShowDialog(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private

  var
    oldFormColor: TColor;

  var
    Smoke: TForm;
  public
    procedure EnableSmokeEffect;
    procedure disableSmokeEffect;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.disableSmokeEffect;
begin
  Smoke.FreeOnRelease;
  Smoke.Release;
  Smoke := nil;
end;

procedure TForm1.EnableSmokeEffect;
begin
  Smoke := TForm.Create(nil);
  Smoke.Position := poMainFormCenter;
  Smoke.BorderStyle := bsNone;
  Smoke.AlphaBlend := True;
  Smoke.AlphaBlendValue := 150;
  Smoke.Color := clBlack;
  Smoke.SetBounds(Form.Left, Form.Top, Form.Width - 15, Form.Height);
  Smoke.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  oldFormColor := Form1.Color;
end;

procedure TForm1.onClickShowDialog(Sender: TObject);
begin
  EnableSmokeEffect();
  ShowMessage('Smoke effect is used to highlight dialogs');
  disableSmokeEffect();
end;

end.
