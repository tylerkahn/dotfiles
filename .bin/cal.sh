#! /bin/zsh

P=`/usr/local/bin/icalBuddy -b " - " -nc -ic "Project Ideas" uncompletedTasks`
if [[ -n $P ]]; then
    echo "Project Ideas";
    echo $P
fi

K=`/usr/local/bin/icalBuddy -b " - " -nc -ps "/ | /" -npn -tf "" -df "" -etp\
 "priority" -ic "Reminders" tasksDueBefore:today+7`
if [[ -n $K ]]; then
      echo "\nReminders";
      echo $K
fi
T=`/usr/local/bin/icalBuddy -b " - " -nc eventsToday;`
if [[ -n $T ]]; then
    echo "\nToday";
    echo $T
fi
echo ""
/usr/local/bin/icalBuddy -nc -sd -npn -b " - " -ss "" eventsFrom:today+1 to:today+7;
