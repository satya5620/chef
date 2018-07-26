name "base"
description "Base server role"
run_list "recipe[motd]","recipe[users]"