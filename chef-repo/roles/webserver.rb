name "webserver"
description "Web Server"
run_list "recipe[apache]"
default_attributes({
    "apache" => {
        "sites" => {
            "admin" => {
                "port" => 8000
            },
            "bears" => {
                "port" => 8081
            }
        }
    }
})