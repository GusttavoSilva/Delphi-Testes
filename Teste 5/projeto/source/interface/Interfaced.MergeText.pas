unit Interfaced.MergeText;

interface

type
  IMergeText = interface
    ['{A93E54B2-EF80-45B2-A3A1-30D1B6067478}']
    function GetStrNumber(const S: string): string;
    function MergedText(const Str1, str2: string; Sender: TObject): IMergeText;
    function QuantCaracAndNumber(Str: String; strCarac, StrNumber: TObject)
      : IMergeText;

  end;

implementation

end.
