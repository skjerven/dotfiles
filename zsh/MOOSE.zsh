# MOOSE Environment
function moose-env() {
  # Set MOOSE_JOBS to the number of physical processors available
  if [ `uname -s` = "Darwin" ]; then
    export MOOSE_JOBS=`/usr/sbin/sysctl -n hw.ncpu`
  else
    export MOOSE_JOBS=`cat /proc/cpuinfo | grep processor | wc -l`
  fi

  export MOOSE_PPS_WIDTH=180

  if [ "${MODULE_VERSION:-}" = "" ]; then
    MODULE_VERSION_STACK="3.2.10"
    MODULE_VERSION="3.2.10"
    export MODULE_VERSION
  else
    MODULE_VERSION_STACK="$MODULE_VERSION"
  fi
  export MODULE_VERSION_STACK

  module() { eval `/opt/moose/Modules/$MODULE_VERSION/bin/modulecmd zsh $*`; }
  MODULESHOME=/opt/moose/Modules/$MODULE_VERSION
  export MODULESHOME

  if [ "${LOADEDMODULES:-}" = "" ]; then
    LOADEDMODULES=
    export LOADEDMODULES
  fi

  if [ "${MODULEPATH:-}" = "" ]; then
    MODULEPATH=/opt/moose/Modules/versions:/opt/moose/Modules/$MODULE_VERSION/modulefiles:/opt/moose/Modules/modulefiles
    export MODULEPATH
  fi

  # Load the moose-dev-clang and moose-tools module by default:
  module load moose-dev-clang moose-tools

  # MOOSE_PPS_WIDTH
  export MOOSE_PPS_WIDTH=180

  # Source the autojump profile if requested:
  if [ -n "$MOOSE_JUMP" ]; then
    source /opt/moose/environments/autojump_profile
  fi

  # IF, anyone wants to use our prompt:
  if [ -n "$MOOSE_PROMPT" ]; then
    PS1="\[\033[1;34m\][\u]\[\033[1;32m\][\w]\[\033[0m\]> "
  fi
}
