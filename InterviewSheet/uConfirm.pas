unit uConfirm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, uFrm4, uFrm3, uFrm2, uFrm1;

type
  TfrmConfirm = class(TForm)
    Layout1: TLayout;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    frm1: Tfrm1;
    frm2: Tfrm2;
    frm3: Tfrm3;
    frm4: Tfrm4;
    Panel3: TPanel;
    btnNext: TButton;
    VertScrollBox1: TVertScrollBox;
    Label2: TLabel;
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

var
  frmConfirm: TfrmConfirm;

implementation

{$R *.fmx}

end.
