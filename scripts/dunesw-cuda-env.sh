# Device-specific settings; common settings are in dunesw-base-env.sh
export SPACK_ENV=/auto/projects/celeritas/spack/var/spack/environments/dunesw-cuda;
export SPACK_ENV_VIEW=/auto/projects/celeritas/view/dunesw-cuda;
export VIRTUAL_ENV_PROMPT=dunesw-cuda;
export CUDA_HOME=$SPACK_ENV_VIEW;
export NVHPC_CUDA_HOME=$SPACK_ENV_VIEW;

source "/auto/projects/celeritas/environments/scripts/dunesw-base-env.sh"
