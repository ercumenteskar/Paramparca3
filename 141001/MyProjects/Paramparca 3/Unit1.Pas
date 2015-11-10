unit Unit1;

interface
                               
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LMDBrowseEdit, LMDFileOpenEdit,  StdCtrls,
  dxfCheckBox, LMDEdit, ComCtrls, CoolGauge,
  dxfColorButton, LMDCustomComponent, LMDWndProcComponent,
  ExtCtrls, dxfOutlookBar, LMDScrollText, LMDControl,
  Buttons, OleCtrls, SHDocVw, LMDWaveComp, LMDWave, LightSpd,
  MSHTML, ActiveX, Registry, ShellApi, dxfLabel, dxfGroupBox, dxfTimer,  Zip,
  jpeg, dxButton, Placemnt, Spin, LMDGraphicControl,
  LMDBaseGraphicControl, LMDBaseControl, lmdformA, LMDCustomEdit,
  LMDCustomBrowseEdit, LMDBaseEdit, LMDCustomControl, dxCore,
  Menus, XPMenu, RXCtrls, LMDCustomPanel, LMDCustomBevelPanel, RxGIF,
  Animate, GIFCtrl;

type
  TForm1 = class(TForm)
    dxfOutlookBar1: TdxfOutlookBar;
    OutlookGroup1: TdxfOutlookGroup;
    dxfLabel8: TdxfLabel;
    LMDFileOpenEdit1: TLMDFileOpenEdit;
    LMDBrowseEdit1: TLMDBrowseEdit;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    CoolGauge1: TCoolGauge;
    CoolGauge2: TCoolGauge;
    dxfCheckBox1: TdxfCheckBox;
    dxfGroupBox1: TdxfGroupBox;
    SpinButton1: TSpinButton;
    dxfTimer4: TdxfTimer;
    SpinButton2: TSpinButton;
    SpinButton3: TSpinButton;
    SpinButton4: TSpinButton;
    SpinButton5: TSpinButton;
    SpinButton6: TSpinButton;
    dxfTimer5: TdxfTimer;
    SpinButton7: TSpinButton;
    SpinButton8: TSpinButton;
    SpinButton9: TSpinButton;
    dxfTimer3: TdxfTimer;
    dxfCheckBox2: TdxfCheckBox;
    dxfCheckBox3: TdxfCheckBox;
    LMDBrowseEdit2: TLMDBrowseEdit;
    OutlookGroup2: TdxfOutlookGroup;
    LMDForm1: TLMDForm;
    Timer1: TTimer;
    chickwav: TLMDWaveComp;
    lupwav: TLMDWaveComp;
    Zip1: TZip;
    OutlookGroup7: TdxfOutlookGroup;
    LightSpeed1: TLightSpeed;
    LMDScrollText1: TLMDScrollText;
    FormStorage1: TFormStorage;
    dxButton1: TdxButton;
    PopupMenu1: TPopupMenu;
    Sktrdktansonraonayiste1: TMenuItem;
    Sktrdktansonraonayiste2: TMenuItem;
    Kolaytama1: TMenuItem;
    XPMenu1: TXPMenu;
    RxLabell: TRxLabel;
    WebBrowser1: TWebBrowser;
    Dilseimi1: TMenuItem;
    rkeVarsaylan1: TMenuItem;
    Dahafazladil1: TMenuItem;
    Stringler: TMemo;
    RxLabel3: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel13: TRxLabel;
    RxLabel14: TRxLabel;
    RxLabel15: TRxLabel;
    Turkce: TMemo;
    RxLabel11: TRxLabel;
    LMDScrollText3: TLMDScrollText;
    RxGIFAnimator1: TRxGIFAnimator;
    RxLabel8: TRxLabel;
    Procedure DilSecildi(Sender :TObject);
    procedure LMDFileOpenEdit1Modified(Sender: TObject);
    procedure dxfColorButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LMDForm1FMDragDrop(Sender: TObject; fcount, x, y: Integer;
      FileList: TStrings);
    procedure dxfOutlookBar1ChangeActiveGroup(Sender: TObject);
    procedure OutlookGroup1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure LMDFileOpenEdit1Enter(Sender: TObject);
    procedure LMDBrowseEdit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure LoadBlankDoc(WB: TWebBrowser);
    procedure CheckDocReady(WB: TWebBrowser);
    procedure LoadDocFromString(WB: TWebBrowser; const HTMLString: string);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure dxfLabel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxfCheckBox2Click(Sender: TObject);
    procedure dxfCheckBox1Click(Sender: TObject);
    procedure SpinButton3DownClick(Sender: TObject);
    procedure SpinButton7DownClick(Sender: TObject);
    procedure SpinButton8DownClick(Sender: TObject);
    procedure SpinButton9DownClick(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton4DownClick(Sender: TObject);
    procedure SpinButton2DownClick(Sender: TObject);
    procedure SpinButton5DownClick(Sender: TObject);
    procedure SpinButton6DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure SpinButton2UpClick(Sender: TObject);
    procedure SpinButton3UpClick(Sender: TObject);
    procedure SpinButton4UpClick(Sender: TObject);
    procedure SpinButton5UpClick(Sender: TObject);
    procedure SpinButton6UpClick(Sender: TObject);
    procedure SpinButton7UpClick(Sender: TObject);
    procedure SpinButton8UpClick(Sender: TObject);
    procedure SpinButton9UpClick(Sender: TObject);
    procedure dxfTimer5DblClick(Sender: TObject);
    procedure dxfCheckBox3Click(Sender: TObject);
    procedure LMDBrowseEdit2Change(Sender: TObject);
    procedure Sktrdktansonraonayiste2Click(Sender: TObject);
    procedure Sktrdktansonraonayiste1Click(Sender: TObject);
    procedure Kolaytama1Click(Sender: TObject);
    procedure dxfLabel13MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxfLabel14MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxfLabel15MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxfTimer4DblClick(Sender: TObject);
    procedure dxfTimer3DblClick(Sender: TObject);
    procedure RxLabellMouseLeave(Sender: TObject);
    procedure RxLabellMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RxLabellClick(Sender: TObject);
    procedure dxfOutlookBar1BeforeChangeActiveGroup(Sender: TObject;
      NewGroup: TdxfOutlookGroup; var AllowChange: Boolean);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Dahafazladil1Click(Sender: TObject);
    procedure RxLabel11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RxLabel11MouseLeave(Sender: TObject);
    procedure RxLabel11Click(Sender: TObject);
    procedure LMDScrollText3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure OutlookGroup1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure RxLabel8MouseLeave(Sender: TObject);
    procedure RxLabel8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
  procedure WMNCPaint(var Msg: TWMNCPaint); message WM_NCPAINT;
  procedure WMSysCommand(var Msg: TMessage); message WM_SYSCOMMAND;
  function DirSize(Dir: String):int64;
  function GetLongPathName (Path : string) : string;
    { Private declarations }
  public
  parcaboyutu,klasorboyu:Int64;
  l,parcasayisi:Integer;
  fil,dir,boy:boolean;
  tus:string;
  temp:array[0..MAX_PATH] of char;
  CurZipFil:integer;
    { Public declarations }
  end;

var
  Form1: TForm1;

const
  ID_PARAMPARCA = WM_USER + 1;
  ID_LINE = WM_USER + 2;

implementation

{$R *.dfm}

procedure TForm1.WMNCPaint(var Msg: TWMNCPaint);
var
  dc: hDc;
  Pen: hPen;
  OldPen: hPen;
  OldBrush: hBrush;
begin
  inherited;
  dc := GetWindowDC(Handle);
  Msg.Result := 1;
  //Rengi deðiþtirmek için RGB deðerleri ile oynayýn... :)
  Pen := CreatePen(PS_SOLID, 1, RGB(4, 130, 252));
  OldPen := SelectObject(dc, Pen);
  OldBrush := SelectObject(dc, GetStockObject(NULL_BRUSH));
  Rectangle(dc, 0, 0, Form1.Width, Form1.Height);
  SelectObject(dc, OldBrush);
  SelectObject(dc, OldPen);
  DeleteObject(Pen);
  ReleaseDC(Handle, Canvas.Handle);
end;

Function TForm1.DirSize(Dir: String):int64;
Var
        Bulunan:TSearchRec;
        Klasorboyutu:Int64;
begin
Klasorboyutu:=0;
if Copy(dir,length(dir),1)='\' then Delete(dir,length(dir),1);
if FindFirst(dir+'\*.*',faAnyFile,bulunan)=0 then
        if (bulunan.name<>'') and (bulunan.name<>'.') and (bulunan.name<>'..') then
                if (bulunan.attr and faDirectory)=0 then klasorboyutu:=klasorboyutu+bulunan.size
                        else Klasorboyutu:=Klasorboyutu+Dirsize(dir+'\'+bulunan.name);
While FindNext(bulunan)=0 do
        if (bulunan.name<>'') and (bulunan.name<>'.') and (bulunan.name<>'..') then
                if (bulunan.attr and faDirectory)=0 then klasorboyutu:=klasorboyutu+bulunan.size
                        else Klasorboyutu:=Klasorboyutu+Dirsize(dir+'\'+bulunan.name);
FindClose(Bulunan);
Result:=klasorboyutu;
end;


procedure TForm1.LMDFileOpenEdit1Modified(Sender: TObject);
Var
        fayll:File;
begin
if LMDFileOpenEdit1.Filename='' then LMDFileOpenEdit1.ShowHint:=False
else Begin
     LMDFileOpenEdit1.Hint:=LMDFileOpenEdit1.Filename;
     LMDFileOpenEdit1.ShowHint:=True;
     end;
if FileExists(LMDFileOpenEdit1.Filename) then
        Begin
        l:=0;
        DxButton1.Enabled:=True;
        ComboBox1.Enabled:=True;
        if (sender=LMDBrowseEdit2) or (sender=LMDFileOpenEdit1) then LMDBrowseEdit1.Text:=ExtractFilePath(LMDFileOpenEdit1.Filename);
        LMDBrowseEdit1.Enabled:=True;
        AssignFile(fayll,LMDFileOpenEdit1.Filename);
        FileMode := 0;
        Reset(fayll,1);
        if dxfCheckBox2.Checked then edit1.Text:='< '+IntToStr(FileSize(fayll))+' byte '+'('+formatfloat('0.##',(FileSize(fayll) / 1048576))+' MB)'
        else edit1.Text:=IntToStr(FileSize(fayll))+' byte '+'('+formatfloat('0.##',(FileSize(fayll) / 1048576))+' MB)';
        CloseFile(Fayll);
        ComboBox1Change(Sender);
        lupwav.PlaySound(sdSync);
        fil:=true;
        if dxfCheckBox1.Checked then begin
                                     edit2.Text:='1';
                                     combobox1.Enabled:=false;
                                     end;
        end
        else
        Begin
        DxButton1.Enabled:=false;
        ComboBox1.Enabled:=False;
        LMDBrowseEdit1.Text:='';
        LMDBrowseEdit1.Enabled:=False;
        edit1.Text:='';
        edit2.Text:='';
        if fil then chickwav.PlaySound(sdSync);
        fil:=false;
        end;
end;

procedure TForm1.dxfColorButton1Click(Sender: TObject);
Var
        fayll,Dosya,Dosya2:File;
        BafIr:Array[1..1024000] of Byte;
        BufferIm:Cardinal;
        nafnaf,gecici:String;
        parcasay:String[13];
        a,b:integer;
        yedek:Int64;
        Drives:dword;
        MStream:TResourceStream;
        don,disket:boolean;
        aysetut:Int64;
        md,pb:Cardinal;
begin
Try
DxButton1.Caption:=Stringler.Lines.Strings[21];
DxButton1.Enabled:=false;
DxButton1.Repaint;
drives := GetLogicalDrives;
if LMDBrowseEdit1.Text[length(LMDBrowseEdit1.Text)]<>'\' then LMDBrowseEdit1.Text:=LMDBrowseEdit1.Text+'\';
if Not ((Copy(LMDBrowseEdit1.Text,2,2)=':\') and ((drives and ( 1 shl (Ord(LMDBrowseEdit1.Text[1])-65) )) > 0)) then Begin
                                                                                                                     chickwav.PlaySound(sdSync);
                                                                                                                     Application.MessageBox(PChar(Stringler.Lines.Strings[22]),PChar(Stringler.Lines.Strings[23]),$00000030);
                                                                                                                     exit;
                                                                                                                     end
else
Begin
if dxfCheckBox1.Checked then
        Begin
        if dxfTimer5.EndSec=0 then Begin
                                   Application.MessageBox(PChar(Stringler.Lines.Strings[24]),PChar('Paramparça'),$00000030);
                                   end
        else if dxfTimer4.EndSec=0 then Begin
                                        Application.MessageBox(PChar(Stringler.Lines.Strings[25]),PChar('Paramparça'),$00000030);
                                        end
        else Begin
             AssignFile(Dosya,LMDFileOpenEdit1.Filename);
             FileMode := 0;
             Reset(Dosya,1);
             AssignFile(Dosya2,LMDBrowseEdit1.Text+ChangeFileExt(ExtractFileName(LMDFileOpenEdit1.Filename),'')+' '+inttostr(dxfTimer4.EndSec-dxfTimer3.EndSec)+Stringler.Lines.Strings[26]+ExtractFileExt(LMDFileOpenEdit1.Filename));
             Rewrite(Dosya2,1);
             md:=FileSize(Dosya);
             pb:=(md div dxfTimer5.EndSec)*(dxfTimer4.EndSec-dxfTimer3.EndSec);
             BufferIm:=(md div dxfTimer5.EndSec)*(dxfTimer3.EndSec);
             CoolGauge1.MaxValue:=(pb Div 10);
             Coolgauge2.MaxValue:=(pb Div 10);
             Seek(dosya,BufferIm);
             While pb>0 do
                Begin
                if pb>1024000 then
                        Begin
                        BlockRead(Dosya,bafIr,1024000,b);
                        BlockWrite(Dosya2,BafIr,b);
                        pb:=pb-1024000;
                        Coolgauge1.Progress:=(FilePos(Dosya2) div 10);
                        Coolgauge2.Progress:=(FilePos(Dosya2) div 10);
                        end
                else Begin
                     BlockRead(Dosya,bafIr,pb,b);
                     BlockWrite(Dosya2,BafIr,b);
                     pb:=0;
                     Coolgauge1.Progress:=Coolgauge1.MaxValue;
                     Coolgauge2.Progress:=Coolgauge2.MaxValue;
                     end;
                end;
             CloseFile(Dosya);
             CloseFile(Dosya2);
             if Sktrdktansonraonayiste1.Checked then Begin
                                gecici:='explorer.exe '+ExtractFilePath(LMDBrowseEdit1.Text+ChangeFileExt(ExtractFileName(LMDFileOpenEdit1.Filename),'')+' '+inttostr(dxfTimer4.EndSec-dxfTimer3.EndSec)+Stringler.Lines.Strings[26]+ExtractFileExt(LMDFileOpenEdit1.Filename));
                                WinExec(pchar(gecici), SW_SHOW);
                                end;

             end;
        exit;
        end;
if dxfcheckbox2.Checked then
if dxfCheckBox3.Checked then
        Begin
        OutlookGroup1.Caption:=Stringler.Lines.Strings[27];
        GetTempPath(Sizeof(temp),@temp);
        Try
        if FileExists(temp+'ZipDll.dll')=false then begin
                        MStream := TResourceStream.CreateFromID(HInstance, 3, PChar('GRK'));
                        MStream.SaveToFile(temp+'ZipDll.dll');
                        MStream.Free;
                        end;
        Zip1.DllPath:=temp;
        zip1.Filename:=temp+'_paramparca';
        zip1.FileSpecList.Clear;
        zip1.AddPath:=AppendSlash(LMDBrowseEdit2.Path);
        zip1.FileSpecList.Add('*.*');
        zip1.AddOptions:=[aoRecursive, aoFolderEntries, aoZipTime, aoHiddenFiles];
        if zip1.Add=0 then begin
                           exit;
                           end;
        Finally
        DeleteFile(temp+'ZipDll.dll');
        end;
        OutlookGroup1.Caption:='Para&mparça';
        end
  else  Begin
        OutlookGroup1.Caption:=Stringler.Lines.Strings[28];
        GetTempPath(SizeOf(temp), @temp);
        Try
        if FileExists(temp+'ZipDll.dll')=false then begin
                        MStream := TResourceStream.CreateFromID(HInstance, 3, PChar('GRK'));
                        MStream.SaveToFile(temp+'ZipDll.dll');
                        MStream.Free;
                        end;
        Zip1.DllPath:=temp;
        zip1.Filename:=temp+'_paramparca';
        zip1.FileSpecList.Clear;
        zip1.FileSpecList.Add(LMDFileOpenEdit1.Text);
        zip1.AddOptions:=[aoZipTime, aoHiddenFiles];
        if zip1.Add=0 then Begin
                           exit;
                           end;
        Finally
        DeleteFile(temp+'ZipDll.dll');
        end;
        OutlookGroup1.Caption:='Para&mparça';
        end;
if dxfCheckBox2.Checked then
Begin
AssignFile(fayll,temp+'_paramparca');
FileMode := 0;
Reset(fayll,1);
edit1.Text:=IntToStr(FileSize(fayll))+' byte '+'('+formatfloat('0.##',(FileSize(fayll) / 1048576))+' MB)';
ComboBox1Change(Sender);
if (a<>0) and (Combobox1.ItemIndex=-1) or (FileSize(fayll)+13<parcaboyutu) then
                Begin
                chickwav.PlaySound(sdSync);
                if dxfCheckBox3.checked then Application.MessageBox(PChar(Stringler.Lines.Strings[29]+inttostr(FileSize(fayll))+' byte. '+PChar(Stringler.Lines.Strings[30])),PChar(Stringler.Lines.Strings[31]),$00000030)
                else Application.MessageBox(PChar(Stringler.Lines.Strings[32]+inttostr(FileSize(fayll))+' byte. '+Stringler.Lines.Strings[33]),PChar(Stringler.Lines.Strings[31]),$00000030);
                CloseFile(fayll);
                DeleteFile(temp+'_paramparca');
                exit;
                end;
if (Sktrdktansonraonayiste2.Checked) then
        if dxfCheckBox3.checked then if (Application.Messagebox(PChar(Stringler.Lines.Strings[29]+inttostr(FileSize(fayll))+' byte. '+Stringler.Lines.Strings[34]+inttostr(parcasayisi)+' (+1 '+Stringler.Lines.Strings[35]+'). '+Stringler.Lines.Strings[36]),PChar(Stringler.Lines.Strings[37]),$00000024)=7) then
                          Begin
                          CloseFile(fayll);
                          DeleteFile(temp+'_paramparca');
                          exit;
                          end;
        if not dxfCheckBox3.checked then if (Application.Messagebox(PChar(Stringler.Lines.Strings[32]+inttostr(FileSize(fayll))+' byte. '+Stringler.Lines.Strings[34]+inttostr(parcasayisi)+' (+1 '+Stringler.Lines.Strings[35]+'). '+Stringler.Lines.Strings[36]),PChar(Stringler.Lines.Strings[37]),$00000024)=7) then
                          Begin
                          CloseFile(fayll);
                          DeleteFile(temp+'_paramparca');
                          exit;
                          end;
end
else Begin
     AssignFile(fayll,LMDFileOpenEdit1.Text);
     FileMode := 0;
     Reset(fayll,1);
     end;
Val(Combobox1.Text,parcaboyutu,a);
if (a<>0) and (Combobox1.ItemIndex=-1) or (FileSize(fayll)+13<parcaboyutu) then
                Begin
                chickwav.PlaySound(sdSync);
                Application.MessageBox(PChar(Stringler.Lines.Strings[31]+' '+Stringler.Lines.Strings[38]),PChar(Stringler.Lines.Strings[31]),$00000030);
                CloseFile(fayll);
                if dxfCheckBox2.Checked then DeleteFile(temp+'_paramparca');
                exit;
                end else
        Case Combobox1.ItemIndex of
        0:parcaboyutu:=32768;
        1:parcaboyutu:=65536;
        2:parcaboyutu:=131072;
        3:parcaboyutu:=262144;
        4:parcaboyutu:=524288;
        5:parcaboyutu:=1048576;
        6:parcaboyutu:=1457664;
        7:parcaboyutu:=2097152;
        8:parcaboyutu:=4194304;
        9:parcaboyutu:=8388608;
        10:parcaboyutu:=16777216;
        11:parcaboyutu:=33554432;
        12:parcaboyutu:=67108864;
        13:parcaboyutu:=100431872;
        14:parcaboyutu:=134217728;
        15:parcaboyutu:=268435456;
        16:parcaboyutu:=536870912;
        17:parcaboyutu:=1070284800;
        18:parcaboyutu:=1073741824;
        19:parcaboyutu:=2147483648;
        20:parcaboyutu:=3221225472;
        end;
lupwav.PlaySound(sdSync);
CloseFile(fayll);
if (UpCase(LMDBrowseEdit1.Text[1])='A') or (UpCase(LMDBrowseEdit1.Text[1])='B') then disket:=true else disket:=false;
if DiskSize(ord(UpCase(LMDBrowseEdit1.Text[1]))-64)<parcaboyutu then begin Application.MessageBox(PChar(Stringler.Lines.Strings[39]),PChar(Stringler.Lines.Strings[40]),$00000030); if dxfCheckBox2.Checked then DeleteFile(temp+'_paramparca'); exit; end;
if DiskFree(ord(UpCase(LMDBrowseEdit1.Text[1]))-64)<parcaboyutu then begin Application.MessageBox(PChar(Stringler.Lines.Strings[41]),PChar(Stringler.Lines.Strings[42]),$00000030); if dxfCheckBox2.Checked then DeleteFile(temp+'_paramparca'); exit; end;
a:=1;
if dxfCheckBox3.Checked then
        Begin
        nafnaf:=temp+'_paramparca';
        ForceDirectories(LMDBrowseEdit1.Text+ExtractFileName(LMDBrowseEdit2.Path)+' Paramparça ('+IntToStr(parcasayisi+1)+Stringler.Lines.Strings[54]);
        gecici:=LMDBrowseEdit1.Text+ExtractFileName(LMDBrowseEdit2.Path)+' Paramparça ('+IntToStr(parcasayisi+1)+Stringler.Lines.Strings[54]+'\'+ExtractFileName(LMDBrowseEdit2.Path)+'.P'+inttostr(a);
        end
else if dxfCheckBox2.Checked then
        Begin
        nafnaf:=temp+'_paramparca';
        ForceDirectories(LMDBrowseEdit1.Text+ExtractFileName(LMDFileOpenEdit1.Filename)+' Paramparça ('+IntToStr(parcasayisi+1)+Stringler.Lines.Strings[54]);
        gecici:=LMDBrowseEdit1.Text+ExtractFileName(LMDFileOpenEdit1.Filename)+' Paramparça ('+IntToStr(parcasayisi+1)+Stringler.Lines.Strings[54]+'\'+ExtractFileName(LMDFileOpenEdit1.Filename)+'.P'+inttostr(a);
        end
else Begin
     nafnaf:=LMDFileOpenEdit1.Filename;
     ForceDirectories(LMDBrowseEdit1.Text+ExtractFileName(nafnaf)+' Paramparça ('+IntToStr(parcasayisi+1)+Stringler.Lines.Strings[54]);
     gecici:=LMDBrowseEdit1.Text+ExtractFileName(nafnaf)+' Paramparça ('+IntToStr(parcasayisi+1)+Stringler.Lines.Strings[54]+'\'+ExtractFileName(nafnaf)+'.P'+inttostr(a);
     end;
Coolgauge2.Progress:=0;
Coolgauge1.Progress:=0;
aysetut:=parcaboyutu;
if DiskFree(ord(UpCase(LMDBrowseEdit1.Text[1]))-64)<parcaboyutu then parcaboyutu:=DiskFree(ord(UpCase(LMDBrowseEdit1.Text[1]))-64);
form1.Repaint;
AssignFile(Dosya,nafnaf);
FileMode := 0;
Reset(Dosya,1);
CoolGauge1.MaxValue:=parcaboyutu div 10;
Coolgauge2.MaxValue:=(FileSize(Dosya)+162816) div 10;
parcasay:=IntToStr(parcasayisi);
AssignFile(Dosya2,gecici);
Rewrite(Dosya2,1);
BlockWrite(Dosya2,parcasay,13);
yedek:=parcaboyutu-13;
        While yedek>0 do
        if yedek>1024000 then
                if yedek<=FileSize(Dosya)-FilePos(Dosya) then
                        Begin
                        yedek:=yedek-1024000;
                        BlockRead(Dosya,BafIr,1024000,b);
                        BlockWrite(Dosya2,BafIr,b);
                        Coolgauge1.Progress:=FilePos(Dosya2) Div 10;
                        Coolgauge2.Progress:=FilePos(Dosya) Div 10;
                        end
                        else
                        Begin
                        yedek:=FileSize(Dosya)-FilePos(Dosya);
                        yedek:=yedek-1024000;
                        BlockRead(Dosya,BafIr,1024000,b);
                        BlockWrite(Dosya2,BafIr,b);
                        Coolgauge1.Progress:=FilePos(Dosya2) Div 10;
                        Coolgauge2.Progress:=FilePos(Dosya) Div 10;
                        end
                else
                if yedek<=FileSize(Dosya)-FilePos(Dosya) then
                        Begin
                        BlockRead(Dosya,BafIr,yedek);
                        BlockWrite(Dosya2,BafIr,yedek);
                        Coolgauge1.Progress:=Coolgauge1.MaxValue;
                        Coolgauge2.Progress:=FilePos(Dosya) Div 10;
                        yedek:=0;
                        end
                        else
                        Begin
                        yedek:=FileSize(Dosya)-FilePos(Dosya);
                        BlockRead(Dosya,BafIr,yedek);
                        BlockWrite(Dosya2,BafIr,yedek);
                        Coolgauge1.Progress:=Coolgauge1.MaxValue;
                        Coolgauge2.Progress:=FilePos(Dosya) Div 10;
                        yedek:=0;
                        end;
Coolgauge1.Progress:=Coolgauge1.MaxValue;
Coolgauge2.Progress:=FilePos(Dosya) Div 10;
CloseFile(Dosya2);
For a:=2 to parcasayisi do
Begin
        parcaboyutu:=aysetut;
        don:=true;
        if (DiskFree(ord(UpCase(LMDBrowseEdit1.Text[1]))-64)<parcaboyutu) and (disket) then
                While don do
                if Application.MessageBox(PChar(Stringler.Lines.Strings[43]),PChar(Stringler.Lines.Strings[44]),$00000025)=IDCANCEL then
                        begin
                        if dxfCheckBox2.Checked then DeleteFile(temp+'_paramparca');
                        exit;
                        end
                else if (DiskFree(ord(UpCase(LMDBrowseEdit1.Text[1]))-64)<parcaboyutu) then don:=true
                else don:=false;
        if dxfCheckBox3.Checked then gecici:=LMDBrowseEdit1.Text+ExtractFileName(LMDBrowseEdit2.Path)+' Paramparça ('+IntToStr(parcasayisi+1)+Stringler.Lines.Strings[54]+'\'+ExtractFileName(LMDBrowseEdit2.Path)+'.P'+inttostr(a)
        else if dxfCheckBox2.Checked then gecici:=LMDBrowseEdit1.Text+ExtractFileName(LMDFileOpenEdit1.Filename)+' Paramparça ('+IntToStr(parcasayisi+1)+Stringler.Lines.Strings[54]+'\'+ExtractFileName(LMDFileOpenEdit1.Filename)+'.P'+inttostr(a)
        else gecici:=LMDBrowseEdit1.Text+ExtractFileName(nafnaf)+' Paramparça ('+IntToStr(parcasayisi+1)+Stringler.Lines.Strings[54]+'\'+ExtractFileName(nafnaf)+'.P'+inttostr(a);
        if DiskFree(ord(UpCase(LMDBrowseEdit1.Text[1]))-64)<parcaboyutu then parcaboyutu:=DiskFree(ord(UpCase(LMDBrowseEdit1.Text[1]))-64);
        form1.Repaint;
        AssignFile(Dosya2,gecici);
        yedek:=parcaboyutu;
        Rewrite(Dosya2,1);
        if yedek>=FileSize(Dosya)-FilePos(Dosya) then CoolGauge1.MaxValue:=(FileSize(Dosya)-FilePos(Dosya)) div 10 else Coolgauge1.MaxValue:=yedek div 10;
        Coolgauge1.Progress:=0;
        While yedek>0 do
        if yedek>1024000 then
                if yedek<=FileSize(Dosya)-FilePos(Dosya) then
                        Begin
                        yedek:=yedek-1024000;
                        BlockRead(Dosya,BafIr,1024000,b);
                        BlockWrite(Dosya2,BafIr,b);
                        Coolgauge1.Progress:=FilePos(Dosya2) Div 10;
                        Coolgauge2.Progress:=FilePos(Dosya) Div 10;
                        end
                        else
                        Begin
                        yedek:=FileSize(Dosya)-FilePos(Dosya);
                        yedek:=yedek-1024000;
                        BlockRead(Dosya,BafIr,1024000,b);
                        BlockWrite(Dosya2,BafIr,b);
                        Coolgauge1.Progress:=FilePos(Dosya2) Div 10;
                        Coolgauge2.Progress:=FilePos(Dosya) Div 10;
                        end
                else
                if yedek<=FileSize(Dosya)-FilePos(Dosya) then
                        Begin
                        BlockRead(Dosya,BafIr,yedek);
                        BlockWrite(Dosya2,BafIr,yedek);
                        Coolgauge1.Progress:=Coolgauge1.MaxValue;
                        Coolgauge2.Progress:=FilePos(Dosya) Div 10;
                        yedek:=0;
                        end
                        else
                        Begin
                        yedek:=FileSize(Dosya)-FilePos(Dosya);
                        BlockRead(Dosya,BafIr,yedek);
                        BlockWrite(Dosya2,BafIr,yedek);
                        Coolgauge1.Progress:=Coolgauge1.MaxValue;
                        Coolgauge2.Progress:=FilePos(Dosya) Div 10;
                        yedek:=0;
                        end;
Coolgauge1.Progress:=Coolgauge1.MaxValue;
CloseFile(Dosya2);
Coolgauge2.Progress:=FilePos(Dosya) Div 10;
end;
don:=true;
parcaboyutu:=aysetut;
if (DiskFree(ord(UpCase(LMDBrowseEdit1.Text[1]))-64)<292000) and (disket) then
        While don do
        if Application.MessageBox(PChar(Stringler.Lines.Strings[43]),PChar(Stringler.Lines.Strings[44]),$00000025)=IDCANCEL then
                begin
                if dxfCheckBox2.Checked then DeleteFile(temp+'_paramparca');
                exit;
                end
        else if (DiskFree(ord(UpCase(LMDBrowseEdit1.Text[1]))-64)<292000) then don:=true
        else don:=false;
if dxfCheckBox3.Checked then
        Begin
        gecici:=LMDBrowseEdit1.Text+ExtractFileName(LMDBrowseEdit2.Path)+' Paramparça ('+IntToStr(parcasayisi+1)+Stringler.Lines.Strings[54]+'\'+ExtractFileName(LMDBrowseEdit2.Path)+'.exe';
        MStream := TResourceStream.CreateFromID(HInstance, 2, PChar('GRK'));
        end
else if dxfCheckBox2.Checked then
        Begin
        gecici:=LMDBrowseEdit1.Text+ExtractFileName(LMDFileOpenEdit1.Filename)+' Paramparça ('+IntToStr(parcasayisi+1)+Stringler.Lines.Strings[54]+'\'+ExtractFileName(LMDFileOpenEdit1.Filename)+'.exe';
        MStream := TResourceStream.CreateFromID(HInstance, 2, PChar('GRK'));
        end
else Begin
     gecici:=LMDBrowseEdit1.Text+ExtractFileName(nafnaf)+' Paramparça ('+IntToStr(parcasayisi+1)+Stringler.Lines.Strings[54]+'\'+ExtractFileName(nafnaf)+'.exe';
     MStream := TResourceStream.CreateFromID(HInstance, 1, PChar('GRK'));
     end;
if DiskFree(ord(UpCase(LMDBrowseEdit1.Text[1]))-64)<parcaboyutu then parcaboyutu:=DiskFree(ord(UpCase(LMDBrowseEdit1.Text[1]))-64);
form1.Repaint;
try
MStream.SaveToFile(gecici);
finally
MStream.Free;
end;
Coolgauge2.Progress:=CoolGauge2.MaxValue;
CloseFile(Dosya);
if Sktrdktansonraonayiste1.Checked then Begin
                             gecici:='explorer.exe '+ExtractFilePath(gecici);
                             WinExec(pchar(gecici), SW_SHOW);
                             end;
end;
finally
if dxfCheckBox2.Checked then DeleteFile(temp+'_paramparca');
Timer1.enabled:=true;
DxButton1.Caption:=Stringler.Lines.Strings[15];
DxButton1.Enabled:=true;
DxButton1.Repaint;
form1.Repaint;
end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
Var
        a:integer;
        d:File;
begin
if Combobox1.Text<>'' then
Begin
Val(Combobox1.Text,parcaboyutu,a);
if (a=0) and (parcaboyutu=0) then begin
                                  if boy then
                                  Begin
                                  chickwav.PlaySound(sdSync);
                                  boy:=false;
                                  DxButton1.enabled:=False;
                                  exit;
                                  end;
                                  DxButton1.enabled:=False;
                                  exit;
                                  end;
if (Combobox1.ItemIndex=-1) or (Combobox1.Items.Strings[Combobox1.ItemIndex]<>Combobox1.Text) then
                if  a<>0 then Begin
                                if boy then
                                Begin
                                chickwav.PlaySound(sdSync);
                                DxButton1.enabled:=False;
                                boy:=false;
                                exit;
                                end;
                                DxButton1.enabled:=False;
                                exit;
                                end
                                else
                                Begin
                                if boy=false then
                                                begin
                                                lupwav.PlaySound(sdSync);
                                                boy:=true;
                                                DxButton1.enabled:=True;
                                                end;
                                DxButton1.enabled:=True;
                                end
        else
        Begin
        Case Combobox1.ItemIndex of
        0:parcaboyutu:=32768;
        1:parcaboyutu:=65536;
        2:parcaboyutu:=131072;
        3:parcaboyutu:=262144;
        4:parcaboyutu:=524288;
        5:parcaboyutu:=1048576;
        6:parcaboyutu:=1457664;
        7:parcaboyutu:=2097152;
        8:parcaboyutu:=4194304;
        9:parcaboyutu:=8388608;
        10:parcaboyutu:=16777216;
        11:parcaboyutu:=33554432;
        12:parcaboyutu:=67108864;
        13:parcaboyutu:=100431872;
        14:parcaboyutu:=134217728;
        15:parcaboyutu:=268435456;
        16:parcaboyutu:=536870912;
        17:parcaboyutu:=1070284800;
        18:parcaboyutu:=1073741824;
        19:parcaboyutu:=2147483648;
        20:parcaboyutu:=3221225472;
        end;
        if boy=false then begin
                          lupwav.PlaySound(sdSync);
                          boy:=true;
                          end;
        DxButton1.enabled:=true;
        end;
l:=1;
if dxfCheckBox3.Checked then
        if sender=DxButton1 then
                        Begin
                        AssignFile(d,temp+'_paramparca');
                        FileMode := 0;
                        Reset(d,1);
                        parcasayisi:=FileSize(d)+13;
                        closefile(d);
                        end
                   else Begin
                        parcasayisi:=DirSize(LMDBrowseEdit2.Path)+13;
                        end
else if dxfCheckBox2.Checked then
        if sender=DxButton1 then
                        Begin
                        AssignFile(d,temp+'_paramparca');
                        FileMode := 0;
                        Reset(d,1);
                        parcasayisi:=FileSize(d)+13;
                        closefile(d);
                        end
                   else Begin
                        AssignFile(d,LMDFileOpenEdit1.Filename);
                        FileMode := 0;
                        Reset(d,1);
                        parcasayisi:=FileSize(d)+13;
                        closefile(d);
                        end
else Begin
     AssignFile(d,LMDFileOpenEdit1.Filename);
     FileMode := 0;
     Reset(d,1);
     parcasayisi:=FileSize(d)+13;
     closefile(d);
     end;
While parcasayisi>Parcaboyutu do
                Begin
                l:=l+1;
                parcasayisi:=parcasayisi-parcaboyutu;
                end;
parcasayisi:=l;
Edit2.Text:=IntToStr(l)+' (+1 '+Stringler.Lines.Strings[35]+') '+Stringler.Lines.Strings[45];
end
else
        Begin
        Edit2.Text:='';
        DxButton1.Enabled:=False;
        end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Timer1.enabled:=False;
CoolGauge1.Progress:=0;
CoolGauge2.Progress:=0;
end;

procedure TForm1.ComboBox1Exit(Sender: TObject);
begin
if Combobox1.Text='' then Combobox1.Text:='0';
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Zip1.Free;
end;

function TForm1.GetLongPathName (Path : string) : string;
var
        HFile : THandle;
        i : integer;
        Fd: TWin32FindData;
begin
Result := '';
Path := ExpandFileName (Path);
i := Length (Path);
if i <= 0 then Exit;
if (i > 3) and (Path[i] = '\') then
        SetLength (Path, i - 1);
while (Length(Path) > 10) do
        begin
        HFile := FindFirstFile (PChar(Path), Fd);
        if (HFile = INVALID_HANDLE_VALUE) then
                begin
                Result := '';
                Exit;
                end;
        Windows.FindClose (HFile);
        Result := '\' + string (Fd.cFileName) + Result;
        Path := ExtractFilePath (Path);
        SetLength (Path, Length(Path)-1);
        end;
Result := Path + Result;
end;

procedure TForm1.LMDForm1FMDragDrop(Sender: TObject; fcount, x, y: Integer;
  FileList: TStrings);
begin
if FileExists(FileList.Strings[0]) then Begin
                                        dxfCheckBox2.Checked:=False;
                                        dxfCheckBox3.Checked:=False;
                                        LMDFileOpenEdit1.Filename:=GetLongPathName(FileList.Strings[0]);
                                        dxfOutlookBar1.ActiveGroup:=OutlookGroup1;
                                        end
else if DirectoryExists(FileList.Strings[0]) then
                                        Begin
                                        dxfCheckBox3.Checked:=true;
                                        LMDBrowseEdit2.Path:=GetLongPathName(FileList.Strings[0]);
                                        dxfOutlookBar1.ActiveGroup:=OutlookGroup1;
                                        end;
end;

procedure TForm1.dxfOutlookBar1ChangeActiveGroup(Sender: TObject);
begin
if dxfOutlookBar1.ActiveGroup=Outlookgroup7 then LMDScrollText1.Scroll:=True else LMDScrollText1.Scroll:=False;
if dxfOutlookBar1.ActiveGroup=OutlookGroup2 then Begin
                                                 webbrowser1.Navigate(ExtractFilePath(Application.ExeName)+'yardým\index.htm');
                                                 end;
end;

procedure TForm1.OutlookGroup1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if Kolaytama1.Checked then
begin
 if Button = mbLeft then
 begin
   ReleaseCapture;
   SendMessage(Handle,WM_SYSCOMMAND,SC_MOVE+1,0);
 end;
end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
LMDScrollText3.Scroll:=True;
if Stringler.Lines.Count=0 then Stringler.Lines.Text:=Turkce.Lines.Text;
OutlookGroup2.Caption:=Stringler.Lines.Strings[0];
OutlookGroup7.Caption:=Stringler.Lines.Strings[1];
rxlabel1.Caption:=Stringler.Lines.Strings[2];
rxlabel2.Caption:=Stringler.Lines.Strings[3];
rxlabel3.Caption:=Stringler.Lines.Strings[4];
rxlabel4.Caption:=Stringler.Lines.Strings[5];
rxlabel5.Caption:=Stringler.Lines.Strings[6];
rxlabel6.Caption:=Stringler.Lines.Strings[7];
rxlabel7.Caption:=Stringler.Lines.Strings[8];
rxlabel9.Caption:=Stringler.Lines.Strings[9];
rxlabel10.Caption:=Stringler.Lines.Strings[10];
rxlabel13.Caption:=Stringler.Lines.Strings[11];
rxlabel14.Caption:=Stringler.Lines.Strings[12];
rxlabel15.Caption:=Stringler.Lines.Strings[13];
dxfGroupBox1.Caption:=Stringler.Lines.Strings[14];
dxButton1.Caption:=Stringler.Lines.Strings[15];
dxftimer3.Hint:=Stringler.Lines.Strings[16];
dxftimer4.Hint:=Stringler.Lines.Strings[16];
dxftimer5.Hint:=Stringler.Lines.Strings[16];
Kolaytama1.Caption:=Stringler.Lines.Strings[17];
Sktrdktansonraonayiste2.Caption:=Stringler.Lines.Strings[18];
Sktrdktansonraonayiste1.Caption:=Stringler.Lines.Strings[19];
Dilseimi1.Caption:=Stringler.Lines.Strings[20];
Dahafazladil1.Caption:=Stringler.Lines.Strings[55];
//
boy:=true;
dir:=true;
if Paramcount>0 then
if FileExists(ParamStr(1)) then Begin
                                dxfCheckBox2.Checked:=False;
                                dxfCheckBox3.Checked:=False;
                                LMDFileOpenEdit1.Filename:=GetLongPathName(ParamStr(1));
                                dxfOutlookBar1.ActiveGroup:=OutlookGroup1;
                                end
else if DirectoryExists(ParamStr(1)) then Begin
                                          dxfCheckBox3.Checked:=true;
                                          LMDBrowseEdit2.Path:=GetLongPathName(ParamStr(1));
                                          dxfOutlookBar1.ActiveGroup:=OutlookGroup1;
                                          end;

end;

procedure TForm1.LoadDocFromString(WB: TWebBrowser; const HTMLString: string);
var
  v: OleVariant;
  HTMLDocument: IHTMLDocument2;
begin
  CheckDocReady(WB);
  HTMLDocument := WB.Document as IHTMLDocument2 ;
  v := VarArrayCreate([0, 0], varVariant);
  v[0] := HTMLString;
  HTMLDocument.Write(PSafeArray(TVarData(v).VArray));
  HTMLDocument.Close;
end;

procedure TForm1.CheckDocReady(WB: TWebBrowser);
begin
  if not Assigned(WB.Document) then
    LoadBlankDoc(WB);
end;

procedure TForm1.LoadBlankDoc(WB: TWebBrowser);
begin
  WB.Navigate('about:blank', EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  while WB.ReadyState = READYSTATE_COMPLETE do
  begin
    Application.ProcessMessages;
    Sleep(0);
  end;
end;

procedure TForm1.LMDFileOpenEdit1Enter(Sender: TObject);
begin
chickwav.PlaySound(sdsync);
end;

procedure TForm1.LMDBrowseEdit1Change(Sender: TObject);
Var
        Drives:dword;
begin
if LMDBrowseEdit1.Path='' then LMDBrowseEdit1.ShowHint:=False
else Begin
     LMDBrowseEdit1.Hint:=LMDBrowseEdit1.Path;
     LMDBrowseEdit1.ShowHint:=True;
     end;
Drives:=GetLogicalDrives;
if (dir) and (Not ((Copy(LMDBrowseEdit1.Text,2,2)=':\') and ((drives and ( 1 shl (Ord(LMDBrowseEdit1.Text[1])-65) )) > 0))) then Begin chickwav.PlaySound(sdSync); dir:=false; DxButton1.Enabled:=false; exit; end;
if (dir=false) and ((Copy(LMDBrowseEdit1.Text,2,2)=':\') and ((drives and ( 1 shl (Ord(LMDBrowseEdit1.Text[1])-65) )) > 0)) then Begin lupwav.PlaySound(sdSync); dir:=true; DxButton1.Enabled:=true; exit; end;
if (dir) and (LMDBrowseEdit1.Focused=False) then if LMDBrowseEdit1.Text[length(LMDBrowseEdit1.Text)]<>'\' then LMDBrowseEdit1.Text:=LMDBrowseEdit1.Text+'\';
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
Var
        deneme:string[14];
begin
tus:=tus+key;
deneme:=Copy(tus,Length(tus)-9,10);
if (deneme='Paramparça') or  (deneme='ment Eþkâr') then LightSpeed1.StarsCount:=20
        else if (deneme='açrapmaraP') or (deneme='râkþE tnem') then LightSpeed1.StarsCount:=0;
end;

procedure TForm1.WMSysCommand;
begin
  case Msg.wParam of
    ID_PARAMPARCA : RxLabellClick(RxLabell);
  end;
  inherited;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  SysMenu: THandle;
  region: HRgn;
begin
region:=CreateRoundRectRgn(0, 0, 476, 481, 30, 30);
SetWindowRgn(handle, region, true);
SysMenu := GetSystemMenu(Handle, False);
InsertMenu(SysMenu, Word(-1), MF_SEPARATOR, ID_LINE, '');
InsertMenu(SysMenu, Word(-1), MF_BYPOSITION, ID_PARAMPARCA, 'Paramparca.com');
XPMenu1.Active:=true;
SetWindowRgn(Edit1.handle,
     CreateRoundRectRgn(2,2,Edit1.Width-2,Edit1.Height-2,15,15),
     True);
SetWindowRgn(Edit2.handle,
     CreateRoundRectRgn(2,2,Edit2.Width-2,Edit2.Height-2,15,15),
     True);
SetWindowRgn(Coolgauge1.handle,
     CreateRoundRectRgn(2,2,Coolgauge1.Width-2,Coolgauge1.Height-2,15,15),
     True);
SetWindowRgn(Coolgauge2.handle,
     CreateRoundRectRgn(2,2,Coolgauge2.Width-2,Coolgauge2.Height-2,15,15),
     True);
end;

procedure TForm1.Edit1Click(Sender: TObject);
begin
Edit1.SelStart:=0;
Edit1.SelLength:=Pos(' byte',Edit1.text)-1;
end;

procedure TForm1.dxfLabel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
begin
 if Button = mbLeft then
 begin
   ReleaseCapture;
   SendMessage(Handle,WM_SYSCOMMAND,SC_MOVE+1,0);
 end;
end;

end;

procedure TForm1.dxfCheckBox2Click(Sender: TObject);
begin
if dxfCheckBox2.Checked then
        begin
        dxfCheckBox1.Checked:=False;
        dxfGroupBox1.Enabled:=false;
        end;
LMDFileOpenEdit1Modified(sender);
end;

procedure TForm1.dxfCheckBox1Click(Sender: TObject);
begin
if dxfCheckBox1.Checked then
                        Begin
                        dxfGroupBox1.Enabled:=True;
                        dxfCheckBox2.Checked:=false;
                        dxfCheckBox3.Checked:=false;
                        ComboBox1.Enabled:=false;
                        Edit1.Enabled:=false;
                        dxfGroupBox1.Font.Color:=clNavy;
                        rxlabel9.Font.Color:=clNavy;
                        rxlabel10.Font.Color:=clNavy;
                        rxlabel2.Caption:=Stringler.Lines.Strings[46];
                        end
                   else Begin
                        dxfGroupBox1.Enabled:=false;
                        ComboBox1.Enabled:=true;
                        Edit1.Enabled:=true;
                        rxlabel2.Caption:=Stringler.Lines.Strings[3];
                        dxfGroupBox1.Font.Color:=clGray;
                        rxlabel9.Font.Color:=clGray;
                        rxlabel10.Font.Color:=clGray;
                        end;
LMDFileOpenEdit1Modified(sender);
end;

procedure TForm1.SpinButton1DownClick(Sender: TObject);
begin
if dxfTimer3.EndSec>=3600 then dxfTimer3.EndSec:=dxfTimer3.EndSec-3600;
form1.Repaint;
end;

procedure TForm1.SpinButton2DownClick(Sender: TObject);
begin
if (dxfTimer3.EndSec>=60)then dxfTimer3.EndSec:=dxfTimer3.EndSec-60;
form1.Repaint;
end;

procedure TForm1.SpinButton3DownClick(Sender: TObject);
begin
if (dxfTimer3.EndSec>=1) then dxfTimer3.EndSec:=dxfTimer3.EndSec-1;
form1.Repaint;
end;

procedure TForm1.SpinButton4DownClick(Sender: TObject);
begin
if (dxfTimer4.EndSec>=3600) and (dxfTimer4.EndSec-3600>dxfTimer3.EndSec) then dxfTimer4.EndSec:=dxfTimer4.EndSec-3600 else Application.MessageBox(PChar(Stringler.Lines.Strings[47]),PChar('Paramparça'),$00000040);
form1.Repaint;
end;

procedure TForm1.SpinButton5DownClick(Sender: TObject);
begin
if (dxfTimer4.EndSec>=60) and (dxfTimer4.EndSec-60>dxfTimer3.EndSec) then dxfTimer4.EndSec:=dxfTimer4.EndSec-60 else Application.MessageBox(PChar(Stringler.Lines.Strings[47]),PChar('Paramparça'),$00000040);
form1.Repaint;
end;

procedure TForm1.SpinButton6DownClick(Sender: TObject);
begin
if (dxfTimer4.EndSec>=1) and (dxfTimer4.EndSec-1>dxfTimer3.EndSec) then dxfTimer4.EndSec:=dxfTimer4.EndSec-1 else Application.MessageBox(PChar(Stringler.Lines.Strings[47]),PChar('Paramparça'),$00000040);
form1.Repaint;
end;

procedure TForm1.SpinButton7DownClick(Sender: TObject);
begin
if (dxfTimer5.EndSec>=3600) and (dxfTimer5.EndSec-3600>=dxfTimer4.EndSec) then dxfTimer5.EndSec:=dxfTimer5.EndSec-3600 else Application.MessageBox(PChar(Stringler.Lines.Strings[48]),PChar('Paramparça'),$00000040);
form1.Repaint;
end;

procedure TForm1.SpinButton8DownClick(Sender: TObject);
begin
if (dxfTimer5.EndSec>=60) and (dxfTimer5.EndSec-60>=dxfTimer4.EndSec) then dxfTimer5.EndSec:=dxfTimer5.EndSec-60 else Application.MessageBox(PChar(Stringler.Lines.Strings[48]),PChar('Paramparça'),$00000040);
form1.Repaint;
end;

procedure TForm1.SpinButton9DownClick(Sender: TObject);
begin
if (dxfTimer5.EndSec>=1) and (dxfTimer5.EndSec-1>=dxfTimer4.EndSec) then dxfTimer5.EndSec:=dxfTimer5.EndSec-1 else Application.MessageBox(PChar(Stringler.Lines.Strings[48]),PChar('Paramparça'),$00000040);
form1.Repaint;
end;

procedure TForm1.SpinButton1UpClick(Sender: TObject);
begin
if (dxfTimer3.EndSec+3600<dxfTimer4.EndSec) and (dxfTimer3.EndSec+3600<dxfTimer5.EndSec) then
        begin
        dxfTimer3.EndSec:=dxfTimer3.EndSec+3600;
        dxfTimer3.IncrementStyle:=isBack;
        end
   else Application.MessageBox(PChar(Stringler.Lines.Strings[49]),PChar('Paramparça'),$00000040);
form1.Repaint;
end;

procedure TForm1.SpinButton2UpClick(Sender: TObject);
begin
if (dxfTimer3.EndSec+60<dxfTimer4.EndSec) and (dxfTimer3.EndSec+60<dxfTimer5.EndSec) then
        begin
        dxfTimer3.EndSec:=dxfTimer3.EndSec+60;
        dxfTimer3.IncrementStyle:=isBack;
        end
   else Application.MessageBox(PChar(Stringler.Lines.Strings[49]),PChar('Paramparça'),$00000040);
form1.Repaint;
end;

procedure TForm1.SpinButton3UpClick(Sender: TObject);
begin
if (dxfTimer3.EndSec+1<dxfTimer4.EndSec) and (dxfTimer3.EndSec+1<dxfTimer5.EndSec) then
        begin
        dxfTimer3.EndSec:=dxfTimer3.EndSec+1;
        dxfTimer3.IncrementStyle:=isBack;
        end
   else Application.MessageBox(PChar(Stringler.Lines.Strings[49]),PChar('Paramparça'),$00000040);
form1.Repaint;
end;

procedure TForm1.SpinButton4UpClick(Sender: TObject);
begin
if (dxfTimer4.EndSec+3600<=dxfTimer5.EndSec) then
        begin
        dxfTimer4.EndSec:=dxfTimer4.EndSec+3600;
        dxfTimer4.IncrementStyle:=isBack;
        end
   else Application.MessageBox(PChar(Stringler.Lines.Strings[50]),PChar('Paramparça'),$00000040);
form1.Repaint;
end;

procedure TForm1.SpinButton5UpClick(Sender: TObject);
begin
if (dxfTimer4.EndSec+60<=dxfTimer5.EndSec) then
        begin
        dxfTimer4.EndSec:=dxfTimer4.EndSec+60;
        dxfTimer4.IncrementStyle:=isBack;
        end
   else Application.MessageBox(PChar(Stringler.Lines.Strings[50]),PChar('Paramparça'),$00000040);
form1.Repaint;
end;

procedure TForm1.SpinButton6UpClick(Sender: TObject);
begin
if (dxfTimer4.EndSec+1<=dxfTimer5.EndSec) then
        begin
        dxfTimer4.EndSec:=dxfTimer4.EndSec+1;
        dxfTimer4.IncrementStyle:=isBack;
        end
   else Application.MessageBox(PChar(Stringler.Lines.Strings[50]),PChar('Paramparça'),$00000040);
form1.Repaint;
end;

procedure TForm1.SpinButton7UpClick(Sender: TObject);
begin
dxfTimer5.EndSec:=dxfTimer5.EndSec+3600;
dxfTimer5.IncrementStyle:=isBack;
form1.Repaint;
end;

procedure TForm1.SpinButton8UpClick(Sender: TObject);
begin
dxfTimer5.EndSec:=dxfTimer5.EndSec+60;
dxfTimer5.IncrementStyle:=isBack;
form1.Repaint;
end;

procedure TForm1.SpinButton9UpClick(Sender: TObject);
begin
dxfTimer5.EndSec:=dxfTimer5.EndSec+1;
dxfTimer5.IncrementStyle:=isBack;
form1.Repaint;
end;

procedure TForm1.dxfTimer5DblClick(Sender: TObject);
begin
dxfTimer5.EndSec:=0;
if dxftimer4.EndSec>0 then dxftimer4.EndSec:=0;
if dxftimer3.EndSec>0 then dxftimer3.EndSec:=0;
end;

procedure TForm1.dxfCheckBox3Click(Sender: TObject);
begin
if dxfCheckBox3.Checked then
        begin
        dxfCheckBox1.Checked:=False;
        dxfGroupBox1.Enabled:=False;
        dxfCheckBox2.Checked:=True;
        dxfCheckBox2.Enabled:=False;
        if LMDFileOpenEdit1.Filename<>'' then
        Begin
        if not DirectoryExists(LMDFileOpenEdit1.Filename) then
                LMDBrowseEdit2.Path:=ExtractFileDir(LMDFileOpenEdit1.Filename)
                        else LMDBrowseEdit2.Path:=LMDFileOpenEdit1.Filename;
        end;
        rxlabel1.Caption:=Stringler.Lines.Strings[51];
        LMDBrowseEdit2Change(sender);
        LMDBrowseEdit2.Visible:=True;
        end
else begin
     rxlabel1.Caption:=Stringler.Lines.Strings[2];
     dxfCheckBox2.Enabled:=True;
     dxfCheckBox2.checked:=False;
     LMDFileOpenEdit1Modified(sender);
     LMDBrowseEdit2.Visible:=False;
     end;
end;

procedure TForm1.LMDBrowseEdit2Change(Sender: TObject);
begin
if LMDBrowseEdit2.Path='' then LMDBrowseEdit2.ShowHint:=False
else Begin
     LMDBrowseEdit2.Hint:=LMDBrowseEdit2.Path;
     LMDBrowseEdit2.ShowHint:=True;
     end;
if DirectoryExists(LMDBrowseEdit2.Path) then
        Begin
        OutlookGroup1.Caption:=Stringler.Lines.Strings[52];
        l:=0;
        DxButton1.Enabled:=True;
        ComboBox1.Enabled:=True;
        if copy(LMDBrowseEdit2.Path,Length(LMDBrowseEdit2.Path),1)<>'\' then LMDBrowseEdit1.Text:=ExtractFilePath(LMDBrowseEdit2.Path)
        else LMDBrowseEdit1.Text:=ExtractFilePath(Copy(LMDBrowseEdit2.Path,0,length(LMDBrowseEdit2.Path)-1));
        LMDBrowseEdit1.Enabled:=True;
        klasorboyu:=DirSize(LMDBrowseEdit2.Text);
        if dxfCheckBox2.Checked then edit1.Text:='< '+Inttostr(klasorboyu)+' byte '+'('+formatfloat('0.##',(klasorboyu / 1048576))+' MB)'
        else edit1.Text:=Inttostr(klasorboyu)+' byte '+'('+formatfloat('0.##',(klasorboyu / 1048576))+' MB)';
        ComboBox1Change(Sender);
        lupwav.PlaySound(sdSync);
        fil:=true;
        OutlookGroup1.Caption:='Para&mparça'
        end
        else
        Begin
        DxButton1.Enabled:=false;
        ComboBox1.Enabled:=False;
        LMDBrowseEdit1.Text:='';
        LMDBrowseEdit1.Enabled:=False;
        edit1.Text:='';
        edit2.Text:='';
        if fil then chickwav.PlaySound(sdSync);
        fil:=false;
        end;
end;


procedure TForm1.Sktrdktansonraonayiste2Click(Sender: TObject);
begin
Sktrdktansonraonayiste2.Checked:=Not Sktrdktansonraonayiste2.Checked;
end;

procedure TForm1.Sktrdktansonraonayiste1Click(Sender: TObject);
begin
Sktrdktansonraonayiste1.Checked:=Not Sktrdktansonraonayiste1.Checked;
end;

procedure TForm1.Kolaytama1Click(Sender: TObject);
begin
Kolaytama1.Checked:=Not Kolaytama1.Checked;
end;

procedure TForm1.dxfLabel13MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
dxfCheckBox1.Checked:=Not dxfCheckBox1.Checked;
end;

procedure TForm1.dxfLabel14MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if dxfCheckBox2.enabled then dxfCheckBox2.Checked:=Not dxfCheckBox2.Checked;
end;

procedure TForm1.dxfLabel15MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
OutlookGroup1.Caption:=Stringler.Lines.Strings[53];
dxfCheckBox3.Checked:=Not dxfCheckBox3.Checked;
OutlookGroup1.Caption:='Para&mparça';
end;

procedure TForm1.dxfTimer4DblClick(Sender: TObject);
begin
dxfTimer4.EndSec:=0;
if dxftimer3.EndSec>0 then dxftimer3.EndSec:=0;
end;

procedure TForm1.dxfTimer3DblClick(Sender: TObject);
begin
dxfTimer3.EndSec:=0;
end;

procedure TForm1.RxLabellMouseLeave(Sender: TObject);
begin
RxLabell.Font.Style:=[];
end;

procedure TForm1.RxLabellMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
RxLabell.Font.Style:=[fsUnderline];
end;

procedure TForm1.RxLabellClick(Sender: TObject);
begin
shellexecute(handle,'open','http://www.paramparca.com','','',1);
end;

procedure TForm1.RxLabel11MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
RxLabel11.Font.Style:=[fsUnderline];
end;

procedure TForm1.RxLabel11MouseLeave(Sender: TObject);
begin
RxLabel11.Font.Style:=[];
end;

procedure TForm1.RxLabel11Click(Sender: TObject);
begin
dxfOutlookBar1.ActiveGroup:=OutlookGroup7;
//shellexecute(handle,'open','mailto:ercument_eskar@hotmail.com','','',1);
shellexecute(application.handle,'open',pchar('mailto:ercument_eskar@hotmail.com?Subject=Paramparça''dan mail var'),nil,nil,sw_show);
end;

procedure TForm1.dxfOutlookBar1BeforeChangeActiveGroup(Sender: TObject;
  NewGroup: TdxfOutlookGroup; var AllowChange: Boolean);
begin
if dxfOutlookBar1.ActiveGroup=Nil then AllowChange:=false;
end;

procedure TForm1.PopupMenu1Popup(Sender: TObject);
Var
        bulunan:TSearchRec;
        fileattrs:integer;
        AltMenu:TMenuItem;
        a:integer;
        b:boolean;
begin
b:=true;
chdir(ExtractFilePath(application.ExeName));
With Dilseimi1 do
begin
        while dilseimi1.Count > 2 do dilseimi1.Items[1].Free;
        fileattrs:=faAnyFile;
        a:=1;
        if FindFirst('*.dil', FileAttrs, bulunan) = 0 then
        Repeat
        AltMenu:=TMenuItem.Create(self);
        with AltMenu do
        begin
                caption:=ChangeFileExt(bulunan.Name,'');
                radioitem:=true;
                Groupindex:=1;
                tag:=a;
                if dxButton1.Tag=a then begin checked:=true; b:=false; end;
                OnClick:=DilSecildi;
        end;
        Insert(a,AltMenu);
        a:=a+1;
        until FindNext(bulunan) <> 0;
if b then rkeVarsaylan1.Checked:=true;
end;
end;

Procedure TForm1.DilSecildi(Sender :TObject);
Var
        capti:string;
Begin
dxButton1.Tag:=(sender as TMenuItem).Tag;
(sender as TMenuItem).Checked:=true;
if (sender as TMenuItem).Tag=0 then
        Begin
        Stringler.Lines.Clear;
        Stringler.Lines.AddStrings(Turkce.Lines);
        end
else Begin
     capti:=(sender as TMenuItem).caption;
     Delete(capti,Pos('&',capti),1);
     chdir(ExtractFilePath(application.ExeName));
     Stringler.Lines.Clear;
     Stringler.Lines.LoadFromFile(capti+'.dil');
     end;
OutlookGroup2.Caption:=Stringler.Lines.Strings[0];
OutlookGroup7.Caption:=Stringler.Lines.Strings[1];
rxlabel1.Caption:=Stringler.Lines.Strings[2];
rxlabel2.Caption:=Stringler.Lines.Strings[3];
rxlabel3.Caption:=Stringler.Lines.Strings[4];
rxlabel4.Caption:=Stringler.Lines.Strings[5];
rxlabel5.Caption:=Stringler.Lines.Strings[6];
rxlabel6.Caption:=Stringler.Lines.Strings[7];
rxlabel7.Caption:=Stringler.Lines.Strings[8];
rxlabel9.Caption:=Stringler.Lines.Strings[9];
rxlabel10.Caption:=Stringler.Lines.Strings[10];
rxlabel13.Caption:=Stringler.Lines.Strings[11];
rxlabel14.Caption:=Stringler.Lines.Strings[12];
rxlabel15.Caption:=Stringler.Lines.Strings[13];
dxfGroupBox1.Caption:=Stringler.Lines.Strings[14];
dxButton1.Caption:=Stringler.Lines.Strings[15];
dxftimer3.Hint:=Stringler.Lines.Strings[16];
dxftimer4.Hint:=Stringler.Lines.Strings[16];
dxftimer5.Hint:=Stringler.Lines.Strings[16];
Kolaytama1.Caption:=Stringler.Lines.Strings[17];
Sktrdktansonraonayiste2.Caption:=Stringler.Lines.Strings[18];
Sktrdktansonraonayiste1.Caption:=Stringler.Lines.Strings[19];
Dilseimi1.Caption:=Stringler.Lines.Strings[20];
Dahafazladil1.Caption:=Stringler.Lines.Strings[55];
end;

procedure TForm1.Dahafazladil1Click(Sender: TObject);
begin
shellexecute(handle,'open','http://www.paramparca.com','','',1);
end;
procedure TForm1.LMDScrollText3Click(Sender: TObject);
begin
dxfOutlookBar1.ActiveGroup:=OutlookGroup7;
Image1Click(sender);
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
shellexecute(handle,'open','http://www.batur.com/cgi-bin/down.pl?id=erci&s=5','','',1);
end;

procedure TForm1.OutlookGroup1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
cursor:=crDefault;
end;

procedure TForm1.RxLabel8MouseLeave(Sender: TObject);
begin
cursor:=crDefault;
end;

procedure TForm1.RxLabel8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
cursor:=crHandPoint;
end;

end.
