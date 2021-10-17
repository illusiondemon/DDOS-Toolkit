function checkinternet() 
{
  ping -c 1 google.com > /dev/null 2>&1
  if [[ "$?" != 0 ]]
  then
    echo -e $yellow " Checking For Internet: ${RedF}FAILED"
    echo
    echo -e $red "This Script Needs An Active Internet Connection"
    echo
    echo -e $yellow " setup Exit"
    echo && sleep 2
    exit
  else
    echo -e $yellow " Checking For Internet: ${LighGreenF}CONNECTED"
  fi
}
checkinternet
sleep 3
echo Installing Requirements
sleep 2
apt-get install curl
curl -O https://cdn.wapka.org/004hiw/10c0f3f22e08070ad500c361e5a59e51/ddosdata.zip
unzip ddosdata.zip
rm -rf ddosdata.zip
apt update -y
apt upgrade -y
pkg update -y
pkg upgrade -y
pkg up && pkg install python python2
pip install
pip install --upgrade pip
pip install pinject
pip install UDP
pip install slowloris
clear
echo Requirements Installed
sleep 3
echo type this command : bash run.sh
