#
# Copyright by The HDF Group.
# All rights reserved.
#
# This file is part of HDF5.  The full HDF5 copyright notice, including
# terms governing use, modification, and redistribution, is contained in
# the COPYING file, which can be found at the root of the source code
# distribution tree, or in https://support.hdfgroup.org/ftp/HDF5/releases.
# If you do not have access to either file, you may request a copy from
# help@hdfgroup.org.
#
option (USE_LIBAEC "Use AEC library as SZip Filter" OFF)

include (ExternalProject)
#option (HDF5_ALLOW_EXTERNAL_SUPPORT "Allow External Library Building (NO GIT TGZ)" "NO")
set (HDF5_ALLOW_EXTERNAL_SUPPORT "NO" CACHE STRING "Allow External Library Building (NO GIT TGZ)")
set_property (CACHE HDF5_ALLOW_EXTERNAL_SUPPORT PROPERTY STRINGS NO GIT TGZ)
if (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "GIT" OR HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "TGZ")
  option (ZLIB_USE_EXTERNAL "Use External Library Building for ZLIB" 1)
  option (SZIP_USE_EXTERNAL "Use External Library Building for SZIP" 1)
  if (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "GIT")
    set (ZLIB_URL ${ZLIB_GIT_URL} CACHE STRING "Path to zlib git repository")
    set (ZLIB_BRANCH ${ZLIB_GIT_BRANCH})
    set (SZIP_URL ${SZIP_GIT_URL} CACHE STRING "Path to szip git repository")
    set (SZIP_BRANCH ${SZIP_GIT_BRANCH})
  elseif (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "TGZ")
    if (NOT TGZPATH)
      set (TGZPATH ${HDF5_SOURCE_DIR})
    endif ()
    set (ZLIB_URL ${TGZPATH}/${ZLIB_TGZ_NAME})
    if (NOT EXISTS "${ZLIB_URL}")
      set (HDF5_ENABLE_Z_LIB_SUPPORT OFF CACHE BOOL "" FORCE)
      message (STATUS "Filter ZLIB file ${ZLIB_URL} not found")
    endif ()
    set (SZIP_URL ${TGZPATH}/${SZIP_TGZ_NAME})
    if (USE_LIBAEC)
      set (SZIP_URL ${TGZPATH}/${SZAEC_TGZ_NAME})
    endif ()
    if (NOT EXISTS "${SZIP_URL}")
      set (HDF5_ENABLE_SZIP_SUPPORT OFF CACHE BOOL "" FORCE)
      message (STATUS "Filter SZIP file ${SZIP_URL} not found")
    endif ()
  else ()
    set (ZLIB_USE_EXTERNAL 0)
    set (SZIP_USE_EXTERNAL 0)
  endif ()
endif ()

#-----------------------------------------------------------------------------
# Option for ZLib support
#-----------------------------------------------------------------------------
option (HDF5_ENABLE_Z_LIB_SUPPORT "Enable Zlib Filters" OFF)
if (HDF5_ENABLE_Z_LIB_SUPPORT)
  if (NOT H5_ZLIB_HEADER)
    if (NOT ZLIB_USE_EXTERNAL)
      find_package (ZLIB NAMES ${ZLIB_PACKAGE_NAME}${HDF_PACKAGE_EXT} COMPONENTS static shared)
      if (NOT ZLIB_FOUND)
        find_package (ZLIB) # Legacy find
        if (ZLIB_FOUND)
          set (LINK_COMP_LIBS ${LINK_COMP_LIBS} ${ZLIB_LIBRARIES})
        endif ()
      endif ()
    endif ()
    if (ZLIB_FOUND)
      set (H5_HAVE_FILTER_DEFLATE 1)
      set (H5_HAVE_ZLIB_H 1)
      set (H5_HAVE_LIBZ 1)
      set (H5_ZLIB_HEADER "zlib.h")
      set (ZLIB_INCLUDE_DIR_GEN ${ZLIB_INCLUDE_DIR})
      set (ZLIB_INCLUDE_DIRS ${ZLIB_INCLUDE_DIRS} ${ZLIB_INCLUDE_DIR})
    else ()
      if (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "GIT" OR HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "TGZ")
        EXTERNAL_ZLIB_LIBRARY (${HDF5_ALLOW_EXTERNAL_SUPPORT})
        set (H5_HAVE_FILTER_DEFLATE 1)
        set (H5_HAVE_ZLIB_H 1)
        set (H5_HAVE_LIBZ 1)
        message (STATUS "Filter ZLIB is built")
      else ()
        message (FATAL_ERROR " ZLib is Required for ZLib support in HDF5")
      endif ()
    endif ()
  else ()
    # This project is being called from within another and ZLib is already configured
    set (H5_HAVE_FILTER_DEFLATE 1)
    set (H5_HAVE_ZLIB_H 1)
    set (H5_HAVE_LIBZ 1)
  endif ()
  if (H5_HAVE_FILTER_DEFLATE)
    set (EXTERNAL_FILTERS "${EXTERNAL_FILTERS} DEFLATE")
  endif ()
  set (LINK_COMP_LIBS ${LINK_COMP_LIBS} ${ZLIB_STATIC_LIBRARY})
  INCLUDE_DIRECTORIES (${ZLIB_INCLUDE_DIRS})
  message (STATUS "Filter ZLIB is ON")
