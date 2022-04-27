TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `user_mst_before_insert` AFTER INSERT ON `user_mst` FOR EACH ROW BEGIN\nINSERT INTO\n	user_dtl\nVALUES(\n	NEW.usercode,\n	NULL,\n	NULL,\n	NULL,\n	NULL,\n	NOW(),\n	NOW()	\n);\nEND'
sql_modes=1411383296
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='utf8mb3_general_ci'
created=165102422805
