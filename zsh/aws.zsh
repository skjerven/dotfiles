alias cfn-nag='cfn_nag'
alias cfn-nag-rules='cfn_nag_rules'
alias cfn-nag-scan='cfn_nag_scan'
alias isengard='isengardcli'
alias mwk='mwinit --aea -k ~/.ssh/aws_gitlab_ecdsa.pub'

if [[ $(hostname) == "bcd074a59be9.ant.amazon.com" ]]; then
  eval "$(isengardcli shell-autocomplete)"
fi
