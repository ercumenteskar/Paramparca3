
function GetCookieVal(offset)
{
	var endstr = document.cookie.length;
	return unescape(document.cookie.substring(offset,endstr));
}

function FixCookieDate(date)
{
	var base = new Date(0) ;
	var skew = base.getTime() ;
	if (skew > 0) 
		date.setTime (date.getTime() - skew);
	return 1 ;
}

function GetCookie(name)
{
	var arg = name + "=" ;
	var alen = arg.length;
	var clen = document.cookie.length;
	var i = 0;
	while (i < clen)
	{
		var j = i + alen;
		if (document.cookie.substring(i,j) == arg)
		return GetCookieVal(j) ;
		i = document.cookie.indexOf(" ", i)+1 ;
		if (i == 0) break;
	}
}

function SetCookie (name,value,expires,path,domain,secure)
{
	document.cookie = name + "=" + escape(value) +
	((expires) ? "; expires=" + expires.toGMTString() : "") +
	((path) ? "; path=" + path : "") + 
	((domain) ? "; domain=" + domain : "") +
	((secure) ? "; secure" : "");
	return 1 ;
}

var expdate = new Date();
FixCookieDate (expdate);
expdate.setTime(expdate.getTime() + (12 * 60 * 60 * 1000));
var howmany = GetCookie("burak") ;
if (isNaN(parseInt(howmany)))
{
	howmany = 0 ;
}
howmany = parseInt(howmany) + 1 ;

function popitup()
{
  if (howmany == null || howmany == 3 || howmany == 1 || howmany == 0)
  {
	var popUpSizeX=580;
	var popUpSizeY=580;
	var popUpLocationX=25;
	var popUpLocationY=25;
	var popUpURL="http://www.celebritywonder.com/luna/burak.html";

	if (howmany == 3)
	{
		document.write('<scr' + 'ipt src ="http://ad.doubleclick.net/adj/celebrity.aj;dcopt=ist;cat=ent;zo=;kw=;sz=1x1;ord=12345678912345?"></sc' + 'ript>')
	} else {
		splashWin = window.open("",'x','fullscreen=1,toolbar=0,location=1,directories=0,status=0,menubar=0,scrollbars=1,resizable=1');
		self.focus();
		splashWin.resizeTo(popUpSizeX,popUpSizeY);
		splashWin.moveTo(popUpLocationX,popUpLocationY);
		splashWin.location=popUpURL;
		
	}
  } else {
	
  }
  SetCookie("burak",howmany,expdate,"/");
  return 1 ;
}

