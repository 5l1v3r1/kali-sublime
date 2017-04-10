import_all() {

    local directory="$1"
    local response="$2"
    local bash_files=$(find "${directory}" -name '*.sh' ! -name 'import_all.sh')
    local files_count=$(find "${directory}" -name '*.sh' ! -name 'import_all.sh' | wc -l)
    local debug=false

    ! $debug || echo -e "\n\e[96m> Importing ${files_count} files from ${directory}\e[0m\n";
    for file in ${bash_files}
    do
        if [ -f "${file}" ]; then
            ! $debug || echo -e "[  \e[92mOK\e[0m  ] loaded ${file}"
            source ${file}
        else
            ! $debug || echo -e "[\e91mFAILED\e[0m]] unable to load ${file}"
        fi
    done
    ! $debug || echo -e "\n\e[92m\u2713 Successfully imported ${files_count} files from ${directory}\e[0m\n"

}

import_all "lib"


