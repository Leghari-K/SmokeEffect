//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "SmokeCPPMain.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
TForm *Back;

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{



}

//---------------------------------------------------------------------------
void __fastcall TForm1::onClickShowDialog(TObject *Sender)
{
    enableSmokeEffect(Form1);
	ShowMessage("Smoke effect is used to highlight dialogs");
    disableSmokeEffect();




}
//---------------------------------------------------------------------------


//---------------------------------------------------------------------------

void __fastcall TForm1::enableSmokeEffect(TForm1 *Form)
{
	Back =  new TForm (this);
	Back->Position = poMainFormCenter;
    Back->BoundsRect = Form1->GetClientRect();
    Back->Color = clBlack;
	Back->AlphaBlend = true;
	Back->AlphaBlendValue = 150;

	Back->SetBounds(Form->Left, Form->Top, Form->Width, Form->Height);
    Back->Show();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::disableSmokeEffect()
{
   Back->Hide();
}
