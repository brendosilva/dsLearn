

INSERT INTO tb_user (name, email, password) VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'boob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

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


INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-07-13T03:00:00.12345Z', TIMESTAMP WITH TIME ZONE '2021-07-13T03:00:00.12345Z',  1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-13T03:00:00.12345Z', TIMESTAMP WITH TIME ZONE '2021-11-13T03:00:00.12345Z',  1);

INSERT INTO tb_resource (title, description, position ,image_Uri, type, offer_id) VALUES ('Trilha Java', 'Aprenda sobre java conceitos sobre POO', 1, 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position ,image_Uri, type, offer_id) VALUES ('Forum', 'Tire suas duvidas', 2, 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position ,image_Uri, type, offer_id) VALUES ('Live', 'Assista lives ao vivo',3, 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg', 0, 1);


INSERT INTO tb_section (title, description, position, image_Uri, resource_id, prerequesite_id) VALUES ('capitulo 1', 'aprederemos o fundamentos', 1, 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg', 1 , null);
INSERT INTO tb_section (title, description, position, image_Uri, resource_id, prerequesite_id) VALUES ('capitulo 2', 'POO', 2, 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg', 1 , 1);
INSERT INTO tb_section (title, description, position, image_Uri, resource_id, prerequesite_id) VALUES ('capitulo 3', 'Streams', 3, 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg', 1 , 2);


INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-06-09T03:00:00.12345Z', null, true, false );
INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-06-09T03:00:00.12345Z', null, true, false );


INSERT INTO tb_lesson(title, position, section_id) VALUES ('aula 1 capitulo 1', 1, 1);
INSERT INTO tb_content(text_Content, video_Url , id) VALUES ('Material de apoio', 'https://www.youtube.com/watch?v=wzJTpzHHoVg', 1 );

INSERT INTO tb_lesson(title, position, section_id) VALUES ('aula 2 capitulo 1', 2, 1);
INSERT INTO tb_content(text_Content, video_Url, id) VALUES ('', 'https://www.youtube.com/watch?v=wzJTpzHHoVg', 2 );

INSERT INTO tb_lesson(title, position, section_id) VALUES ('aula 1 capitulo 1', 3, 1);
INSERT INTO tb_content(text_Content, video_Url, id) VALUES ('', 'https://www.youtube.com/watch?v=wzJTpzHHoVg', 3 );


INSERT INTO tb_lesson(title, position, section_id) VALUES ('TAREFA 1 capitulo 1', 4, 1);
INSERT INTO tb_task(id, description, question_Count,approval_Count, weight, due_Date) VALUES (4, 'API RESTFULL', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-06-25T03:00:00.12345Z' );

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);


INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);


INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);


INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);
