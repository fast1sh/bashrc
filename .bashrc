alias pro='cd /e/workflow/projects/'
alias vs='/c/Users/Daniil/AppData/Local/Programs/Microsoft\ VS\ Code/Code.exe' $*
createNewProject() {
    # Переходим в папку с проектами
    pro
    # Создаем новую папку, $1 - номер проекта, $2 - название
    mkdir $1-$2
    # Переходим в папку с проектом
    cd $1-$2
    # Создаем папку для исходников(макеты, шрифты)
    # Клонируем стартовый шаблон с гитхаба
    git clone https://github.com/fast1sh/starter.git
    # Переименовываем название шаблона(в данном случае glivera-team-template) на папку 'site'
    mv /e/workflow/projects/$1-$2/starter /e/workflow/projects/$1-$2/site
    # Переходим в папку site
    cd site
    # Линкуем глобальные пакеты(сюда можно поставить npm install)
    npm install
    # Открываем проект в PhpStorm
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
    # Запускаем gulp(или npm run start)
    gulp
}
alias new=createNewProject
gulpUp() {
    # Переходим в папку с проектами
    pro
    # Создаем новую папку, $1 - номер проекта, $2 - название
    cd $1-$2
    # Создаем папку для исходников(макеты, шрифты)
    cd site
    gulp
}
alias g=gulpUp
