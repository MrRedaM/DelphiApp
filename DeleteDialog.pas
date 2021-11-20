unit DeleteDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TDeleteDialogForm = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DodId: TLabel;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeleteDialogForm: TDeleteDialogForm;

implementation

{$R *.dfm}

uses DataModuleUnit;


procedure TDeleteDialogForm.Button2Click(Sender: TObject);
begin
  with DM.QueryDodation do
      begin
        SQL.Clear;
        SQL.Add('DELETE from demande_dodation WHERE N_Dem_Dot=' + DodId.Caption);
        ExecSQL(true);
      end;
      with DM.DSDodation do begin
        MergeChangeLog;
        ApplyUpdates(-1);
        Refresh;
      end;
end;

end.
