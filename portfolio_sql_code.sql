--Use database
USE Portfolio_2022;
GO

--Create Schema
CREATE SCHEMA videogames;
GO

--Staging table created to anticipate errors
--in CSV to OLEDB transformation in SSIS
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES
			WHERE TABLE_NAME = 'vgsalestest'
			AND TABLE_SCHEMA = 'videogames')
	DROP TABLE videogames.vgsalestest
	;
GO
CREATE TABLE videogames.vgsalestest(
	rank nvarchar(255),
	name nvarchar(255),
	platform nvarchar(255),
	year nvarchar(255),
	genre nvarchar(255),
	publisher nvarchar(255),
	na_sales nvarchar(255),
	eu_sales nvarchar(255),
	jp_sales nvarchar(255),
	other_sales nvarchar(255),
	global_sales nvarchar(255)
	);

--Test table
SELECT * FROM videogames.vgsalestest;

--Troubleshooting row 945 (rank 944)
SELECT * FROM videogames.vgsalestest
WHERE rank = 944;

--Delete row 945 (rank 944)
DELETE FROM videogames.vgsalestest
WHERE rank = 944;

--Insert corrected values into row 945 (rank 944)
INSERT INTO videogames.vgsalestest
VALUES (
	'944', 'Hey You, Pikachu!', 'N64', '1998', 'Simulation', 
	'Nintendo', '0.83', '0.06', '0.93', '0', '1.83');

--gba year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE 'gba';

--Delete ranks 1092, 1627, 3050, 5657, 9873, 14156
DELETE FROM videogames.vgsalestest
WHERE rank = 1092;
DELETE FROM videogames.vgsalestest
WHERE rank = 1627;
DELETE FROM videogames.vgsalestest
WHERE rank = 3050;
DELETE FROM videogames.vgsalestest
WHERE rank = 5657;
DELETE FROM videogames.vgsalestest
WHERE rank = 9873;
DELETE FROM videogames.vgsalestest
WHERE rank = 14156;

--Insert corrected values into ranks 1092, 1627, 3050, 5657, 9873, 14156
INSERT INTO videogames.vgsalestest
VALUES (
	'1092', 'Monsters, Inc.', 'GBA', '2001', 'Adventure', 
	'THQ', '0.59', '0.95', '0.03', '0.1', '1.67');
INSERT INTO videogames.vgsalestest
VALUES (
	'1627', 'WarioWare, Inc.: Mega MicroGame$', 'GBA', '2003', 'Puzzle', 
	'Nintendo', '0.4', '0.11', '0.07', '0.02', '1.23');
INSERT INTO videogames.vgsalestest
VALUES (
	'3050', 'The Chronicles of Narnia: The Lion, The Witch, and The Wardrobe', 'GBA', '2005', 'Action', 
	'Disney Interactive Studios', '0.48', '0.18', '0', '0.01', '0.67');
INSERT INTO videogames.vgsalestest
VALUES (
	'5657', 'Ed, Edd, n Eddy: Jawbreakers!', 'GBA', '2002', 'Adventure', 
	'BAM! Entertainment', '0.23', '0.08', '0', '0.01', '0.32');
INSERT INTO videogames.vgsalestest
VALUES (
	'9873', 'Ed, Edd, n Eddy: The Mis-Edventures', 'GBA', '2005', 'Platform', 
	'Midway Games', '0.08', '0.03', '0', '0', '0.12');
INSERT INTO videogames.vgsalestest
VALUES (
	'14156', 'Crouching Tiger, Hidden Dragon', 'GBA', '2003', 'Action', 
	'Ubisoft', '0.02', '0.01', '0', '0', '0.03');

--PS3 year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE 'PS3';

--Delete ranks 4246, 16411
DELETE FROM videogames.vgsalestest
WHERE rank = 4246;
DELETE FROM videogames.vgsalestest
WHERE rank = 16411;

--Insert corrected values into ranks 4246, 16411
INSERT INTO videogames.vgsalestest
VALUES (
	'4246', 'Warhammer 40,000: Space Marine', 'PS3', '2011', 'Shooter', 
	'THQ', '0.13', '0.25', '0', '0.09', '0.46');
INSERT INTO videogames.vgsalestest
VALUES (
	'16411', 'Sakigake!! Otokojuku - Nihon yo, Kore ga Otoko Dearu!', 'PS3', '2014', 'Fighting', 
	'Namco Bandai Games', '0', '0', '0.01', '0', '0.01');

--' PS3' year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE ' PS3';

--Delete ranks 1834, 3090, 3328, 3412, 4790
DELETE FROM videogames.vgsalestest
WHERE rank = 1834;
DELETE FROM videogames.vgsalestest
WHERE rank = 3090;
DELETE FROM videogames.vgsalestest
WHERE rank = 3328;
DELETE FROM videogames.vgsalestest
WHERE rank = 3412;
DELETE FROM videogames.vgsalestest
WHERE rank = 4790;

--Insert corrected values into ranks 1834, 3090, 3328, 3412, 4790
INSERT INTO videogames.vgsalestest
VALUES (
	'1834', 'Transformers: The Game', 'PS2', '2007', 'Action', 
	'Activision', '0.63', '0.37', '0', '0.11', '1.11');
INSERT INTO videogames.vgsalestest
VALUES (
	'3090', 'Transformers: The Game', 'PSP', '2007', 'Action', 
	'Activision', '0.23', '0.27', '0', '0.16', '0.66');
INSERT INTO videogames.vgsalestest
VALUES (
	'3328', 'Transformers: The Game', 'X360', '2007', 'Action', 
	'Activision', '0.51', '0.05', '0', '0.05', '0.61');
INSERT INTO videogames.vgsalestest
VALUES (
	'3412', 'Transformers: The Game', 'Wii', '2007', 'Action', 
	'Activision', '0.52', '0.03', '0', '0.04', '0.59');
INSERT INTO videogames.vgsalestest
VALUES (
	'4790', 'Transformers: The Game', 'PS3', '2007', 'Action', 
	'Activision', '0.32', '0.04', '0.01', '0.04', '0.4');

--GC year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE 'GC';

--Delete ranks 2889, 5109, 6196, 6740
DELETE FROM videogames.vgsalestest
WHERE rank = 2889;
DELETE FROM videogames.vgsalestest
WHERE rank = 5109;
DELETE FROM videogames.vgsalestest
WHERE rank = 6196;
DELETE FROM videogames.vgsalestest
WHERE rank = 6740;

--Insert corrected values into ranks 2889, 5109, 6196, 6740
INSERT INTO videogames.vgsalestest
VALUES (
	'2889', 'WarioWare, Inc.: Mega Party Game$', 'GC', '2003', 'Puzzle', 
	'Nintendo', '0.2', '0.05', '0.44', '0.02', '0.71');
INSERT INTO videogames.vgsalestest
VALUES (
	'5109', 'Monsters, Inc. Scream Arena', 'GC', '2002', 'Platform', 
	'THQ', '0.29', '0.07', '0', '0.01', '0.37');
INSERT INTO videogames.vgsalestest
VALUES (
	'6196', 'The Chronicles of Narnia: The Lion, The Witch, and The Wardrobe', 'GC', '2005', 'Action', 
	'Disney Interactive Studios', '0.22', '0.06', '0', '0.01', '0.28');
INSERT INTO videogames.vgsalestest
VALUES (
	'6740', 'Ed, Edd n Eddy: The Mis-Edventures', 'GC', '2005', 'Platform', 
	'Midway Games', '0.19', '0.05', '0', '0.01', '0.25');

--' & PC year' troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE ' & PC%';

--Delete ranks 2919, 3217, 3464, 3912, 4044, 4061, 4702, 15481, 16502
DELETE FROM videogames.vgsalestest
WHERE rank = 2919;
DELETE FROM videogames.vgsalestest
WHERE rank = 3217;
DELETE FROM videogames.vgsalestest
WHERE rank = 3464;
DELETE FROM videogames.vgsalestest
WHERE rank = 3912;
DELETE FROM videogames.vgsalestest
WHERE rank = 4044;
DELETE FROM videogames.vgsalestest
WHERE rank = 4061;
DELETE FROM videogames.vgsalestest
WHERE rank = 4702;
DELETE FROM videogames.vgsalestest
WHERE rank = 15481;
DELETE FROM videogames.vgsalestest
WHERE rank = 16502;

--Insert corrected values into ranks 2919, 3217, 3464, 3912, 4044, 4061, 4702, 15481, 16502
INSERT INTO videogames.vgsalestest
VALUES (
	'2919', 'Transformers: Revenge of the Fallen', 'PS3', '2009', 'Shooter', 
	'Activision', '0.28', '0.3', '0', '0.12', '0.7');
INSERT INTO videogames.vgsalestest
VALUES (
	'3217', 'Transformers: Revenge of the Fallen', 'X360', '2009', 'Shooter', 
	'Activision', '0.34', '0.23', '0', '0.06', '0.63');
INSERT INTO videogames.vgsalestest
VALUES (
	'3464', 'Transformers: War for Cybertron', 'X360', '2010', 'Shooter', 
	'Activision', '0.37', '0.15', '0', '0.05', '0.58');
