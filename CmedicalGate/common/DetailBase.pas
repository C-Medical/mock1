unit DetailBase;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts;

type
  TfrmDetailBase = class(TForm)
    toolbarMain: TToolBar;
    lblSearchResults: TLabel;
    btnShowMenu: TButton;
    layoutBase: TLayout;
    StyleBook1: TStyleBook;
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

var
  frmDetailBase: TfrmDetailBase;

implementation

{$R *.fmx}

end.
