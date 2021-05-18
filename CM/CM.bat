setlocal enabledelayedexpansion
for %%x in (count.scl
join.scl
seq.scl
item.scl
inrec.scl
ldif.scl
new_job.scl
inrecfs.fcl
xml.scl
merge.scl
report.scl
omit_first.scl) do (
call sortcl /MONITOR=2 /SPEC=%%x
echo running /SPEC=%%x
if errorlevel 1 (
echo !date! !time!: Error encountered running %%x! >> errorlog.txt
)
)