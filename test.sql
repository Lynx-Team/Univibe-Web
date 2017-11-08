-- CREATE TABLE SUBJECTS(
-- ID BIGINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
-- SUBJECT_NAME NVARCHAR(128) NOT NULL
-- );

-- CREATE TABLE LESSON_TIMES(
-- ID BIGINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
-- START_TIME TIME NOT NULL,
-- END_TIME TIME NOT NULL,
-- NUMB INT NOT NULL,
-- PARITY INT NOT NULL,
-- );

-- CREATE TABLE GROUPS(
-- ID BIGINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
-- GROUP_NAME NVARCHAR(64) NOT NULL
-- );

-- CREATE TABLE WEEKDAYS (
--     ID BIGINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
--     WEEKDAY_NAME NVARCHAR(64) NOT NULL
-- );

-- CREATE TABLE CLASSROOMS(
-- ID BIGINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
-- CLASSROOM_NAME NVARCHAR(64) NOT NULL
-- );

-- CREATE TABLE TEACHERS(
--     ID BIGINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
--     TEACHER_NAME NVARCHAR(128) NOT NULL,
--     TELEGRAM_ID BIGINT NULL,
-- );

-- CREATE TABLE LESSONS(
--     ID BIGINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
--     WEEKDAYS_ID BIGINT NOT NULL FOREIGN KEY REFERENCES WEEKDAYS(ID),
--     SUBJECT_ID BIGINT NOT NULL FOREIGN KEY REFERENCES SUBJECTS(ID),
--     TEACHER_ID BIGINT NOT NULL FOREIGN KEY REFERENCES TEACHERS(ID),
--     LESSON_TIME_ID BIGINT NOT NULL FOREIGN KEY REFERENCES LESSON_TIMES(ID),
--     CLASSROOM_ID BIGINT NOT NULL FOREIGN KEY REFERENCES CLASSROOMS(ID),
--     GROUP_ID BIGINT NOT NULL FOREIGN KEY REFERENCES GROUPS(ID)
-- );



-- INSERT INTO SUBJECTS(SUBJECT_NAME) VALUES (N'Численные методы');
-- INSERT INTO SUBJECTS(SUBJECT_NAME) VALUES (N'Технология программирования');
-- INSERT INTO SUBJECTS(SUBJECT_NAME) VALUES (N'Теория игр и исследование операций');
-- INSERT INTO SUBJECTS(SUBJECT_NAME) VALUES (N'Криптограффия');
-- INSERT INTO SUBJECTS(SUBJECT_NAME) VALUES (N'Уравнения математической физики');
-- INSERT INTO SUBJECTS(SUBJECT_NAME) VALUES (N'Физкультура');
-- INSERT INTO SUBJECTS(SUBJECT_NAME) VALUES (N'Математическое и компьютерное моделирование');
-- INSERT INTO SUBJECTS(SUBJECT_NAME) VALUES (N'Теоретическая механика и физика');
-- INSERT INTO SUBJECTS(SUBJECT_NAME) VALUES (N'Функциональный и комплексный анализ');
-- INSERT INTO SUBJECTS(SUBJECT_NAME) VALUES (N'Системы искусственного интеллекта');


-- INSERT INTO TEACHERS(TEACHER_NAME) VALUES ( N'Кузнецова Н. В.' );
-- INSERT INTO TEACHERS(TEACHER_NAME) VALUES ( N'Кленин А. С.' );
-- INSERT INTO TEACHERS(TEACHER_NAME) VALUES ( N'Персмяков М. С.' );
-- INSERT INTO TEACHERS(TEACHER_NAME) VALUES ( N'Ганжа К. А.' );
-- INSERT INTO TEACHERS(TEACHER_NAME) VALUES ( N'Еременко А. С.' );
-- INSERT INTO TEACHERS(TEACHER_NAME) VALUES ( N'Беспалов В. М.' );
-- INSERT INTO TEACHERS(TEACHER_NAME) VALUES ( N'Физрук' );
-- INSERT INTO TEACHERS(TEACHER_NAME) VALUES ( N'Алексеев Г. В.' );
-- INSERT INTO TEACHERS(TEACHER_NAME) VALUES ( N'Абакумов А. П.' );
-- INSERT INTO TEACHERS(TEACHER_NAME) VALUES ( N'Мишаков А. В.' );
-- INSERT INTO TEACHERS(TEACHER_NAME) VALUES ( N'Дмитриев А. А.' );
-- INSERT INTO TEACHERS(TEACHER_NAME) VALUES ( N'Шевченко И. И.' );
-- INSERT INTO TEACHERS(TEACHER_NAME) VALUES ( N'Фищенко В. К.' );


