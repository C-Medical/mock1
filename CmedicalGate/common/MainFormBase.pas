unit MainFormBase;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.MultiView, FMX.Objects;

type
  TfrmMainBase = class(TForm)
    mlvMenu: TMultiView;
    MainLayout: TLayout;
    toolbarMain: TToolBar;
    lblTitle: TLabel;
    btnShowMenu: TButton;
    StyleBookBase: TStyleBook;
    layoutMultiView: TLayout;
    toolMenuTop: TToolBar;
    Image1: TImage;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

var
  frmMainBase: TfrmMainBase;

implementation

{$R *.fmx}

uses
  Menu;

(* constructor *)
procedure TfrmMainBase.FormCreate(Sender: TObject);
var menu: TMenuBox;
begin
  menu := TMenuBox.Create(Self);
  menu.SetMyParent(layoutMultiView);
end;

end.
