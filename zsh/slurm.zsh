if (( ${+PAWSEY_OS} )); then
  autoload -U +X bashcompinit && bashcompinit
  bash_source ${yadr}/slurm/slurm_completion.sh
fi
