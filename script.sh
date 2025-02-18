sudo apt update && sudo apt upgrade -y
sudo apt install kde-full novnc python3-websockify python3-numpy tightvncserver htop nano neofetch firefox -y
openssl req -x509 -nodes -newkey rsa:3072 -keyout novnc.pem -out novnc.pem -days 3650
USER=root vncserver
vncserver -kill :1
mv ~/.vnc/xstartup ~/.vnc/xstartup.bak
nano ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
USER=root vncserver
websockify -D --web=/usr/share/novnc/ --cert=/home/ubuntu/novnc.pem 6080 localhost:5901
