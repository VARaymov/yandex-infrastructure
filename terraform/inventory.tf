resource "local_file" "save_inventory" {
    content = templatefile("./inventory.tmpl", 
    {
        pub_ip = module.compute_instance.external_ip_address
        key_path = "~/.ssh/id_rsa"
    })
    filename = "../ansible/inventory/inventory.yaml"  
}