-- INSERT INTO GROUPS(GROUP_NAME) VALUES(N'Б8303а');
-- INSERT INTO GROUPS(GROUP_NAME) VALUES(N'Б3239а');

-- INSERT INTO WEEKDAYS(WEEKDAY_NAME) VALUES (N'Понедельник');
-- INSERT INTO WEEKDAYS(WEEKDAY_NAME) VALUES (N'Вторник');
-- INSERT INTO WEEKDAYS(WEEKDAY_NAME) VALUES (N'Среда');
-- INSERT INTO WEEKDAYS(WEEKDAY_NAME) VALUES (N'Четверг');
-- INSERT INTO WEEKDAYS(WEEKDAY_NAME) VALUES (N'Пятница');
-- INSERT INTO WEEKDAYS(WEEKDAY_NAME) VALUES (N'Суббота');
-- INSERT INTO WEEKDAYS(WEEKDAY_NAME) VALUES (N'Воскресенье');

-- INSERT INTO CLASSROOMS(CLASSROOM_NAME) VALUES ('D733');
-- INSERT INTO CLASSROOMS(CLASSROOM_NAME) VALUES ('D546a');
-- INSERT INTO CLASSROOMS(CLASSROOM_NAME) VALUES ('D818');
-- INSERT INTO CLASSROOMS(CLASSROOM_NAME) VALUES ('D733a');
-- INSERT INTO CLASSROOMS(CLASSROOM_NAME) VALUES ('D743');
-- INSERT INTO CLASSROOMS(CLASSROOM_NAME) VALUES ('D546');
-- INSERT INTO CLASSROOMS(CLASSROOM_NAME) VALUES ('D549a');
-- INSERT INTO CLASSROOMS(CLASSROOM_NAME) VALUES ('D547');
-- INSERT INTO CLASSROOMS(CLASSROOM_NAME) VALUES ('D746');
-- INSERT INTO CLASSROOMS(CLASSROOM_NAME) VALUES ('D549');
-- INSERT INTO CLASSROOMS(CLASSROOM_NAME) VALUES ('S');
-- INSERT INTO CLASSROOMS(CLASSROOM_NAME) VALUES ('D741');
-- INSERT INTO CLASSROOMS(CLASSROOM_NAME) VALUES ('D738');
-- INSERT INTO CLASSROOMS(CLASSROOM_NAME) VALUES ('D741');
-- INSERT INTO CLASSROOMS(CLASSROOM_NAME) VALUES ('D734a');

-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('08:30:00', '10:00:00', '1', '2');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('10:10:00', '11:40:00', '2', '2');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('11:50:00', '13:20:00', '3', '2');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('13:30:00', '15:00:00', '4', '2');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('15:10:00', '16:40:00', '5', '2');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('16:50:00', '18:20:00', '6', '2');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('18:30:00', '20:00:00', '7', '2');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('20:10:00', '21:40:00', '8', '2');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('08:30:00', '10:00:00', '1', '0');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('10:10:00', '11:40:00', '2', '0');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('11:50:00', '13:20:00', '3', '0');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('13:30:00', '15:00:00', '4', '0');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('15:10:00', '16:40:00', '5', '0');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('16:50:00', '18:20:00', '6', '0');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('18:30:00', '20:00:00', '7', '0');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('20:10:00', '21:40:00', '8', '0');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('08:30:00', '10:00:00', '1', '1');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('10:10:00', '11:40:00', '2', '1');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('11:50:00', '13:20:00', '3', '1');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('13:30:00', '15:00:00', '4', '1');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('15:10:00', '16:40:00', '5', '1');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('16:50:00', '18:20:00', '6', '1');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('18:30:00', '20:00:00', '7', '1');
-- INSERT INTO LESSON_TIMES(START_TIME, END_TIME, NUMB, PARITY) VALUES ('20:10:00', '21:40:00', '8', '1');



