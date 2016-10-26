#
# Defines Git aliases.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
#
# Aliases
#

# Git
alias g='git'

# Branch (b)
#### git branch
gb='git branch'  
gbc='git checkout -b'  
gbl='git branch -v'  
gbL='git branch -av'  
gbx='git branch -d'  
gbX='git branch -D'  
gbm='git branch -m'  
gbM='git branch -M'  
gbs='git show-branch'  
gbS='git show-branch -a'  

# Commit (c)
alias gc='git commit --verbose'  
#### 提交所有被track的文件的改动, 包括工作区和暂存区, 调用编辑器显示更改的内容, 并输入提交信息
alias gca='git commit --verbose --all'  
#### 提交暂存区内容, 直接在命令中输入提交信息
alias gcm='git commit --message'  
alias gco='git checkout'  
#### 抛弃上次commit之前的更改, 有二次确认
alias gcO='git checkout --patch'  
#### 当前 指定文件修改合并到上次commit中
alias gcf='git commit --amend --reuse-message HEAD'  
#### 当前修改合并到上次commit
alias gcff='git commit --amend --reuse-message HEAD --all'  
alias gcF='git commit --verbose --amend'  
alias gcp='git cherry-pick --ff'  
alias gcP='git cherry-pick --no-commit'  
alias gcr='git revert'  
alias gcR='git reset "HEAD^"'  
alias gcs='git show'  
alias gcl='git-commit-lost'  

# Conflict (C)
alias gCl='git status | sed -n "s/^.*both [a-z]*ed: *//p"'  
alias gCa='git add $(gCl)'  
alias gCe='git mergetool $(gCl)'  
alias gCo='git checkout --ours --'  
alias gCO='gCo $(gCl)'  
alias gCt='git checkout --theirs --'  
alias gCT='gCt $(gCl)'  

# Data (d)
alias gd='git ls-files'  
alias gdc='git ls-files --cached'  
alias gdx='git ls-files --deleted'  
alias gdm='git ls-files --modified'  
alias gdu='git ls-files --other --exclude-standard'  
alias gdk='git ls-files --killed'  
alias gdi='git status --porcelain --short --ignored | sed -n "s/^!! //p"'  

# Fetch (f)
#### git fetch
alias gf='git fetch'  
alias gfc='git clone'  
#### git pull
alias gfm='git pull'  
alias gfr='git pull --rebase'  

# Grep (g)
alias gg='git grep'  
alias ggi='git grep --ignore-case'  
alias ggl='git grep --files-with-matches'  
alias ggL='git grep --files-without-matches'  
alias ggv='git grep --invert-match'  
alias ggw='git grep --word-regexp'  

# Index (i)
#### git add
alias gia='git add'  
#### git add 有交互
alias giA='git add --patch'  
alias giu='git add --update'  
alias gid='git diff --no-ext-diff --cached'  
alias giD='git diff --no-ext-diff --cached --word-diff'  
alias gir='git reset'  
alias giR='git reset --patch'  
alias gix='git rm -r --cached'  
alias giX='git rm -rf --cached'  

# Log (l)
alias gl='git log --topo-order --pretty=format:"${_git_log_medium_format}"'  
alias gls='git log --topo-order --stat --pretty=format:"${_git_log_medium_format}"'  
alias gld='git log --topo-order --stat --patch --full-diff --pretty=format:"${_git_log_medium_format}"'  
alias glo='git log --topo-order --pretty=format:"${_git_log_oneline_format}"'  
alias glg='git log --topo-order --all --graph --pretty=format:"${_git_log_oneline_format}"'  
alias glb='git log --topo-order --pretty=format:"${_git_log_brief_format}"'  
alias glc='git shortlog --summary --numbered'  

# Merge (m)
#### git merge
alias gm='git merge'  
alias gmC='git merge --no-commit'  
alias gmF='git merge --no-ff'  
alias gma='git merge --abort'  
alias gmt='git mergetool'  

# Push (p)
#### git push
alias gp='git push'  
alias gpf='git push --force'  
alias gpa='git push --all'  
alias gpA='git push --all && git push --tags'  
alias gpt='git push --tags'  
alias gpc='git push --set-upstream origin "$(git-branch-current 2> /dev/null)"'  
#### 先pull再push
alias gpp='git pull origin "$(git-branch-current 2> /dev/null)" && git push origin "$(git-branch-current 2> /dev/null)"'  

# Rebase (r)
alias gr='git rebase'  
alias gra='git rebase --abort'  
alias grc='git rebase --continue'  
alias gri='git rebase --interactive'  
alias grs='git rebase --skip'  

# Remote (R)
alias gR='git remote'  
alias gRl='git remote --verbose'  
alias gRa='git remote add'  
alias gRx='git remote rm'  
alias gRm='git remote rename'  
alias gRu='git remote update'  
alias gRp='git remote prune'  
alias gRs='git remote show'  
alias gRb='git-hub-browse'  

# Stash (s)
#### git stash
alias gs='git stash'  
alias gsa='git stash apply'  
alias gsx='git stash drop'  
alias gsX='git-stash-clear-interactive'  
alias gsl='git stash list'  
alias gsL='git-stash-dropped'  
alias gsd='git stash show --patch --stat'  
#### git stash pop
alias gsp='git stash pop'  
alias gsr='git-stash-recover'  
alias gss='git stash save --include-untracked'  
alias gsS='git stash save --patch --no-keep-index'  
alias gsw='git stash save --include-untracked --keep-index'  

# Submodule (S)
alias gS='git submodule'  
alias gSa='git submodule add'  
alias gSf='git submodule foreach'  
alias gSi='git submodule init'  
alias gSI='git submodule update --init --recursive'  
alias gSl='git submodule status'  
alias gSm='git-submodule-move'  
alias gSs='git submodule sync'  
alias gSu='git submodule foreach git pull origin master'  
alias gSx='git-submodule-remove'  

# Working Copy (w)
#### 显示文件状态 short
alias gws='git status --ignore-submodules=${_git_status_ignore_submodules} --short'  
####显示文件状态
alias gwS='git status --ignore-submodules=${_git_status_ignore_submodules}'  
alias gwd='git diff --no-ext-diff'  
alias gwD='git diff --no-ext-diff --word-diff'  
alias gwr='git reset --soft'  
alias gwR='git reset --hard'  
alias gwc='git clean -n'  
alias gwC='git clean -f'  
alias gwx='git rm -r'  
alias gwX='git rm -rf'  
