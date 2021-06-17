set -U fish_color_autosuggestion      brblack
set -U fish_color_cancel              -r
set -U fish_color_command             brgreen
set -U fish_color_comment             brmagenta
set -U fish_color_cwd                 green
set -U fish_color_cwd_root            red
set -U fish_color_end                 brmagenta
set -U fish_color_error               brred
set -U fish_color_escape              brcyan
set -U fish_color_history_current     --bold
set -U fish_color_host                normal
set -U fish_color_match               --background=brblue
set -U fish_color_normal              normal
set -U fish_color_operator            cyan
set -U fish_color_param               brblue
set -U fish_color_quote               yellow
set -U fish_color_redirection         bryellow
set -U fish_color_search_match        'black' '--background=brblack'
set -U fish_color_selection           'bryellow' '--bold' '--background=brblack'
set -U fish_color_status              red
set -U fish_color_user                brgreen
set -U fish_color_valid_path          --underline
set -U fish_pager_color_completion    normal
set -U fish_pager_color_description   yellow
set -U fish_pager_color_prefix        'green' '--bold' '--underline'
set -U fish_pager_color_progress      'brwhite' '--background=cyan'

set -gx EDITOR nvim
set -x VIRTUAL_ENV_DISABLE_PROMPT 1
alias vim=nvim
alias config='/usr/bin/git --git-dir=/home/nequo/.cfg/ --work-tree=/home/nequo'
#starship init fish | source

set -g tide_pwd_color_dirs black
set -g tide_pwd_color_truncated_dirs black
set -g tide_pwd_color_anchors black

set --export FZF_DEFAULT_OPTS --color=fg:#eaead3,bg:#3e3e3e,hl:#8db98d --color=fg+:#eaead3,bg+:#1e1e1e,hl+:#92c4ec --color=info:#B37576,prompt:#f1e4a8,pointer:#ffaf87 --color=marker:#f1e4a8,spinner:#f1e4a8,header:#6cbbbf --cycle --layout=reverse --border --height=90% --preview-window=wrap
