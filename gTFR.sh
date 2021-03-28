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

  ## Features:
  # 1) search and replace
  # 2) search and append to the end of a line
  # 3) search and append as a new line after the match

  ## Edge cases:
  # 1) do nothing - tell user why, if file not found
  # 2) do nothing - tell user why, if multiple occurances are found in file
  # 3)

  ## Inform the user

  ### Pre-Operation:
  # 1) grep file for find value, show output of line
  # 2) grep file for replace value, show output of line

  ### Post-Operation:
  # 3) grep file for find value, show output of line
  # 4) grep file for replace value, show output of line

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
