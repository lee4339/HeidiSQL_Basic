TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `user_mst_after_insert` AFTER INSERT ON `user_mst` FOR EACH ROW BEGIN\n	INSERT into\n		user_dtl\n	VALUES(\n		0,\n		NEW.um_code,\n		NULL,\n		NULL,\n		NULL,\n		NOW(),\n		NOW()\n	);\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER `user_mst_before_delete` BEFORE DELETE ON `user_mst` FOR EACH ROW BEGIN\n	delete\n	from\n		user_dtl\n	where\n		um_code = OLD.um_code;\nEND'
sql_modes=1411383296 1411383296
definers='root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb3_general_ci' 'utf8mb3_general_ci'
created=164782399560 164782668083
