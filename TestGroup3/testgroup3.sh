timestamp() {
 date +"%Y-%m-%d_%H-%M-%S" # current time
}
for f in chiefsuni2rearrange.scl displacedvaluesxlsandxlsx.scl headerrangeandsdef.scl inner.scl joinfullouter.scl joinleftouter.scl joinrightouter.scl jointest.scl MSFTReMap.scl MSFTReMapSDEF.scl noheaderbutrangeandsdef.scl noheadernorangebutsdef.scl noheadernorangenosdef.scl wkbench.scl
do 
echo running /SPEC=$f
sortcl /MONITOR=2 /SPEC=$f
if [ $? -ne 0 ]; then
	echo "$(timestamp): Error encountered running $f" >> errorlog.txt
fi
done
