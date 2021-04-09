USE [master]
GO

CREATE DATABASE CompleteExample
GO

USE CompleteExample
GO

CREATE TABLE Students (
	StudentId INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Email VARCHAR(50),
	TimeZone VARCHAR(50)
);

CREATE TABLE [dbo].[Instructors]
 (
	InstructorId INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Email VARCHAR(50),
	StartDate DATE
);

CREATE TABLE [dbo].[Courses]
(
	CourseId INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Title VARCHAR(18) NOT NULL,
	Description TEXT,
	Credits INT,
	InstructorId INT NOT NULL, 
    CONSTRAINT [FK_Courses_Instructors] FOREIGN KEY ([InstructorId]) REFERENCES [Instructors]([InstructorId])
);

CREATE TABLE [dbo].[Enrollment]
(
	[EnrollmentId] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	StudentId INT NOT NULL,
	CourseId INT NOT NULL,
	Grade DECIMAL(5,2), 
    CONSTRAINT [FK_Enrollment_Students] FOREIGN KEY ([StudentId]) REFERENCES [Students]([StudentId]),
	CONSTRAINT [FK_Enrollment_Courses] FOREIGN KEY ([CourseId]) REFERENCES [Courses]([CourseId])
)

INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Hector', 'Ben-Aharon', 'hbenaharon0@gravatar.com', 'Asia/Manila');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Felicity', 'Brader', 'fbrader1@imdb.com', 'America/Santo_Domingo');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Aubrie', 'McCaw', 'amccaw2@oakley.com', 'Asia/Yerevan');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Ray', 'Di Pietro', null, 'Asia/Yekaterinburg');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Sergio', 'Lawful', 'slawful4@oakley.com', 'Asia/Chongqing');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Markos', 'Kinzel', 'mkinzel5@apache.org', 'Asia/Jakarta');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Findley', 'Anster', 'fanster6@blinklist.com', 'Asia/Chongqing');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Nil', 'Spearing', 'nspearing7@shinystat.com', 'Asia/Chongqing');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Ashia', 'Collcutt', 'acollcutt8@eventbrite.com', 'Asia/Jakarta');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Yolanthe', 'Swanton', 'yswanton9@hao123.com', 'Europe/Lisbon');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Jedidiah', 'Stegers', 'jstegersa@cnbc.com', 'Asia/Jakarta');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Micky', 'Dodle', null, 'Asia/Chongqing');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Neall', 'Rhodef', 'nrhodefc@globo.com', 'Europe/Stockholm');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Smith', 'Grichukhin', 'sgrichukhind@ezinearticles.com', 'Asia/Chongqing');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Silva', 'Stubbings', 'sstubbingse@theguardian.com', 'Asia/Chongqing');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Antonius', 'Janney', 'ajanneyf@csmonitor.com', 'Asia/Chongqing');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Alexandr', 'Filtness', 'afiltnessg@wikimedia.org', 'Asia/Bangkok');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Marjy', 'Tyne', 'mtyneh@wikia.com', 'Asia/Chongqing');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Abbot', 'Le Strange', 'alestrangei@aol.com', 'Asia/Manila');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Jammal', 'Darkin', 'jdarkinj@nationalgeographic.com', 'Asia/Jakarta');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Talyah', 'Papes', 'tpapesk@jalbum.net', 'Asia/Jakarta');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Kattie', 'Kluger', 'kklugerl@epa.gov', 'Europe/Warsaw');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Suzann', 'Dutnell', 'sdutnellm@samsung.com', 'Europe/Warsaw');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Cyb', 'Hubner', 'chubnern@weather.com', 'Asia/Shanghai');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Hewie', 'Castiglione', 'hcastiglioneo@zimbio.com', 'Europe/Warsaw');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Stevana', 'Earney', 'searneyp@clickbank.net', 'Europe/Moscow');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Emmy', 'Schurcke', 'eschurckeq@parallels.com', 'America/New_York');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Walton', 'Dubery', 'wduberyr@rakuten.co.jp', 'Europe/Helsinki');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Sarita', 'Dedham', 'sdedhams@youku.com', 'Europe/Lisbon');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Wright', 'Mannix', 'wmannixt@addtoany.com', 'Europe/Moscow');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Teri', 'Goodwyn', 'tgoodwynu@fotki.com', 'Asia/Jakarta');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Logan', 'Paull', 'lpaullv@mayoclinic.com', 'America/Kentucky/Louisville');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Christen', 'Cannan', 'ccannanw@slashdot.org', 'America/Bogota');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Edee', 'Mugford', 'emugfordx@51.la', null);
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Dave', 'Ollerton', 'dollertony@smh.com.au', 'Asia/Manila');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Wolfie', 'Fendlow', null, 'Europe/Skopje');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Iggy', 'Szymonowicz', 'iszymonowicz10@accuweather.com', 'America/Fortaleza');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Hilary', 'Duff', 'hduff11@virginia.edu', 'Asia/Bangkok');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Maressa', 'Runsey', 'mrunsey12@ask.com', 'Asia/Chongqing');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Nina', 'Ferminger', null, 'America/Regina');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Skippie', 'Hidderley', 'shidderley14@studiopress.com', null);
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Dorian', 'Beavers', 'dbeavers15@addthis.com', 'Asia/Manila');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Joaquin', 'Spittle', 'jspittle16@sohu.com', 'Asia/Urumqi');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Shaylyn', 'Cobb', 'scobb17@mlb.com', 'Asia/Hebron');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Karylin', 'Buckleigh', 'kbuckleigh18@engadget.com', null);
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Jourdan', 'Gomes', 'jgomes19@devhub.com', 'Asia/Dushanbe');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Tallie', 'Cockling', 'tcockling1a@blogspot.com', 'Asia/Jakarta');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Marline', 'Mulbry', 'mmulbry1b@g.co', 'Europe/Warsaw');
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Peter', 'Challice', 'pchallice1c@ihg.com', null);
INSERT INTO Students (FirstName, LastName, Email, TimeZone) VALUES ('Danny', 'Balassa', 'dbalassa1d@nifty.com', 'Asia/Manila');

INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Taddeusz', 'Johnes', 'tjohnes0@blogspot.com', '9/7/2019');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Herby', 'Dahlback', 'hdahlback1@wufoo.com', '8/23/2020');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Thorstein', 'M''Quharge', 'tmquharge2@lycos.com', '8/10/2018');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Gabriellia', 'Deas', 'gdeas3@exblog.jp', '1/30/2021');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Monah', 'Slyvester', null, '5/31/2019');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Hobey', 'Wilbud', 'hwilbud5@google.com.br', '3/17/2021');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Babbie', 'Paramor', 'bparamor6@odnoklassniki.ru', '1/22/2021');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Saudra', 'Ingerith', 'singerith7@eepurl.com', '4/7/2021');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Martha', 'Gelder', null, '1/18/2021');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Saul', 'Trenbey', 'strenbey9@typepad.com', '10/25/2018');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Rabi', 'Dunge', 'rdungea@vk.com', '1/25/2021');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Miguel', 'Telling', 'mtellingb@springer.com', '2/27/2019');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Timmy', 'Hadaway', 'thadawayc@blogspot.com', '7/14/2019');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Major', 'Elvin', 'melvind@icio.us', '12/21/2018');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Malorie', 'Rowes', 'mrowese@istockphoto.com', '1/22/2021');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Bert', 'O''Cleary', 'boclearyf@time.com', '1/8/2020');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Kristan', 'Slowly', 'kslowlyg@sakura.ne.jp', '4/2/2021');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Junette', 'Olliff', 'jolliffh@thetimes.co.uk', '2/14/2021');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Ezri', 'Gallemore', 'egallemorei@biglobe.ne.jp', '1/14/2019');
INSERT INTO Instructors (FirstName, LastName, Email, StartDate) VALUES ('Anjanette', 'Leynham', 'aleynhamj@time.com', '3/16/2019');

INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('Spanish 301', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 2, 20);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('History 260', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 4, 6);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('Basket Weaving', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 2, 5);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('Spanish 401', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 3, 16);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('Math 202', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 2, 1);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('Communications 102', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 1, 18);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('Discrete Math 305', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 3, 17);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('History 304', 'Fusce consequat. Nulla nisl. Nunc nisl.', 3, 16);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('Communications 202', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 1, 2);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('Math 102', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 4, 14);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('Communications 302', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 4, 18);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('History 200', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 3, 14);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('Spanish 308', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 2, 11);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('Science 400', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 4, 12);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('History 301', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1, 7);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('Art History', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 2, 6);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('Geography 34', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 4, 17);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('Latin History 306', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 2, 5);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('Math 101', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 4, 3);
INSERT INTO Courses (Title, Description, Credits, InstructorId) VALUES ('Math 205', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 4, 8);

INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (11, 8, 87.1)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (12, 15, 61.25)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (38, 14, 90.09)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (40, 11, 74.85)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (29, 1, 97.53)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (27, 11, 79.38)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (50, 14, 74.41)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (32, 17, 57.85)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (14, 17, 83.94)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (37, 6, 91.07)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (3, 11, 96.3)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (44, 9, 53.5)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (38, 8, 57.56)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (45, 12, 51.27)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (36, 20, null)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (28, 2, 88.93)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (18, 4, 66.45)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (15, 12, 78.48)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (42, 19, 84.72)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (10, 12, 87)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (27, 13, 51.28)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (35, 18, 74.74)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (44, 19, 97.77)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (7, 20, 56.72)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (26, 18, 90.32)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (8, 14, null)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (5, 9, 76.93)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (5, 12, 68.45)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (10, 20, 95.89)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (19, 17, 87.31)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (4, 2, 72.55)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (43, 14, 61.26)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (25, 19, null)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (39, 17, 51.5)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (48, 19, 71.55)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (46, 13, 60.34)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (41, 7, 72.88)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (42, 6, 88.52)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (2, 8, 77.43)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (40, 13, 62.63)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (18, 1, 70.51)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (40, 12, 65.35)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (4, 16, 66.28)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (32, 4, 72.74)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (38, 5, 65.36)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (33, 12, 78.28)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (48, 6, 85.21)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (46, 1, 94.27)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (46, 8, 72.55)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (49, 11, 88.17)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (17, 12, null)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (5, 5, 75.34)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (18, 2, null)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (45, 1, 76.04)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (20, 17, 54.45)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (26, 9, 92.82)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (47, 10, 61.92)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (7, 3, 70.85)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (47, 12, 91.26)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (10, 5, 77.06)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (1, 6, 72.97)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (36, 4, 67.1)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (45, 15, null)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (16, 13, 81.06)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (33, 19, 96.98)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (15, 2, 71.06)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (45, 2, 95.77)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (6, 19, 64.89)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (29, 7, 72.16)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (39, 13, null)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (48, 17, 60.9)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (47, 8, 71.99)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (34, 12, 82.64)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (39, 1, 57.63)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (48, 3, 59.16)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (16, 1, 54.94)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (4, 13, 84.79)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (50, 4, 80)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (27, 9, null)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (1, 4, 83.67)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (5, 1, 54.55)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (7, 2, 73.72)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (17, 2, 97.61)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (47, 5, 88.23)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (27, 19, null)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (34, 11, 65.25)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (24, 16, 72.1)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (29, 16, 64.8)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (29, 5, 66.06)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (47, 15, 67.01)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (26, 2, 58.42)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (7, 15, 78.03)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (34, 8, 56.49)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (50, 20, 71.18)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (9, 20, 89.97)
INSERT INTO Enrollment (StudentId, CourseId, Grade) VALUES (5, 3, 97.02)