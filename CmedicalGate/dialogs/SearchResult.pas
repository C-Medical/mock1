unit SearchResult;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  DetailBase, FMX.WebBrowser, FMX.ListBox, FMX.Layouts, FMX.TabControl;

type
  TfrmSearchResult = class(TfrmDetailBase)
    tbcSearchResults: TTabControl;
    tbSRList: TTabItem;
    ListBox1: TListBox;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    item1: TListBoxItem;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    CalloutPanel1: TCalloutPanel;
    Label1: TLabel;
    tbSRMap: TTabItem;
    WebBrowser1: TWebBrowser;
    procedure tbcSearchResultsChange(Sender: TObject);
    procedure ListBox1ItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

var
  frmSearchResult: TfrmSearchResult;

implementation

{$R *.fmx}

uses
  MGFormFactory;

const
  GooGleMapURL = 'https://maps.google.com/maps?q=%s,%s';
  //
  LLatitude = '35.667350';
  LLongitude= '139.740473';

// this event fired after tab changed asap.
procedure TfrmSearchResult.tbcSearchResultsChange(Sender: TObject);
begin
  inherited;
  if tbcSearchResults.ActiveTab = tbSRMap then
  begin
    // google map
    WebBrowser1.Navigate(Format(GooGleMapURL, [LLatitude, LLongitude]));
    Exit;
  end;
end;

//
procedure TfrmSearchResult.ListBox1ItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
begin
  inherited;

  g_FormFactory.Open_Reservation(Item.Text);
end;


end.
