#the pcap name_封包檔案名稱
FILE_BASE='TEST'
#the place  that you want to save 封包存檔位置
FILE_DIR='data'
FILE_EXTENSION=".pcap"


#Interface 網卡名稱 
NIC='ens33'

#packet per file  一個pcap錄製數量
PPF=20000

# number initial setting do not chanage 編號起始設定，請勿更動
count=0


while true
do
    DATETIME=`date +'%Y-%m-%d-%H-%M-%S'`
    echo "#######begin write,time:"$DATETIME"###########################"
    tcpdump -i $NIC -s 0 -c $PPF   -w $FILE_DIR/$FILE_BASE-$count-$DATETIME$FILE_EXTENSION
     echo "created:"$FILE_BASENAME-$DATETIME "in " $FILE_DIR
    count=$[count+1]
done

#read -n1 -p "do you want to stop? [y,n]" doit
#case $doit in
#  y|Y) echo yes ;;
#  n|N) echo no ;;
#  *)  echo  input error  ;;
#esac
#echo "do yo want to exit?"





