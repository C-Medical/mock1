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
  private
    { private �錾 }
  public
    { public �錾 }
  end;

var
  frmDetailBase: TfrmDetailBase;

implementation

{$R *.fmx}

end.
