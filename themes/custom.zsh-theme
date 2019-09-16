function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '['`basename $VIRTUAL_ENV`'] '
}

VIRTUAL_ENV_DISABLE_PROMPT='1'
NEWLINE=$'\n'

RANDOM_NUM=$(( ( RANDOM % 6 )  + 1 ))

FACE=''
if [ $RANDOM_NUM -eq 1 ]
then
  FACE='✖_✖'
elif [ $RANDOM_NUM -eq 2 ]
then
  FACE='ಥ‿ಥ'
elif [ $RANDOM_NUM -eq 3 ]
then
  FACE='⚔️  '
elif [ $RANDOM_NUM -eq 4 ]
then
  FACE='◕‿↼'
elif [ $RANDOM_NUM -eq 5 ]
then
  FACE='💊 '
else
  FACE='🔪 '
fi

PROMPT='→ %{$fg[cyan]%}$FACE%{$fg[white]%} %{$fg[black]%}%{$bg[white]%} %2~ %{$reset_color%} %{$fg[yellow]%}⟐ $(git_prompt_info)%{$reset_color%}'
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%} ⇢ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}git %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"

RPROMPT='%{$fg[green]%}$(virtualenv_info)%{$reset_color%}%'
