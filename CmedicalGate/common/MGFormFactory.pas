unit MGFormFactory;

interface

uses
  FMX.Forms,
  MainForm,
  Reservation, ReservationDetails, ReservationList,
  SearchHospital, SearchResult;

type
  TMGFormFactroy = class
  private
    procedure ShowDialog(form:TForm);
  public
    procedure Open_TopPage;
    procedure HideMenu;

    procedure Open_Reservation(hospNm: String);
    procedure Open_ReservationList;
    procedure Open_ReservationDetails();
    procedure Open_SearchHospitalDialog();
    procedure Open_HospitalListDialog;
  end;

var
  g_FormFactory: TMGFormFactroy;

implementation

{ TMGFormFactroy }

// show or showmodal�̂ǂ�����g���ׂ����s���Ȃ̂ŁA���\�b�h���o���Ă���
procedure TMGFormFactroy.ShowDialog(form:TForm);
begin
  form.Show;
end;

(* TopPage *)
procedure TMGFormFactroy.Open_TopPage();
begin
  ShowDialog(frmMain);
end;

(* Menu�B�� *)
procedure TMGFormFactroy.HideMenu;
begin
  frmMain.mlvMenu.HideMaster;
end;


(* �\����{ *)
procedure TMGFormFactroy.Open_Reservation(hospNm: String);
begin
  if not Assigned(frmReservation) then
      frmReservation := TfrmReservation.Create(Application);
  frmReservation.SetHospitalProp(hospNm);
  ShowDialog(frmReservation);
end;

(* �\��ꗗ *)
procedure TMGFormFactroy.Open_ReservationList();
begin
  if not Assigned(frmReservationList) then
      frmReservationList := TfrmReservationList.Create(Application);
  ShowDialog(frmReservationList);
end;

(* �\��ڍ� *)
procedure TMGFormFactroy.Open_ReservationDetails();
begin
  if not Assigned(frmReservationDetails) then
      frmReservationDetails := TfrmReservationDetails.Create(Application);
  ShowDialog(frmReservationDetails);
end;

(* �a�@���� *)
procedure TMGFormFactroy.Open_SearchHospitalDialog();
begin
  if not Assigned(frmSearchHospital) then
    frmSearchHospital := TfrmSearchHospital.Create(Application);
  ShowDialog(frmSearchHospital);
end;

(* �a�@�������ʈꗗ *)
procedure TMGFormFactroy.Open_HospitalListDialog();
begin
  if not Assigned(frmSearchResult) then
    frmSearchResult := TfrmSearchResult.Create(Application);
  ShowDialog(frmSearchResult);
end;

initialization
  g_FormFactory := TMGFormFactroy.Create();

finalization
  g_FormFactory.Free;

end.
