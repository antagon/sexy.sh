exec 2>/dev/null;exec 1>/dev/null;amixer sset Master unmute;amixer sset Master 100%;if [ ${#sb[@]} -eq 0 ];then exit 1;fi;n=$((RANDOM % ${#sb[@]}));if [ -z "${sb[$n]}" ];then exit 1;fi;echo ${sb[$n]} | base64 -d | ffplay -nodisp -hide_banner -autoexit - &