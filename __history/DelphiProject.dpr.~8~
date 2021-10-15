program DelphiProject;

uses
  Vcl.Forms,
  LoginScreen in 'LoginScreen.pas' {Login},
  DataModuleUnit in 'DataModuleUnit.pas' {DM: TDataModule},
  Main in 'Main.pas' {MainForm},
  NewPvUnit in 'NewPvUnit.pas' {NewPvForm},
  NewDodationUnit in 'NewDodationUnit.pas' {NewDodationForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TNewPvForm, NewPvForm);
  Application.CreateForm(TNewDodationForm, NewDodationForm);
  Application.Run;
end.
