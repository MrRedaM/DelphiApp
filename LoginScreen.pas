unit LoginScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TLogin = class(TForm)
    Title: TLabel;
    Panel1: TPanel;
    EditPassword: TEdit;
    EditUsername: TEdit;
    EditServer: TEdit;
    EditDB: TEdit;
    Button1: TButton;
    StatusServer: TStatusBar;
    procedure Button1Click(Sender: TObject);
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
  DM.Conn.Params.Values['UserName'] := EditUsername.Text;
  DM.Conn.Params.Values['Password'] := EditPassword.Text;
  DM.Conn.Connected := true;
  StatusServer.SimpleText := 'Server : Connected'
  Except On E : Exception do
    begin
       StatusServer.SimpleText := 'Server : Error while connecting'
    end;
  end;
end;

end.
