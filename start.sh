#Dont change anything without informing us
if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/dhanush2bot/filmyfilterpro
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /filmyfilterpro
fi
cd /filmyfilterpro
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
