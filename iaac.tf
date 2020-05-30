module "lxd-iaac"{
  source="./terraform/lxd"
  cpu=1
  mem="256MB"
  con_name="devops4u"
  img_name="devops4u:v1"

}

