alias cfn-nag='cfn_nag'
alias cfn-nag-rules='cfn_nag_rules'
alias cfn-nag-scan='cfn_nag_scan'
alias isengard='isengardcli'

if [[ $(hostname) == "147dda49eefc.ant.amazon.com" ]]; then
  eval "$(isengardcli shell-autocomplete)"
fi
