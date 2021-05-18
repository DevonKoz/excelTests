call cd /d TestGroup1
call echo %cd%
call combo.bat
call cd /d ../TestGroup2
call testing.bat
call cd /d ../TestGroup3
call testgroup3.bat
call cd /d ../TestGroup4
call testgroup4.bat
call cd /d ../TestGroup5
call testgroup5.bat
call cd /d ../PerformanceTests
call performancetests.bat
call cd /d ../CM
call CM.bat
call cd /d ../