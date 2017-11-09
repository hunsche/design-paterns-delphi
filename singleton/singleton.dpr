program singleton;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  mySingleton in 'mySingleton.pas';

var
  pause: integer;

begin
  TMySingleton.GetInstance.Value := 'Design Patern';
  Writeln(TMySingleton.GetInstance.Value);
  Readln(pause);
end.
