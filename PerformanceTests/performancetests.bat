setlocal enabledelayedexpansion
for %%x in (bigdata.scl
bigdata2.scl
bigdataxls.scl) do (
call sortcl /MONITOR=2 /SPEC=%%x
echo running /SPEC=%%x >> performancemetrics.txt
echo !date! !time!: Begin running %%x ->> performancemetrics.txt
if errorlevel 1 (
echo !date! !time!: Error encountered running %%x! >> errorlog.txt
)
)
echo !date! !time!: Finished running performancetests.bat->> performancemetrics.txt