# Created by: spack env activate --sh dunesw-hip > view/dunesw-hip-env.sh
# Device-specific settings; common settings are in dunesw-base-env.sh
export SPACK_ENV=/auto/projects/celeritas/spack/var/spack/environments/dunesw-hip;
export SPACK_ENV_VIEW=/auto/projects/celeritas/view/dunesw-hip
export VIRTUAL_ENV_PROMPT=dunesw-hip;
export COMGR_PATH=$SPACK_ENV_VIEW;
export DEVICE_LIB_PATH=$SPACK_ENV_VIEW/amdgcn/bitcode;
export HIPCC_COMPILE_FLAGS_APPEND="--rocm-path=$SPACK_ENV_VIEW -isystem $SPACK_ENV_VIEW/include";
export HIPCC_LINK_FLAGS_APPEND=--rocm-path=$SPACK_ENV_VIEW;
export HIPIFY_CLANG_PATH=$SPACK_ENV_VIEW;
export HIP_CLANG_PATH=$SPACK_ENV_VIEW/bin;
export HIP_COMPILER=clang;
export HIP_DEVICE_LIB_PATH=$SPACK_ENV_VIEW/amdgcn/bitcode;
export HIP_PLATFORM=amd;
export HSA_PATH=$SPACK_ENV_VIEW;
export LLVM_PATH=$SPACK_ENV_VIEW;
export ROCMINFO_PATH=$SPACK_ENV_VIEW;
export ROCM_PATH=$SPACK_ENV_VIEW;
export DUNESW_LD_EXTRA=$SPACK_ENV_VIEW/lib/clang/22/lib/linux

source "/auto/projects/celeritas/environments/scripts/dunesw-base-env.sh"
