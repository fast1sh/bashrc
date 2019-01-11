# Path to your folder with projects
alias pro='cd /mnt/e/workflow/projects/'

createNewProject() {
    pro
    git clone https://github.com/fast1sh/starter-template.git
    mv /mnt/e/workflow/projects/starter-template /mnt/e/workflow/projects/$1-$2/
    cd $1-$2
    cd code
    yarn
    code .
}
alias new=createNewProject
