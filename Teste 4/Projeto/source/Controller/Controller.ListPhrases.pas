unit Controller.ListPhrases;

interface

uses
  Interfaced.ListPhrases, System.Classes, Vcl.StdCtrls;

type

  TListPhrases = class(TInterfacedObject, IListPhrases)
  public
    constructor create;
    destructor destroy; override;
    class function new: IListPhrases;
    function AddPhrases(Phrase: String; List: TStringList; Sender: TObject)
      : IListPhrases;
    function SearchInPhrases(str: String; List: TStringList; Sender: TObject)
      : IListPhrases;
  end;

implementation

{ TListPhrases }

constructor TListPhrases.create;
begin

end;

destructor TListPhrases.destroy;
begin

  inherited;
end;

class function TListPhrases.new: IListPhrases;
begin
  result := self.create;
end;

function TListPhrases.AddPhrases(Phrase: String; List: TStringList;
  Sender: TObject): IListPhrases;
var
  count: Integer;
begin
  result := self;

  List.Add(Phrase);
  TMemo(Sender).Clear;
  for count := 0 to Pred(List.count) do
  begin
    TMemo(Sender).lines.Add(List[count])
  end;

end;

function TListPhrases.SearchInPhrases(str: String; List: TStringList;
  Sender: TObject): IListPhrases;
var
  count: Integer;
begin
  result := self;

  TMemo(Sender).Clear;
  for count := 0 to Pred(List.count) do
  begin
    if pos(str, List[count]) > 0 then
    begin
      TMemo(Sender).lines.Add(List[count])
    end
  end;

end;

end.
