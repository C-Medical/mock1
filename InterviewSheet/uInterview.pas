unit uInterview;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, System.Generics.Collections ,uFrm1, uFrm3, uFrm2, uFrm4;

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
    frm2: Tfrm2;
    frm3: Tfrm3;
    frm4: Tfrm4;
    procedure FormCreate(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
  private
    { private êÈåæ }
    FList: TList<TFrame>;
  public
    { public êÈåæ }
  end;

var
  frmInterview: TfrmInterview;

implementation

uses
  uConfirm;

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}


var
  frmConfirm: TfrmConfirm;

procedure TfrmInterview.FormCreate(Sender: TObject);
var
  frm: TFrame;
begin
  FList := TList<TFrame>.Create;
  FList.Add(frm1);
  FList.Add(frm2);
  FList.Add(frm3);
  FList.Add(frm4);

  for frm in FList do
  begin
    frm.Align := TAlignLayout.Client;
    frm.Visible := False;
  end;

  frm1.Visible := True;

  ProgressBar1.Max := FList.Count;
  ProgressBar1.Value := 0;
end;

procedure TfrmInterview.btnBackClick(Sender: TObject);
var
  frm: TFrame;
  i: Integer;
begin
  for i := 0 to Pred(FList.Count) do
  begin
    frm := FList[i];
    if frm.Visible then
    begin
      if i > 0 then
      begin
        FList[i - 1].Visible := True;
      end else
      begin
        // èIóπ
      end;
      FList[i].Visible := False;
      ProgressBar1.Value := i - 1;
      Exit;
    end;
  end;
end;
procedure TfrmInterview.btnNextClick(Sender: TObject);
var
  frm: TFrame;
  i: Integer;
begin
  for i := 0 to Pred(FList.Count) do
  begin
    frm := FList[i];
    if frm.Visible then
    begin
      if i < Pred(FList.Count) then
      begin
        FList[i + 1].Visible := True;
      end else
      begin
        // èIóπ
      end;
      FList[i].Visible := False;
      ProgressBar1.Value := i + 1;
      Exit;
    end;
  end;

  if frmConfirm = nil then
  begin
    frmConfirm := TfrmConfirm.Create(Self);
  end;

  frmConfirm.ShowModal(procedure(ModalResult: TModalResult)
  begin

  end);
end;


end.