INSERT INTO videogames.vgsalestest
VALUES (
	'3912', 'Transformers: War for Cybertron', 'PS3', '2010', 'Shooter', 
	'Activision', '0.24', '0.19', '0', '0.08', '0.51');
INSERT INTO videogames.vgsalestest
VALUES (
	'4044', 'Transformers: Revenge of the Fallen', 'Wii', '2009', 'Shooter', 
	'Activision', '0.24', '0.2', '0', '0.05', '0.49');
INSERT INTO videogames.vgsalestest
VALUES (
	'4061', 'Transformers: Revenge of the Fallen', 'PS2', '2009', 'Shooter', 
	'Activision', '0.25', '0.01', '0', '0.22', '0.49');
INSERT INTO videogames.vgsalestest
VALUES (
	'4702', 'Transformers: Revenge of the Fallen', 'PSP', '2009', 'Shooter', 
	'Activision', '0.17', '0.15', '0', '0.09', '0.41');
INSERT INTO videogames.vgsalestest
VALUES (
	'15481', 'Transformers: Revenge of the Fallen', 'PC', '2009', 'Shooter', 
	'Activision', '0.02', '0', '0', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'16502', 'Transformers: War for Cybertron', 'PC', '2010', 'Shooter', 
	'Activision', '0.01', '0', '0', '0', '0.01');

--X360 year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE 'X360';

--Delete ranks 3524, 5548, 8660, 15956
DELETE FROM videogames.vgsalestest
WHERE rank = 3524;
DELETE FROM videogames.vgsalestest
WHERE rank = 5548;
DELETE FROM videogames.vgsalestest
WHERE rank = 8660;
DELETE FROM videogames.vgsalestest
WHERE rank = 15956;

--Insert corrected values into ranks 3524, 5548, 8660, 15956
INSERT INTO videogames.vgsalestest
VALUES (
	'3524', 'Warhammer 40,000: Space Marine', 'X360', '2011', 'Shooter', 
	'THQ', '0.25', '0.27', '0', '0.06', '0.57');
INSERT INTO videogames.vgsalestest
VALUES (
	'5548', 'Carnival Games: Monkey See, Monkey Do!', 'X360', '2011', 'Misc', 
	'Take-Two Interactive', '0.14', '0.16', '0', '0.03', '0.33');
INSERT INTO videogames.vgsalestest
VALUES (
	'8660', 'BCFX: The Black College Football Xperience, The Doug Williams Edition', 'X360', '2009', 'Sports', 
	'Aspyr', '0.15', '0', '0', '0.01', '0.16');
INSERT INTO videogames.vgsalestest
VALUES (
	'15956', 'Sharin no Kuni, Himawari no Shoujo', 'X360', '2010', 'Adventure', 
	'5pb', '0', '0', '0.02', '0', '0.02');

--PS year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE 'PS';

--Delete ranks 3572, 10380, 13489
DELETE FROM videogames.vgsalestest
WHERE rank = 3572;
DELETE FROM videogames.vgsalestest
WHERE rank = 10380;
DELETE FROM videogames.vgsalestest
WHERE rank = 13489;

--Insert corrected values into ranks 3572, 10380, 13489
INSERT INTO videogames.vgsalestest
VALUES (
	'3572', 'Monsters, Inc. Scream Team', 'PS', '2001', 'Platform', 
	'Sony Computer Entertainment', '0.31', '0.21', '0', '0.04', '0.56');
INSERT INTO videogames.vgsalestest
VALUES (
	'10380', 'Grand Theft Auto: Mision Pack #1, London 1969', 'PS', '1998', 'Adventure', 
	'Take-Two Interactive', '0.06', '0.04', '0', '0.01', '0.11');
INSERT INTO videogames.vgsalestest
VALUES (
	'13489', 'Roswell Conspiracies: Aliens, Myths & Legends', 'PS', '2001', 'Action', 
	'Red Storm Entertainment', '0.02', '0.02', '0', '0', '0.04');

--SAT year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE 'SAT';

--Delete ranks 3757
DELETE FROM videogames.vgsalestest
WHERE rank = 3757;

--Insert corrected values into ranks 3757
INSERT INTO videogames.vgsalestest
VALUES (
	'3757', 'Sakura Taisen 2 - Kimi, Shinitamou Koto Nakare', 'SAT', '1998', 'Adventure', 
	'Sega', '0', '0', '0.53', '0', '0.53');

--' Pants!' year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE ' Pants%';

--Delete ranks 3905, 4417, 4457, 6575
DELETE FROM videogames.vgsalestest
WHERE rank = 3905;
DELETE FROM videogames.vgsalestest
WHERE rank = 4417;
DELETE FROM videogames.vgsalestest
WHERE rank = 4457;
DELETE FROM videogames.vgsalestest
WHERE rank = 6575;

--Insert corrected values into ranks 3905, 4417, 4457, 6575
INSERT INTO videogames.vgsalestest
VALUES (
	'3905', 'SpongeBob SquarePants: Light, Camera, Pants!', 'GBA', '2005', 'Misc', 
	'THQ', '0.37', '0.14', '0', '0.01', '0.51');
INSERT INTO videogames.vgsalestest
VALUES (
	'4417', 'SpongeBob SquarePants: Light, Camera, Pants!', 'PS2', '2005', 'Misc', 
	'THQ', '0.37', '0.01', '0', '0.06', '0.44');
INSERT INTO videogames.vgsalestest
VALUES (
	'4457', 'SpongeBob SquarePants: Light, Camera, Pants!', 'GC', '2005', 'Misc', 
	'THQ', '0.34', '0.09', '0', '0.01', '0.44');
INSERT INTO videogames.vgsalestest
VALUES (
	'6575', 'SpongeBob SquarePants: Light, Camera, Pants!', 'XB', '2005', 'Misc', 
	'THQ', '0.19', '0.06', '0', '0.01', '0.26');

--PC year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE 'PC';

--Delete ranks 4181, 7533, 10693, 11486, 12861, 13140, 15486
DELETE FROM videogames.vgsalestest
WHERE rank = 4181;
DELETE FROM videogames.vgsalestest
WHERE rank = 7533;
DELETE FROM videogames.vgsalestest
WHERE rank = 10693;
DELETE FROM videogames.vgsalestest
WHERE rank = 11486;
DELETE FROM videogames.vgsalestest
WHERE rank = 12861;
DELETE FROM videogames.vgsalestest
WHERE rank = 13140;
DELETE FROM videogames.vgsalestest
WHERE rank = 15486;

--Insert corrected values into ranks 4181, 7533, 10693, 11486, 12861, 13140, 15486
INSERT INTO videogames.vgsalestest
VALUES (
	'4181', 'Warhammer 40,000: Dawn of War II', 'PC', '2009', 'Strategy', 
	'THQ', '0', '0.45', '0', '0.02', '0.47');
INSERT INTO videogames.vgsalestest
VALUES (
	'7533', 'Warhammer 40,000: Space Marine', 'PC', '2011', 'Shooter', 
	'THQ', '0.09', '0.09', '0', '0.03', '0.2');
INSERT INTO videogames.vgsalestest
VALUES (
	'10693', 'Warhammer 40,000: Dawn of War II - Chaos Rising', 'PC', '2010', 'Strategy', 
	'THQ', '0.08', '0.01', '0', '0.01', '0.1');
INSERT INTO videogames.vgsalestest
VALUES (
	'11486', 'Warhammer 40,000: Dawn of War II - Retribution', 'PC', '2011', 'Strategy', 
	'THQ', '0', '0.06', '0', '0.02', '0.08');
INSERT INTO videogames.vgsalestest
VALUES (
	'12861', 'Murder, She Wrote', 'PC', '2009', 'Adventure', 
	'Focus Home Interactive', '0', '0.04', '0', '0.01', '0.05');
INSERT INTO videogames.vgsalestest
VALUES (
	'13140', 'Warhammer 40,000: Dawn of War', 'PC', '2004', 'Strategy', 
	'THQ', '0.01', '0.03', '0', '0.01', '0.05');
INSERT INTO videogames.vgsalestest
VALUES (
	'15486', 'Warhammer 40,000: Dawn of War: Soulstorm', 'PC', '2008', 'Strategy', 
	'THQ', '0', '0.02', '0', '0', '0.02');

--DS year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE 'DS';

--Delete ranks 4279, 7593, 8023, 9687, 11070, 11414, 11434, 11941, 12237, 12776, 13598, 14071
DELETE FROM videogames.vgsalestest
WHERE rank = 4279;
DELETE FROM videogames.vgsalestest
WHERE rank = 7593;
DELETE FROM videogames.vgsalestest
WHERE rank = 8023;
DELETE FROM videogames.vgsalestest
WHERE rank = 9687;
DELETE FROM videogames.vgsalestest
WHERE rank = 11070;
DELETE FROM videogames.vgsalestest
WHERE rank = 11414;
DELETE FROM videogames.vgsalestest
WHERE rank = 11434;
DELETE FROM videogames.vgsalestest
WHERE rank = 11941;
DELETE FROM videogames.vgsalestest
WHERE rank = 12237;
DELETE FROM videogames.vgsalestest
WHERE rank = 12776;
DELETE FROM videogames.vgsalestest
WHERE rank = 13598;
DELETE FROM videogames.vgsalestest
WHERE rank = 14071;
DELETE FROM videogames.vgsalestest
WHERE rank = 14985;
DELETE FROM videogames.vgsalestest
WHERE rank = 16410;
DELETE FROM videogames.vgsalestest
WHERE rank = 16419;

