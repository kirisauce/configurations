export PROFILE_COLLECTION_PATH="$HOME/.config/my-profiles"
function load_my_profile() {
    local profile_path="$PROFILE_COLLECTION_PATH/$1"
    if [ -e "$profile_path" ]; then
        source "$profile_path"
    else
        echo "Warning: Required profile '$1' does not exist"
    fi
}


if [ -d "$PROFILE_COLLECTION_PATH" ]; then
    load_my_profile rustup-mirror
    load_my_profile ime
    load_my_profile user-local-bin
else
    echo "Warning: custom profile collection path does not exist ($PROFILE_COLLECTION_PATH)"
fi
