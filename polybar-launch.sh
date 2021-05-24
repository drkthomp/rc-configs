#nate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# Launch Polybar, using default config location ~/.config/polybar/config
#polybar mybar &

for m in $(polybar --list-monitors | cut -d":" -f1); do
	    MONITOR=$m polybar --reload main &
    done
~/.polybar-scripts/polypomo/polypomo > /tmp/polypomo.status &  
echo "Polybar launched..."
