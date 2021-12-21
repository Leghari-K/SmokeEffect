//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "SmokeCPPMain.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{



}
//---------------------------------------------------------------------------
void __fastcall TForm1::onClickShowDialog(TObject *Sender)
{

    Form1->Deactivate();


}
//---------------------------------------------------------------------------

void __fastcall TForm1::enableSmokeEffect(TObject *Sender)
{

	TColor smokeEffect{RGB(175,175,175)};

	Form1->Color = smokeEffect;
	ShowMessage("Smoke effect is used to highlight dialogs");
    Form1->Activate();

}
//---------------------------------------------------------------------------

void __fastcall TForm1::disableSmokeEffect(TObject *Sender)
{
   TColor formColor{clBtnFace};
   Form1->Color = formColor;
}
//---------------------------------------------------------------------------

