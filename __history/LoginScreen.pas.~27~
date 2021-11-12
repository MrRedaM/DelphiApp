unit LoginScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, Main;

type
  TLogin = class(TForm)
    Title: TLabel;
    Panel1: TPanel;
    EditPassword: TEdit;
    EditUsername: TEdit;
    EditServer: TEdit;
    EditDB: TEdit;
    Button1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CheckShowPass: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckShowPassClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

{$R *.dfm}

uses DataModuleUnit;






procedure TLogin.Button1Click(Sender: TObject);
begin
Try
  DM.Conn.Connected := false;
  DM.Conn.Params.Values['HostName'] := EditServer.Text;
  DM.Conn.Params.Values['DataBase'] := EditDB.Text;
  DM.Conn.Params.Values['User_Name'] := EditUsername.Text;
  DM.Conn.Params.Values['Password'] := EditPassword.Text;
  DM.Conn.Connected := true;
  DM.DSPv.Active := true;
  DM.DSDecharge.Active := true;
  DM.DSClient.Active := true;
  DM.DSDodation.Active := true;
  DM.DSComm.Active := true;
  DM.DSLet.Active := true;
  DM.DSDeploy.Active := true;
  DM.DSCentral.Active := true;
  MainForm.Show;
  Hide;
  Except On E : Exception do
    begin
      ShowMessage('Erreur lors de la connexion à la base de données. Veuillez vérifier les informations saisit et réessayer.');
    end;
  end;
end;

procedure TLogin.CheckShowPassClick(Sender: TObject);
begin
  if CheckShowPass.Checked then EditPassword.PasswordChar := #0
  else EditPassword.PasswordChar := '*';

end;

procedure TLogin.FormCreate(Sender: TObject);
begin
  EditServer.Text := 'localhost';
  EditDB.Text := 'bdd';
  CheckShowPass.Font.Color := $FFFFFF;
end;

procedure TLogin.FormShow(Sender: TObject);
begin
  EditUsername.Clear;
  EditPassword.Clear;
end;

end.
