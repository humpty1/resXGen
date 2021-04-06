SET R=/r:args.dll /r:Logger.cs.dll 
rem SET ADD=/appconfig:
echo off
SET NAMEZIP=resXGen

echo %NAMEZIP%

rm -rf  _bld
rm   *.exe *.log


rem 
SET EXZIP=-x *.exe -x *.eRr   -x *.log -x *.db
