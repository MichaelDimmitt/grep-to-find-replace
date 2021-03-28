gTFR() {
  # $1=pattern, what is find value?
  # $2=pattern, what is replace value?
  # $3=filename

  echo "$3";
  echo "$*";
  [ -f "$3" ] && mainLogic || echo "file not found";
}

mainLogic() {
  echo 'lets do some stuff';
  # $1=pattern, what is find value?
  # $2=pattern, what is replace value?
  # $3=filename

}

sedSearchAndReplace() {
  # $1=pattern, what is find value?
  # $2=pattern, what is replace value?
  # $3=filename
  find=$1;
  replace=$2;
  
  sed -i 's/^.*"$find".*$/"$replace"/' $3;

  # just in case alternative: sed 's/'"${find}"'/'"${replace}"'/'

  # https://unix.stackexchange.com/questions/32497/grep-search-and-replace-full-line/32507#32507
}

gTFR $*
