CREATE TABLE group_permission (group_id INTEGER, permission_id INTEGER, PRIMARY KEY(group_id, permission_id));
CREATE TABLE profile (id INTEGER PRIMARY KEY AUTOINCREMENT, user_id INTEGER, first_name VARCHAR(255), last_name VARCHAR(255));
CREATE TABLE unique_test (id INTEGER PRIMARY KEY AUTOINCREMENT, unique_test1 VARCHAR(255) UNIQUE, unique_test2 VARCHAR(255), unique_test3 VARCHAR(255));
CREATE TABLE user (id INTEGER PRIMARY KEY AUTOINCREMENT, username VARCHAR(255) UNIQUE, password VARCHAR(255), test VARCHAR(255));
CREATE TABLE article (id INTEGER PRIMARY KEY AUTOINCREMENT, author_id INTEGER, is_on_homepage INTEGER, created_at DATETIME, updated_at DATETIME);
CREATE TABLE user_permission (user_id INTEGER, permission_id INTEGER, PRIMARY KEY(user_id, permission_id));
CREATE TABLE groups (id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR(255));
CREATE TABLE user_group (user_id INTEGER, group_id INTEGER, PRIMARY KEY(user_id, group_id));
CREATE TABLE author (id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR(255));
CREATE TABLE permission (id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR(255));
CREATE INDEX unique_test_idx ON unique_test (unique_test1, unique_test2);
CREATE TABLE subscription (id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR(255), status VARCHAR(255));
