unit McDonald;

interface

uses Interfaces;

type
  TCoca = class(TInterfacedObject, ISoda)
    function GetValue: Double;
  end;

  TBigMac = class(TInterfacedObject, IHamburger)
    function GetValue: Double;
  end;

  TMcDonald = class(TInterfacedObject, IFactoryCompany)
    function GetHamburger: IHamburger;
    function GetSoda: ISoda;
  end;

implementation

{ TMcDonald }

function TMcDonald.GetHamburger: IHamburger;
begin
  Result := TBigMac.Create;
end;

function TMcDonald.GetSoda: ISoda;
begin
  Result := TCoca.Create;
end;

{ TBigMac }

function TBigMac.GetValue: Double;
begin
  Result := 20.00;
end;

{ TCoca }

function TCoca.GetValue: Double;
begin
  Result := 5.00;
end;

end.
