local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_color=""

if [[ $EUID = 0 ]]; then
	user_color=red
else
	user_color=green
fi

local user_host='%{$fg[$user_color]%}%n@%m%{$reset_color%}'
local current_dir='%{$fg[blue]%} %~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="
╭─${user_host} ${current_dir} ${git_branch}
╰─%B$%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""

