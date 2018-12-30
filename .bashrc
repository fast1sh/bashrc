# Path to your folder with projects
alias pro='cd /e/workflow/projects/'
# Path to your code editor`s folder
alias vs='/c/Users/Daniil/AppData/Local/Programs/Microsoft\ VS\ Code/Code.exe' $*

createNewProject() {
    pro
    # Creating a folder for your project where $1 is number, $2 is a name.
    mkdir $1-$2
    
    cd $1-$2
    
    git clone https://github.com/fast1sh/starter.git
    mv /e/workflow/projects/$1-$2/starter /e/workflow/projects/$1-$2/site
    cd site
    npm install
    cd src
    mkdir css
    cd css
    touch style.css 
    cd ..
    mkdir fonts
    mkdir img
    mkdir js
    cd js
    touch script.js
    cd ..
    mkdir sass
    cd sass
    touch style.sass
    cd ..
    gulp
}
alias new=createNewProject
gulpUp() {
    pro
    cd $1-$2
    cd site
    gulp
}
alias g=gulpUp
