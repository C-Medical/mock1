program InterviewSheet;





{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  uReady in 'uReady.pas' {frmReady},
  uStart in 'uStart.pas' {frmStart},
  uPasswd in 'uPasswd.pas' {frmPasswd},
  uReceiptSheet in 'uReceiptSheet.pas' {frmReceiptSheet},
  uCommon in 'uCommon.pas',
  uInterview in 'uInterview.pas' {frmInterview},
  uFrm1 in 'uFrm1.pas' {frm1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  Application.CreateForm(TfrmReady, frmReady);
  Application.Run;
end.


