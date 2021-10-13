pref_keytype="ed25519"

if [[ ! -e ~/.ssh/id ]]; then
    if [[ ! -e ~/.ssh/id_${pref_keytype} ]]; then
        echo "Generating new SSH key..."
        ssh-keygen -t ${pref_keytype} -f ~/.ssh/id
    else
        echo "Moving existing SSH key to ~/.ssh/id"
        mv ~/.ssh/id_${pref_keytype} ~/.ssh/id
        if [[ -e ~/.ssh/id_${pref_keytype}.pub ]]; then
            mv ~/.ssh/id_${pref_keytype}.pub ~/.ssh/id.pub
        fi
    fi
fi
