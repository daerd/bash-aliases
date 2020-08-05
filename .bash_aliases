#######
# GIT #
#######

# Disclaimer: I know that Git has its own alias management, but I prefer to have all my aliases defined in the same place (Bash).

# Returns the name of the current branch.
alias gitbranch="git rev-parse --abbrev-ref HEAD"

# Pulls/pushes content from/to the current branch.
#   In a function to avoid the execution of the var interpolation that ocurrs on every shell run.
function gitpp() { git pull origin $(gitbranch); }
function gitp() { git push origin $(gitbranch); }

# Adds any unstaged files and prepares a commit including them.   
alias gitac="git add -A && git commit"

# Same as the last one, but overwriting the most recent unpushed commit.
alias gitamend="gitac --amend"

# Undo the last commit, leaving its changes intact in the current branch.
alias gitundo="git reset HEAD~1 --mixed"

# List of commits with their modified files.
alias gitlog='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat'
