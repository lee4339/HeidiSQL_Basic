TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `user_mst_after_insert` AFTER INSERT ON `user_mst` FOR EACH ROW BEGIN\n	INSERT into\n		user_dtl(\n			usercode,\n			create_date,\n			update_date\n		)\n	VALUES(\n		NEW.usercode,\n		NOW(),\n		NOW()\n	);\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER `user_mst_before_delete` BEFORE DELETE ON `user_mst` FOR EACH ROW BEGIN\n	delete\n	from\n		user_dtl\n	where\n		usercode = OLD.usercode;\nEND'
sql_modes=1411383296 1411383296
definers='root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb3_general_ci' 'utf8mb3_general_ci'
created=165149156835 165149541002
