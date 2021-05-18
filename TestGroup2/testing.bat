setlocal enabledelayedexpansion
for %%x in (addresses.scl gen.scl reversechief.scl simplexlsx.scl testxls.scl) do (
call sortcl /MONITOR=2 /SPEC=%%x
if errorlevel 1 (
echo !date! !time!: Error encountered running %%x! >> errorlog.txt
)
)

