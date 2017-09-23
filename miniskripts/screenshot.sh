# Uses xclip, scrot, curl
# Uploads to uploads.im
# Pastes links to clipboard
# Saves file to ~/screenshots/
mkdir -p ${HOME}'/screenshots/'
filename=${HOME}'/screenshots/ss_'$(date +"%Y%m%d_%H%M%S")'.png'
scrot -s $filename 
curl --form "fileupload=@$filename" "http://uploads.im/api?upload" | grep -oP '(?<=img_url":").*(?=","img_view)' | sed 's/\\//g' | xclip -selection clipboard
