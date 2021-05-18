setlocal enabledelayedexpansion
for %%x in (chiefsuni2rearrange.scl
displacedvaluesxlsandxlsx.scl
headerrangeandsdef.scl
inner.scl
joinfullouter.scl
joinleftouter.scl
joinrightouter.scl
jointest.scl
MSFTReMap.scl
MSFTReMapSDEF.scl
noheaderbutrangeandsdef.scl
noheadernorangebutsdef.scl
noheadernorangenosdef.scl
wkbench.scl) do (
call sortcl /MONITOR=2 /SPEC=%%x
echo running /SPEC=%%x
if errorlevel 1 (
echo !date! !time!: Error encountered running %%x! >> errorlog.txt
)
)