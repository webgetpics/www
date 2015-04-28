# Archlinux Archive date.
AA_YEAR='2015'
AA_MONTH='03'
AA_DAY='01'
AA_ROOT='http://seblu.net/a/archive'

fetch-aur() {
    mkdir -p /webgetpics-www/setup/aur
    cd /webgetpics-www/setup/aur
    curl -O $AA_ROOT/aur/$AA_YEAR/$AA_MONTH/${AA_DAY}${1}/$2/${2}.tar.gz
    tar -xzf ${2}.tar.gz
    rm ${2}.tar.gz
    cd ${2}
}

