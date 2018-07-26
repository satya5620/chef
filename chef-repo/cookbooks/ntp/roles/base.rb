name "base"
description " Base servere role"
run_list "recipe[motd]","recipe[users]","recipe[ntp]"