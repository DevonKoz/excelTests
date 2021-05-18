timestamp() {
 date +"%Y-%m-%d_%H-%M-%S" # current time
}
for f in addresses.scl gen.scl reversechief.scl simplexlsx.scl testxls.scl
do 
echo running /SPEC=$f
sortcl /MONITOR=2 /SPEC=$f
if [ $? -ne 0 ]; then
	echo "$(timestamp): Error encountered running $f" >> errorlog.txt
fi
done
