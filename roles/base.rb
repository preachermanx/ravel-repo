name "base"
description "Default run_list for Ravel's machines"
run_list(
  "recipe[apt]",
  "recipe[chef-client]",
  "recipe[java::sun]",
  "recipe[ntp]",
  "recipe[sudo]",
  "recipe[users::sysadmins]"
  )

default_attributes(
  "authorization" => {
    "sudo" => {
      "groups" => ["admin", "wheel", "sysadmin"],
      "users" => ["mray"],
      "passwordless" => true
    }
  }
  )
