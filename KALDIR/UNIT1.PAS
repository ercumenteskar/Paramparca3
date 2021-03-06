unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Registry;

type
  TForm1 = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
Var
        regist:TRegistry;
        MyReg:TRegIniFile;
        directory:string;
begin
form1.width:=0;
form1.height:=0;
if Application.MessageBox('Bu i�lem Parampar�a program�n� bilgisayar�n�zdan kald�racak. Devam etmek istiyor musunuz?','Dikkat!',MB_YESNO+48)=IDYES then
Begin
//Parampar�a.exeyi kald�r
if FileExists(ExtractFileDir(application.exename)+'\'+'Parampar�a.exe') then DeleteFile(ExtractFileDir(application.exename)+'\'+'Parampar�a.exe');
if FileExists(ExtractFileDir(application.exename)+'\'+'English.dil') then DeleteFile(ExtractFileDir(application.exename)+'\'+'English.dil');
if FileExists(ExtractFileDir(application.exename)+'\yard�m\'+'index.htm') then DeleteFile(ExtractFileDir(application.exename)+'\yard�m\'+'index.htm');
if FileExists(ExtractFileDir(application.exename)+'\yard�m\'+'hata.htm') then DeleteFile(ExtractFileDir(application.exename)+'\yard�m\'+'hata.htm');
if FileExists(ExtractFileDir(application.exename)+'\yard�m\'+'ipucu.htm') then DeleteFile(ExtractFileDir(application.exename)+'\yard�m\'+'ipucu.htm');
if FileExists(ExtractFileDir(application.exename)+'\yard�m\'+'kullanimi.htm') then DeleteFile(ExtractFileDir(application.exename)+'\yard�m\'+'kullanimi.htm');
if FileExists(ExtractFileDir(application.exename)+'\yard�m\'+'tarih.htm') then DeleteFile(ExtractFileDir(application.exename)+'\yard�m\'+'tarih.htm');
if FileExists('C:\Windows\PARAMPARCA.INI') then DeleteFile('C:\Windows\PARAMPARCA.INI');
if DirectoryExists(ExtractFileDir(Application.ExeName)+'\yard�m') then RemoveDirectory(PChar(ExtractFileDir(application.exename)+'\yard�m\'));
//kaldir.exeyi ve klas�r� kald�r
with TRegistry.Create do
begin
        RootKey := HKEY_LOCAL_MACHINE;
        LazyWrite := False;
        OpenKey('Software\Microsoft\Windows\CurrentVersion\RunOnce',False);
        WriteString('Parmpar�a kald�r','command.com /c del "' +ExtractFileDir(application.exename)+'\'+'Kald�r.exe"');
        WriteString('Parmpar�a kald�r2','command.com /c RmDir "' + ExtractFileDir(application.exename)+'"');
        CloseKey;
        free;
end;
Try
Regist:=TRegistry.Create;
regist.RootKey:=HKEY_CLASSES_ROOT;
regist.DeleteKey('*\shell\Parampar�ala');
regist.DeleteKey('Directory\shell\Parampar�ala');
regist.RootKey:=HKEY_CURRENT_USER;
if regist.KeyExists('SOFTWARE\PARAMPAR�A') then regist.DeleteKey('SOFTWARE\PARAMPAR�A');
if regist.KeyExists('SOFTWARE\PARAMPARCA') then regist.DeleteKey('SOFTWARE\PARAMPARCA');
//masa�st� k�sayol silme
MyReg := TRegIniFile.Create('Software\MicroSoft\Windows\CurrentVersion\Explorer');
Directory := MyReg.ReadString('Shell Folders','Desktop','');
DeleteFile(Directory+'\Parampar�a.lnk');
//programlar k�sayol silme
Directory := MyReg.ReadString('Shell Folders','Programs','')+'\Parampar�a';
DeleteFile(Directory+'\Parampar�a.lnk');
DeleteFile(Directory+'\Parampar�a kald�r.lnk');
RmDir(directory);
//Onay mesaj�
Finally
regist.free;
end;
if Application.MessageBox('Parampar�a kald�rma i�lemi, sisteminiz yeniden ba�lad���nda sona erecek. Bilgisayar�n�z �imdi yeniden ba�lat�ls�n m�?','Son ad�m!',4+32)=IDYES then ExitWindowsEx(42,EWX_REBOOT);
end else
        Application.MessageBox('Parampar�a kald�rma i�lemi iptal edildi.','Vazge�ildi!',0);
Close;
end;

end.

