unit uReady;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.WebBrowser,
  FMX.Layouts, FMX.StdCtrls, FMX.ListView.Types, FMX.ListView,
  Data.Bind.GenData, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.ObjectScope, CmMockDataSource;

type
  TfrmReady = class(TForm)
    StyleBook1: TStyleBook;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    ListView1: TListView;
    Button1: TButton;
    BindingsList1: TBindingsList;
    Layout1: TLayout;
    CmMockDataSource1: TCmMockDataSource;
    LinkFillControlToField1: TLinkFillControlToField;
    procedure Button1Click(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure FormCreate(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

var
  frmReady: TfrmReady;

implementation

uses
  FMX.Styles,
  uStart;

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}

procedure TfrmReady.FormCreate(Sender: TObject);
var
  style: TFmxObject;
begin
  style:= nil;
  {$IFDEF MSWINDOWS}
  //style := TStyleStreaming.LoadFromResource(HInstance, 'WinLight', RT_RCDATA);
  {$ENDIF}
  {$IFDEF Android}
  //style := TStyleStreaming.LoadFromResource(HInstance, 'AndroidLight', RT_RCDATA);
  {$ENDIF}
  if Style<> nil then
  TStyleManager.SetStyle(Style);
end;

procedure TfrmReady.Button1Click(Sender: TObject);
begin
  //PrototypeBindSource1.Refresh;
end;


procedure TfrmReady.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
var
  dlg: TfrmStart;
begin
  dlg := TfrmStart.Create(Self);
  dlg.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = mrOk then
    begin

    end;
    dlg.DisposeOf;
  end);
end;

end.
