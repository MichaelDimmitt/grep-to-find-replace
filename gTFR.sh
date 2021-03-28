if_not_found_append_to_file_old() {
  # $1=pattern, $2=filename
  [ -f "$2" ] && if grep -q "$1" "$2"; then :; else echo "$1" >> "$2"; fi
}

if_file_atf() {
  # $1=pattern, $2=filename
  [ -f "$2" ] && if_not_found_append_to_file $1 $2
}

if_not_found_append_to_file() {
  # $1=pattern, $2=filename
  if grep -q "$1" "$2"; then :; else append_to_file; fi
}

append_to_file() {
  # $1=pattern, $2=filename
  echo "$1" >> "$2"
}

if_file_gtfr() {
  # $1=pattern, $2=filename
  [ -f "$2" ] && if_not_found_append_to_file $1 $2
}

gTFR() {
  # $1=pattern, what is find value?
  # $2=pattern, what is replace value?
  # $3=filename

  [ -f "$3" ] && 
}


