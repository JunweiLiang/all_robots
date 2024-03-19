# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_aliengo_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED aliengo_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(aliengo_FOUND FALSE)
  elseif(NOT aliengo_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(aliengo_FOUND FALSE)
  endif()
  return()
endif()
set(_aliengo_CONFIG_INCLUDED TRUE)

# output package information
if(NOT aliengo_FIND_QUIETLY)
  message(STATUS "Found aliengo: 0.0.0 (${aliengo_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'aliengo' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT aliengo_DEPRECATED_QUIET)
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(aliengo_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${aliengo_DIR}/${_extra}")
endforeach()
