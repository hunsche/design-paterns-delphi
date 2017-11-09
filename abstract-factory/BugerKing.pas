unit BugerKing;

interface

uses Interfaces;

type
  TPepsi = class(TInterfacedObject, ISoda)
    function GetValue: Double;
  end;

  TWhopper = class(TInterfacedObject, IHamburger)
    function GetValue: Double;
  end;

  TBurgerKing = class(TInterfacedObject, IFactoryCompany)
    function GetHamburger: IHamburger;
    function GetSoda: ISoda;
  end;


implementation

{ TBurgerKing }

function TBurgerKing.GetHamburger: IHamburger;
begin
  Result := TWhopper.Create;
end;

function TBurgerKing.GetSoda: ISoda;
begin
  Result := TPepsi.Create;
end;

{ TWhopper }

function TWhopper.GetValue: Double;
begin
  Result := 15.00;
end;

{ TPepsi }

function TPepsi.GetValue: Double;
begin
  Result := 4.00;
end;

end.
