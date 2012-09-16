if [ `uname` = "Darwin" ]; then
    BATTERY=`ioreg -l | grep -i capacity | tr '\n' ' | ' | awk '{printf("%.0f", $10/$5 * 100)}'`
    CHARGING=`ioreg -l | grep "ExternalChargeCapable" | awk '{printf($5)}'`
else
    BATTERY=`acpi | cut -d ' ' -f 4 | tr -d ',%'`
    CHARGING=`acpi | cut -d ' ' -f 3 | tr -d ',' | sed s/Discharging/No/ | sed s/'Full\|Charging'/Yes/`
fi
COLOR=$1

if [ "$CHARGING" = "No" ]; then
    if [ "$BATTERY" -lt $4 ]; then
        COLOR=$5
    elif [ "$BATTERY" -lt $2 ]; then
        COLOR=$3
    fi
fi

echo "#[fg=$COLOR]"$BATTERY$CHARGING
