gTFR() {
  # $1=pattern, what is find value?
  # $2=pattern, what is replace value?
  # $3=filename

  echo "$3";
  echo "$*";
  [ -f "$3" ] && mainLogic;
}

mainLogic() {
  echo 'lets do some stuff'

  
}

gTFR $*
