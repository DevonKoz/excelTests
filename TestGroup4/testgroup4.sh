timestamp() {
 date +"%Y-%m-%d_%H-%M-%S" # current time
}
for f in chiefsuni.scl chiefsenc.scl htest.scl jsondecrypt.scl msftcsv2xlsx.scl namedrangexls.scl new_job.scl sortmsftvolume.scl sortmsftvolumeincludeasc.scl xlsread.scl xlsread2.scl xlsxread2.scl xlsxread3.scl
do 
echo running /SPEC=$f
sortcl /MONITOR=2 /SPEC=$f
if [ $? -ne 0 ]; then
	echo "$(timestamp): Error encountered running $f" >> errorlog.txt
fi
done
