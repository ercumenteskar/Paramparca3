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
if Application.MessageBox('Bu iþlem Paramparça programýný bilgisayarýnýzdan kaldýracak. Devam etmek istiyor musunuz?','Dikkat!',MB_YESNO+48)=IDYES then
Begin
//Paramparça.exeyi kaldýr
if FileExists(ExtractFileDir(application.exename)+'\'+'Paramparça.exe') then DeleteFile(ExtractFileDir(application.exename)+'\'+'Paramparça.exe');
if FileExists(ExtractFileDir(application.exename)+'\'+'English.dil') then DeleteFile(ExtractFileDir(application.exename)+'\'+'English.dil');
if FileExists(ExtractFileDir(application.exename)+'\yardým\'+'index.htm') then DeleteFile(ExtractFileDir(application.exename)+'\yardým\'+'index.htm');
if FileExists(ExtractFileDir(application.exename)+'\yardým\'+'hata.htm') then DeleteFile(ExtractFileDir(application.exename)+'\yardým\'+'hata.htm');
if FileExists(ExtractFileDir(application.exename)+'\yardým\'+'ipucu.htm') then DeleteFile(ExtractFileDir(application.exename)+'\yardým\'+'ipucu.htm');
if FileExists(ExtractFileDir(application.exename)+'\yardým\'+'kullanimi.htm') then DeleteFile(ExtractFileDir(application.exename)+'\yardým\'+'kullanimi.htm');
if FileExists(ExtractFileDir(application.exename)+'\yardým\'+'tarih.htm') then DeleteFile(ExtractFileDir(application.exename)+'\yardým\'+'tarih.htm');
if FileExists('C:\Windows\PARAMPARCA.INI') then DeleteFile('C:\Windows\PARAMPARCA.INI');
if DirectoryExists(ExtractFileDir(Application.ExeName)+'\yardým') then RemoveDirectory(PChar(ExtractFileDir(application.exename)+'\yardým\'));
//kaldir.exeyi ve klasörü kaldýr
with TRegistry.Create do
begin
        RootKey := HKEY_LOCAL_MACHINE;
        LazyWrite := False;
        OpenKey('Software\Microsoft\Windows\CurrentVersion\RunOnce',False);
        WriteString('Parmparça kaldýr','command.com /c del "' +ExtractFileDir(application.exename)+'\'+'Kaldýr.exe"');
        WriteString('Parmparça kaldýr2','command.com /c RmDir "' + ExtractFileDir(application.exename)+'"');
        CloseKey;
        free;
end;
Try
Regist:=TRegistry.Create;
regist.RootKey:=HKEY_CLASSES_ROOT;
regist.DeleteKey('*\shell\Paramparçala');
regist.DeleteKey('Directory\shell\Paramparçala');
regist.RootKey:=HKEY_CURRENT_USER;
if regist.KeyExists('SOFTWARE\PARAMPARçA') then regist.DeleteKey('SOFTWARE\PARAMPARçA');
if regist.KeyExists('SOFTWARE\PARAMPARCA') then regist.DeleteKey('SOFTWARE\PARAMPARCA');
//masaüstü kýsayol silme
MyReg := TRegIniFile.Create('Software\MicroSoft\Windows\CurrentVersion\Explorer');
Directory := MyReg.ReadString('Shell Folders','Desktop','');
DeleteFile(Directory+'\Paramparça.lnk');
//programlar kýsayol silme
Directory := MyReg.ReadString('Shell Folders','Programs','')+'\Paramparça';
DeleteFile(Directory+'\Paramparça.lnk');
DeleteFile(Directory+'\Paramparça kaldýr.lnk');
RmDir(directory);
//Onay mesajý
Finally
regist.free;
end;
if Application.MessageBox('Paramparça kaldýrma iþlemi, sisteminiz yeniden baþladýðýnda sona erecek. Bilgisayarýnýz þimdi yeniden baþlatýlsýn mý?','Son adým!',4+32)=IDYES then ExitWindowsEx(42,EWX_REBOOT);
end else
        Application.MessageBox('Paramparça kaldýrma iþlemi iptal edildi.','Vazgeçildi!',0);
Close;
end;

end.

