program InterviewSheet;

uses
  System.StartUpCopy,
  FMX.Forms,
  uReady in 'uReady.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
