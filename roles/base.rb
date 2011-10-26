name "base"
description "Default run_list for Ravel's machines"
run_list(
  "recipe[apt]",
  "recipe[chef-client]",
  "recipe[java::sun]",
  "recipe[ntp]",
  "recipe[users::sysadmins]"
  )