--Insert corrected values into ranks 4279, 7593, 8023, 9687, 11070, 11414, 11434, 11941, 12237, 12776, 13598, 14071
INSERT INTO videogames.vgsalestest
VALUES (
	'4279', 'BARBIE: Jet, Set & Style!', 'DS', '2011', 'Misc', 
	'THQ', '0.37', '0.05', '0', '0.03', '0.46');
INSERT INTO videogames.vgsalestest
VALUES (
	'7593', 'Ni Hao, Kai-lan: New Year''s Celebration', 'DS', '2009', 'Misc', 
	'Take-Two Interactive', '0.19', '0', '0', '0.01', '0.2');
INSERT INTO videogames.vgsalestest
VALUES (
	'8023', 'The Chronicles of Narnia: The Lion, The Witch, and The Wardrobe', 'DS', '2005', 'Action', 
	'Disney Interactive Studios', '0.15', '0.02', '0', '0.01', '0.18');
INSERT INTO videogames.vgsalestest
VALUES (
	'9687', 'Kilari: Na-san, Mon Meilleur Ami', 'DS', '2006', 'Simulation', 
	'Konami Digital Entertainment', '0', '0', '0.12', '0', '0.12');
INSERT INTO videogames.vgsalestest
VALUES (
	'11070', 'Saiyuuki: Kinkaku, Ginkaku no Inbou', 'DS', '2007', 'Role-Playing', 
	'D3Publisher', '0', '0', '0.09', '0', '0.09');
INSERT INTO videogames.vgsalestest
VALUES (
	'11414', 'Hisshou Pachinko*Pachi-Slot Kouryaku Series DS, Futatabi', 'DS', '2008', 'Misc', 
	'D3Publisher', '0', '0', '0.08', '0', '0.08');
INSERT INTO videogames.vgsalestest
VALUES (
	'11434', '3 in 1: Solitaire, Mahjong & Tangram', 'DS', '2010', 'Misc', 
	'Deep Silver', '0', '0.07', '0', '0.01', '0.08');
INSERT INTO videogames.vgsalestest
VALUES (
	'11941', 'Hi! Hamtaro - Little Hamsters, Big Adventures: Ham-Ham Challenge', 'DS', '2005', 'Misc', 
	'505 Games', '0.07', '0', '0', '0', '0.07');
INSERT INTO videogames.vgsalestest
VALUES (
	'12237', 'Warhammer 40,000: Space Marine', 'PC', '2011', 'Shooter', 
	'THQ', '0.09', '0.09', '0', '0.03', '0.2');
INSERT INTO videogames.vgsalestest
VALUES (
	'12776', 'Tennis no Oji-Sama: Doubles no Oji-Sama - Girls, Be Gracious!', 'DS', '2009', 'Sports', 
	'Konami Digital Entertainment', '0', '0', '0.06', '0', '0.06');
INSERT INTO videogames.vgsalestest
VALUES (
	'13598', 'Negima!? Chou Mahora Taisen Kattoiin, Keiyaku Shikkou Dechai Masuu', 'DS', '2006', 'Adventure', 
	'Marvelous Interactive', '0', '0', '0.04', '0', '0.04');
INSERT INTO videogames.vgsalestest
VALUES (
	'14071', 'My World, My Way', 'DS', '2008', 'Role-Playing', 
	'Global A Entertainment', '0.04', '0', '0', '0', '0.04');
INSERT INTO videogames.vgsalestest
VALUES (
	'14985', 'Hisshou Pachinko*Pachi-Slot Kouryaku Series DS, Kimi Ni', 'DS', '2008', 'Misc', 
	'D3Publisher', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'16410', 'Element Girl: Love, Fashion and Friends', 'DS', '2008', 'Adventure', 
	'DTP Entertainment', '0', '0.01', '0', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16419', 'Tennis no Oji-Sama: Doubles no Oji-Sama - Boys, Be Glorious!', 'DS', '2009', 'Sports', 
	'Konami Digital Entertainment', '0', '0', '0.01', '0', '0.01');

--PS2 year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE 'PS2';

--Delete ranks 4505, 4767, 5688, 6060, 8728, 9508, 9702, 11660, 12746, 13183, 15620, 15899, 16061
DELETE FROM videogames.vgsalestest
WHERE rank = 4505;
DELETE FROM videogames.vgsalestest
WHERE rank = 4767;
DELETE FROM videogames.vgsalestest
WHERE rank = 5688;
DELETE FROM videogames.vgsalestest
WHERE rank = 6060;
DELETE FROM videogames.vgsalestest
WHERE rank = 8728;
DELETE FROM videogames.vgsalestest
WHERE rank = 9508;
DELETE FROM videogames.vgsalestest
WHERE rank = 9702;
DELETE FROM videogames.vgsalestest
WHERE rank = 11660;
DELETE FROM videogames.vgsalestest
WHERE rank = 12746;
DELETE FROM videogames.vgsalestest
WHERE rank = 13183;
DELETE FROM videogames.vgsalestest
WHERE rank = 15620;
DELETE FROM videogames.vgsalestest
WHERE rank = 15899;
DELETE FROM videogames.vgsalestest
WHERE rank = 16061;

--Insert corrected values into ranks 4505, 4767, 5688, 6060, 8728, 9508, 9702, 11660, 12746, 13183, 15620, 15899, 16061
INSERT INTO videogames.vgsalestest
VALUES (
	'4505', 'The Chronicles of Narnia: The Lion, The Witch, and The Wardrobe', 'PS2', '2005', 'Action', 
	'Disney Interactive Studios', '0.36', '0.01', '0', '0.06', '0.43');
INSERT INTO videogames.vgsalestest
VALUES (
	'4767', 'Ed, Edd n Eddy: The Mis-Edventures', 'PS2', '2005', 'Platform', 
	'Midway Games', '0.34', '0.01', '0', '0.06', '0.41');
	INSERT INTO videogames.vgsalestest
VALUES (
	'5688', 'Monsters, Inc.', 'PS2', '2002', 'Adventure', 
	'Sony Computer Entertainment', '0.15', '0.12', '0', '0.04', '0.32');
INSERT INTO videogames.vgsalestest
VALUES (
	'6060', 'Sakura Wars: So Long, My Love', 'PS2', '2005', 'Role-Playing', 
	'Sega', '0.07', '0.05', '0.15', '0.02', '0.29');
	INSERT INTO videogames.vgsalestest
VALUES (
	'8728', 'Warhammer 40,000: Fire Warrior', 'PS2', '2003', 'Shooter', 
	'THQ', '0.08', '0.06', '0', '0.02', '0.15');
INSERT INTO videogames.vgsalestest
VALUES (
	'9508', 'Crouching Tiger, Hidden Dragon', 'PS2', '2003', 'Action', 
	'Ubisoft', '0.06', '0.05', '0', '0.02', '0.13');
	INSERT INTO videogames.vgsalestest
VALUES (
	'9702', 'Hisshou Pachinko*Pachi-Slot Kouryaku Series Vol. 12: CR Shinseiki Evangelion - Shito, Futatabi', 'PS2', '2008', 'Misc', 
	'D3Publisher', '0', '0', '0.12', '0', '0.12');
INSERT INTO videogames.vgsalestest
VALUES (
	'11660', 'Ni Hao,  Kai-lan: Super Game Day', 'PS2', '2009', 'Misc', 
	'Take-Two Interactive', '0.04', '0.03', '0', '0.01', '0.08');
	INSERT INTO videogames.vgsalestest
VALUES (
	'12746', 'Hisshou Pachinko*Pachi-Slot Kouryaku Series Vol. 11: Shinseiki Evangelion - Magokoro o, Kimi ni', 'PS2', '2007', 'Misc', 
	'D3Publisher', '0', '0', '0.06', '0', '0.06');
INSERT INTO videogames.vgsalestest
VALUES (
	'13183', 'Lupin III: Lupin ni wa Shi o, Zenigata ni wa Koi o', 'PS2', '2007', 'Adventure', 
	'Sega', '0', '0', '0.05', '0', '0.05');
	INSERT INTO videogames.vgsalestest
VALUES (
	'15620', 'Shounen Onmyouji: Tsubasa Yoima, Ten e Kaere', 'PS2', '2007', 'Adventure', 
	'Kadokawa Shoten', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'15899', 'Nogizaka Haruka no Himitsu Cosplay, Hajime Mashita', 'PS2', '2008', 'Adventure', 
	'ASCII Media Works', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'16061', 'Pachi-Slot Teiou: Golgo 13 Las Vegas', 'PS2', '2002', 'Misc', 
	'Media Entetainment', '0', '0', '0.01', '0', '0.01');

--' Nine Doors' year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE ' Nine Doors%';

