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
    procedure FormDestroy(Sender: TObject);

  private
    Smoke: TForm;
  public
    procedure EnableSmokeEffect;
    procedure DisableSmokeEffect;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DisableSmokeEffect;
begin
  Smoke.Hide;
end;

procedure TForm1.EnableSmokeEffect;
begin
  Smoke.SetBounds(Self.Left, Self.Top, Self.Width - 15, Self.Height - 8);
  Smoke.Top := Self.Top;
  Smoke.Left := Self.Left + 7;

  Smoke.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Smoke := TForm.Create(nil);
  Smoke.Position := poDesigned;
  Smoke.BorderStyle := bsNone;
  Smoke.AlphaBlend := True;
  Smoke.AlphaBlendValue := 150;
  Smoke.Color := clBlack;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Smoke.Release
end;

procedure TForm1.onClickShowDialog(Sender: TObject);
begin
  EnableSmokeEffect();
  ShowMessage('Smoke effect is used to highlight dialogs');
  DisableSmokeEffect();
end;

end.
