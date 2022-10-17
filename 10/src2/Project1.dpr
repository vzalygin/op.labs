program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  Unit2 in 'Unit2.pas' {NewRecordForm},
  Unit3 in 'Unit3.pas' {FindForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TNewRecordForm, NewRecordForm);
  Application.CreateForm(TFindForm, FindForm);
  Application.Run;
end.
