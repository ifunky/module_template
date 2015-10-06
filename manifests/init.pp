# ADD A GOOD DESCRIPTION OF WHAT THIS MODULE DOES
#
# @example when declaring the class
#   class { 'template' }
#
# @param ensure Required. Must be 'present' or 'absent
# @param example_path Required.  Path to somewhere
#
# @author Dan @ iFunky.net
class template (
  $ensure       = undef,
  $example_path = $template::params::example_path,
) inherits template::params {

  validate_re($ensure,['^(present|absent)$'], 'ERROR: You must specify present or absent')
  validate_absolute_path($example_path)

  if (::osfamily != 'windows'){
    fail("${::osfamily} not supported")
  }

}
