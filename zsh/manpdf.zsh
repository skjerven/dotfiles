# Open man pages as a PDF
# assumes Preview app in osx

is_osx || return 1

function manpdf() {
  man -t "${1}" | ps2pdf - /tmp/${1}_manpage.pdf
  open /tmp/${1}_manpage.pdf
}
