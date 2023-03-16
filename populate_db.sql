INSERT  INTO worker (name, birthday, level, salary) VALUES
 	(Ramesh, 	'1989-1-2', 	'Middle', 	5000),
 	(Khilan, 	'2000-3-22', 	'Trainee', 	1500),
 	(Kaushik, 	'2003-1-1',	'Middle', 	4000),
 	(Chaitali, 	'1998-10-23', 	'Junior', 	6500),
 	(Hardik, 	'1964-11-12', 	'Senior', 	8500),
 	(Komal, 	'1972-1-9',  	'Middle', 	4500),
 	(Muffy, 	'1989-2-13', 	'Junior', 	2500),
 	(Lokesh, 	'1998-2-9', 	'Trainee', 	1900),
	(Sarat, 	'1990-1-6', 	'Senior', 	14050),
	(Kali, 		'1992-5-6', 	'Senior', 	9800);

INSERT INTO client (name) VALUES
	(Mario),
	(Lui),
	(Kai),
	(Boris),
	(Frank);

INSERT INTO project(client_id, start_date, finish_date) VALUES
	(1, 	'2004-5-1', 	'2008-9-21'),
	(1, 	'2007-8-7', 	'2010-3-1'),
	(2, 	'2019-2-1', 	'2020-2-11'),
	(2, 	'2007-9-9', 	'2018-11-11'),
	(3, 	'2022-2-24', 	'2023-6-13'),
	(3, 	'2017-12-3', 	'2020-9-13'),
	(4, 	'2022-1-11', 	'2022-4-12'),
	(4, 	'2023-1-12', 	'2023-9-11'),
	(5, 	'2023-5-9', 	'2023-7-27'),
	(5, 	'2024-1-1', 	'2025-12-12');

INSERT INTO project_worker(project_id, worker_id) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 4),
	(2, 5),
	(2, 6),
	(2, 7),
	(3, 8),
	(3, 9),
	(4, 10),
	(5, 1),
	(5, 2),
	(6, 3),
	(6, 4),
	(6, 5),
	(6, 6),
	(6, 7),
	(7, 8),
	(8, 8),
	(8, 9),
	(8, 10),
	(9, 9),
	(9, 10),
	(10, 8),
	(10, 7);
