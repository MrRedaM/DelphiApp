unit DeleteDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TDeleteDialogForm = class(TForm)
    Message: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DodId: TLabel;
    Mode: TLabel;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
MODE_DODATION = 0; MODE_CLIENT = 1;

var
  DeleteDialogForm: TDeleteDialogForm;

implementation

{$R *.dfm}

uses DataModuleUnit;


procedure TDeleteDialogForm.Button2Click(Sender: TObject);
begin
  
    case StrToInt(Mode.Caption) of
      MODE_DODATION: begin
        with DM.QueryDodation do
          begin
            SQL.Clear;
            SQL.Add('DELETE from demande_dodation WHERE `demande_dodation`.`Numéro demande de dotation`=' + DodId.Caption);
            ExecSQL(true);
          end;
          with DM.DSDodation do begin
            MergeChangeLog;
            ApplyUpdates(-1);
            Refresh;
          end;
      end;
      MODE_CLIENT: begin
        with DM.QueryClient do
          begin
            SQL.Clear;
            SQL.Add('DELETE from client WHERE N_cl=' + DodId.Caption);
            ExecSQL(true);
          end;
          with DM.DSClient do begin
            MergeChangeLog;
            ApplyUpdates(-1);
            Refresh;
          end;  
      end;
    end;
      
end;

end.