--Delete rank 4542
DELETE FROM videogames.vgsalestest
WHERE rank = 4542;

--Insert corrected values into rank 4542
INSERT INTO videogames.vgsalestest
VALUES (
	'4542', '999: Nine Hours, Nine Persons, Nine Doors', 'DS', '2009', 'Adventure', 
	'ChunSoft', '0.37', '0', '0.03', '0.03', '0.43');

--PSP year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE 'PSP';

--Delete ranks 5523, 6829, 7858, 9151, 10903, 14728, 15181, 15278, 15722, 16087, 16263
DELETE FROM videogames.vgsalestest
WHERE rank = 5523;
DELETE FROM videogames.vgsalestest
WHERE rank = 6829;
DELETE FROM videogames.vgsalestest
WHERE rank = 7858;
DELETE FROM videogames.vgsalestest
WHERE rank = 9151;
DELETE FROM videogames.vgsalestest
WHERE rank = 10903;
DELETE FROM videogames.vgsalestest
WHERE rank = 14728;
DELETE FROM videogames.vgsalestest
WHERE rank = 15181;
DELETE FROM videogames.vgsalestest
WHERE rank = 15278;
DELETE FROM videogames.vgsalestest
WHERE rank = 15722;
DELETE FROM videogames.vgsalestest
WHERE rank = 16087;
DELETE FROM videogames.vgsalestest
WHERE rank = 16263;

--Insert corrected values into ranks 5523, 6829, 7858, 9151, 10903, 14728, 15181, 15278, 15722, 16087, 16263
INSERT INTO videogames.vgsalestest
VALUES (
	'5523', 'Warhammer 40,000: Squad Command', 'PSP', '2007', 'Strategy', 
	'THQ', '0.11', '0.14', '0', '0.08', '0.33');
INSERT INTO videogames.vgsalestest
VALUES (
	'6829', 'What Did I Do to Deserve This, My Lord!? 2', 'PSP', '2008', 'Role-Playing', 
	'Nippon Ichi Software', '0.05', '0', '0.18', '0.01', '0.24');
INSERT INTO videogames.vgsalestest
VALUES (
	'7858', 'Boku no Natsuyasumi 4: Seitouchi Shounen Tanteidan, Boku to Himitsu no Chizu', 'PSP', '2009', 'Adventure', 
	'Sony Computer Entertainment', '0', '0', '0.19', '0', '0.19');
INSERT INTO videogames.vgsalestest
VALUES (
	'9151', 'Holy Invasion of Privacy, Badman! What Did I Do to Deserve This?', 'PSP', '2007', 'Role-Playing', 
	'Nippon Ichi Software', '0', '0', '0.13', '0', '0.14');
INSERT INTO videogames.vgsalestest
VALUES (
	'10903', 'Prinny 2: Dawn of Operation Panties, Dood!', 'PSP', '2010', 'Platform', 
	'Nippon Ichi Software', '0.05', '0', '0.03', '0.01', '0.09');
INSERT INTO videogames.vgsalestest
VALUES (
	'14728', 'Hanayaka Kana, Ware ga Ichizoku Twin Pack', 'PSP', '2011', 'Misc', 
	'Idea Factory', '0', '0', '0.03', '0', '0.03');
INSERT INTO videogames.vgsalestest
VALUES (
	'15181', 'Simple 2500 Series Portable!! Vol. 12: The Hohei 2: Senyuu yo, Sakini Ike', 'PSP', '2009', 'Action', 
	'D3Publisher', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'15278', 'Renai Banchou: Inochi Meishi, Koiseyo Otome! Love is Power!!!', 'PSP', '2010', 'Adventure', 
	'Idea Factory', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'15722', 'Hanayaka Kana, Ware ga Ichizoku: Tasogare Polarstar', 'PSP', '2013', 'Adventure', 
	'Idea Factory', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'16087', 'Iza, Shutsujin! Koisen', 'PSP', '2011', 'Adventure', 
	'Quinrose', '0', '0', '0.01', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16263', 'Hanayaka Kana, Ware ga Ichizoku', 'PSP', '2010', 'Adventure', 
	'Idea Factory', '0', '0', '0.01', '0', '0.01');

--' Go!: Great Dinosaur Rescue' year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE ' Go!:%';

--Delete rank 5621
DELETE FROM videogames.vgsalestest
WHERE rank = 5621;

--Insert corrected values into rank 5621
INSERT INTO videogames.vgsalestest
VALUES (
	'5621', 'Go, Diego, Go!: Great Dinosaur Rescue', 'PS2', '2008', 'Action', 
	'Take-Two Interactive', '0.16', '0.12', '0', '0.04', '0.32');

--' Air' year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE ' Air%';

--Delete rank 5835
DELETE FROM videogames.vgsalestest
WHERE rank = 5835;

--Insert corrected values into rank 5835
INSERT INTO videogames.vgsalestest
VALUES (
	'5835', 'Army Men World War: Land, Sea, Air', 'PS', '2000', 'Action', 
	'3DO', '0.17', '0.12', '0', '0.02', '0.3');

--DC year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE 'DC';

--Delete ranks 6059, 10679
DELETE FROM videogames.vgsalestest
WHERE rank = 6059;
DELETE FROM videogames.vgsalestest
WHERE rank = 10679;

--Insert corrected values into ranks 6059, 10679
INSERT INTO videogames.vgsalestest
VALUES (
	'6059', 'Sakura Wars 4: Koi Seyo, Otome', 'DC', '2002', 'Adventure', 
	'Sega', '0', '0', '0.29', '0', '0.29');
INSERT INTO videogames.vgsalestest
VALUES (
	'10679', 'Sakura Wars 2: Kimi, Shinitamou koto Nakare', 'DC', '2000', 'Adventure', 
	'Sega', '0', '0', '0.1', '0', '0.1')

--Wii year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE 'Wii';

--Delete ranks 6447, 7754, 8965, 10060
DELETE FROM videogames.vgsalestest
WHERE rank = 6447;
DELETE FROM videogames.vgsalestest
WHERE rank = 7754;
DELETE FROM videogames.vgsalestest
WHERE rank = 8965;
DELETE FROM videogames.vgsalestest
WHERE rank = 10060;

--Insert corrected values into ranks 6447, 7754, 8965, 10060
INSERT INTO videogames.vgsalestest
VALUES (
	'6447', 'Barbie: Jet, Set & Style!', 'Wii', '2011', 'Misc', 
	'THQ', '0.23', '0.01', '0', '0.02', '0.26');
INSERT INTO videogames.vgsalestest
VALUES (
	'7754', 'Ni Hao, Kai-lan: Super Game Day', 'Wii', '2009', 'Misc', 
	'Take-Two Interactive', '0.18', '0', '0', '0.01', '0.19');
INSERT INTO videogames.vgsalestest
VALUES (
	'8965', 'NewU Fitness First Mind Body, Yoga & Pilates Workout', 'Wii', '2010', 'Sports', 
	'Black Bean Games', '0.12', '0.02', '0', '0.01', '0.15');
INSERT INTO videogames.vgsalestest
VALUES (
	'10060', 'Sakura Wars: So Long, My Love', 'Wii', '2010', 'Role-Playing', 
	'Ackkstudios', '0.06', '0.04', '0', '0.01', '0.11');

--XB year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE 'XB';

--Delete ranks 7614, 14976, 16373
DELETE FROM videogames.vgsalestest
WHERE rank = 7614;
DELETE FROM videogames.vgsalestest
WHERE rank = 14976;
DELETE FROM videogames.vgsalestest
WHERE rank = 16373;

--Insert corrected values into ranks 7614, 14976, 16373
INSERT INTO videogames.vgsalestest
VALUES (
	'7614', 'The Chronicles of Narnia: The Lion, The Witch, and The Wardrobe', 'XB', '2005', 'Action', 
	'Disney Interactive Studios', '0.15', '0.04', '0', '0.01', '0.2');
INSERT INTO videogames.vgsalestest
VALUES (
	'14976', 'Ed, Edd n Eddy: The Mis-Edventures', 'XB', '2005', 'Platform', 
	'Midway Games', '0.02', '0.01', '0', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'16373', 'Crouching Tiger, Hidden Dragon', 'XB', '2003', 'Action', 
	'Ubisoft', '0.01', '0', '0', '0', '0.01');

--year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE ' %';

--Delete ranks 8424, 10203, 10752, 11279, 11909, 14000, 14533, 16461
DELETE FROM videogames.vgsalestest
WHERE rank = 8424;
DELETE FROM videogames.vgsalestest
WHERE rank = 10203;
DELETE FROM videogames.vgsalestest
WHERE rank = 10752;
DELETE FROM videogames.vgsalestest
WHERE rank = 11279;
DELETE FROM videogames.vgsalestest
WHERE rank = 11909;
DELETE FROM videogames.vgsalestest
WHERE rank = 14000;
DELETE FROM videogames.vgsalestest
WHERE rank = 14533;
DELETE FROM videogames.vgsalestest
WHERE rank = 16461;

