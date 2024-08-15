# This script gets started on every boot with
# "/usr/bin/bash /home/pi/scripts/autoStart.sh >> home/pi/scripts/out/autoStart.log 2>&1 &"
# in /etc/rc.local

echo "[$(date) | Starting autostart script]"

# Autostart Test
#/usr/bin/python /home/pi/scripts/tempCheck.py >> /home/pi/scripts/out/tempCheck.log &

# Discord Bot
echo "Starting java-Bot"
cd /home/pi/myGithubStuff/selfhosted_bots/jMusicBot
/usr/bin/java -Dnogui=true -jar JMusicBot-0.3.6.jar >> log.txt 2>&1 &
cd /

#source /home/pi/myGithubStuff/BestBotty/env/bin/activate
#python /home/pi/myGithubStuff/BestBotty/BestBotty.py &
#deactivate

echo "Done"
