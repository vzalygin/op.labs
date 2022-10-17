unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFindForm = class(TForm)
    FindButton: TButton;
    Button1: TButton;
    LastNameInput: TEdit;
    �������: TLabel;
    NameInput: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PhoneInput: TEdit;
    AddrInput: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FindButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FindForm: TFindForm;

implementation

{$R *.dfm}
uses Unit1;

procedure TFindForm.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFindForm.FindButtonClick(Sender: TObject);
var c: integer;
    lastName: string[22];
    z: rec;
begin
   c:=1;
   lastName := LastNameInput.text;
   while not eof(f) do
      begin
        read(f,z);
        if lastName = z.last_name then
           begin
              c := 0;
              NameInput.text := z.name;
              PhoneInput.text := z.phone;
              AddrInput.text := z.addr;
              break;
           end;
      end;
   if c<>0 then
      begin
         LastNameInput.text:='��� ������';
      end;
   reset(f);
   end;
end.