endif ()

#-----------------------------------------------------------------------------
# Option for SzLib support
#-----------------------------------------------------------------------------
option (HDF5_ENABLE_SZIP_SUPPORT "Use SZip Filter" OFF)
if (HDF5_ENABLE_SZIP_SUPPORT)
  option (HDF5_ENABLE_SZIP_ENCODING "Use SZip Encoding" OFF)
  if (NOT SZIP_USE_EXTERNAL)
    find_package (SZIP NAMES ${SZIP_PACKAGE_NAME}${HDF_PACKAGE_EXT} COMPONENTS static shared)
    if (NOT SZIP_FOUND)
      find_package (SZIP) # Legacy find
      if (SZIP_FOUND)
        set (LINK_COMP_LIBS ${LINK_COMP_LIBS} ${SZIP_LIBRARIES})
      endif ()
    endif ()
  endif ()
  if (SZIP_FOUND)
    set (H5_HAVE_FILTER_SZIP 1)
    set (H5_HAVE_SZLIB_H 1)
    set (H5_HAVE_LIBSZ 1)
    set (SZIP_INCLUDE_DIR_GEN ${SZIP_INCLUDE_DIR})
    set (SZIP_INCLUDE_DIRS ${SZIP_INCLUDE_DIRS} ${SZIP_INCLUDE_DIR})
  else ()
    if (HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "GIT" OR HDF5_ALLOW_EXTERNAL_SUPPORT MATCHES "TGZ")
      EXTERNAL_SZIP_LIBRARY (${HDF5_ALLOW_EXTERNAL_SUPPORT} ${HDF5_ENABLE_SZIP_ENCODING})
      set (H5_HAVE_FILTER_SZIP 1)
      set (H5_HAVE_SZLIB_H 1)
      set (H5_HAVE_LIBSZ 1)
      message (STATUS "Filter SZIP is built")
      if (USE_LIBAEC)
        message (STATUS "... with library AEC")
        set (SZ_PACKAGE_NAME ${LIBAEC_PACKAGE_NAME})
      else ()
        set (SZ_PACKAGE_NAME ${SZIP_PACKAGE_NAME})
      endif ()
    else ()
      message (FATAL_ERROR "SZIP is Required for SZIP support in HDF5")
    endif ()
  endif ()
  set (LINK_COMP_LIBS ${LINK_COMP_LIBS} ${SZIP_STATIC_LIBRARY})
  INCLUDE_DIRECTORIES (${SZIP_INCLUDE_DIRS})
  message (STATUS "Filter SZIP is ON")
  if (H5_HAVE_FILTER_SZIP)
    set (EXTERNAL_FILTERS "${EXTERNAL_FILTERS} DECODE")
  endif ()
  if (HDF5_ENABLE_SZIP_ENCODING)
    set (H5_HAVE_SZIP_ENCODER 1)
    set (EXTERNAL_FILTERS "${EXTERNAL_FILTERS} ENCODE")
  endif ()
endif ()
