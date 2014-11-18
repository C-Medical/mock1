unit uInterview;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, uFrm1;

type
  TfrmInterview = class(TForm)
    Layout1: TLayout;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnNext: TButton;
    btnBack: TButton;
    Layout2: TLayout;
    Label2: TLabel;
    Label3: TLabel;
    ProgressBar1: TProgressBar;
    frm1: Tfrm1;
    procedure FormCreate(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

var
  frmInterview: TfrmInterview;

implementation

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}

procedure TfrmInterview.FormCreate(Sender: TObject);
begin
  frm1.Align := TAlignLayout.Client;
end;

end.
