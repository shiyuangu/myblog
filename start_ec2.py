import boto.ec2
conn = boto.ec2.connect_to_region("us-east-1")
#conn.get_all_security_groups()[1].id #u'sg-7ea8bf1a'
reservation = conn.run_instances("ami-d05e75b8",key_name = "sgu-ec2-all", instance_type = "t2.micro", security_groups=["launch-wizard-1"]) #aws_access_key is in ~/.boto or set in env or pass in directly
reservations = conn.get_all_reservations()
inst = reservations[0].instances[0] #get the instance, inst? show all attribute, include the ip_address, type, ect. 
statuses = conn.get_all_instance_status()
conn.terminate_instances(instance_ids = [inst.id])
