module "lxd-iaac"{
  #source="./terraform/lxd"
  source="git::https://github.com/sylesh687/osgroup-techies.git//modules/lxd/linux_container?ref=develop"
  cpu=1
  mem="256MB"
  con_name="devops4u"
  img_name="devops4u"

}

