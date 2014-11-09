unit Reservation;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  DetailBase, FMX.DateTimeCtrls, FMX.Edit, FMX.Controls.Presentation,
  FMX.Layouts, FMX.TabControl;

type
  TfrmReservation = class(TfrmDetailBase)
    FlowLayout1: TFlowLayout;
    Label1: TLabel;
    lblHospitaName: TLabel;
    Label3: TLabel;
    TabControl1: TTabControl;
    tbCurrentInfo: TTabItem;
    FlowLayout3: TFlowLayout;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    FlowLayoutBreak2: TFlowLayoutBreak;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    FlowLayoutBreak7: TFlowLayoutBreak;
    Label13: TLabel;
    lblReserveCurrentTime: TLabel;
    tbReserve: TTabItem;
    FlowLayout2: TFlowLayout;
    Label4: TLabel;
    Edit1: TEdit;
    ClearEditButton3: TClearEditButton;
    FlowLayoutBreak1: TFlowLayoutBreak;
    FlowLayoutBreak3: TFlowLayoutBreak;
    Label5: TLabel;
    Edit2: TEdit;
    ClearEditButton1: TClearEditButton;
    FlowLayoutBreak4: TFlowLayoutBreak;
    Label6: TLabel;
    DateEdit1: TDateEdit;
    FlowLayoutBreak5: TFlowLayoutBreak;
    Label7: TLabel;
    Edit3: TEdit;
    ClearEditButton2: TClearEditButton;
    FlowLayoutBreak6: TFlowLayoutBreak;
    btnConfirm: TSpeedButton;
    Layout2: TLayout;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    Label14: TLabel;
    tbHospitalInfo: TTabItem;
    Label15: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnShowMenuClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
    procedure SetHospitalProp(hospitalName: String);
  end;

var
  frmReservation: TfrmReservation;

implementation

{$R *.fmx}

uses
  MGFormFactory;

procedure TfrmReservation.btnShowMenuClick(Sender: TObject);
begin
  inherited;
//TODO Back
  g_FormFactory.Open_HospitalListDialog();
end;

procedure TfrmReservation.FormActivate(Sender: TObject);
begin
  inherited;
  lblReserveCurrentTime.Text :=
    FormatDateTime('yyyy"îN"m"åé"d"ì˙ "hh"éû"nn"ï™åªç›"',Now);
end;

procedure TfrmReservation.SetHospitalProp(hospitalName: String);
begin
  lblHospitaName.Text := hospitalName;
end;

procedure TfrmReservation.btnConfirmClick(Sender: TObject);
const
  msg = 'ó\ñÒÇµÇ‹Ç∑ÅBÇÊÇÎÇµÇ¢Ç≈Ç∑Ç©ÅH';
  msg_ok = 'ó\ñÒäÆóπ!' +#13+'ó\ñÒî‘çÜÇÕ 29î‘Ç≈Ç∑';
begin
  MessageDlg(msg, System.UITypes.TMsgDlgType.mtConfirmation,
    [
      System.UITypes.TMsgDlgBtn.mbOK,
      System.UITypes.TMsgDlgBtn.mbCancel
    ], 0,

      // Use an anonymous method to make sure the acknowledgment appears as expected.
      procedure(const AResult: TModalResult)
      begin
        case AResult of
          mrOK:
          begin
            ShowMessage(msg_ok);
            g_FormFactory.Open_ReservationDetails();
          end;
        end;
      end
    );
end;

end.
