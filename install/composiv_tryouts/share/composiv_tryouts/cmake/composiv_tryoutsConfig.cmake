# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_composiv_tryouts_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED composiv_tryouts_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(composiv_tryouts_FOUND FALSE)
  elseif(NOT composiv_tryouts_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(composiv_tryouts_FOUND FALSE)
  endif()
  return()
endif()
set(_composiv_tryouts_CONFIG_INCLUDED TRUE)

# output package information
if(NOT composiv_tryouts_FIND_QUIETLY)
  message(STATUS "Found composiv_tryouts: 0.0.0 (${composiv_tryouts_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'composiv_tryouts' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${composiv_tryouts_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(composiv_tryouts_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${composiv_tryouts_DIR}/${_extra}")
endforeach()
