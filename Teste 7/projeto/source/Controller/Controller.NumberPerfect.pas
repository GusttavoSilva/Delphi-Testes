unit Controller.NumberPerfect;

interface

uses
  Interfaced.NumberPerfect, System.SysUtils, System.Classes, Vcl.StdCtrls;

type
  TNumberPerfect = class(TInterfacedObject, INumberPerfect)
  private
    FListNumbersToAnalyze: array of integer;
    FListNumbersToSum: array of integer;
    FLista: TStringList;
  public
    constructor create;
    destructor destroy; override;
    class function new: INumberPerfect;
    function NumbersToAnalyze(Sender: TObject): INumberPerfect;
    function ListNumbersToAnalyze(strNumbers: string): INumberPerfect;
    function CalculatePrefect(Number: integer;
      AnalyzedNumbers: array of integer): String;
  end;

implementation

{ TNumberPerfect }

constructor TNumberPerfect.create;
begin
  FLista := TStringList.create;
end;

destructor TNumberPerfect.destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

class function TNumberPerfect.new: INumberPerfect;
begin
  result := self.create;
end;

function TNumberPerfect.ListNumbersToAnalyze(strNumbers: string)
  : INumberPerfect;
var
  Number, iCountArray: integer;
begin
  result := self;
  iCountArray := 0;
  while Pos(';', strNumbers) > 0 do
  begin
    Number := StrToInt(Copy(strNumbers, 0, Pos(';', strNumbers) - 1));
    strNumbers := Copy(strNumbers, Pos(';', strNumbers) + Length(';'),
      Length(strNumbers));

    SetLength(FListNumbersToAnalyze, iCountArray + 1);
    FListNumbersToAnalyze[iCountArray] := Number;
    iCountArray := iCountArray + 1;
  end;
end;

function TNumberPerfect.NumbersToAnalyze(Sender: TObject): INumberPerfect;
var
  iCountNumberToAnalyze, icount, count, INumberPerfect: integer;
begin
  result := self;
  for iCountNumberToAnalyze := 0 to Pred(Length(FListNumbersToAnalyze)) do
  begin

    count := 0;
    for icount := 1 to FListNumbersToAnalyze[iCountNumberToAnalyze] do
    begin
      if (FListNumbersToAnalyze[iCountNumberToAnalyze] mod icount) = 0 then
      begin
        if icount <> FListNumbersToAnalyze[iCountNumberToAnalyze] then
        begin
          SetLength(FListNumbersToSum, count + 1);
          FListNumbersToSum[count] := icount;
          count := count + 1;
        end;

      end;

    end;

    FLista.AddPair(IntToStr(FListNumbersToAnalyze[iCountNumberToAnalyze]),
      CalculatePrefect(FListNumbersToAnalyze[iCountNumberToAnalyze],
      FListNumbersToSum));
  end;

  TMemo(Sender).Clear;
  for INumberPerfect := 0 to Pred(FLista.count) do
  begin
    TMemo(Sender).Lines.Add(FLista.KeyNames[INumberPerfect] + '  <-->  ' +
      FLista.ValueFromIndex[INumberPerfect]);
  end;
end;

function TNumberPerfect.CalculatePrefect(Number: integer;
  AnalyzedNumbers: array of integer): String;
var
  soma, count: integer;
begin
  soma := 0;
  for count := 0 to Pred(Length(AnalyzedNumbers)) do
  begin
    soma := soma + AnalyzedNumbers[count];
  end;

  if soma = Number then
    result := 'Número Perfeito.'
  else
    result := 'Número Não Perfeito.';

end;

end.
