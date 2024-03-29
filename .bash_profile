umask 077

for path in /usr/kerberos/bin /usr/local/bin /usr/sww/bin /usr/sfw/bin
do
  if [ -e $path ]; then
        export PATH=${PATH}:$path
  fi
done

# require two ctrl-d's to quit the shell
export IGNOREEOF=2

# set scratch dir
SCRATCH="/rscratch/jmk"
if [ ! -d "$SCRATCH" ]; then
    echo "no rscratch"
    SCRATCH="/scratch/jmk"
fi
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('${SCRATCH}/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "${SCRATCH}/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$SCRATCH/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$SCRATCH/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# export PATH="$SCRATCH/miniconda3/bin:$PATH"  # commented out by conda initialize


# LIBRARY ; PATH SETUP
export TOOLS=$SCRATCH/tools
export LD_LIBRARY_PATH="/lib:/usr/lib:/usr/local/lib:$SCRATCH/local/lib"
export LIBRARY_PATH="$SCRATCH/local/lib:$LIBRARY_PATH"
export PATH="$SCRATCH/local/bin:${PATH}"
export CPATH="$CPATH:$SCRATCH/local/include"

# Yaml-cpp
export CPATH="$CPATH:$SCRATCH/local/include/yaml-cpp"

# Vivado
VIVADO_SH="$SCRATCH/xilinx/Vivado/2021.1/settings64.sh"
if [ -f "$VIVADO_SH" ]; then
    source $SCRATCH/xilinx/Vivado/2021.1/settings64.sh
fi

# Hammer
export HAMMER_HOME=$TOOLS/hammer

# Gurobi
export GUROBI_HOME=$SCRATCH/gurobi951/linux64
export PATH="${GUROBI_HOME}/bin:${PATH}"
export LD_LIBRARY_PATH="$SCRATCH/${GUROBI_HOME}/lib:LD_LIBRARY_PATH"
export GRB_LICENSE_FILE=$GUROBI_HOME/gurobi.lic

# CoSA - Timeloop
export COSA_DIR=$HOME/cosa-vae
export TMPDIR=$SCRATCH/tmp


# Verilator
export PATH="$PATH:$TOOLS/verilator/bin"

# Node.js
export NVM_DIR="$SCRATCH/local/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# SBT
export PATH="$TOOLS/sbt/bin:$PATH"

# LS corlos
LS_COLORS=$LS_COLORS:'di=0;36:ln=0:ex=0;37' ; export LS_COLORS
# export LS_OPTIONS='--color=auto'
# eval "$(dircolors -b)"
# alias ls='ls $LS_OPTIONS'

source ~/.bashrc

VLSI_RC="/ecad/tools/vlsi.bashrc"
if [ -f "$VLSI_RC" ]; then
    source /ecad/tools/vlsi.bashrc
fi
