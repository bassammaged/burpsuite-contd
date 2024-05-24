# Download the selected burpsuite version
if [ ! -f "/home/burp/src/burpsuite_pro.jar" ]; then
    echo "[+] Downloading Burpsuite community..."
    curl "https://portswigger.net/burp/releases/download?product=community&version=2024.4.4&type=Jar" -O /home/burp/src/burpsuite_community.jar
fi

java -jar /home/burp/src/burpsuite_community.jar