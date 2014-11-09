unit Menu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.SearchBox, FMX.ListBox, FMX.Layouts,
  FMX.StdCtrls, FMX.ExtCtrls;

type
  TMenuBox = class(TForm)
    lbxMenu: TListBox;
    listItemFindHotel: TListBoxItem;
    listItemReservaionList: TListBoxItem;
    listItemGroupHeader: TListBoxGroupHeader;
    ListBoxItem18: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    listItemTopPage: TListBoxItem;
    StyleBook1: TStyleBook;
    liteItemStyle: TListBoxItem;
    cmbStyle: TComboBox;
    procedure listItemFindHotelClick(Sender: TObject);
    procedure listItemReservaionListClick(Sender: TObject);
    procedure listItemTopPageClick(Sender: TObject);
    procedure cmbStyleChange(Sender: TObject);
  private
    { private 宣言 }
  public
    { public 宣言 }
    procedure SetMyParent(objParent: TFmxObject);
  end;

var
  MenuBox: TMenuBox;

implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}

uses
  MGFormFactory,
  FMX.Styles;

{ TMenuBox }

// 親セット
procedure TMenuBox.SetMyParent(objParent: TFmxObject);
begin
  lbxMenu.Parent := objParent;
  lbxMenu.Visible:= True;
  cmbStyle.OnChange := cmbStyleChange;
end;

// top page
procedure TMenuBox.listItemTopPageClick(Sender: TObject);
begin
  g_FormFactory.HideMenu;
  g_FormFactory.Open_TopPage
end;

// find a hospital
procedure TMenuBox.listItemFindHotelClick(Sender: TObject);
begin
  g_FormFactory.HideMenu;
  g_FormFactory.Open_SearchHospitalDialog;
end;

// 予約リスト
procedure TMenuBox.listItemReservaionListClick(Sender: TObject);
begin
  g_FormFactory.HideMenu;
  g_FormFactory.Open_ReservationList;
end;

// style change
procedure TMenuBox.cmbStyleChange(Sender: TObject);
var
  style: TFmxObject;
begin
  if cmbStyle.ItemIndex <= -1 then Exit;

  style := TStyleStreaming.LoadFromResource(HInstance, cmbStyle.Selected.Text, RT_RCDATA);
  if Style<> nil  then
    TStyleManager.SetStyle(Style);
end;

end.
