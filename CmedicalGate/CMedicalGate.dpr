program CMedicalGate;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  SearchHospital in 'SearchHospital.pas' {frmSearchHospital},
  MainForm in 'MainForm.pas' {frmMain},
  ReservationDetails in 'dialogs\ReservationDetails.pas' {frmReservationDetails},
  ReservationList in 'ReservationList.pas' {frmReservationList},
  MGFormFactory in 'common\MGFormFactory.pas',
  Menu in 'common\Menu.pas' {MenuBox},
  MainFormBase in 'common\MainFormBase.pas' {frmMainBase},
  DetailBase in 'common\DetailBase.pas' {frmDetailBase},
  SearchResult in 'dialogs\SearchResult.pas' {frmSearchResult},
  Reservation in 'dialogs\Reservation.pas' {frmReservation};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
