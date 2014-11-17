unit uStart;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, Data.Bind.GenData, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.ObjectScope, CmMockDataSource, FMX.ListBox;

type
  TfrmStart = class(TForm)
    Layout1: TLayout;
    Panel1: TPanel;
    lblTitle: TLabel;
    Panel3: TPanel;
    Panel2: TPanel;
    FlowLayout1: TFlowLayout;
    Label1: TLabel;
    StyleBook1: TStyleBook;
    lblReceiptNo: TLabel;
    FlowLayoutBreak1: TFlowLayoutBreak;
    Label3: TLabel;
    lblPatientName: TLabel;
    FlowLayoutBreak2: TFlowLayoutBreak;
    Label5: TLabel;
    lblSex: TLabel;
    FlowLayoutBreak3: TFlowLayoutBreak;
    Label7: TLabel;
    lblAge: TLabel;
    FlowLayoutBreak4: TFlowLayoutBreak;
    Label9: TLabel;
    lblReceiptDateTime: TLabel;
    CmMockDataSource1: TCmMockDataSource;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    LinkPropertyToFieldText5: TLinkPropertyToField;
    LinkPropertyToFieldText4: TLinkPropertyToField;
    ListBox1: TListBox;
    Label2: TLabel;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    btnStart: TButton;
    procedure btnStartClick(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

var
  frmStart: TfrmStart;

implementation

uses
  uPasswd;

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}


var
  frmPasswd: TfrmPasswd;

procedure TfrmStart.btnStartClick(Sender: TObject);
begin
  if frmPasswd = nil then
  begin
    frmPasswd := TfrmPasswd.Create(Self);
  end;

  frmPasswd.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = mrOk then
    begin
      Self.ModalResult := mrOk;
    end;
  end);
end;

end.
