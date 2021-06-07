if (( ! $+commands[bb] )); then
  return 1
fi

_bb_tasks() {
  local matches=(`bb tasks |tail -n +3 |cut -f1 -d ' '`)
  compadd -a matches
  _files # autocomplete filenames as well
}

compdef _bb_tasks bb

alias bbn='bb --nrepl-server'
