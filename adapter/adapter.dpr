program adapter;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Pessoa in 'Pessoa.pas';

var
  pause: integer;
  Pessoa: TPessoa;
  AdapterPessoa: TAdapterPessoa;

begin
  Pessoa := TPessoa.Create;
  AdapterPessoa := TAdapterPessoa.Create(Pessoa);
  Writeln(AdapterPessoa.GetName);
  Readln(pause);
end.
