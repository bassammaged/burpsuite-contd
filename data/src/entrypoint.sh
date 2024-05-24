# Download the selected burpsuite version
if [ ! -f "/home/burp/src/burpsuite_community.jar" ]; then
    echo "[+] Downloading Burpsuite community..."
    curl -o /home/burp/src/burpsuite_community.jar "https://portswigger.net/burp/releases/download?product=community&version=2024.4.4&type=Jar"
fi

java -jar /home/burp/src/burpsuite_community.jar