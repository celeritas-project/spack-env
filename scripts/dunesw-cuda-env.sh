# Created by: spack env activate --sh dunesw-cuda > view/dunesw-cuda-env.sh
# with substitutions (additions at bottom)
DUNESW_VIEW=/auto/projects/celeritas/view/dunesw-cuda
DUNESW_OPT=/auto/projects/celeritas/opt/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_place
DUNESW_DATA=/auto/projects/celeritas/data/dunesw

source $DUNESW_OPT/trace/v3_27_00/544iaqc/bin/trace_functions.sh
export SPACK_ENV=/auto/projects/celeritas/spack/var/spack/environments/dunesw-cuda;
export VIRTUAL_ENV_PROMPT=dunesw-cuda;
export SPACK_ENV_VIEW=default;
alias despacktivate='spack env deactivate';
export ACLOCAL_PATH=/usr/share/aclocal:$DUNESW_VIEW/share/aclocal;
export BOOST_ROOT=$DUNESW_VIEW;
export CET_PLUGIN_PATH=$DUNESW_VIEW/lib;
export CLING_STANDARD_PCH=none;
# removed /scratch/celeritas/view
export CMAKE_PREFIX_PATH=$DUNESW_VIEW:.;
export CPATH=$DUNESW_VIEW/include/eigen3;
export CPPYY_API_PATH=none;
export CPPYY_BACKEND_LIBRARY=$DUNESW_VIEW/lib/root/libcppyy_backend;
export CRYDATAPATH=$DUNESW_VIEW/data;
export CRYHOME=$DUNESW_VIEW;
export CRY_LIB=$DUNESW_VIEW/lib;
export CUDA_HOME=$DUNESW_VIEW;
export FHICL_FILE_PATH=$DUNESW_VIEW/job:$DUNESW_VIEW/fcl;
export FW_SEARCH_PATH=$DUNESW_VIEW/gdml:$DUNESW_VIEW/G4:$DUNESW_VIEW/config_data:$DUNESW_VIEW/files:$DUNESW_VIEW/scripts:$DUNESW_VIEW/compatibility:$DUNESW_VIEW:$DUNESW_VIEW/SupernovaNeutrinos:$DUNESW_VIEW/pdf/MUSUN:$DUNESW_VIEW/pdf/Gaisser:$DUNESW_VIEW/PhotonPropagation/LibraryData:$DUNESW_VIEW/ParticleIdentification:$DUNESW_VIEW/Genfit:$DUNESW_VIEW/Argoneut:$DUNESW_VIEW/uboone:$DUNESW_VIEW/fw;
export G4ABLADATA=$DUNESW_VIEW/share/data/G4ABLA3.3;
export G4ENSDFSTATEDATA=$DUNESW_VIEW/share/data/G4ENSDFSTATE2.3;
export G4INCLDATA=$DUNESW_VIEW/share/data/G4INCL1.2;
export G4LEDATA=$DUNESW_VIEW/share/data/G4EMLOW8.5;
export G4LEVELGAMMADATA=$DUNESW_VIEW/share/data/PhotonEvaporation5.7;
export G4NEUTRONHPDATA=$DUNESW_VIEW/share/data/G4NDL4.7.1;
export G4PARTICLEHPDATA=$DUNESW_VIEW/share/data/G4TENDL1.4;
export G4PARTICLEXSDATA=$DUNESW_VIEW/share/data/G4PARTICLEXS4.0;
export G4PIIDATA=$DUNESW_VIEW/share/data/G4PII1.3;
export G4RADIOACTIVEDATA=$DUNESW_VIEW/share/data/RadioactiveDecay5.6;
export G4REALSURFACEDATA=$DUNESW_VIEW/share/data/RealSurface2.2;
export G4SAIDXSDATA=$DUNESW_VIEW/share/data/G4SAIDDATA2.0;
export GENIE=$DUNESW_VIEW;
export GENIEPHYOPTPATH=$DUNESW_VIEW/dkcharm;
export GENIEXSECFILE=$DUNESW_VIEW/v3_06_00/NULL/G1810a0211a-k250-e1000/data/gxspl-NUsmall.xml;
export GENIEXSECPATH=$DUNESW_VIEW/v3_06_00/NULL/G1810a0211a-k250-e1000/data;
export GENIE_PHYOPT_VARIANT=dkcharm;
export GENIE_VERSION=v3_06_02;
export GENIE_XSEC_EMAX=1000.0;
export GENIE_XSEC_GENLIST=Default;
export GENIE_XSEC_KNOTS=250;
export GENIE_XSEC_TUNE=G18_10a_02_11a;
export GSL_ROOT_DIR=$DUNESW_VIEW;
export GXMLPATH=$DUNESW_VIEW/dkcharm:$DUNESW_VIEW/v3_06_00/NULL/G1810a0211a-k250-e1000/data;
export IFBEAM_DIR=$DUNESW_VIEW;
export IFDHC_CONFIG_DIR=$DUNESW_VIEW;
export IFDHC_DIR=$DUNESW_VIEW;
export LD_LIBRARY_PATH=$DUNESW_VIEW/lib;
export LIBWDA_DIR=$DUNESW_VIEW;
# Updated
export MANPATH=$DUNESW_VIEW/share/man:$DUNESW_VIEW/man:$MANPATH;
export NUCONDB_DIR=$DUNESW_VIEW;
export NVHPC_CUDA_HOME=$DUNESW_VIEW;
export PANDORAPFA=$DUNESW_VIEW;
# Replaced local path with PATH
export PATH=$DUNESW_VIEW/bin:/auto/projects/celeritas/spack/bin:$PATH;
export PERL5LIB=$DUNESW_VIEW/perllib;
# Updated
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$DUNESW_VIEW/share/pkgconfig:$DUNESW_VIEW/lib/pkgconfig:$DUNESW_VIEW/lib64/pkgconfig;
export PPFX_DIR=$DUNESW_VIEW;
export PYTHIA8=$DUNESW_VIEW;
export PYTHIA8DATA=$DUNESW_VIEW/share/Pythia8/xmldoc;
export PYTHONPATH=$DUNESW_VIEW/misc:$DUNESW_VIEW/lib/python:$DUNESW_VIEW/lib/root:$DUNESW_VIEW/lib/python3.14/site-packages;
export ROOTSYS=$DUNESW_VIEW;
export ROOT_INCLUDE_PATH=$DUNESW_VIEW/include:$DUNESW_VIEW/src:$DUNESW_VIEW/include/GENIE:/usr/include;
export ROOT_LIBRARY_PATH=$DUNESW_VIEW/lib/root:$DUNESW_VIEW/lib:$DUNESW_VIEW/lib64;
export ROOT_VERSION=v6;

# Added mirrored persistent path and leading '.'
export FW_SEARCH_PATH=.:/auto/projects/celeritas/data/dunesw/persistent/stash:$FW_SEARCH_PATH
# Add genie override and leading '.'
export FHICL_FILE_PATH=.:$DUNESW_DATA/fcl:$FHICL_FILE_PATH
# Fix Genie link errors
export LD_PRELOAD=$DUNESW_VIEW/lib/libGFwReg.so:$LD_PRELOAD
