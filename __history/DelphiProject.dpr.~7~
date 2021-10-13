program DelphiProject;

uses
  Vcl.Forms,
  LoginScreen in 'LoginScreen.pas' {Login},
  DataModuleUnit in 'DataModuleUnit.pas' {DM: TDataModule},
  Main in 'Main.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
