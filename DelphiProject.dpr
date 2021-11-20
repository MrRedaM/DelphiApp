program DelphiProject;

uses
  Vcl.Forms,
  LoginScreen in 'LoginScreen.pas' {Login},
  DataModuleUnit in 'DataModuleUnit.pas' {DM: TDataModule},
  Main in 'Main.pas' {MainForm},
  NewPvUnit in 'NewPvUnit.pas' {NewPvForm},
  NewDodationUnit in 'NewDodationUnit.pas' {NewDodationForm},
  DechargeUnit in 'DechargeUnit.pas' {DechargeForm},
  DisplayPvUnit in 'DisplayPvUnit.pas' {DisplayPvForm},
  Vcl.Themes,
  Vcl.Styles,
  NewClientUnit in 'NewClientUnit.pas' {NewClientForm},
  DeleteDialog in 'DeleteDialog.pas' {DeleteDialogForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TNewPvForm, NewPvForm);
  Application.CreateForm(TNewDodationForm, NewDodationForm);
  Application.CreateForm(TDechargeForm, DechargeForm);
  Application.CreateForm(TDisplayPvForm, DisplayPvForm);
  Application.CreateForm(TNewClientForm, NewClientForm);
  Application.CreateForm(TDeleteDialogForm, DeleteDialogForm);
  Application.Run;
end.
