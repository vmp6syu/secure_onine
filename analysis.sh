
#the pcap name
FILE_BASE='femh-Internet_'
#the place  that you want to save
FILE_DIR1='/media/issdu/data/'
FILE_DIR2='femh-Internet'

COUNT=`find $FILE_DIR1$FILE_DIR2 -name $FILE_BASE* -type f | wc -l`
echo "the count of the pcap is "$COUNT

INDEX=0

while [ $INDEX -le $COUNT ];
do
    echo "THE PCAP INDEX IS:" $INDEX
    echo "=====================start to analysis "$FILE_BASE$INDEX"=================================="
    echo "the file local:" $FILE_DIR1$FILE_DIR2/$FILE_BASE$INDEX

    so-import-pcap $FILE_DIR1$FILE_DIR2/$FILE_BASE$INDEX
    echo "==============================finsh============================================================="
    INDEX=$[INDEX+1]

done

