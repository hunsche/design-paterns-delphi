unit Interfaces;

interface

type
  IHamburger = interface
    function GetValue: Double;
  end;

  ISoda = interface
    function GetValue: Double;
  end;

  IFactoryCompany = interface
    function GetHamburger: IHamburger;
    function GetSoda: ISoda;
  end;

implementation

end.
