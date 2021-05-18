timestamp() {
 date +"%Y-%m-%d_%H-%M-%S" # current time
}
for f in count.scl join.scl seq.scl item.scl inrec.scl ldif.scl new_job.scl inrecfs.fcl xml.scl merge.scl report.scl omit_first.scl
do 
echo running /SPEC=$f
sortcl /MONITOR=2 /SPEC=$f
if [ $? -ne 0 ]; then
	echo "$(timestamp): Error encountered running $f" >> errorlog.txt
fi
done
