#!/bin/sh -e
#-----------------------------------------------------------------------------#
# Rewrite CVMFS paths in the DUNESW view's FHiCL files for systems without CVMFS.
#
# Every *.fcl in $SPACK_ENV_VIEW/fcl that mentions "cvmfs" is copied (symlinks are
# followed) to the output directory with the CVMFS prefix replaced by the local
# mirror. Files without "cvmfs" are not copied, so the output directory should
# be placed *before* the view on FHICL_FILE_PATH:
#
#   export FHICL_FILE_PATH=${OUT_DIR}:$SPACK_ENV_VIEW/job:$SPACK_ENV_VIEW/fcl
#
# Usage: filter-cvmfs-fcl.sh [OUT_DIR]
# Environment: SPACK_ENV_VIEW (required), CVMFS_PREFIX and MIRROR_PREFIX (optional)
#-----------------------------------------------------------------------------#

CVMFS_PREFIX=${CVMFS_PREFIX:-/cvmfs/dune.osgstorage.org/pnfs/fnal.gov/usr/dune}
MIRROR_PREFIX=${MIRROR_PREFIX:-/auto/projects/celeritas/data/dunesw}
OUT_DIR=${1:-${MIRROR_PREFIX}/fcl}

if [ -z "${SPACK_ENV_VIEW}" ] || ! [ -d "${SPACK_ENV_VIEW}/fcl" ]; then
  echo "error: SPACK_ENV_VIEW must point to a view containing fcl/" >&2
  exit 1
fi

mkdir -p "${OUT_DIR}"

count=0
# -l: names only; -s: ignore unreadable files; -R: follow the
# symlinks the spack view uses
for src in $(grep -lsR --include='*.fcl' -e cvmfs "${SPACK_ENV_VIEW}/fcl" \
             | sort); do
  name=$(basename "${src}")
  # Escape sed metacharacters in the prefixes (delimiter is |)
  from=$(printf '%s' "${CVMFS_PREFIX}" | sed 's/[][\.*^$|]/\\&/g')
  to=$(printf '%s' "${MIRROR_PREFIX}" | sed 's/[\&|]/\\&/g')
  sed "s|${from}|${to}|g" "${src}" > "${OUT_DIR}/${name}.tmp"
  mv "${OUT_DIR}/${name}.tmp" "${OUT_DIR}/${name}"
  count=$((count + 1))
done
echo "Wrote ${count} files to ${OUT_DIR}"

# Report any CVMFS references the prefix replacement did not cover
leftover=$(grep -l cvmfs "${OUT_DIR}"/*.fcl 2>/dev/null || true)
if [ -n "${leftover}" ]; then
  echo "warning: remaining 'cvmfs' references (other prefixes?) in:" >&2
  for f in ${leftover}; do
    echo "  ${f}: $(grep -c cvmfs "${f}") line(s)" >&2
  done
fi
