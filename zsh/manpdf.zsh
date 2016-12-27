# Open man pages as a PDF
# assumes Preview app in osx

is_osx || return 1

function manpdf() {
  man -t "${1}" | open -f -a /Applications/Preview.app/
}
