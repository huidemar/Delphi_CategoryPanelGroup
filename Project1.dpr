program Project1;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {FrmMain},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
