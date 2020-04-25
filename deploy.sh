#!/usr/bin/env bash

echo "Deploying Linux SOE for account '${USER}' ..." 1>&2

#######################################################################

function do_deploy
{
	case $1 in
    system)
        destpath="/";;
    user)
        destpath="$HOME/";;
    esac

    if [[ -d "install" ]];
    then
        cp -RT "install/" "$destpath"
    fi
}

for mode in \
    system user
do
	if [[ -d ./${mode} ]]
    then
        cd ${mode}
        do_deploy ${mode}
        cd ..
    fi
done

#######################################################################

echo "Done!" 1>&2
