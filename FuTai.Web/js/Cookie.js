function setCookie(sName,sValue,sExpires,sPath,sDomain,bSecure)
{
	var sCookie=sName+"="+encodeURIComponent(sValue)+"; path=/";
	if (sExpires)
	{
		sCookie+="; expires="+sExpires.toGMTString();	
	}
	if (sPath)
	{
		sCookie+="; path="+sPath;	
	}
	if (sDomain)
	{
		sCookie+="; domain="+sDomain;	
	}
	if (bSecure)
	{
		sCookie+="; secure";	
	}
	document.cookie=sCookie;
}
function getCookie(sName)
{
	var sRE="(?:;)?"+sName+"=([^;]*);?";
	var oRE=new RegExp(sRE);
	if (oRE.test(document.cookie))
	{
		//return decodeURIComponent(RegExp["$1"]);	
		return false;
	}
	else
	{
		return true;	
	}
}