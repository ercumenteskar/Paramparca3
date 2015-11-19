program Paramparca;



uses
  Forms,
  Unit1 in 'Unit1.Pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Paramparça 3';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
