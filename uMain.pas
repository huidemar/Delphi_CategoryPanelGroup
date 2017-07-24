unit uMain;

interface

uses
  Unit2,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.Samples.Calendar, Vcl.ComCtrls, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList;

type
  TFrmMain = class(TForm)
    CategoryPanelGroup: TCategoryPanelGroup;
    cpCadastros: TCategoryPanel;
    cpMovimentacao: TCategoryPanel;
    CategoryPanel3: TCategoryPanel;
    CategoryPanel4: TCategoryPanel;
    BitBtn1: TBitBtn;
    BalloonHint1: TBalloonHint;
    ActionList: TActionList;
    ImageList: TImageList;
    acCadPessoa: TAction;
    acCadCidade: TAction;
    acCadProduto: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure acCadPessoaExecute(Sender: TObject);
    procedure cpCadastrosExpand(Sender: TObject);
    procedure cpMovimentacaoExpand(Sender: TObject);
  private
    { Private declarations }
    procedure RecolherPainel(Painel: TCategoryPanel);
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.acCadPessoaExecute(Sender: TObject);
begin
  Form2 := TForm2.Create(Self);
  Form2.ShowModal;
  Form2.Free;
end;

procedure TFrmMain.cpCadastrosExpand(Sender: TObject);
begin
  RecolherPainel(TCategoryPanel(Sender));
end;

procedure TFrmMain.cpMovimentacaoExpand(Sender: TObject);
begin
  RecolherPainel(TCategoryPanel(Sender));
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  CategoryPanelGroup.CollapseAll;
end;

procedure TFrmMain.RecolherPainel(Painel: TCategoryPanel);
var
 i: Integer;
begin
  for i := 0 to CategoryPanelGroup.Panels.Count -1 do
    begin
      if TCategoryPanel(CategoryPanelGroup.Panels[i]) <> Painel then
        TCategoryPanel(CategoryPanelGroup.Panels[i]).Collapse;
    end;
end;

end.
