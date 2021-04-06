echo off

SET X=d:\WINDOWS\Microsoft.NET\Framework\v2.0.50727
SET X=d:\WINDOWS\Microsoft.NET\Framework\v4.0.30319
SET XRG=D:\PROGRA~1\REFERE~1\MICROS~1\FRAMEW~1\NETFRA~1\v4.0
rem SET SDK=D:\Program Files\Microsoft SDKs\Windows\v7.0A\bin

SET SDK1=D:\PROGRA~1\MICROS~4\Windows\v7.0A\bin\NETFX4~1.0TO



rem SET O=obj\Debug

SET S=/r:%X%\System.Data.dll /r:%X%\System.dll /r:%X%\System.Drawing.dll /r:%X%\System.EnterpriseServices.dll /r:%X%\System.Windows.Forms.dll  /r:%X%\System.Xml.dll
SET S=/r:%X%\System.Data.dll /r:%X%\System.Data.DataSetExtensions.dll  /r:%X%\System.dll /r:%X%\System.Core.dll /r:%X%\System.Drawing.dll /r:%X%\System.EnterpriseServices.dll /r:%X%\System.Windows.Forms.dll  /r:%X%\System.Xml.dll /r:%X%\System.Xml.Linq.dll  /r:%X%\System.Windows.Forms.DataVisualization.dll 
rem SET R=/res:%O%\adm_w.Form1.resources /res:%O%\adm_w.winTxt.resources /res:%O%\adm_w.UserControl1.resources /res:%O%\ut.warning.resources /res:%O%\ut._ListView.resources /res:%O%\ut.editRec.resources /res:%O%\ut.N2MRel.resources /res:%O%\ut.Query.resources /res:%O%\ut.Rcrd.resources /res:%O%\ut.refArgs.resources 
SET FLGS=  /nologo /noconfig /unsafe  
rem exit.ico
if exist local.cmd call local.cmd

rem 
SET DEF= /define:TEST
rem /nowarn:1717 

 
rm  %1.exe .*
rm  ".eRr."

rem 

echo on

%SDK1%\resgen.exe  /usesourcepath /r:%XRG%\System.Drawing.dll /compile  %1.resx    >>".eRr."

exit

