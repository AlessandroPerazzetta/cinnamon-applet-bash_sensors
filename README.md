# CINNAMON applet bash_sensors

## Get CPU and GPU (nvidia) temperature and integrate on cinnamon applet bash_sensors

**Based on [reddit post](https://www.reddit.com/r/linuxmint/comments/t7lkfo/applet_to_display_gpu_and_cpu_temperature/) by [palordrolap](https://www.reddit.com/user/palordrolap/)**

### Add get-temps.sh under /usr/local/sbin/ and referece in applet settings as command

``sudo cp get-temps.sh /usr/local/sbin/``

### Optional:

Place content of applet-click-action.sh as tooltip command

<pre>
    /usr/bin/sensors |\
    /usr/bin/head -6 |\
    /usr/bin/xmessage \
    -timeout 5  \
    -buttons "" \
    -nearmouse  \
    -bg black   \
    -fg white   \
    -font 6x13  \
    -file -
</pre>
