unit CmMockDataSource;

interface

uses
  System.SysUtils, System.Classes, Data.Bind.Components, Data.Bind.ObjectScope,
  System.Generics.Collections, System.Math;

type
  TCmMockDataSource = class(TPrototypeBindSource)
  private
    { Private 宣言 }
  protected
    { Protected 宣言 }
  public
    { Public 宣言 }
    constructor Create(AOwner: TComponent); override;
  published
    { Published 宣言 }
  end;

  TCmReceiptNumberGenerator = class(TDelegateValueGenerator)
  protected
    function CreateDelegate: TValueGeneratorDelegate; override;
  end;

  TCmPatientNameGenerator = class(TDelegateValueGenerator)
  protected
    function CreateDelegate: TValueGeneratorDelegate; override;
  end;

  TCmAgeGenerator = class(TDelegateValueGenerator)
  protected
    function CreateDelegate: TValueGeneratorDelegate; override;
  end;

  TCmSexGenerator = class(TDelegateValueGenerator)
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
    'Works 太郎',
    'Legend 花子',
    '山田 一郎',
    '鈴木 二郎',
    '高橋 三郎',
    '田中 四郎',
    '渡辺 五郎',
    '伊藤 六郎',
    '山本 七郎',
    '中村 八郎',
    '小林 九郎',
    '加藤 十郎',
    '吉田 十一郎',
    '山田 十二郎',
    '佐々木 十三郎',
    '山口 十四郎',
    '斉藤 十五郎'
  ];
begin
  Result := nil;
  if FieldType <> ftString then Exit;
  Result := TTypedListValueGeneratorDelegate<String>.Create([optRepeat], VALUES);
end;

{ TCmAgeGenerator }

function TCmAgeGenerator.CreateDelegate: TValueGeneratorDelegate;
var
  i: Integer;
  values: TArray<String>;
begin
  Result := nil;
  if FieldType <> ftString then Exit;

  SetLength(values, 30);
  for i := 1 to 30 do
  begin
    values[i-1] := IntToStr(RandomRange(0, 99)) + ' 歳';
  end;
  Result := TTypedListValueGeneratorDelegate<String>.Create([optRepeat], values);
end;

{ TCmSexGenerator }

function TCmSexGenerator.CreateDelegate: TValueGeneratorDelegate;
begin
  Result := TTypedListValueGeneratorDelegate<String>.Create([optRepeat], ['男性', '女性']);
end;

initialization
  RegisterValueGenerator('Cm-ReceiptNumber', [ftString],
    TValueGeneratorDescription.Create(TCmReceiptNumberGenerator));
  RegisterValueGenerator('Cm-PatientName', [ftString],
    TValueGeneratorDescription.Create(TCmPatientNameGenerator));
  RegisterValueGenerator('Cm-Age', [ftString],
    TValueGeneratorDescription.Create(TCmAgeGenerator));
  RegisterValueGenerator('Cm-Sex', [ftString],
    TValueGeneratorDescription.Create(TCmAgeGenerator));
finalization
  UnRegisterValueGenerator('Cm-ReceiptNumber', [ftString], '');
  UnRegisterValueGenerator('Cm-PatientName', [ftString], '');
  UnRegisterValueGenerator('Cm-Age', [ftString], '');
  UnRegisterValueGenerator('Cm-Sex', [ftString], '');

end.
