program Project_dlltest;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit_simpleDLLTEST in 'Unit_simpleDLLTEST.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
=======
program Project_dlltest;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit_simpleDLLTEST in 'Unit_simpleDLLTEST.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