--Insert corrected values into ranks 8424, 10203, 10752, 11279, 11909, 14000, 14533, 16461
INSERT INTO videogames.vgsalestest
VALUES (
	'8424', 'Go, Diego, Go! Safari Rescue', 'DS', '2007', 'Adventure', 
	'Take-Two Interactive', '0.15', '0.01', '0', '0.01', '0.17');
INSERT INTO videogames.vgsalestest
VALUES (
	'10203', 'Sesame Street: Ready, Set, Grover!', 'Wii', '2011', 'Misc', 
	'Warner Bros. Interactive Entertainment', '0.1', '0', '0', '0.01', '0.11');
INSERT INTO videogames.vgsalestest
VALUES (
	'10752', 'Blast Works: Build, Trade, Destroy', 'Wii', '2008', 'Shooter', 
	'Eidos Interactive', '0.09', '0', '0', '0.01', '0.1');
	INSERT INTO videogames.vgsalestest
VALUES (
	'11279', 'Sesame Street: Ready, Set, Grover!', 'DS', '2011', 'Misc', 
	'Warner Bros. Interactive Entertainment', '0.08', '0', '0', '0.01', '0.08');
INSERT INTO videogames.vgsalestest
VALUES (
	'11909', 'Flower, Sun, and Rain', 'DS', '2008', 'Adventure', 
	'Rising Star Games', '0.07', '0', '0', '0.01', '0.07');
INSERT INTO videogames.vgsalestest
VALUES (
	'14000', 'Minna de Jibun no Setsumeisho: B-Kata, A-Kata, AB-Kata, O-Kata', 'DS', '2008', 'Misc', 
	'GungHo', '0', '0', '0.04', '0', '0.04');
INSERT INTO videogames.vgsalestest
VALUES (
	'14533', 'Princess Natasha: Student, Secret Agent, Princess', 'DS', '2006', 'Action', 
	'Zoo Digital Publishing', '0.03', '0', '0', '0', '0.03');
	INSERT INTO videogames.vgsalestest
VALUES (
	'16461', 'Horse Life 4: My Horse, My Friend, My Champion', '3DS', '2015', 'Action', 
	'Independent Arts', '0', '0.01', '0', '0', '0.01');

--GEN year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE 'GEN';

--Delete rank 9005
DELETE FROM videogames.vgsalestest
WHERE rank = 9005;

--Insert corrected values into rank 9005
INSERT INTO videogames.vgsalestest
VALUES (
	'9005', 'Lunar 2: Eternal Blue', 'GEN', '1994', 'Role-Playing', 
	'Game Arts', '0', '0', '0.14', '0', '0.14');

--3DS year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE '3DS';

--Delete rank 11931
DELETE FROM videogames.vgsalestest
WHERE rank = 11931;

--Insert corrected values into rank 11931
INSERT INTO videogames.vgsalestest
VALUES (
	'11931', 'Horrid Henry: The Good, The Bad and The Bugly', '3DS', '2011', 'Platform', 
	'Asylum Entertainment', '0', '0.06', '0', '0.01', '0.07');

--PSV year troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE year LIKE 'PSV';

--Delete ranks 15789, 16478
DELETE FROM videogames.vgsalestest
WHERE rank = 15789;
DELETE FROM videogames.vgsalestest
WHERE rank = 16478;

--Insert corrected values into ranks 15789, 16478
INSERT INTO videogames.vgsalestest
VALUES (
	'15789', 'Moshi, Kono Sekai ni Kami-sama ga Iru to suru Naraba', 'PSV', '2016', 'Adventure', 
	'Rejet', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'16478', 'Shinobi, Koi Utsutsu: Setsugetsuka Koi Emaki', 'PSV', '2015', 'Action', 
	'Idea Factory', '0', '0', '0.01', '0', '0.01');

--na_sales troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE na_sales LIKE ' %';

--Delete ranks with 'In%' in na_sales - 2410, 5225, 9596, 10730, 11368, 
--12863, 13007, 14222, 14778, 15363, 16082, 16149, 16446, 16565
DELETE FROM videogames.vgsalestest
WHERE na_sales LIKE ' In%';

--Insert corrected values into ranks 2410, 5225, 9596, 10730, 11368, 
--12863, 13007, 14222, 14778, 15363, 16082, 16149, 16446, 16565
INSERT INTO videogames.vgsalestest
VALUES (
	'2410', 'Monster Strike 3DS', '3DS', '2015', 'Action', 
	'mixi, Inc', '0', '0', '0.86', '0', '0.86');
INSERT INTO videogames.vgsalestest
VALUES (
	'5225', 'ATV/Monster Truck Mayhem', 'DS', '2007', 'Racing', 
	'Destination Software, Inc', '0.33', '0', '0', '0.02', '0.36');
INSERT INTO videogames.vgsalestest
VALUES (
	'9596', 'Snood', 'GBA', '2001', 'Puzzle', 
	'Destination Software, Inc', '0.09', '0.03', '0', '0', '0.13');
INSERT INTO videogames.vgsalestest
VALUES (
	'10730', 'Championship Pony', 'DS', '2008', 'Simulation', 
	'Destination Software, Inc', '0.09', '0', '0', '0.01', '0.1');
INSERT INTO videogames.vgsalestest
VALUES (
	'11368', 'Board Game Classics', 'GBA', '2005', 'Misc', 
	'Destination Software, Inc', '0.06', '0.02', '0', '0', '0.08');
INSERT INTO videogames.vgsalestest
VALUES (
	'12863', 'Wing Commander: Prophecy', 'GBA', '2003', 'Simulation', 
	'Destination Software, Inc', '0.04', '0.01', '0', '0', '0.05');
INSERT INTO videogames.vgsalestest
VALUES (
	'13007', 'Battleship / Connect Four / Sorry! / Trouble', 'DS', '2006', 'Puzzle', 
	'Destination Software, Inc', '0.05', '0', '0', '0', '0.05');
INSERT INTO videogames.vgsalestest
VALUES (
	'14222', 'Shining Stars', 'DS', '2008', 'Action', 
	'Destination Software, Inc', '0.03', '0', '0', '0', '0.03');
INSERT INTO videogames.vgsalestest
VALUES (
	'14778', 'Baldur''s Gate: Dark Alliance', 'GBA', '2004', 'Role-Playing', 
	'Destination Software, Inc', '0.02', '0.01', '0', '0', '0.03');
INSERT INTO videogames.vgsalestest
VALUES (
	'15363', 'F1 2002', 'GBA', '2004', 'Role-Playing', 
	'Destination Software, Inc', '0.02', '0.01', '0', '0', '0.03');
INSERT INTO videogames.vgsalestest
VALUES (
	'16082', 'Pro Angler Moves', 'PS3', '2012', 'Sports', 
	'Interworks Unlimited, Inc', '0.01', '0', '0', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16149', 'Hot Wheels: Stunt Track Challenge / World Race', 'GBA', '2006', 'Racing', 
	'Destination Software, Inc', '0.01', '0', '0', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16446', 'Wade Hixton''s Counter Punch', 'GBA', '2004', 'Sports', 
	'Destination Software, Inc', '0.01', '0', '0', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16565', 'Original Frisbee Disc Sports: Ultimate & Golf', 'DS', '2007', 'Action', 
	'Destination Software, Inc', '0.01', '0', '0', '0', '0.01');

--Kingdom Hearts publisher correction
--(Squaresoft was the correct publisher, not Sony Computer Entertainment)
SELECT * FROM videogames.vgsalestest
WHERE name = 'Kingdom Hearts';

--Delete row entry by rank
DELETE FROM videogames.vgsalestest
WHERE rank = 132;

--Insert corrected entry into row (rank 15868)
INSERT INTO videogames.vgsalestest
VALUES (
	'132', 'Kingdom Hearts', 'PS2', '2002', 'Role-Playing',
	'Squaresoft', '3.64', '1.20', '1.49', '0.07', '6.4');

--DS year 1985 troubleshooting
--(The Nintendo DS was not released in 1985)
SELECT * FROM videogames.vgsalestest
WHERE year = 1985
AND platform = 'DS';

--Delete row entry
DELETE FROM videogames.vgsalestest
WHERE year = 1985
AND platform = 'DS';

--Insert corrected entry into row (rank 15868)
INSERT INTO videogames.vgsalestest
VALUES (
	'15868', 'Strongest Tokyo University Shogi DS', 'DS', '2007', 'Action',
	'Mycom', '0', '0', '0.02', '0', '0.02');

--Final Fantasy X / X2 troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE name LIKE 'final fantasy x/%';

--Delete rank 2876
DELETE FROM videogames.vgsalestest
WHERE rank = 2876;

--Insert corrected entry into row (rank 15868)
INSERT INTO videogames.vgsalestest
VALUES (
	'2876', 'Final Fantasy X / X-2 HD Remaster', 'PS4', '2015', 'Role-Playing',
	'Square Enix', '0.29', '0.25', '0.06', '0.11', '0.71');

--JP Region Sales Categories in Name troubleshooting
SELECT * FROM videogames.vgsalestest
WHERE name LIKE '%(JP Sales)%';

