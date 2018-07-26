name "production"
description "For pods !"
cookbook "apache", "= 0.1.0"
override_attributes({
    "pci" => {
        "in_scope" => true
    }
})