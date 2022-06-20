

INSERT INTO tb_user (name, email, password) VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'boob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);


INSERT INTO tb_course (name, image_Uri, image_Gray_Uri) VALUES ('bootcamp java', 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg', 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg');
INSERT INTO tb_course (name, image_Uri, image_Gray_Uri) VALUES ('bootcamp react', 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg', 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg');
INSERT INTO tb_course (name, image_Uri, image_Gray_Uri) VALUES ('bootcamp node', 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg', 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg');

