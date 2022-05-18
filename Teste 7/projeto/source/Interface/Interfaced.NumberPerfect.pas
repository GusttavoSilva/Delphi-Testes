unit Interfaced.NumberPerfect;

interface

type

  INumberPerfect = interface
    ['{A284D97F-8769-4660-A9F3-4D378CBE2422}']
    function ListNumbersToAnalyze(strNumbers: string): INumberPerfect;
    function NumbersToAnalyze( Sender: TObject): INumberPerfect;
    function CalculatePrefect(Number: integer;
      AnalyzedNumbers: array of integer): String;
  end;

implementation

end.
