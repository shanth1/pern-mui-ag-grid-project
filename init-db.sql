INSERT INTO public.office(
	id, country, city, square, "squareRentPrice", "openingDate", "createdAt", "updatedAt")
	VALUES 
    (1, 'Russia', 'Moscow', 230, 1234.20, '2013-03-30', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 'Russia', 'Moscow', 4124, 980.43, '2000-01-22', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 'Russia', 'Moscow', 512, 500.42, '2002-08-04', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (4, 'Russia', 'Saint Petersburg', 434, 972.22, '2004-10-21', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (5, 'Russia', 'Saint Petersburg', 743, 3100.42, '2008-05-29', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (6, 'Russia', 'Ryazan', 2156, 1843.1, '2007-04-20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (7, 'Russia', 'Ryazan', 1050, 1249.2, '2010-03-19', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (8, 'Russia', 'Perm', 429, 759.23, '2015-08-13', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (9, 'Russia', 'Kaliningrad', 712, 844.44, '2004-05-03', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (10, 'Armenia', 'Yerevan', 3200, 1560.5, '2020-12-07', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (11, 'Armenia', 'Yerevan', 584, 1723.6, '2015-11-13', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (12, 'Armenia', 'Yerevan', 1233, 2310.89, '2016-06-28', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (13, 'Armenia', 'Yerevan', 424, 2859.7, '2009-01-18', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (14, 'Kazakhstan', 'Aktau', 422, 690.92, '2012-05-10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (15, 'Kazakhstan', 'Astana', 989, 1020.6, '2013-02-20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (16, 'Belarus', 'Minsk', 444, 849.43, '2000-07-24', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (17, 'Belarus', 'Minsk', 3290, 1690.82, '2007-01-04', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public.employee(
	id, "firstName", "lastName", gender, "position", birthday, salary, passport, "createdAt", "updatedAt", "officeId")
	VALUES 
    (1, 'Artemiy', 'Usmanov', 'male', 'juniorDeveloper', '2002-11-13', 75000, 1234123123, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1),
    (2, 'Khalid', 'Safonov', 'male', 'analytic', '2000-01-03', 100000, 4399087645, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1),
    (3, 'Ayas', 'Ershov', 'male', 'juniorDeveloper', '1999-01-23', 75000, 2837461982, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1),
    (4, 'Nataliya', 'Galimova', 'female', 'teamLeader', '2000-11-17', 150000, 2748577982, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 2),
    (5, 'Farit', 'Galkin', 'male', 'analytic', '2003-01-13', 100000, 5738563748, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 2),
    (6, 'Radmila', 'Babenko', 'female', 'juniorDeveloper', '2000-09-10', 75000, 4763896754, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 3),
    (7, 'Maria', 'Eremeeva', 'female', 'middleDeveloper', '1992-05-25', 120000, 4758293845, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 4),
    (8, 'Kim', 'Mitina', 'female', 'teamLeader', '1987-01-13', 150000, 3487298593, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 5),
    (9, 'Aza', 'Shvets', 'female', 'juniorDeveloper', '2001-01-10', 75000, 4983409309, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 5),
    (10, 'Roman', 'Gromov', 'male', 'middleDeveloper', '1991-02-01', 120000, 3877198275, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 6),
    (11, 'Anna', 'Kuzmina', 'female', 'designer', '2004-09-13', 30000, 9887628376, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 6),
    (12, 'Vsevolod', 'Usov', 'male', 'projectManager', '1985-01-09', 200000, 4727394734, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 6),
    (13, 'Arslan', 'Nekrasov', 'male', 'seniorDeveloper', '1980-04-18', 180000, 6638273849, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 7),
    (14, 'Mark', 'Sobolev', 'male', 'director', '1974-01-13', 250000, 1172647789, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 7),
    (15, 'Ilya', 'Isakov', 'male', 'middleDeveloper', '1995-02-22', 120000, 2546375819, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 7);

