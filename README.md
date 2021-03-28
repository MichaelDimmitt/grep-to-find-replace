# grep-to-find-replace
gTFR

1) prompt what is find value?
2) prompt what is replace value?
2) grep - find value, check matches 1 result
3) `sed -i 's/^.*<your string>.*$/<another string>/' <your file>.txt`

https://unix.stackexchange.com/a/32507/188491 

## Features:
1) search and replace<br/>
command: `gTFR`
2) search and append to the end of a line<br/>
command: `gTFR --add`
3) search and append as a new line after the match<br/>
command: `gTFR --append`

## Edge cases:
1) do nothing - tell user why, if file not found
2) do nothing - tell user why, if multiple occurances are found in file

## Inform the user

### Pre-Operation:
1) grep file for find value, show output of line
2) grep file for replace value, show output of line

### Post-Operation:
3) grep file for find value, show output of line
4) grep file for replace value, show output of line
