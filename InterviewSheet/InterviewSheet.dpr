program InterviewSheet;

uses
  System.StartUpCopy,
  FMX.Forms,
  uReady in 'uReady.pas' {frmReady},
  uStart in 'uStart.pas' {frmStart};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmReady, frmReady);
  Application.CreateForm(TfrmStart, frmStart);
  Application.Run;
end.
