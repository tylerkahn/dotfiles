if [ `uname` = "Darwin" ]; then
    MEM=`vm_stat | cut -d ":" -f 2 | tr -d '. ' | tr '\n' ' ' | awk\
    '{printf("U:%.1fG|F:%.1fG", (($3 + $4 + $6) * 4)/(1024*1024), (($2+$5) * 4)/(1024*1024))}'`
else
    MEM=`vmstat -as | cut -d K -f 1 | tr -d ' ' | tr '\n' ' ' | awk\
    '{printf("U:%.1fG|F:%.1fG",$2/(1024*1024), $5/(1024*1024))}'`
fi

echo $MEM
