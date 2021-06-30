# Base16 Zenburn
# Author: elnawe

set -l color00 '#383838'
set -l color01 '#444444'
set -l color02 '#6c6c6c'
set -l color03 '#6f6f6f'
set -l color04 '#808080'
set -l color05 '#EAEAD3'
set -l color06 '#c0c0c0'
set -l color07 '#ffffff'
set -l color08 '#D99898'
set -l color09 '#ffaf87'
set -l color0A '#F1E4A8'
set -l color0B '#8DB98D'
set -l color0C '#92C4EC'
set -l color0D '#6CBBBF'
set -l color0E '#dc8cc3'
set -l color0F '#1E1E1E'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -U FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D"\
" --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C"\
" --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D"
