setlocal enabledelayedexpansion
for %%x in (*.scl) do (
call sortcl /MONITOR=2 /SPEC=%%x
echo running /SPEC=%%x
if errorlevel 1 (
echo !date! !time!: Error encountered running %%x! > errorlog.txt
)
)

