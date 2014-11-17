unit uReceiptSheet;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  Data.Bind.Components, Data.Bind.ObjectScope, CmMockDataSource, FMX.StdCtrls,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors;

type
  TfrmReceiptSheet = class(TForm)
    Layout1: TLayout;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    CmMockDataSource1: TCmMockDataSource;
    FlowLayout1: TFlowLayout;
    Label4: TLabel;
    lblPatientName: TLabel;
    FlowLayoutBreak2: TFlowLayoutBreak;
    Label5: TLabel;
    lblSex: TLabel;
    FlowLayoutBreak3: TFlowLayoutBreak;
    Label3: TLabel;
    FlowLayoutBreak1: TFlowLayoutBreak;
    Label6: TLabel;
    Label7: TLabel;
    FlowLayoutBreak4: TFlowLayoutBreak;
    Label8: TLabel;
    Label9: TLabel;
    FlowLayoutBreak5: TFlowLayoutBreak;
    Label10: TLabel;
    Label11: TLabel;
    FlowLayoutBreak6: TFlowLayoutBreak;
    Label13: TLabel;
    FlowLayoutBreak7: TFlowLayoutBreak;
    Label14: TLabel;
    Label15: TLabel;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    LinkPropertyToFieldText4: TLinkPropertyToField;
    LinkPropertyToFieldText5: TLinkPropertyToField;
    LinkPropertyToFieldText6: TLinkPropertyToField;
    LinkPropertyToFieldText7: TLinkPropertyToField;
    Panel3: TPanel;
    btnStart: TButton;
    Label12: TLabel;
    FlowLayoutBreak8: TFlowLayoutBreak;
    Label16: TLabel;
    Label17: TLabel;
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

var
  frmReceiptSheet: TfrmReceiptSheet;

implementation

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}

end.
