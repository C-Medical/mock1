program InterviewSheet;





{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  uReady in 'uReady.pas' {frmReady},
  uStart in 'uStart.pas' {frmStart},
  uPasswd in 'uPasswd.pas' {frmPasswd},
  uReceiptSheet in 'uReceiptSheet.pas' {frmReceiptSheet};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmReady, frmReady);
  Application.CreateForm(TfrmReceiptSheet, frmReceiptSheet);
  Application.Run;
end.


