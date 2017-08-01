cat <<EOF
sb=($(./chew.sh $(find ./soundbites/ -type f)))
$(cat ./sexy-skeleton.sh)
EOF