--Delete rows with ranks 7458, 7916, 8174, 8406, 8603, 8740, 9029, 9229, 9233, 9455,
--9478, 9713, 10206, 10351, 10665, 10666, 10921, 11395, 11421, 12011, 12298,
--12321, 12618, 1271, 12952, 13262, 13319, 13410, 13465, 13770, 13827, 13899,
--13948, 14010, 14209, 14214, 14270, 14340, 14490, 14834, 14937, 14951, 15098,
--15114, 15160, 15477, 15552, 1560, 15626, 15784, 15993, 16024, 16055, 16152,
--16185, 16281, 16322, 16326, 16332, 16414, 16466, 16515, 16545
DELETE FROM videogames.vgsalestest
WHERE name LIKE '%(JP Sales)%'

--Insert corrected entry into corresponsing rows
INSERT INTO videogames.vgsalestest
VALUES (
	'7458', 'Shin Megami Tensei: Persona 3', 'PS2', '2006', 'Role-Playing',
	'Atlus', '0', '0', '0.21', '0', '0.21');
INSERT INTO videogames.vgsalestest
VALUES (
	'7916', 'Sudoku Gridmaster', 'DS', '2006', 'Puzzle',
	'Nintendo', '0', '0', '0.19', '0', '0.19');
INSERT INTO videogames.vgsalestest
VALUES (
	'8174', 'SimCity Creator', 'DS', '2008', 'Simulation',
	'Electronic Arts', '0', '0', '0.18', '0', '0.18');
INSERT INTO videogames.vgsalestest
VALUES (
	'8406', 'Shin Megami Tensei: Devil Summoner 2 - Raidou Kuzunoha vs. King Abaddon', 'PS2', '2008', 'Role-Playing',
	'Atlus', '0', '0', '0.17', '0', '0.17');
INSERT INTO videogames.vgsalestest
VALUES (
	'8603', '.hack//G.U. Vol.2//Reminisce', 'PS2', '2006', 'Role-Playing',
	'Namco Bandai Games', '0', '0', '0.16', '0', '0.16');
INSERT INTO videogames.vgsalestest
VALUES (
	'8740', 'Dragon Ball Z: Harukanaru Densetsu', 'DS', '2007', 'Role-Playing',
	'Namco Bandai Games', '0', '0', '0.15', '0', '0.15');
INSERT INTO videogames.vgsalestest
VALUES (
	'9029', 'Super Robot Taisen OG Saga: Endless Frontier', 'DS', '2008', 'Role-Playing',
	'Namco Bandai Games', '0', '0', '0.14', '0', '0.14');
INSERT INTO videogames.vgsalestest
VALUES (
	'9229', 'Yu-Gi-Oh! Nightmare Troubadour', 'DS', '2005', 'Action',
	'Konami Digital Entertainment', '0', '0.04', '0.10', '0', '0.14');
INSERT INTO videogames.vgsalestest
VALUES (
	'9233', 'Ape Escape Academy', 'PSP', '2004', 'Misc',
	'Sony Computer Entertainment', '0', '0', '0.13', '0', '0.13');
INSERT INTO videogames.vgsalestest
VALUES (
	'9455', 'Eternal Poison', 'PS2', '2008', 'Role-Playing',
	'Banpresto', '0', '0', '0.13', '0', '0.13');
INSERT INTO videogames.vgsalestest
VALUES (
	'9478', 'Harvest Moon DS', 'DS', '2005', 'Simulation',
	'Rising Star Games', '0', '0', '0.13', '0', '0.13');
INSERT INTO videogames.vgsalestest
VALUES (
	'9713', 'Wild ARMs 5', 'PS2', '2006', 'Role-Playing',
	'505 Games', '0', '0', '0.12', '0', '0.12');
INSERT INTO videogames.vgsalestest
VALUES (
	'10206', 'Go! Sudoku', 'PSP', '2005', 'Puzzle',
	'Sony Computer Entertainment', '0', '0', '0.11', '0', '0.11');
INSERT INTO videogames.vgsalestest
VALUES (
	'10351', 'Mega Man Battle Network 5: Double Team DS', 'DS', '2005', 'Role-Playing',
	'Capcom', '0', '0', '0.11', '0', '0.11');
INSERT INTO videogames.vgsalestest
VALUES (
	'10665', 'Harvest Moon DS Cute', 'DS', '2005', 'Simulation',
	'Marvelous INteractive', '0', '0', '0.10', '0', '0.10');
INSERT INTO videogames.vgsalestest
VALUES (
	'10666', 'Bleach: Dark Souls', 'DS', '2007', 'Fighting',
	'Sega', '0', '0', '0.10', '0', '0.10');
INSERT INTO videogames.vgsalestest
VALUES (
	'10921', 'Puyo Pop Fever', 'DS', '2004', 'Puzzle',
	'Ignition Entertainment', '0', '0', '0.09', '0', '0.09');
INSERT INTO videogames.vgsalestest
VALUES (
	'11395', 'PoPoLoCrois', 'PSP', '2005', 'Role-Playing',
	'Ignition Entertainment', '0', '0', '0.08', '0', '0.08');
INSERT INTO videogames.vgsalestest
VALUES (
	'11421', 'Pro Evolution Soccer 2008', 'DS', '2007', 'Sports',
	'Konami Digital Entertainment', '0', '0', '0.08', '0', '0.08');
INSERT INTO videogames.vgsalestest
VALUES (
	'12011', 'Point Blank DS', 'DS', '2006', 'Shooter',
	'Atari', '0', '0', '0.07', '0', '0.07');
INSERT INTO videogames.vgsalestest
VALUES (
	'12298', 'Naruto: Ultimate Ninja Heroes', 'PSP', '2006', 'Fighting',
	'Namco Bandai Games', '0', '0', '0.06', '0', '0.06');
INSERT INTO videogames.vgsalestest
VALUES (
	'12321', 'Fishing Master', 'Wii', '2007', 'Sports',
	'Konami Digital Entertainment', '0', '0', '0.06', '0', '0.06');
INSERT INTO videogames.vgsalestest
VALUES (
	'12618', 'Raw Danger!', 'PS2', '2006', 'Action',
	'505 Games', '0', '0', '0.06', '0', '0.06');
INSERT INTO videogames.vgsalestest
VALUES (
	'12771', 'Dance Dance Revolution: Mario Mix', 'GC', '2005', 'Simulation',
	'Konami Digital Entertainment', '0', '0', '0.05', '0', '0.05');
INSERT INTO videogames.vgsalestest
VALUES (
	'12952', 'Growlanser: Heritage of War', 'PS2', '2006', 'Role-Playing',
	'Rising Star Games', '0', '0', '0.05', '0', '0.05');
INSERT INTO videogames.vgsalestest
VALUES (
	'13262', 'Ultimate Ghosts ''n Goblins', 'PSP', '2006', 'Platform',
	'Capcom', '0', '0', '0.05', '0', '0.05');
INSERT INTO videogames.vgsalestest
VALUES (
	'13319', 'Naruto: Uzumaki Chronicles 2', 'PS2', '2006', 'Action',
	'Namco Bandai Games', '0', '0', '0.05', '0', '0.05');
INSERT INTO videogames.vgsalestest
VALUES (
	'13410', 'Brave Story: New Traveller', 'PSP', '2006', 'Role-Playing',
	'Sony Computer Entartainment', '0', '0', '0.05', '0', '0.05');
INSERT INTO videogames.vgsalestest
VALUES (
	'13465', 'Mana Khemia: Alchemists of Al-Revis', 'PS2', '2007', 'Role-Playing',
	'Nippon Ichi Software', '0', '0', '0.04', '0', '0.04');
INSERT INTO videogames.vgsalestest
VALUES (
	'13770', 'Atelier Iris 3: Grand Phantasm', 'PS2', '2006', 'Role-Playing',
	'Tecmo Koei', '0', '0', '0.04', '0', '0.04');
INSERT INTO videogames.vgsalestest
VALUES (
	'13827', 'Draglade', 'DS', '2007', 'Fighting',
	'505 Games', '0', '0', '0.04', '0', '0.04');
INSERT INTO videogames.vgsalestest
VALUES (
	'13899', 'Dynasty Warriors Vol. 2', 'PSP', '2006', 'Action',
	'Tecmo Koei', '0', '0', '0.04', '0', '0.04');
INSERT INTO videogames.vgsalestest
VALUES (
	'13948', 'Magical Starsign', 'DS', '2006', 'Role-Playing',
	'Nintendo', '0', '0', '0.04', '0', '0.04');
INSERT INTO videogames.vgsalestest
VALUES (
	'14010', 'Enchanted Arms', 'PS3', '2007', 'Role-Playing',
	'Ubisoft', '0', '0', '0.04', '0', '0.04');
INSERT INTO videogames.vgsalestest
VALUES (
	'14209', 'Super Dodgeball Brawlers', 'DS', '2008', 'Sports',
	'Arc System Works', '0', '0', '0.03', '0', '0.03');
INSERT INTO videogames.vgsalestest
VALUES (
	'14214', 'Metal Gear Solid: The Essential Collection', 'PS2', '2007', 'Adventure',
	'Konami Digital Entertainment', '0', '0', '0.03', '0', '0.03');
