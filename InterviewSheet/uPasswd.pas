unit uPasswd;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Controls.Presentation, FMX.Edit, System.Actions, FMX.ActnList,
  FMX.Objects;

type
  TfrmPasswd = class(TForm)
    Layout1: TLayout;
    FlowLayout1: TFlowLayout;
    Label2: TLabel;
    FlowLayoutBreak1: TFlowLayoutBreak;
    FlowLayoutBreak2: TFlowLayoutBreak;
    GridLayout1: TGridLayout;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    btnStart: TButton;
    ActionList1: TActionList;
    Action1: TAction;
    Layout2: TLayout;
    Button11: TButton;
    FlowLayoutBreak3: TFlowLayoutBreak;
    Edit1: TEdit;
    Rectangle1: TRectangle;
    procedure Action1Execute(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

var
  frmPasswd: TfrmPasswd;

implementation

{$R *.fmx}

procedure TfrmPasswd.Action1Execute(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + 'x';
end;

procedure TfrmPasswd.Button11Click(Sender: TObject);
begin
  Edit1.Text := '';
end;

end.
