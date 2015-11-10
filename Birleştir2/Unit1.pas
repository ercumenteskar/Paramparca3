unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
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

implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
timer1.enabled:=true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
Var
        dosya,dosya2:File;
        BafIr:Array[1..1024000] of Byte;
        a,b:integer;
        yedek,biten,boyut:Int64;
        ele:string;
        parcasayisi:String[13];
        ilkiyok:boolean;
begin
Timer1.Enabled:=False;
Memo1.Lines.Add('-Birleþtirme iþlemi baþlatýldý.');
Form1.Repaint;
AssignFile(Dosya2,ChangeFileExt(Application.ExeName,''));
Rewrite(Dosya2,1);
parcasayisi:='1';
a:=1;
ilkiyok:=false;
While a<strtoint(parcasayisi)+1 do
Begin
ele:=ChangeFileExt(Application.ExeName,'.P'+inttostr(a));
if Not FileExists(ele) then begin
        if not FileExists(ChangeFileExt(Application.ExeName,'.P'+inttostr(a+1))) then begin
                                                                       if not ilkiyok then Memo1.Lines.Add('-Sonuç: Eksik parça! Birleþtirme durduruldu.') else Memo1.Lines.Add('-Sonuç: Birleþtirme tamamlandý.');
                                                                       CloseFile(Dosya2);
                                                                       if a=1 then DeleteFile(ChangeFileExt(Application.ExeName,'.ex'));
                                                                       exit;
                                                                       end
                                                                       else
                                                                       begin
                                                                       Memo1.Lines.Add('-Sonuç: '+ExtractFileName(ChangeFileExt(Application.ExeName,'.P'+inttostr(a)))+' dosyasý bulunamadý. Birleþtirilmiþ dosya bozuk olabilir.');
                                                                       a:=a+1;
                                                                       if a=2 then begin
                                                                                   ilkiyok:=true;
                                                                                   ele:=ChangeFileExt(Application.ExeName,'.P'+inttostr(a));
                                                                                   end else continue;
                                                                       end;
                            end;
AssignFile(Dosya,ele);
Reset(Dosya,1);
yedek:=FileSize(Dosya);
if a=1 then BlockRead(Dosya,Parcasayisi,13);
if ilkiyok then parcasayisi:=inttostr(strtoint(parcasayisi)+1);
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
if (ilkiyok) and (a=2) then parcasayisi:=inttostr(strtoint(parcasayisi)+1);
a:=a+1;
end;
CloseFile(Dosya2);
Memo1.Lines.Add('-Sonuç: Birleþtirme tamamlandý.');
end;

end.
