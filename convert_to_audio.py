import os

files = os.listdir('.')

print "Converting "+str(len(files))

for f in files:
	cmd = "ffmpeg -i "+f+" "+f.split(".")[0]+".mp3"
	os.system(cmd)
	print "Converted File: "+f
