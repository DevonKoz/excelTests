timestamp() {
 date +"%Y-%m-%d_%H-%M-%S" # current time
}
for f in chiefs.scl chiefs_lstrings.scl Gen.rcl randomxlsx.scl randomxls.scl TestSortXL.scl chiefs2.scl chiefs_lstrings1.scl PII_enc.scl
do 
echo running /SPEC=$f
sortcl /MONITOR=2 /SPEC=$f
if [ $? -ne 0 ]; then
	echo "$(timestamp): Error encountered running $f" >> errorlog.txt
fi
done