INSERT INTO videogames.vgsalestest
VALUES (
	'14270', 'River King: Mystic Valley', 'DS', '2007', 'Sports',
	'Rising Star Games', '0', '0', '0.03', '0', '0.03');
INSERT INTO videogames.vgsalestest
VALUES (
	'14340', 'My Pet Shop', 'DS', '2008', 'Simulation',
	'Square Enix', '0', '0', '0.03', '0', '0.03');
INSERT INTO videogames.vgsalestest
VALUES (
	'14490', 'Lux-Pain', 'DS', '2008', 'Adventure',
	'Rising Star Games', '0', '0', '0.03', '0', '0.03');
INSERT INTO videogames.vgsalestest
VALUES (
	'14834', 'Pop Cutie! Street Fashion Simulation', 'DS', '2008', 'Simulation',
	'Tecmo Koei', '0', '0', '0.03', '0', '0.03');
INSERT INTO videogames.vgsalestest
VALUES (
	'14937', 'Battlefield 2: Modern Combat', 'PS2', '2005', 'Shooter',
	'Electronic Arts', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'14951', 'Virtua Tennis: World Tour', 'PSP', '2005', 'Sports',
	'Sega', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'15098', 'Enchanted Arms', 'X360', '2006', 'Role-Playing',
	'Ubisoft', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'15114', 'Namco Museum Battle Collection', 'PSP', '2005', 'Misc',
	'Namco Bandai Games', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'15160', 'Warriors of the Lost Empire', 'PSP', '2007', 'Role-Playing',
	'Mercury Games', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'15477', 'Yu-Gi-Oh! 5D''s Wheelie Breakers', 'Wii', '2009', 'Racing',
	'Konami Digital Entertainment', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'15552', 'Yu-Gi-Oh! GX: The Beginning of Destiny', 'PS2', '2007', 'Strategy',
	'Konami Digital Entertainment', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'15600', 'The King of Fighters Collection: The Orochi Saga', 'PS2', '2006', 'Fighting',
	'Ignition ENtertainment', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'15626', 'Touch Detective', 'DS', '2006', 'Adventure',
	'505 Games', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'15784', 'Namco Museum 50th Anniversary', 'PS2', '2005', 'Misc',
	'Namco Bandai Games', '0', '0', '0.02', '0', '0.02');
INSERT INTO videogames.vgsalestest
VALUES (
	'15993', 'Bomberman', 'PSP', '2006', 'Puzzle',
	'Konami Digital Entertainment', '0', '0', '0.01', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16024', 'Rengoku II: The Stairway to H.E.A.V.E.N.', 'PSP', '2006', 'Action',
	'Konami Digital Entertainment', '0', '0', '0.01', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16055', 'Samurai Shodown Anthology', 'PS2', '2008', 'Fighting',
	'Ignition Entertainment', '0', '0', '0.01', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16152', 'SoulCalibur Legends', 'Wii', '2007', 'Action',
	'Namco Bandai Games', '0', '0', '0.01', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16185', 'Fatal Fury: Battle Archives Volume 2', 'PS2', '2007', 'Fighting',
	'SNK Playmore', '0', '0', '0.01', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16281', 'Fatal Fury: Battle Archives Volume 1', 'PS2', '2006', 'Fighting',
	'Ignition Entertainment', '0', '0', '0.01', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16322', 'Jam Sessions: Sing and Play Guitar', 'DS', '2007', 'Misc',
	'Ubisoft', '0', '0', '0.01', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16326', 'RalliSport Challenge', 'XB', '2002', 'Racing',
	'Microsoft Game Studios', '0', '0', '0.01', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16332', 'Rondo of Swords', 'DS', '2007', 'Role-Playing',
	'Success', '0', '0', '0.01', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16414', 'The Godfather', 'X360', '2006', 'Action',
	'Electronic Arts', '0', '0', '0.01', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16466', 'Help Wanted: 50 Wacky Jobs', 'Wii', '2008', 'Simulation',
	'Hudson Soft', '0', '0', '0.01', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16515', 'National Geographic Panda', 'DS', '2008', 'Simulation',
	'Ubisoft', '0', '0', '0.01', '0', '0.01');
INSERT INTO videogames.vgsalestest
VALUES (
	'16545', 'Imagine Figure Skater', 'DS', '2007', 'Sports',
	'Ubisoft', '0', '0', '0.01', '0', '0.01');

	--Transform the datatypes to intended datatypes
ALTER TABLE videogames.vgsalestest
ALTER COLUMN
	rank smallint;
ALTER TABLE videogames.vgsalestest
ALTER COLUMN
	name nvarchar(150);
ALTER TABLE videogames.vgsalestest
ALTER COLUMN
	platform varchar(50);
ALTER TABLE videogames.vgsalestest
ALTER COLUMN
	year smallint;
ALTER TABLE videogames.vgsalestest
ALTER COLUMN
	genre nvarchar(50);
ALTER TABLE videogames.vgsalestest
ALTER COLUMN
	publisher nvarchar(50);
ALTER TABLE videogames.vgsalestest
ALTER COLUMN
	na_sales decimal(7,2);
ALTER TABLE videogames.vgsalestest
ALTER COLUMN
	eu_sales decimal(7,2);
ALTER TABLE videogames.vgsalestest
ALTER COLUMN
	jp_sales decimal(7,2);
ALTER TABLE videogames.vgsalestest
ALTER COLUMN
	other_sales decimal(7,2);
ALTER TABLE videogames.vgsalestest
ALTER COLUMN
	global_sales decimal(7,2);

--Add column for console parent company to increase analytical capabilities
ALTER TABLE videogames.vgsalestest
ADD console_company nvarchar(50);

--Check list of distinct platforms
SELECT DISTINCT platform
FROM videogames.vgsalestest
ORDER BY platform ASC;

--Update values into console_company based on platform column
--by using CASE statement
UPDATE videogames.vgsalestest
	SET console_company =
		CASE platform
			WHEN '2600' THEN 'Atari'
			WHEN '3DO' THEN 'The 3DO Company'
			WHEN '3DS' THEN 'Nintendo'
			WHEN 'DC' THEN 'Sega'
			WHEN 'DS' THEN 'Nintendo'
			WHEN 'GB' THEN 'Nintendo'
			WHEN 'GBA' THEN 'Nintendo'
			WHEN 'GC' THEN 'Nintendo'
			WHEN 'GEN' THEN 'Sega'
			WHEN 'GG' THEN 'Sega'
			WHEN 'N64' THEN 'Nintendo'
			WHEN 'NES' THEN 'Nintendo'
			WHEN 'NG' THEN 'SNK Corporation'
			WHEN 'PC' THEN 'Computer'
			WHEN 'PCFX' THEN 'NEC'
			WHEN 'PS' THEN 'Sony'
			WHEN 'PS2' THEN 'Sony'
			WHEN 'PS3' THEN 'Sony'
			WHEN 'PS4' THEN 'Sony'
			WHEN 'PSP' THEN 'Sony'
			WHEN 'PSV' THEN 'Sony'
			WHEN 'SAT' THEN 'Sega'
			WHEN 'SCD' THEN 'Sega'
			WHEN 'SNES' THEN 'Nintendo'
			WHEN 'TG16' THEN 'NEC'
			WHEN 'Wii' THEN 'Nintendo'
			WHEN 'WiiU' THEN 'Nintendo'
			WHEN 'WS' THEN 'Bandai'
			WHEN 'X360' THEN 'Microsoft'
			WHEN 'XB' THEN 'Microsoft'
			WHEN 'XOne' THEN 'Microsoft'
		END
	FROM videogames.vgsalestest
	;

--Delete records before 1980 and after year 2015 due to incomplete data
DELETE FROM videogames.vgsalestest
WHERE year > 2015
OR year < 1980
;

--Create table to store platform information (insertion via CSV in SSIS)
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES
		WHERE TABLE_NAME = 'platform_details'
		AND TABLE_SCHEMA = 'videogames')
	DROP TABLE videogames.platform_details;
GO
CREATE TABLE videogames.platform_details(
	platform nvarchar(50),
	platform_name nvarchar(100),
	platform_img_url nvarchar(100)
	);

--Test data set
SELECT * FROM videogames.platform_details;

--Change data types of columns in platform_details table
ALTER TABLE videogames.platform_details
ALTER COLUMN platform varchar(50);

ALTER TABLE videogames.platform_details
ALTER COLUMN platform_name nvarchar(100);

ALTER TABLE videogames.platform_details
ALTER COLUMN platform_img_url nvarchar(100);

--Create final dataset with accurate global_sales column as VIEW
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.VIEWS
			WHERE TABLE_NAME = 'vgsalesclean'
			AND TABLE_SCHEMA = 'videogames')
	DROP VIEW videogames.vgsalesclean;
GO
CREATE VIEW videogames.vgsalesclean AS
	SELECT sales.rank, sales.name, sales.platform, platform.platform_name, platform.platform_img_url,
	sales.console_company, sales.year, sales.genre, sales.publisher,
	sales.na_sales, sales.eu_sales, sales.jp_sales, sales.other_sales,
	sales.na_sales + sales.eu_sales + sales.jp_sales + sales.other_sales AS global_sales
	FROM videogames.vgsalestest AS sales
	JOIN videogames.platform_details AS platform
	ON sales.platform = platform.platform
	;

