pref_keytype="ed25519"

if [[ ! -e ~/.ssh/id_${pref_keytype} ]]; then
    echo "Generating new SSH key..."
    ssh-keygen -t ${pref_keytype}
fi
