unit Unit1;

interface

uses
  Windows, Messages,SysUtils, dxfCheckBox,Forms, Controls, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDBaseEdit, LMDCustomEdit,
  LMDCustomBrowseEdit, LMDBrowseEdit, StdCtrls, Graphics, Classes,
  ExtCtrls,registry, XPMenu, dxfLabel, dxCore, dxButton;

type
  TForm1 = class(TForm)
    Image1: TImage;
    LMDBrowseEdit1: TLMDBrowseEdit;
    Image2: TImage;
    dxfCheckBox1: TdxfCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxfLabel1: TdxfLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses
        ShlObj, ActiveX, ComObj;

procedure TForm1.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
        Regist:TRegistry;
        MStream: TResourceStream;
        MyObject  : IUnknown;
        MySLink   : IShellLink;
        MyPFile   : IPersistFile;
        FileName  : String;
        Directory : String;
        WFileName : WideString;
        MyReg     : TRegIniFile;
begin
if Copy(LMDBrowseEdit1.Path,2,2)<>':\' then Begin
                                            Application.MessageBox('Kurulum klasörünü kontrol edin.','Hatalý yol!',0);
                                            exit;
                                            end;
if LMDBrowseEdit1.Path[Length(LMDBrowseEdit1.Path)]='\' then LMDBrowseEdit1.Path:=Copy(LMDBrowseEdit1.Path,1,Length(LMDBrowseEdit1.Path)-1);
ForceDirectories(LMDBrowseEdit1.Path);
ForceDirectories(LMDBrowseEdit1.Path+'\yardým');
MStream := TResourceStream.CreateFromID(HInstance, 1, PChar('EXE1'));
try
MStream.SaveToFile(LMDBrowseEdit1.Path+'\Paramparça.exe');
finally
MStream.Free;
end;
MStream := TResourceStream.CreateFromID(HInstance, 2, PChar('EXE1'));
try
MStream.SaveToFile(LMDBrowseEdit1.Path+'\Kaldýr.exe');
finally
MStream.Free;
end;
MStream := TResourceStream.CreateFromID(HInstance, 3, PChar('EXE1'));
try
MStream.SaveToFile(LMDBrowseEdit1.Path+'\English.dil');
finally
MStream.Free;
end;
MStream := TResourceStream.CreateFromID(HInstance, 4, PChar('EXE1'));
try
MStream.SaveToFile(LMDBrowseEdit1.Path+'\yardým\index.htm');
finally
MStream.Free;
end;
MStream := TResourceStream.CreateFromID(HInstance, 5, PChar('EXE1'));
try
MStream.SaveToFile(LMDBrowseEdit1.Path+'\yardým\hata.htm');
finally
MStream.Free;
end;
MStream := TResourceStream.CreateFromID(HInstance, 6, PChar('EXE1'));
try
MStream.SaveToFile(LMDBrowseEdit1.Path+'\yardým\ipucu.htm');
finally
MStream.Free;
end;
MStream := TResourceStream.CreateFromID(HInstance, 7, PChar('EXE1'));
try
MStream.SaveToFile(LMDBrowseEdit1.Path+'\yardým\kullanimi.htm');
finally
MStream.Free;
end;
MStream := TResourceStream.CreateFromID(HInstance, 8, PChar('EXE1'));
try
MStream.SaveToFile(LMDBrowseEdit1.Path+'\yardým\tarih.htm');
finally
MStream.Free;
end;
Try
Regist:=TRegistry.Create;
regist.RootKey:=HKEY_CLASSES_ROOT;
if regist.openkey('*\shell\Paramparçala\command',true) then Regist.WriteString('',LMDBrowseEdit1.Path+'\Paramparça.exe'+' %1');
regist.CloseKey;
if regist.openkey('Directory\shell\Paramparçala\command',true) then Regist.WriteString('',LMDBrowseEdit1.Path+'\Paramparça.exe'+' %1');
Finally
regist.free;
end;
if (dxfCheckBox1.Checked) and (SetCurrentDir(LMDBrowseEdit1.Path)) then WinExec('Paramparça.exe', SW_SHOW) else
Application.MessageBox('Kurulum baþarýyla tamamlandý.','Paramparça   3 kuruldu.',0);
  MyObject := CreateComObject(CLSID_ShellLink);
  MySLink := MyObject as IShellLink;
  MyPFile := MyObject as IPersistFile;
  FileName := LMDBrowseEdit1.Path+'\Paramparça.exe';
  with MySLink do begin
    SetPath(PChar(FileName));
    SetWorkingDirectory(PChar(ExtractFilePath(FileName)));
  end;
  MyReg := TRegIniFile.Create(
    'Software\MicroSoft\Windows\CurrentVersion\Explorer');
  Directory := MyReg.ReadString('Shell Folders','Desktop','');
  WFileName := Directory+'\Paramparça.lnk';
  MyPFile.Save(PWChar(WFileName),False);
  Directory := MyReg.ReadString('Shell Folders','Programs','')+'\Paramparça';
  CreateDir(Directory);
  FileName := LMDBrowseEdit1.Path+'\Kaldýr.exe';
  with MySLink do begin
    SetPath(PChar(FileName));
    SetWorkingDirectory(PChar(ExtractFilePath(FileName)));
  end;
  WFileName := Directory+'\Paramparça kaldýr.lnk';
  MyPFile.Save(PWChar(WFileName),False);
  FileName := LMDBrowseEdit1.Path+'\Paramparça.exe';
  with MySLink do begin
    SetPath(PChar(FileName));
    SetWorkingDirectory(PChar(ExtractFilePath(FileName)));
  end;
  WFileName := Directory+'\Paramparça.lnk';
  MyPFile.Save(PWChar(WFileName),False);
  MyReg.Free;
Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Form1.Left:=Screen.Width Div 2-150;
end;

end.
