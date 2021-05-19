setlocal enabledelayedexpansion
for %%x in (chiefsuni.scl
chiefsenc.scl
htest.scl
jsondecrypt.scl
msftcsv2xlsx.scl
namedrangexls.scl
new_job.scl
sortmsftvolume.scl
sortmsftvolumeincludeasc.scl
xlsread.scl
xlsread2.scl
xlsxread2.scl
xlsxread3.scl) do (
call sortcl /MONITOR=2 /SPEC=%%x
echo running /SPEC=%%x
if errorlevel 1 (
echo !date! !time!: Error encountered running %%x! >> errorlog.txt
)
)
call python tg4.py