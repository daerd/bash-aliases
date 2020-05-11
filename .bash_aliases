#######
# GIT #
#######

# Disclaimer: I know that Git has its own alias management, but I prefer to have all my aliases defined in the same place (Bash).

alias gitpp="git pull origin $(git rev-parse --abbrev-ref HEAD)"
alias gitp="git push origin $(git rev-parse --abbrev-ref HEAD)"
alias gitac="git add -A && git commit"
alias gitamend="gitac --amend"

# Undo the last commit, leaving the changes in the current branch.
alias gitundo="git reset HEAD~1 --mixed"

# List of commits with theis modified files.
alias gitlog='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat'
