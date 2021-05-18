setlocal enabledelayedexpansion
for %%x in (chiefs.scl
chiefs_lstrings.scl
Gen.rcl 
randomxlsx.scl
randomxls.scl
TestSortXL.scl
chiefs2.scl
chiefs_lstrings1.scl
pii_enc.scl
verticalnosdef.scl) do (
call sortcl /MONITOR=2 /SPEC=%%x
echo running /SPEC=%%x
if errorlevel 1 (
echo !date! !time!: Error encountered running %%x! > errorlog.txt
)
)

