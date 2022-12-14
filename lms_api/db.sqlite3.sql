BEGIN TRANSACTION;
CREATE TABLE "main_teacher" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "full_name" varchar(100) NOT NULL, "teacher_profile_img" varchar(100) NOT NULL, "email" varchar(100) NOT NULL, "password" varchar(100) NOT NULL, "qualification" varchar(100) NOT NULL, "mobile_number" varchar(100) NOT NULL);
CREATE TABLE "main_student" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "full_name" varchar(100) NOT NULL, "teacher_profile_img" varchar(100) NOT NULL, "email" varchar(100) NOT NULL, "password" varchar(100) NOT NULL, "group" varchar(100) NOT NULL, "mobile_number" varchar(100) NOT NULL, "necessary_categories" text NOT NULL);
CREATE TABLE "main_coursecategory" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(150) NOT NULL, "descriprion" text NOT NULL);
CREATE TABLE "main_course" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(150) NOT NULL, "descriprion" text NOT NULL, "cousre_img" varchar(100) NOT NULL, "category_id" bigint NOT NULL REFERENCES "main_coursecategory" ("id") DEFERRABLE INITIALLY DEFERRED, "teacher_id" bigint NOT NULL REFERENCES "main_teacher" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO `django_session` VALUES ('ejw8ztmn9p1vy0gezdw1f7hk93wo0bnd','.eJxVjDsOwjAQBe_iGlleE3-gpOcM1q53gwPIluKkQtwdIqWA9s3Me6mE61LS2mVOE6uzAnX43QjzQ-oG-I711nRudZkn0puid9r1tbE8L7v7d1Cwl2-dvRBHzuLQQwDyTAZ4cDZYZKAoQwgixjAeoxUcvQQHGbPjEZBPUb0_Dg85FQ:1ohpyx:LxH8gHfERcWllVULbmR2uNBzpU_EYWvyu3lvJ4PrR0w','2022-10-24 10:25:59.674586');
INSERT INTO `django_session` VALUES ('4uedarsk1ekmd8pwq4fn16ljxzvdh6zp','.eJxVjDsOwjAQBe_iGlleE3-gpOcM1q53gwPIluKkQtwdIqWA9s3Me6mE61LS2mVOE6uzAnX43QjzQ-oG-I711nRudZkn0puid9r1tbE8L7v7d1Cwl2-dvRBHzuLQQwDyTAZ4cDZYZKAoQwgixjAeoxUcvQQHGbPjEZBPUb0_Dg85FQ:1oxCyQ:lv3ofXOP2jTiZX82PZk1KGiA3Db0gtivfhZat3iB7e4','2022-12-05 20:00:58.884550');
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-10-10 10:24:38.062707');
INSERT INTO `django_migrations` VALUES (2,'auth','0001_initial','2022-10-10 10:24:38.227294');
INSERT INTO `django_migrations` VALUES (3,'admin','0001_initial','2022-10-10 10:24:38.386528');
INSERT INTO `django_migrations` VALUES (4,'admin','0002_logentry_remove_auto_add','2022-10-10 10:24:38.471436');
INSERT INTO `django_migrations` VALUES (5,'admin','0003_logentry_add_action_flag_choices','2022-10-10 10:24:38.543991');
INSERT INTO `django_migrations` VALUES (6,'contenttypes','0002_remove_content_type_name','2022-10-10 10:24:38.626127');
INSERT INTO `django_migrations` VALUES (7,'auth','0002_alter_permission_name_max_length','2022-10-10 10:24:38.708392');
INSERT INTO `django_migrations` VALUES (8,'auth','0003_alter_user_email_max_length','2022-10-10 10:24:38.796310');
INSERT INTO `django_migrations` VALUES (9,'auth','0004_alter_user_username_opts','2022-10-10 10:24:38.884642');
INSERT INTO `django_migrations` VALUES (10,'auth','0005_alter_user_last_login_null','2022-10-10 10:24:38.970883');
INSERT INTO `django_migrations` VALUES (11,'auth','0006_require_contenttypes_0002','2022-10-10 10:24:39.067779');
INSERT INTO `django_migrations` VALUES (12,'auth','0007_alter_validators_add_error_messages','2022-10-10 10:24:39.167498');
INSERT INTO `django_migrations` VALUES (13,'auth','0008_alter_user_username_max_length','2022-10-10 10:24:39.261348');
INSERT INTO `django_migrations` VALUES (14,'auth','0009_alter_user_last_name_max_length','2022-10-10 10:24:39.352949');
INSERT INTO `django_migrations` VALUES (15,'auth','0010_alter_group_name_max_length','2022-10-10 10:24:39.440684');
INSERT INTO `django_migrations` VALUES (16,'auth','0011_update_proxy_permissions','2022-10-10 10:24:39.552871');
INSERT INTO `django_migrations` VALUES (17,'auth','0012_alter_user_first_name_max_length','2022-10-10 10:24:39.647580');
INSERT INTO `django_migrations` VALUES (18,'sessions','0001_initial','2022-10-10 10:24:39.914011');
INSERT INTO `django_migrations` VALUES (19,'authtoken','0001_initial','2022-11-21 19:59:34.965754');
INSERT INTO `django_migrations` VALUES (20,'authtoken','0002_auto_20160226_1747','2022-11-21 19:59:35.135182');
INSERT INTO `django_migrations` VALUES (21,'authtoken','0003_tokenproxy','2022-11-21 19:59:35.232577');
INSERT INTO `django_migrations` VALUES (22,'main','0001_initial','2022-11-21 19:59:35.439513');
INSERT INTO `django_migrations` VALUES (23,'main','0002_alter_course_options_alter_coursecategory_options_and_more','2022-11-21 19:59:35.529438');
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO `django_content_type` VALUES (1,'admin','logentry');
INSERT INTO `django_content_type` VALUES (2,'auth','permission');
INSERT INTO `django_content_type` VALUES (3,'auth','group');
INSERT INTO `django_content_type` VALUES (4,'auth','user');
INSERT INTO `django_content_type` VALUES (5,'contenttypes','contenttype');
INSERT INTO `django_content_type` VALUES (6,'sessions','session');
INSERT INTO `django_content_type` VALUES (7,'main','coursecategory');
INSERT INTO `django_content_type` VALUES (8,'main','student');
INSERT INTO `django_content_type` VALUES (9,'main','teacher');
INSERT INTO `django_content_type` VALUES (10,'main','course');
INSERT INTO `django_content_type` VALUES (11,'authtoken','token');
INSERT INTO `django_content_type` VALUES (12,'authtoken','tokenproxy');
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
CREATE TABLE "authtoken_token" ("key" varchar(40) NOT NULL PRIMARY KEY, "created" datetime NOT NULL, "user_id" integer NOT NULL UNIQUE REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO `authtoken_token` VALUES ('17bb62fd8ebf26430ff1c69bd3b2365f3749c3c3','2022-11-21 19:59:41.021294',1);
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO `auth_user` VALUES (1,'admin','2022-11-21 20:00:58.778919',1,'admin','','',1,1,'2022-10-10 10:25:21.886885','');
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry');
INSERT INTO `auth_permission` VALUES (2,1,'change_logentry','Can change log entry');
INSERT INTO `auth_permission` VALUES (3,1,'delete_logentry','Can delete log entry');
INSERT INTO `auth_permission` VALUES (4,1,'view_logentry','Can view log entry');
INSERT INTO `auth_permission` VALUES (5,2,'add_permission','Can add permission');
INSERT INTO `auth_permission` VALUES (6,2,'change_permission','Can change permission');
INSERT INTO `auth_permission` VALUES (7,2,'delete_permission','Can delete permission');
INSERT INTO `auth_permission` VALUES (8,2,'view_permission','Can view permission');
INSERT INTO `auth_permission` VALUES (9,3,'add_group','Can add group');
INSERT INTO `auth_permission` VALUES (10,3,'change_group','Can change group');
INSERT INTO `auth_permission` VALUES (11,3,'delete_group','Can delete group');
INSERT INTO `auth_permission` VALUES (12,3,'view_group','Can view group');
INSERT INTO `auth_permission` VALUES (13,4,'add_user','Can add user');
INSERT INTO `auth_permission` VALUES (14,4,'change_user','Can change user');
INSERT INTO `auth_permission` VALUES (15,4,'delete_user','Can delete user');
INSERT INTO `auth_permission` VALUES (16,4,'view_user','Can view user');
INSERT INTO `auth_permission` VALUES (17,5,'add_contenttype','Can add content type');
INSERT INTO `auth_permission` VALUES (18,5,'change_contenttype','Can change content type');
INSERT INTO `auth_permission` VALUES (19,5,'delete_contenttype','Can delete content type');
INSERT INTO `auth_permission` VALUES (20,5,'view_contenttype','Can view content type');
INSERT INTO `auth_permission` VALUES (21,6,'add_session','Can add session');
INSERT INTO `auth_permission` VALUES (22,6,'change_session','Can change session');
INSERT INTO `auth_permission` VALUES (23,6,'delete_session','Can delete session');
INSERT INTO `auth_permission` VALUES (24,6,'view_session','Can view session');
INSERT INTO `auth_permission` VALUES (25,7,'add_coursecategory','Can add ?????????????????? ????????????');
INSERT INTO `auth_permission` VALUES (26,7,'change_coursecategory','Can change ?????????????????? ????????????');
INSERT INTO `auth_permission` VALUES (27,7,'delete_coursecategory','Can delete ?????????????????? ????????????');
INSERT INTO `auth_permission` VALUES (28,7,'view_coursecategory','Can view ?????????????????? ????????????');
INSERT INTO `auth_permission` VALUES (29,8,'add_student','Can add ??????????????');
INSERT INTO `auth_permission` VALUES (30,8,'change_student','Can change ??????????????');
INSERT INTO `auth_permission` VALUES (31,8,'delete_student','Can delete ??????????????');
INSERT INTO `auth_permission` VALUES (32,8,'view_student','Can view ??????????????');
INSERT INTO `auth_permission` VALUES (33,9,'add_teacher','Can add ??????????????????????????');
INSERT INTO `auth_permission` VALUES (34,9,'change_teacher','Can change ??????????????????????????');
INSERT INTO `auth_permission` VALUES (35,9,'delete_teacher','Can delete ??????????????????????????');
INSERT INTO `auth_permission` VALUES (36,9,'view_teacher','Can view ??????????????????????????');
INSERT INTO `auth_permission` VALUES (37,10,'add_course','Can add ????????');
INSERT INTO `auth_permission` VALUES (38,10,'change_course','Can change ????????');
INSERT INTO `auth_permission` VALUES (39,10,'delete_course','Can delete ????????');
INSERT INTO `auth_permission` VALUES (40,10,'view_course','Can view ????????');
INSERT INTO `auth_permission` VALUES (41,11,'add_token','Can add Token');
INSERT INTO `auth_permission` VALUES (42,11,'change_token','Can change Token');
INSERT INTO `auth_permission` VALUES (43,11,'delete_token','Can delete Token');
INSERT INTO `auth_permission` VALUES (44,11,'view_token','Can view Token');
INSERT INTO `auth_permission` VALUES (45,12,'add_tokenproxy','Can add token');
INSERT INTO `auth_permission` VALUES (46,12,'change_tokenproxy','Can change token');
INSERT INTO `auth_permission` VALUES (47,12,'delete_tokenproxy','Can delete token');
INSERT INTO `auth_permission` VALUES (48,12,'view_tokenproxy','Can view token');
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
CREATE INDEX "main_course_teacher_id_f74be8b8" ON "main_course" ("teacher_id");
CREATE INDEX "main_course_category_id_f8b052fb" ON "main_course" ("category_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
COMMIT;
