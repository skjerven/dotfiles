if ! is_osx; then
  autoload -U +X bashcompinit && bashcompinit
  bash_source /group/pawsey0001/bskjerven/etc/slurm_completion.sh
fi
