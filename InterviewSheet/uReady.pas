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
    btnStart: TButton;
    Panel3: TPanel;
    Layout1: TLayout;
    CmMockDataSource1: TCmMockDataSource;
    LinkFillControlToField1: TLinkFillControlToField;
    procedure Button1Click(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

var
  frmReady: TfrmReady;

implementation

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}

procedure TfrmReady.Button1Click(Sender: TObject);
begin
  //PrototypeBindSource1.Refresh;
end;

end.
