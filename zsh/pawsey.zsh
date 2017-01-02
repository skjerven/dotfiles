# Pawsey-specific aliases (things like PrgEnvs, slurm, etc.)

function gnu () {
  if ((${#CRAY_PRGENVCRAY[@]})); then
    echo "Swapping from Cray to GNU PrgEnv"
    module swap PrgEnv-cray PrgEnv-gnu
    module swap gcc gcc/4.9.2
  elif ((${#CRAY_PRGENVINTEL[@]})); then
    echo "Swapping from Intel to GNU PrgEnv"
    module swap PrgEnv-intel PrgEnv-gnu
    module swap gcc gcc/4.9.2
  elif ((${#CRAY_PRGENVGNU[@]})); then
    echo "GNU PrgEnv already loaded";
  else
    echo "No PrgEnv currently loaded"
  fi
}

function intel () {
  if ((${#CRAY_PRGENVCRAY[@]})); then
    echo "Swapping from Cray to Intel PrgEnv"
    module swap PrgEnv-cray PrgEnv-intel
  elif ((${#CRAY_PRGENVGNU[@]})); then
    echo "Swapping from GNU to Intel PrgEnv"
    module swap PrgEnv-gnu PrgEnv-intel
  elif ((${#CRAY_PRGENVINTEL[@]})); then
    echo "Intel PrgEnv already loaded";
  else
    echo "No PrgEnv currently loaded"
  fi
}

function cray () {
  if ((${#CRAY_PRGENVGNU[@]})); then
    echo "Swapping from GNU to Cray PrgEnv"
    module swap PrgEnv-gnu PrgEnv-cray
  elif ((${#CRAY_PRGENVINTEL[@]})); then
    echo "Swapping from Intel to Cray PrgEnv"
    module swap PrgEnv-intel PrgEnv-cray
  elif ((${#CRAY_PRGENVCRAY[@]})); then
    echo "Cray PrgEnv already loaded";
  else
    echo "No PrgEnv currently loaded"
  fi
}

# Debug queue aliases
alias da="salloc -p debugq"
alias dq="squeue -p debugq"

# Module aliases
alias mls="module list"
alias ms="module swap"
alias ma="module avail"
alias mld="module load"
alias mrm="module remove"
