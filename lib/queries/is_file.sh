is_file() {

    local filename="$1"

    if ! [ -f "$filename" ]; then
        
        return 1

    fi

    return 0

}