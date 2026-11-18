# Common dunesw environment: sourced by dunesw-{cuda,hip,nodevice}-env.sh
# Originally created by: spack env activate --sh dunesw-cuda > view/dunesw-cuda-env.sh
# Requires SPACK_ENV_VIEW (and DUNESW_LD_EXTRA optionally) to be set by the caller
# with substitutions (additions at bottom)
SPACK_OPT=/auto/projects/celeritas/opt/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_place
DUNESW_DATA=/auto/projects/celeritas/data/dunesw

source $SPACK_OPT/trace/v3_27_00/544iaqc/bin/trace_functions.sh
alias despacktivate='spack env deactivate';
export ACLOCAL_PATH=/usr/share/aclocal:$SPACK_ENV_VIEW/share/aclocal;
export BOOST_ROOT=$SPACK_ENV_VIEW;
export CET_PLUGIN_PATH=$SPACK_ENV_VIEW/lib;
export CLING_STANDARD_PCH=none;
export CMAKE_PREFIX_PATH=$SPACK_ENV_VIEW:.;
export CPATH=$SPACK_ENV_VIEW/include/eigen3;
export CPPYY_API_PATH=none;
export CPPYY_BACKEND_LIBRARY=$SPACK_ENV_VIEW/lib/root/libcppyy_backend;
export CRYDATAPATH=$SPACK_ENV_VIEW/data;
export CRYHOME=$SPACK_ENV_VIEW;
export CRY_LIB=$SPACK_ENV_VIEW/lib;
export FHICL_FILE_PATH=$SPACK_ENV_VIEW/job:$SPACK_ENV_VIEW/fcl;
export FW_SEARCH_PATH=$SPACK_ENV_VIEW/gdml:$SPACK_ENV_VIEW/G4:$SPACK_ENV_VIEW/config_data:$SPACK_ENV_VIEW/files:$SPACK_ENV_VIEW/scripts:$SPACK_ENV_VIEW/compatibility:$SPACK_ENV_VIEW:$SPACK_ENV_VIEW/SupernovaNeutrinos:$SPACK_ENV_VIEW/pdf/MUSUN:$SPACK_ENV_VIEW/pdf/Gaisser:$SPACK_ENV_VIEW/PhotonPropagation/LibraryData:$SPACK_ENV_VIEW/ParticleIdentification:$SPACK_ENV_VIEW/Genfit:$SPACK_ENV_VIEW/Argoneut:$SPACK_ENV_VIEW/uboone:$SPACK_ENV_VIEW/fw;
export G4ABLADATA=$SPACK_ENV_VIEW/share/data/G4ABLA3.3;
export G4ENSDFSTATEDATA=$SPACK_ENV_VIEW/share/data/G4ENSDFSTATE2.3;
export G4INCLDATA=$SPACK_ENV_VIEW/share/data/G4INCL1.2;
export G4LEDATA=$SPACK_ENV_VIEW/share/data/G4EMLOW8.5;
export G4LEVELGAMMADATA=$SPACK_ENV_VIEW/share/data/PhotonEvaporation5.7;
export G4NEUTRONHPDATA=$SPACK_ENV_VIEW/share/data/G4NDL4.7.1;
export G4PARTICLEHPDATA=$SPACK_ENV_VIEW/share/data/G4TENDL1.4;
export G4PARTICLEXSDATA=$SPACK_ENV_VIEW/share/data/G4PARTICLEXS4.0;
export G4PIIDATA=$SPACK_ENV_VIEW/share/data/G4PII1.3;
export G4RADIOACTIVEDATA=$SPACK_ENV_VIEW/share/data/RadioactiveDecay5.6;
export G4REALSURFACEDATA=$SPACK_ENV_VIEW/share/data/RealSurface2.2;
export G4SAIDXSDATA=$SPACK_ENV_VIEW/share/data/G4SAIDDATA2.0;
export GENIE=$SPACK_ENV_VIEW;
export GENIEPHYOPTPATH=$SPACK_ENV_VIEW/dkcharm;
export GENIEXSECFILE=$SPACK_ENV_VIEW/v3_06_00/NULL/G1810a0211a-k250-e1000/data/gxspl-NUsmall.xml;
export GENIEXSECPATH=$SPACK_ENV_VIEW/v3_06_00/NULL/G1810a0211a-k250-e1000/data;
export GENIE_PHYOPT_VARIANT=dkcharm;
export GENIE_VERSION=v3_06_02;
export GENIE_XSEC_EMAX=1000.0;
export GENIE_XSEC_GENLIST=Default;
export GENIE_XSEC_KNOTS=250;
export GENIE_XSEC_TUNE=G18_10a_02_11a;
export GSL_ROOT_DIR=$SPACK_ENV_VIEW;
export GXMLPATH=$SPACK_ENV_VIEW/dkcharm:$SPACK_ENV_VIEW/v3_06_00/NULL/G1810a0211a-k250-e1000/data;
export IFBEAM_DIR=$SPACK_ENV_VIEW;
export IFDHC_CONFIG_DIR=$SPACK_ENV_VIEW;
export IFDHC_DIR=$SPACK_ENV_VIEW;
# Spack copies the pre-existing value into the env, so append it
export LD_LIBRARY_PATH=$SPACK_ENV_VIEW/lib${DUNESW_LD_EXTRA:+:$DUNESW_LD_EXTRA}${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH};
export LIBWDA_DIR=$SPACK_ENV_VIEW;
# Updated
export MANPATH=$SPACK_ENV_VIEW/share/man:$SPACK_ENV_VIEW/man:$MANPATH;
export NUCONDB_DIR=$SPACK_ENV_VIEW;
export PANDORAPFA=$SPACK_ENV_VIEW;
# Replaced local path with PATH
export PATH=$SPACK_ENV_VIEW/bin:/auto/projects/celeritas/spack/bin:$PATH;
export PERL5LIB=$SPACK_ENV_VIEW/perllib;
# Updated
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$SPACK_ENV_VIEW/share/pkgconfig:$SPACK_ENV_VIEW/lib/pkgconfig:$SPACK_ENV_VIEW/lib64/pkgconfig;
export PPFX_DIR=$SPACK_ENV_VIEW;
export PYTHIA8=$SPACK_ENV_VIEW;
export PYTHIA8DATA=$SPACK_ENV_VIEW/share/Pythia8/xmldoc;
export PYTHONPATH=$SPACK_ENV_VIEW/misc:$SPACK_ENV_VIEW/lib/python:$SPACK_ENV_VIEW/lib/root:$SPACK_ENV_VIEW/lib/python3.14/site-packages;
export ROOTSYS=$SPACK_ENV_VIEW;
export ROOT_INCLUDE_PATH=$SPACK_ENV_VIEW/include:$SPACK_ENV_VIEW/src:$SPACK_ENV_VIEW/include/GENIE:/usr/include;
export ROOT_LIBRARY_PATH=$SPACK_ENV_VIEW/lib/root:$SPACK_ENV_VIEW/lib:$SPACK_ENV_VIEW/lib64;
export ROOT_VERSION=v6;

# Added mirrored persistent path and leading '.'
export FW_SEARCH_PATH=.:$DUNESW_DATA/persistent/stash:$FW_SEARCH_PATH
# Add genie override and leading '.'
export FHICL_FILE_PATH=.:$DUNESW_DATA/fcl:$FHICL_FILE_PATH
# Do not fix Genie link errors: it's too invasive
# export LD_PRELOAD=$SPACK_ENV_VIEW/lib/libGFwReg.so:$LD_PRELOAD
