unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Controller.numberPerfect, Vcl.Mask, Vcl.ExtCtrls;

type
  Tfrm_NumberPerfect = class(TForm)
    mem_ListNumber: TMemo;
    btn_Verify: TButton;
    edt_NumberVerifyPerfect: TLabeledEdit;
    procedure btn_VerifyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_NumberPerfect: Tfrm_NumberPerfect;

implementation

{$R *.dfm}

procedure Tfrm_NumberPerfect.btn_VerifyClick(Sender: TObject);
begin
  TNumberPerfect.new.ListNumbersToAnalyze(edt_NumberVerifyPerfect.text)
    .NumbersToAnalyze(mem_ListNumber);
end;

end.
