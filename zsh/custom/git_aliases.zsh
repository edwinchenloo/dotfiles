alias g='git'
alias ga='git add'
alias gap='ga -p'
alias gau='git add -u'
alias gbr='git branch -v'
alias gb='gbr'
alias gbt='gbrt'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcam='gca --amend'
alias gch='git cherry-pick'
alias gcm='git commit -v --amend'
alias gco='git checkout'
alias gcop='gco -p'
alias gd='git diff -M'
alias gd.='git diff -M --color-words="."'
alias gdc='git diff --cached -M'
alias gdc.='git diff --cached -M --color-words="."'
alias gf='git fetch'
alias gfa='git fetch --all'
git-new() {
  mkdir "$1" &&
  cd "$1" &&
  git init &&
  touch .gitignore &&
  git add .gitignore &&
  git commit -m "Added .gitignore."
}
alias glog='git log --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
alias gl='glog --graph'
alias gla='gl --all'
gls() {
  query="$1"
  shift
  glog --pickaxe-regex "-S$query" "$@"
}
alias gm='git merge --no-ff'
alias gmf='git merge --ff-only'
alias gp='git push'
alias gpt='gp --tags'
alias gr='git reset'
alias grb='git rebase -p'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grh='git reset --hard'
alias grp='gr --patch'
alias grsh='git reset --soft HEAD~'
alias grv='git remote -v'
alias gs='git status'
#alias gs='git show'
#alias gs.='git show --color-words="."'
alias gst='git stash'
alias gstp='git stash pop'
alias gup='git smart-pull'
gupstation() {
  gup
  gf production
  gf staging
}
alias graf='git remote add $argv[1] $argv[2] && gf $argv[1]'
alias gt='git difftool'
alias gsu='git submodule update'
