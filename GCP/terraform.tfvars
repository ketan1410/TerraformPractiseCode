pname = "cluster"
project_id = "future-medley-239603"
creds_file = "/home/ketan/Documents/future-medley-239603-485b08c02f5b.json"


count_int = "1"
machine_type = "g1-small"
region = "australia-southeast1"
ssh_cidr = "0.0.0.0/0"

startup_script = "./userdata.sh"
gce_ssh_pub_key_file = "./ubuntu.pub"

db_version = "MYSQL_5_7"
sql_tier = "db-f1-micro"
db_disk_size = "10"

db_user_name = "root"
db_user_password = "iamdb123"
authorized_network = "0.0.0.0/0"
connect_retry_interval = "60"