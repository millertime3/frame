AUTH=`bash authenticate.sh`
ALBUM=5923532334197705329
#ALBUM=5963797622870562161
curl --silent --header "Authorization: GoogleLogin auth=$AUTH" "https://picasaweb.google.com/data/feed/base/user/115341700119165085726/albumid/$ALBUM?kind=photo" |sed 's/</\n</g' | grep media:content |sed 's/.*url='"'"'\([^'"'"']*\)'"'"'.*$/\1/' |awk -F'/' '{gsub($NF,"d/"$NF); print $0}'|wget -i -
