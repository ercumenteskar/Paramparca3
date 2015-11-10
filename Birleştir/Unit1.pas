unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Zip, ExtCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Zip1: TZip;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
        temp:array[0..MAX_PATH] of char;
implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
Timer1.enabled:=true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
Var
        dosya,dosya2:File;
        BafIr:Array[1..1024000] of Byte;
        a,b:integer;
        yedek:Int64;
        ele:string;
        parcasayisi:String[13];
        temp:array[0..144] of char;
        MStream:TResourceStream;
begin
Timer1.Enabled:=False;
Memo1.Lines.Add('-Birleþtirme iþlemi baþlatýldý.');
Form1.Repaint;
GetTempPath(Sizeof(temp),@temp);
AssignFile(Dosya2,temp+ChangeFileExt(ExtractFileName(Application.ExeName),''));
Rewrite(Dosya2,1);
parcasayisi:='1';
a:=1;
While a<strtoint(parcasayisi)+1 do
Begin
ele:=ChangeFileExt(Application.ExeName,'.P'+inttostr(a));
if Not FileExists(ele) then begin
        if not FileExists(ChangeFileExt(Application.ExeName,'.P'+inttostr(a))) then
                                                                       begin
                                                                       Memo1.Lines.Add('-Sonuç: '+ExtractFileName(ChangeFileExt(Application.ExeName,'.P'+inttostr(a)))+' dosyasý bulunamadý. Birleþtirme durduruldu.');
                                                                       CloseFile(Dosya2);
                                                                       DeleteFile(temp+ChangeFileExt(ExtractFileName(Application.ExeName),''));
                                                                       exit;
                                                                       end;
                            end;
AssignFile(Dosya,ele);
Reset(Dosya,1);
yedek:=FileSize(Dosya);
if a=1 then BlockRead(Dosya,Parcasayisi,13);
While yedek>0 do
if yedek>1024000 then
                if yedek<=FileSize(Dosya)-FilePos(Dosya) then
                Begin
                yedek:=yedek-1024000;
                BlockRead(Dosya,BafIr,1024000,b);
                BlockWrite(Dosya2,BafIr,b);
                end
                else
                Begin
                yedek:=FileSize(Dosya)-FilePos(Dosya);
                yedek:=yedek-1024000;
                BlockRead(Dosya,BafIr,1024000,b);
                BlockWrite(Dosya2,BafIr,b);
                end
                else
                if yedek<=FileSize(Dosya)-FilePos(Dosya) then
                        Begin
                        BlockRead(Dosya,BafIr,yedek);
                        BlockWrite(Dosya2,BafIr,yedek);
                        yedek:=0;
                        end
                        else
                        Begin
                        yedek:=FileSize(Dosya)-FilePos(Dosya);
                        BlockRead(Dosya,BafIr,yedek);
                        BlockWrite(Dosya2,BafIr,yedek);
                        yedek:=0;
                        end;
CloseFile(Dosya);
a:=a+1;
end;
CloseFile(Dosya2);
Try
MStream := TResourceStream.CreateFromID(HInstance, 2, PChar('GRK'));
MStream.SaveToFile(temp+'UnZdll.dll');
Zip1.DllPath:=temp;
zip1.Filename:=temp+ChangeFileExt(ExtractFileName(Application.ExeName),'');
zip1.ExtractOptions := [eoUpdate, eoFreshen, eoWithPaths];
ForceDirectories(AppendSlash(ExtractFilePath(Application.ExeName))+ChangeFileExt(ExtractFileName(Application.ExeName),''));
zip1.ExtractPath:=AppendSlash(ExtractFilePath(Application.ExeName))+ChangeFileExt(ExtractFileName(Application.ExeName),'');
zip1.FileSpecList.Add('*.*');
zip1.Extract;
Finally
MStream.Free;
Zip1.Free;
DeleteFile(temp+ChangeFileExt(ExtractFileName(Application.ExeName),''));
DeleteFile(temp+'UnZdll.dll');
end;
Memo1.Lines.Add('-Sonuç: Birleþtirme tamamlandý.');
end;


end.
