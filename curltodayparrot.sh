BASE_URL="https://parrot.today"
reimg="<img src="
relink="/parrots/[a-z/]*.gif"

DAY_LINK=`curl --silent 'https://parrot.today/' | grep "$reimg" | grep -G -o "$relink"`

curl --silent -o $1 "$BASE_URL$DAY_LINK"

