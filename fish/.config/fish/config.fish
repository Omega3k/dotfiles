# http://osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/
set PS1 "\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
set CLICOLOR 1
# set LSCOLORS Exfxcxdxbxegedabagacad
# set LSCOLORS gxfxbEaEBxxEhEhBaDaCaD
set GREP_OPTIONS "--color=auto"
set GREP_COLOR "1;32"

# export the path to the gnu coreutils, so that `ls` et al is used
# instead of the provided bsd coreutils on mac os x. 
set PATH "/usr/local/opt/coreutils/libexec/gnubin" "/usr/local/sbin" $PATH
set MANPATH "/usr/local/opt/coreutils/libexec/gnuman" $MANPATH

set -gx EDITOR "emacsclient"
set -gx ALTERNATE_EDITOR "emacs"
set -gx VISUAL $EDITOR

# http://superuser.com/questions/71588/how-to-syntax-highlight-via-less
set -gx LESSOPEN "| pygmentize -O style=monokai -f console256 -g %s"
set -gx LESS " -R "

switch $TERM
  case cygwin linux xterm xterm-256color
    eval (dircolors -c ~/.dircolors | sed 's/>&\/dev\/null$//')
  case '*'
    eval (dircolors -c ~/.dircolors | sed 's/>&\/dev\/null$//')
end

# . ~/.config/fish/aliases.fish

# Readline colors
set -g fish_color_autosuggestion 555 yellow
set -g fish_color_command 5f87d7
set -g fish_color_comment 808080
set -g fish_color_cwd 87af5f
set -g fish_color_cwd_root 5f0000
set -g fish_color_error 870000 --bold
set -g fish_color_escape af5f5f
set -g fish_color_history_current 87afd7
set -g fish_color_host 5f87af
set -g fish_color_match d7d7d7 --background=303030
set -g fish_color_normal normal
set -g fish_color_operator d7d7d7
set -g fish_color_param 5f87af
set -g fish_color_quote d7af5f
set -g fish_color_redirection normal
set -g fish_color_search_match --background=purple
set -g fish_color_status 5f0000
set -g fish_color_user 5f875f
set -g fish_color_valid_path --underline

set -g fish_color_dimmed 555
set -g fish_color_separator 999

# Git prompt status
set -g __fish_git_prompt_showdirtystate "yes"
set -g __fish_git_prompt_showupstream auto


# Status Chars
set __fish_git_prompt_char_dirtystate "*"
set __fish_git_prompt_char_upstream_equal ""
set __fish_git_prompt_char_upstream_ahead "↑"
set __fish_git_prompt_char_upstream_behind "↓"
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_dirtystate "red"

set __fish_git_prompt_color_upstream_ahead ffb90f
set __fish_git_prompt_color_upstream_behind blue

# Local prompt customization
set -e fish_greeting


set -g fish_pager_color_completion normal
set -g fish_pager_color_description 555 yellow
set -g fish_pager_color_prefix cyan
set -g fish_pager_color_progress cyan


# highlighting inside manpages and elsewhere
set -gx LESS_TERMCAP_mb \e"[01;31m"       # begin blinking
set -gx LESS_TERMCAP_md \e"[01;38;5;74m"  # begin bold
set -gx LESS_TERMCAP_me \e"[0m"           # end mode
set -gx LESS_TERMCAP_se \e"[0m"           # end standout-mode
set -gx LESS_TERMCAP_so \e"[38;5;246m"    # begin standout-mode - info box
set -gx LESS_TERMCAP_ue \e"[0m"           # end underline
set -gx LESS_TERMCAP_us \e"[04;38;5;146m" # begin underline