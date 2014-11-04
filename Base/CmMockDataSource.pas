unit CmMockDataSource;

interface

uses
  System.SysUtils, System.Classes, Data.Bind.Components, Data.Bind.ObjectScope,
  System.Generics.Collections, FMX.Dialogs;

type
  TCmMockDataSource = class(TPrototypeBindSource)
  private
    { Private �錾 }
  protected
    { Protected �錾 }
  public
    { Public �錾 }
    constructor Create(AOwner: TComponent); override;
  published
    { Published �錾 }
  end;

  TCmReceiptNumberGenerator = class(TDelegateValueGenerator)
  protected
    function CreateDelegate: TValueGeneratorDelegate; override;
  end;

  TCmPatientNameGenerator = class(TDelegateValueGenerator)
  protected
    function CreateDelegate: TValueGeneratorDelegate; override;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TCmMockDataSource]);
end;

{ TCmMockDataSource }

constructor TCmMockDataSource.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  RecordCount := 10;
end;

{ TCmReceiptNumberGenerator }

function TCmReceiptNumberGenerator.CreateDelegate: TValueGeneratorDelegate;
const
  VALUES: TArray<String> = [
    '150401-00001',
    '150401-00002',
    '150401-00003',
    '150401-00004',
    '150401-00005',
    '150401-00006',
    '150401-00007',
    '150401-00008',
    '150401-00009',
    '150401-00010',
    '150401-00011',
    '150401-00012',
    '150401-00013',
    '150401-00014',
    '150401-00015'
  ];
begin
  Result := nil;
  if FieldType <> ftString then Exit;
  Result := TTypedListValueGeneratorDelegate<String>.Create([optRepeat], VALUES);
end;

{ TCmPatientNameGenerator }

function TCmPatientNameGenerator.CreateDelegate: TValueGeneratorDelegate;
const
  VALUES: TArray<String> = [
    'Works ���Y',
    'Legend �Ԏq',
    '�R�c ��Y',
    '��� ��Y',
    '���� �O�Y',
    '�c�� �l�Y',
    '�n�� �ܘY',
    '�ɓ� �Z�Y',
    '�R�{ ���Y',
    '���� ���Y',
    '���� ��Y',
    '���� �\�Y',
    '�g�c �\��Y',
    '�R�c �\��Y',
    '���X�� �\�O�Y',
    '�R�� �\�l�Y',
    '�ē� �\�ܘY'
  ];
begin
  Result := nil;
  if FieldType <> ftString then Exit;
  Result := TTypedListValueGeneratorDelegate<String>.Create([optRepeat], VALUES);
end;
initialization
  RegisterValueGenerator('Cm-ReceiptNumber', [ftString],
    TValueGeneratorDescription.Create(TCmReceiptNumberGenerator));
  RegisterValueGenerator('Cm-PatientName', [ftString],
    TValueGeneratorDescription.Create(TCmPatientNameGenerator));
finalization
  UnRegisterValueGenerator('Cm-ReceiptNumber', [ftString], '');
  UnRegisterValueGenerator('Cm-PatientName', [ftString], '');

end.
