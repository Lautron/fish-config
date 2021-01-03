neofetch
set fish_greeting # Supresses fish's intro message

function fish_user_key_bindings
  # fish_default_key_bindings
  fish_vi_key_bindings
end


#set nord0 2e3440
#set nord1 3b4252
#set nord2 434c5e
#set nord3 4c566a
#set nord4 d8dee9
#set nord5 e5e9f0
#set nord6 eceff4
#set nord7 8fbcbb
#set nord8 88c0d0
#set nord9 81a1c1
#set nord10 5e81ac
#set nord11 bf616a
#set nord12 d08770
#set nord13 ebcb8b
#set nord14 a3be8c
#set nord15 b48ead
#
#set fish_color_normal $nord4
#set fish_color_command $nord9
#set fish_color_quote $nord14
#set fish_color_redirection $nord9
#set fish_color_end $nord6
#set fish_color_error $nord11
#set fish_color_param $nord4
#set fish_color_comment $nord3
#set fish_color_match $nord8
#set fish_color_search_match $nord8
#set fish_color_operator $nord9
#set fish_color_escape $nord13
#set fish_color_cwd $nord8
#set fish_color_autosuggestion $nord6
#set fish_color_user $nord4
#set fish_color_host $nord9
#set fish_color_cancel $nord15
#set fish_pager_color_prefix $nord13
#set fish_pager_color_completion $nord6
#set fish_pager_color_description $nord10
#set fish_pager_color_progress $nord12
#set fish_pager_color_secondary $nord1

### AUTOCOMPLETE AND HIGHLIGHT COLORS ###
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

# Functions needed for !! and !$
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end
# The bindings for !! and !$
if [ $fish_key_bindings = fish_vi_key_bindings ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

# navigation
alias ..='cd ..' 
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

