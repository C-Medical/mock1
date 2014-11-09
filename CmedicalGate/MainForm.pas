unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  MainFormBase, FMX.Layouts, FMX.MultiView, FMX.ListBox, FMX.Objects;

type
  TfrmMain = class(TfrmMainBase)
    lbxTopMain: TListBox;
    listItemQueryReservation: TListBoxItem;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    ListBoxGroupHeader2: TListBoxGroupHeader;
    ListBoxItem2: TListBoxItem;
    ListBoxGroupHeader3: TListBoxGroupHeader;
    listItemReservation: TListBoxItem;
    Label2: TLabel;
    StyleBook1: TStyleBook;
    procedure lbxTopMainItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

uses
  MGFormFactory, ReservationDetails, SearchHospital;

procedure TfrmMain.lbxTopMainItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
begin
  inherited;

  if (item = listItemQueryReservation) then
  begin
    g_FormFactory.Open_ReservationDetails();
  end;

  if (item = listItemReservation) then
  begin
    g_FormFactory.Open_SearchHospitalDialog();
  end;

end;

end.
