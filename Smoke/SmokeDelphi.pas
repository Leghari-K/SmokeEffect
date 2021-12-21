unit SmokeDelphi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure enableSmokeEffect(Sender: TObject);
    procedure disableSmokeEffect(Sender: TObject);
    procedure onClickShowDialog(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.disableSmokeEffect(Sender: TObject);
begin

   var formColor: TColor;
   formColor := clBtnFace;

   Form1.Color := formColor;
end;

procedure TForm1.enableSmokeEffect(Sender: TObject);

begin

   var smokeEffect: TColor;
   smokeEffect := RGB(175,175,175);

   Form1.Color := smokeEffect;

   var dialogMessage := 'Smoke effect is used to highlight dialogs';

	ShowMessage(dialogMessage);

    Form1.Activate();
end;

procedure TForm1.onClickShowDialog(Sender: TObject);
begin
    Form1.DeActivate();
end;

end.
