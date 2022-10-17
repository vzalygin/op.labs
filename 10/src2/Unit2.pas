unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TNewRecordForm = class(TForm)
    �������: TLabel;
    ���: TLabel;
    �������: TLabel;
    �����: TLabel;
    LastNameInput: TEdit;
    WriteButton: TButton;
    NameInput: TEdit;
    PhoneInput: TEdit;
    AddrInput: TEdit;
    ExitButton: TButton;
    procedure ExitButtonClick(Sender: TObject);
    procedure WriteButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewRecordForm: TNewRecordForm;

implementation

{$R *.dfm}
uses Unit1;

procedure TNewRecordForm.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TNewRecordForm.WriteButtonClick(Sender: TObject);
var z: rec;
begin
  z.last_name := LastNameInput.Text;
  z.name := NameInput.text;
  z.phone := PhoneInput.text;
  z.addr := AddrInput.text;
  LastNameInput.clear;
  NameInput.clear;
  PhoneInput.clear;
  AddrInput.clear;
  Write(f,z);
  LastNameInput.SetFocus;
end;
end.
