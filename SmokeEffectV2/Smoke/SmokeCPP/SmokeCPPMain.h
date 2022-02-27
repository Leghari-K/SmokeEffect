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
	TLabel *Label1;
	TButton *Button2;
	TCheckBox *CheckBox1;
	TRadioButton *RadioButton1;
	TRadioButton *RadioButton2;
	TEdit *Edit1;
	void __fastcall onClickShowDialog(TObject *Sender);
	void __fastcall enableSmokeEffect(TForm1 *Form1);
	void __fastcall disableSmokeEffect(void);
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);

	
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
