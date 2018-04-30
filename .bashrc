alias frc='sudo ~/projects/frc/frc.sh'
alias burp='java -jar ~/burpsuite_pro_v1.7.33.jar > /dev/null 2>&1 &'
alias lsd='ls -d */'
alias opendir='thunar . > /dev/null 2>&1&'
alias lsf='ls -p | grep -v /'
alias py='python $1'
alias serach='grep -R "$1" .'

compileAndRun() {
    gcc "$1" -o "${1::-2}"
    chmod +x "${1::-2}"
    ./"${1::-2}"
}

PS1='\[\e]0;\t@\h: \w\a\]${debian_chroot:+($debian_chroot)}\t@\h:\w\$'
