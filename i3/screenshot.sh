#! /bin/bash
parentfolder=/home/koneko/Pictures
month=$(date '+%m')
year=$(date '+%Y')
locationfolder="${month}-${year}"
sname=$(date '+[%d]-%H-%M-%S')
name="${sname}.jpg"

if [ ! -d "${parentfolder}/${locationfolder}" ]; then
	mkdir "${parentfolder}/${locationfolder}"
fi

$(maim --select "${parentfolder}/${locationfolder}/${name}")
xclip -in "${parentfolder}/${locationfolder}/${name}" -selection clipboard -t image/png
satty --filename "${parentfolder}/${locationfolder}/${name}"