-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (1, 1, 1, 10, 1, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (1, 2, 2, 18, 2, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (1, 2, 2, 3,  2, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (1, 1, 3, 12, 3, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (1, 3, 4, 20, 4, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (1, 3, 4, 13, 5, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (1, 1, 3, 21, 3, 1);

-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (2, 4, 5, 11, 6, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (2, 4, 5, 19, 7, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (2, 4, 5, 4,  8, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (2, 5, 6, 13, 6, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (2, 4, 5, 21, 10, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (2, 6, 7, 6,  11, 1);

-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (3, 5, 8, 20, 12, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (3, 5, 8, 13, 12, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (3, 2, 2, 21, 12, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (3, 6, 9, 6,  12, 1);


-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (4, 1, 1, 17, 11, 11);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (4, 7, 10, 3, 12, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (4, 7, 10, 12, 12, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (4, 8, 11, 20, 13, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (4, 8, 11, 13, 12, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (4, 8, 11, 14, 12, 1);

-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (5, 9, 12, 11, 1, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (5, 9, 12, 19, 1, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (5, 9, 12, 4,  1, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (5, 10, 13, 5, 15, 1);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) VALUES (5, 6, 7, 6, 11, 1);

-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (1, 35, 34, 1, 16, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (1, 11, 27, 2, 16, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (1, 11, 27, 3, 16, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (1, 12, 28, 20, 21, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (2, 13, 27, 17, 16, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (2, 13, 27, 18, 16, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (2, 12, 28, 9, 21, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (2, 6, 7, 3, 11, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (2, 14, 29, 4, 18, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (2, 14, 29, 13, 18, 2);

-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (3, 15, 30, 2, 19, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (3, 15, 30, 3, 19, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (3, 16, 31, 4, 20, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (3, 16, 31, 5, 20, 2);

-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (4, 11, 27, 2, 16, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (4, 11, 27, 3, 16, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (4, 17, 27, 4, 21, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (4, 18, 32, 5, 21, 2);

-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (5, 16, 31, 1, 22, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (5, 16, 31, 2, 22, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (5, 6, 7, 3, 11, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (5, 19, 33, 4, 23, 2);
-- INSERT INTO LESSONS(WEEKDAYS_ID, SUBJECT_ID, TEACHER_ID, LESSON_TIME_ID, CLASSROOM_ID, GROUP_ID) 
-- VALUES (5, 19, 33, 5, 23, 2);


-- SELECT * FROM LESSONS;









-- SELECT * FROM SUBJECTS;
-- — Б3229а
-- INSERT INTO GROUPS (GROUP_NAME) VALUES(N'Б3239а');

-- INSERT INTO TEACHERS (TEACHER_NAME) VALUES(N'Демидова Т.А.'); 
-- INSERT INTO TEACHERS (TEACHER_NAME) VALUES(N'Белоконь М.А.'); 
-- INSERT INTO TEACHERS (TEACHER_NAME) VALUES(N'Гуляева Т.А.'); 
-- INSERT INTO TEACHERS (TEACHER_NAME) VALUES(N'Комплектов А.И.'); 
-- INSERT INTO TEACHERS (TEACHER_NAME) VALUES(N'Мингалеева К.А.'); 
-- INSERT INTO TEACHERS (TEACHER_NAME) VALUES(N'Петухов Т.А.'); 
-- INSERT INTO TEACHERS (TEACHER_NAME) VALUES(N'Абрамовская Е.Н.'); 
-- INSERT INTO TEACHERS (TEACHER_NAME) VALUES(N'Англичанка Т.А.'); 

-- INSERT INTO SUBJECTS (SUBJECT_NAME) VALUES(N'Архитектурное проектирование');
-- INSERT INTO SUBJECTS (SUBJECT_NAME) VALUES(N'Строительная механика');
-- INSERT INTO SUBJECTS (SUBJECT_NAME) VALUES(N'Архитектурная композиция');
-- INSERT INTO SUBJECTS (SUBJECT_NAME) VALUES(N'Архитектурное материаловедение');
-- INSERT INTO SUBJECTS (SUBJECT_NAME) VALUES(N'Архитектурный рисунок');
-- INSERT INTO SUBJECTS (SUBJECT_NAME) VALUES(N'Компьютерное моделирования в архитектуре');
-- INSERT INTO SUBJECTS (SUBJECT_NAME) VALUES(N'История архитектуры и градостроительства');
-- INSERT INTO SUBJECTS (SUBJECT_NAME) VALUES(N'История изобразительных искусств');
-- INSERT INTO SUBJECTS (SUBJECT_NAME) VALUES(N'Живопись и архитектурная колористика');

-- INSERT INTO CLASSROOMS (CLASSROOM_NAME) VALUES(N'С743');
-- INSERT INTO CLASSROOMS (CLASSROOM_NAME) VALUES(N'Е702');
-- INSERT INTO CLASSROOMS (CLASSROOM_NAME) VALUES(N'С607');
-- INSERT INTO CLASSROOMS (CLASSROOM_NAME) VALUES(N'С922/923');
-- INSERT INTO CLASSROOMS (CLASSROOM_NAME) VALUES(N'С743а');
-- INSERT INTO CLASSROOMS (CLASSROOM_NAME) VALUES(N'Е707');
-- INSERT INTO CLASSROOMS (CLASSROOM_NAME) VALUES(N'С914');
-- INSERT INTO CLASSROOMS (CLASSROOM_NAME) VALUES(N'С922/923');