--Test data set
SELECT * FROM videogames.vgsalesclean;

--Data Exploration

--Top 10 global sales
SELECT TOP 10 rank, name, platform, console_company, year, global_sales
FROM videogames.vgsalesclean
ORDER BY global_sales DESC
;

--Top 10 NA region sales
SELECT TOP 10 rank, name, platform, console_company, year, na_sales
FROM videogames.vgsalesclean
ORDER BY na_sales DESC
;

--Top 10 EU region sales
SELECT TOP 10 rank, name, platform, console_company, year, eu_sales
FROM videogames.vgsalesclean
ORDER BY eu_sales DESC
;

--Top 10 JP region sales
SELECT TOP 10 rank, name, platform, console_company, year, jp_sales
FROM videogames.vgsalesclean
ORDER BY jp_sales DESC
;

--Top 10 Other region sales
SELECT TOP 10 rank, name, platform, console_company, year, other_sales
FROM videogames.vgsalesclean
ORDER BY other_sales DESC
;

--Top 10 selling NES games
SELECT TOP 10 rank, name, year, genre, publisher, global_sales
FROM videogames.vgsalesclean
WHERE platform = 'NES'
ORDER BY global_sales DESC
;

--Top 10 selling GEN games
SELECT TOP 10 rank, name, year, genre, publisher, global_sales
FROM videogames.vgsalesclean
WHERE platform = 'GEN'
ORDER BY global_sales DESC
;

--Top 10 selling PS2 games
SELECT TOP 10 rank, name, year, genre, publisher, global_sales
FROM videogames.vgsalesclean
WHERE platform = 'PS2'
ORDER BY global_sales DESC
;

--Top 10 selling XB games
SELECT TOP 10 rank, name, year, genre, publisher, global_sales
FROM videogames.vgsalesclean
WHERE platform = 'XB'
ORDER BY global_sales DESC
;

--Top 10 selling GC games
SELECT TOP 10 rank, name, year, genre, publisher, global_sales
FROM videogames.vgsalesclean
WHERE platform = 'GC'
ORDER BY global_sales DESC
;

--Top 10 selling PC games
SELECT TOP 10 rank, name, year, genre, publisher, global_sales
FROM videogames.vgsalesclean
WHERE platform = 'PC'
ORDER BY global_sales DESC
;

--Average sales amount by publisher (global)
SELECT publisher, AVG(global_sales) AS average_sales
FROM videogames.vgsalesclean
GROUP BY publisher
ORDER BY average_sales DESC
;

--Average sales amount by publisher (na)
SELECT publisher, AVG(na_sales) AS average_sales
FROM videogames.vgsalesclean
GROUP BY publisher
ORDER BY average_sales DESC
;

--Average sales amount by publisher (eu)
SELECT publisher, AVG(eu_sales) AS average_sales
FROM videogames.vgsalesclean
GROUP BY publisher
ORDER BY average_sales DESC
;

--Average sales amount by publisher (jp)
SELECT publisher, AVG(jp_sales) AS average_sales
FROM videogames.vgsalesclean
GROUP BY publisher
ORDER BY average_sales DESC
;

--Average sales amount by publisher (other)
SELECT publisher, AVG(other_sales) AS average_sales
FROM videogames.vgsalesclean
GROUP BY publisher
ORDER BY average_sales DESC
;

--Total yearly global sales per platform
SELECT platform, platform_name, year, SUM(global_sales) AS total_global_sales
FROM videogames.vgsalesclean
GROUP BY year, platform, platform_name
;

--Total combined yearly global sales, all games
SELECT year, SUM(global_sales) AS total_global_sales
FROM videogames.vgsalesclean
GROUP BY year
ORDER BY year ASC
;

--Publisher total global sales by year
SELECT publisher, year, SUM(global_sales) AS total_global_sales
FROM videogames.vgsalesclean
GROUP BY year, publisher
ORDER BY year ASC
;

--Highest selling publisher (global sales) each year
WITH total_publisher_annual_sales AS(
	SELECT publisher, year, SUM(global_sales) AS total_global_sales,
	ROW_NUMBER() OVER (PARTITION BY year ORDER BY SUM(global_sales) DESC) AS rownumber
	FROM videogames.vgsalesclean
	GROUP BY year, publisher
	)
SELECT publisher, year, total_global_sales
FROM total_publisher_annual_sales
WHERE rownumber = 1
ORDER BY year ASC
;

--Highest selling genre (global sales) each year
WITH total_genre_annual_sales AS(
	SELECT genre, year, SUM(global_sales) AS total_global_sales,
	ROW_NUMBER() OVER (PARTITION BY year ORDER BY SUM(global_sales) DESC) AS rownumber
	FROM videogames.vgsalesclean
	GROUP BY year, genre
	)
SELECT genre, year, total_global_sales
FROM total_genre_annual_sales
WHERE rownumber = 1
ORDER BY year ASC
;

--Highest selling platform (global sales) each year
WITH total_platform_annual_sales AS(
	SELECT platform, year, SUM(global_sales) AS total_global_sales,
	ROW_NUMBER() OVER (PARTITION BY year ORDER BY SUM(global_sales) DESC) AS rownumber
	FROM videogames.vgsalesclean
	GROUP BY year, platform
	)
SELECT platform, year, total_global_sales
FROM total_platform_annual_sales
WHERE rownumber = 1
ORDER BY year ASC
;

--Highest selling console company (global sales) each year
WITH total_console_company_annual_sales AS(
	SELECT console_company, year, SUM(global_sales) AS total_global_sales,
	ROW_NUMBER() OVER (PARTITION BY year ORDER BY SUM(global_sales) DESC) AS rownumber
	FROM videogames.vgsalesclean
	GROUP BY year, console_company
	)
SELECT console_company, year, total_global_sales
FROM total_console_company_annual_sales
WHERE rownumber = 1
ORDER BY year ASC
;

--Total global sales by genre
SELECT genre, SUM(global_sales) AS total_global_sales
FROM videogames.vgsalesclean
GROUP BY genre
ORDER BY total_global_sales DESC
;

--Total global sales by publisher
SELECT publisher, SUM(global_sales) AS total_global_sales
FROM videogames.vgsalesclean
GROUP BY publisher
ORDER BY total_global_sales DESC
;

--Total global sales by platform
SELECT platform, platform_name, SUM(global_sales) AS total_global_sales
FROM videogames.vgsalesclean
GROUP BY platform, platform_name
ORDER BY total_global_sales DESC
;

--Total global sales by console_company
SELECT console_company, SUM(global_sales) AS total_global_sales
FROM videogames.vgsalesclean
GROUP BY console_company
ORDER BY total_global_sales DESC
;

--Percentage of na_sales to global
SELECT name, platform, na_sales, global_sales,
ROUND((na_sales/NULLIF(global_sales,0))*100, 2) AS na_sales_percentage
FROM videogames.vgsalesclean
ORDER BY global_sales DESC
;

--Percentage of eu_sales to global
SELECT name, platform, eu_sales, global_sales,
ROUND((eu_sales/NULLIF(global_sales,0))*100, 2) AS eu_sales_percentage
FROM videogames.vgsalesclean
ORDER BY global_sales DESC
;

--Percentage of jp_sales to global
SELECT name, platform, jp_sales, global_sales,
ROUND((jp_sales/NULLIF(global_sales,0))*100, 2) AS jp_sales_percentage
FROM videogames.vgsalesclean
ORDER BY global_sales DESC
;

--Percentage of other_sales to global
SELECT name, platform, other_sales, global_sales,
ROUND((other_sales/NULLIF(global_sales,0))*100, 2) AS other_sales_percentage
FROM videogames.vgsalesclean
ORDER BY global_sales DESC
;

--Total console company global sales with percentage of overall global total
--using variable for combined global sales total of ALL games
DECLARE @OverallGlobalSalesTotal AS decimal(7,2)
SELECT @OverallGlobalSalesTotal = SUM(global_sales) OVER ()
FROM videogames.vgsalesclean
SELECT console_company, SUM(global_sales) AS lifetime_global_sales,
@OverallGlobalSalesTotal AS lifetime_sales_all_games,
ROUND((SUM(global_sales)/@OverallGlobalSalesTotal)*100,2) AS percentage_of_global_total
FROM videogames.vgsalesclean
GROUP BY console_company
ORDER BY lifetime_global_sales DESC
;

--Total platform global sales with percentage of overall global total
--using variable for combined global sales total of ALL games
DECLARE @OverallGlobalSalesTotal AS decimal(7,2)
SELECT @OverallGlobalSalesTotal = SUM(global_sales) OVER ()
FROM videogames.vgsalesclean
SELECT platform, platform_name, SUM(global_sales) AS lifetime_global_sales,
@OverallGlobalSalesTotal AS lifetime_sales_all_games,
ROUND((SUM(global_sales)/@OverallGlobalSalesTotal)*100,2) AS percentage_of_global_total
FROM videogames.vgsalesclean
GROUP BY platform, platform_name
ORDER BY lifetime_global_sales DESC
;