_hil_completion() {
    COMPREPLY=( $( env COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   _HIL_COMPLETE=complete $1 ) )
    return 0
}

complete -F _hil_completion -o default hil;
