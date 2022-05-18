unit Interfaced.ListPhrases;

interface

uses
  System.Classes;

type
  IListPhrases = interface
    ['{C80F50D6-7567-4923-B5B6-266FF5A52E3A}']
    function AddPhrases(Phrase: String; List: TStringList; Sender: TObject)
      : IListPhrases;
    function SearchInPhrases(str: String; List: TStringList; Sender: TObject)
      : IListPhrases;
  end;

implementation

end.
