unit mySingleton;

interface

type

  TMySingleton = class
  private
    FValue: string;
    class var FInstance: TMySingleton;
  public
    property Value: string read FValue write FValue;
    class function GetInstance: TMySingleton;
    class procedure Release;
  end;

implementation

{ TMySingleton }

class function TMySingleton.GetInstance: TMySingleton;
begin
  if not assigned(FInstance) then
    FInstance := TMySingleton.Create;
  Result := FInstance;
end;

class procedure TMySingleton.Release;
begin
  FInstance.Free;
end;

initialization

finalization
  TMySingleton.Release;

end.
