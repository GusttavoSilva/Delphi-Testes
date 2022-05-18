unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,

  Controller.ListPhrases;

type
  TForm1 = class(TForm)
    edt_AddPhrases: TEdit;
    btn_AddPhrases: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    btn_SearchInPhrases: TButton;
    edt_SearchInPhrases: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btn_AddPhrasesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_SearchInPhrasesClick(Sender: TObject);
  private
    { Private declarations }
    FList: TStringList;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_AddPhrasesClick(Sender: TObject);
begin
  TListPhrases.New.AddPhrases(edt_AddPhrases.Text, FList, Memo1);
end;

procedure TForm1.btn_SearchInPhrasesClick(Sender: TObject);
begin
  TListPhrases.New.SearchInPhrases(edt_SearchInPhrases.Text, FList, Memo2);

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FList);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FList := TStringList.Create();
end;

end.
