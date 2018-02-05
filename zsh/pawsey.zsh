# Pawsey-specific aliases (things like PrgEnvs, slurm, etc.)

# Functions to swap between PrgEnvs
function gnu () {
  if ((${#CRAY_PRGENVCRAY[@]})); then
    echo "Swapping from Cray to GNU PrgEnv"
    module swap PrgEnv-cray PrgEnv-gnu
  elif ((${#CRAY_PRGENVINTEL[@]})); then
    echo "Swapping from Intel to GNU PrgEnv"
    module swap PrgEnv-intel PrgEnv-gnu
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

# Function to mass remove directories on Lustre filesystems
# Uses munlink to remove files
# Requires a directory to passed as an argument
function rm-scr() {
   zargs "$1"/**/*(.) -- munlink
   zargs "$1"/**/*(/) -- rm -rf
   rm -rf $1
}

# Queue aliases
alias sq='squeue'
alias da="salloc -p debugq /bin/bash -l"
alias dq="squeue -p debugq"

# Module aliases
alias mls="module list"
alias ms="module swap"
alias ma="module avail"
alias mld="module load"
alias mrm="module remove"

# Filesytem aliases
alias scr="cd $MYSCRATCH"
alias grp="cd $MYGROUP"
alias sfw="cd $MYGROUP/software/$PAWSEY_OS"
