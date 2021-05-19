import pandas as pd
import os
from os import listdir
from os.path import isfile, join
import pathlib
from datetime import datetime
path="outputs"
onlyfiles = [f for f in listdir(path) if isfile(join(path, f))]
for file in onlyfiles:
    print(file)
    print(os.path.join(path,file))
    file_extension = pathlib.Path(file).suffix
    if file_extension ==".xls" or file_extension ==".xlsx":
        df1=pd.read_excel(file)
        df2=pd.read_excel(os.path.join(path,file))
        if not df1.equals(df2):
            f=open("checksumLog.txt","a+")
            now = datetime.now()
            f.write("{}: {} does not match existing file. Check if it was a RowGen example.\n".format(now.strftime("%d/%m/%Y %H:%M:%S"),file))
            f.close()
    else:
        f=open(file, mode='rb')
        f2=open(os.path.join(path,file), mode='rb')
        if f.read() != f2.read():
            f3=open("checksumLog.txt","a+")
            now = datetime.now()
            f3.write("{}: {} does not match existing file. Check if it was a RowGen example.\n".format(now.strftime("%d/%m/%Y %H:%M:%S"),file))
            f3.close()
        f.close()
        f2.close()
