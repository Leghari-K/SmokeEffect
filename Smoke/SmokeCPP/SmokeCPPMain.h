//---------------------------------------------------------------------------

#ifndef SmokeCPPMainH
#define SmokeCPPMainH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TButton *Button1;
	void __fastcall onClickShowDialog(TObject *Sender);
	void __fastcall enableSmokeEffect(TObject *Sender);
	void __fastcall disableSmokeEffect(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
