unit SmokeDelphi;

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


    var oldFormColor: TColor;
    var Back: TForm;
  public
     procedure EnableSmokeEffect2(Form: TForm);
     procedure disableSmokeEffect();


  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.disableSmokeEffect();
// This can be called from the OnActivate event handler
begin
    Back.Close();
end;


procedure TForm1.EnableSmokeEffect2(Form: TForm);
// This can be called from the OnDeactivate event handler

begin
  Back := TForm.Create(nil);
  try
    Back.Position := poMainFormCenter;
    Back.BorderStyle := bsNone;
    Back.AlphaBlend := true;
    Back.AlphaBlendValue := 150;
    Back.Color := clBlack;
    Back.SetBounds(Form.Left, Form.Top, Form.Width-15, Form.Height);
    Back.Show;

  finally

  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  oldFormColor := Form1.Color;
end;

procedure TForm1.onClickShowDialog(Sender: TObject);
begin
    EnableSmokeEffect2(Form1);
     var
    dialogMessage := 'Smoke effect is used to highlight dialogs';
    ShowMessage(dialogMessage);

    disableSmokeEffect();
end;






end.
