if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/developeranandtech/MyRepoOfficial /MyRepoOfficial
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MyRepoOfficial
fi
cd /MyRepoOfficial
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
