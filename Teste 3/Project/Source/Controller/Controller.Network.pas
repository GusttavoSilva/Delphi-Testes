unit Controller.Network;

interface

uses
  Interfaced.INetwork, System.Classes, System.SysUtils, Vcl.StdCtrls;

type
  TNetwork = class(TInterfacedObject, INetwork)
  private

    FConectionsList: TStringList;
    FCapacityOfConnection: integer;
    ActiveConnections: integer;
    function ConnectionStillAvailable: Boolean;
    procedure VerificaLigacao(var CheckConection: Boolean;
      const VerifyConnectionNumber: integer; var RelatedConnections: string);
  public
    constructor Create(const NumberConnections: integer);
    destructor Destroy; override;
    class function New(const NumberConnections: integer): INetwork;

    function ConectionsList: TStringList;
    procedure Connect(const Conection1, Conection2: integer);
    function Query(const ElementVerify1, ElementVerify2: integer): String;
    procedure ListConnections(Sender: TObject);
  end;

implementation

{ TNetwork }

class function TNetwork.New(const NumberConnections: integer): INetwork;
begin
  Result := Self.Create(NumberConnections);
end;

constructor TNetwork.Create(const NumberConnections: integer);
begin
  FConectionsList := TStringList.Create;
  FCapacityOfConnection := NumberConnections;
end;

destructor TNetwork.Destroy;
begin
  FreeAndNil(FConectionsList);
  inherited;
end;

function TNetwork.ConectionsList: TStringList;
begin
  Result := FConectionsList;
end;

procedure TNetwork.Connect(const Conection1, Conection2: integer);
var
  Index: integer;
begin
  if (Conection1 > 0) and (Conection2 > 0) then
  begin
    if ConnectionStillAvailable then
    begin
      if not FConectionsList.Find(Conection1.ToString + '=' +
        Conection2.ToString, Index) then
      begin
        FConectionsList.AddPair(Conection1.ToString, Conection2.ToString);
        ActiveConnections := FConectionsList.Count;
      end;
    end
    else
      raise Exception.Create('Limite permitido excedido.');
  end
  else
    raise Exception.Create('Não é permitido valores negativos.');

end;

function TNetwork.ConnectionStillAvailable: Boolean;
begin
  Result := ActiveConnections <= FCapacityOfConnection;
end;

procedure TNetwork.ListConnections(Sender: TObject);
var
  Count: integer;
begin
  TMemo(Sender).Clear;

  for Count := 0 to Pred(ConectionsList.Count) do
  begin
    TMemo(Sender).Lines.Add(ConectionsList.KeyNames[Count] + '  <-->  ' +
      ConectionsList.ValueFromIndex[Count]);
  end;
end;

function TNetwork.Query(const ElementVerify1, ElementVerify2: integer): String;
var
  ConnectionElement1, ConnectionElement2: Boolean;
  ConnectionOne, ConnectionTwo: String;
begin
  ConnectionElement1 := False;
  ConnectionElement2 := False;
  if (ElementVerify1 > 0) and (ElementVerify2 > 0) then
  begin
    if ConnectionStillAvailable then
    begin
      VerificaLigacao(ConnectionElement1, ElementVerify1, ConnectionOne);
      VerificaLigacao(ConnectionElement2, ElementVerify2, ConnectionTwo);
    end
    else
      raise Exception.Create('Consulta fora do limite de conexões permitidas.');
  end
  else
    raise Exception.Create('Permitido apenas valores positivos.');

  if ConnectionElement1 then
    Result :=  'Conexão '+ ElementVerify1.ToString +' tem vinculo com: ' + ConnectionOne
  else
    Result := 'Conexão '+ ElementVerify1.ToString + 'não tem vinculo.';;

  if ConnectionElement2 then
    Result := Result + sLineBreak +  'Conexão '+ ElementVerify2.ToString +' tem vinculo com: ' + ConnectionTwo
  else
    Result := Result + sLineBreak + 'Conexão '+ ElementVerify2.ToString + 'não tem vinculo.';
end;

procedure TNetwork.VerificaLigacao(var CheckConection: Boolean;
  const VerifyConnectionNumber: integer; var RelatedConnections: string);
var
  Count: integer;
begin
  for Count := 0 to Pred(FConectionsList.Count) do
  begin
    if FConectionsList.KeyNames[Count].ToInteger = VerifyConnectionNumber then
    begin
      CheckConection := True;
      RelatedConnections := RelatedConnections + sLineBreak +
        FConectionsList.ValueFromIndex[Count];
    end;
    if FConectionsList.ValueFromIndex[Count].ToInteger = VerifyConnectionNumber
    then
    begin
      CheckConection := True;
      RelatedConnections := RelatedConnections + sLineBreak +
        FConectionsList.KeyNames[Count];
    end;
  end;
end;

end.
