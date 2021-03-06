USE [DetskiySad]
GO
/****** Object:  Table [dbo].[Воспитатели]    Script Date: 11.10.2021 15:02:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Воспитатели](
	[EducatorID] [int] NOT NULL,
	[Childgroup] [int] NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Otchestvo] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[Mail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Воспитатели] PRIMARY KEY CLUSTERED 
(
	[EducatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Работники]    Script Date: 11.10.2021 15:02:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Работники](
	[WorkerID] [int] NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Otchestvo] [nvarchar](50) NOT NULL,
	[Job] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](15) NULL,
	[Mail] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Работники] PRIMARY KEY CLUSTERED 
(
	[WorkerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Родители]    Script Date: 11.10.2021 15:02:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Родители](
	[ParentID] [int] NOT NULL,
	[ChildID] [int] NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[Mail] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Родители] PRIMARY KEY CLUSTERED 
(
	[ParentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Список детей]    Script Date: 11.10.2021 15:02:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Список детей](
	[ChildID] [int] NOT NULL,
	[Childgroup] [int] NOT NULL,
	[Lastname] [nchar](50) NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Список детей] PRIMARY KEY CLUSTERED 
(
	[ChildID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Воспитатели] ([EducatorID], [Childgroup], [Lastname], [Name], [Otchestvo], [Phone], [Mail]) VALUES (1, 1, N'Филинова', N'Дарья', N'Игоревна', N'8(925)688-67 89', N'filinovaddd@gmail.com')
INSERT [dbo].[Воспитатели] ([EducatorID], [Childgroup], [Lastname], [Name], [Otchestvo], [Phone], [Mail]) VALUES (2, 1, N'Королёва', N'Кристина', N'Александровна', N'8(495)223-90 64', N'korololo@gmail.com')
INSERT [dbo].[Воспитатели] ([EducatorID], [Childgroup], [Lastname], [Name], [Otchestvo], [Phone], [Mail]) VALUES (3, 2, N'Иванова', N'Альбина', N'Львовна', N'8(495)357-15 03', N'dadadadada@gmail.com')
INSERT [dbo].[Воспитатели] ([EducatorID], [Childgroup], [Lastname], [Name], [Otchestvo], [Phone], [Mail]) VALUES (4, 2, N'Рожкова', N'Анна', N'Ринатовна', N'8(977)121-34 09', N'rozhkovaa@gmail.com')
GO
INSERT [dbo].[Работники] ([WorkerID], [Lastname], [Name], [Otchestvo], [Job], [Phone], [Mail]) VALUES (1, N'Мальцева', N'Елизавета', N'Константиновна', N'Заведущая', N'8(495)666-23 47', N'malcelizavet@gmal.com')
INSERT [dbo].[Работники] ([WorkerID], [Lastname], [Name], [Otchestvo], [Job], [Phone], [Mail]) VALUES (2, N'Бундоров', N'Александр', N'Александрович', N'Музыкальный руководитель', N'8(999)099-07 59', N'beatb0x4free@mail.com')
INSERT [dbo].[Работники] ([WorkerID], [Lastname], [Name], [Otchestvo], [Job], [Phone], [Mail]) VALUES (3, N'Караскин', N'Владимир', N'Владимирович', N'Главный повар', N'8(977)145-67 89', N'idswqwe@gmail.com')
INSERT [dbo].[Работники] ([WorkerID], [Lastname], [Name], [Otchestvo], [Job], [Phone], [Mail]) VALUES (4, N'Сухов', N'Владислав', N'Сергеевич', N'Повар', N'8(495)343-45 64', N'pochtadlyasada@gmail.com')
INSERT [dbo].[Работники] ([WorkerID], [Lastname], [Name], [Otchestvo], [Job], [Phone], [Mail]) VALUES (5, N'Ханаев', N'Владимир', N'Васильевич', N'Уборщик', N'8(999)049-04 55', N'dfjsfhw@mail.com')
INSERT [dbo].[Работники] ([WorkerID], [Lastname], [Name], [Otchestvo], [Job], [Phone], [Mail]) VALUES (6, N'Гришин', N'Павел', N'Андреевич', N'Охранник', N'8(977)124-04 39', N'gpadata@gmail.com')
INSERT [dbo].[Работники] ([WorkerID], [Lastname], [Name], [Otchestvo], [Job], [Phone], [Mail]) VALUES (7, N'Абобов', N'Кирилл', N'Дмитриевич', N'Охранник', N'8(999)406-40 42', N'bluehair@gmai.com')
INSERT [dbo].[Работники] ([WorkerID], [Lastname], [Name], [Otchestvo], [Job], [Phone], [Mail]) VALUES (8, N'Лисов', N'Констанстин', N'Дмитриевич', N'Охранник', N'8(495)323-33 94', N'iceman34@mail.ru')
GO
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (1, 1, N'Зайцев', N'8(495)678-92 31', N'zaicevv34@gmail.com', N'Ул.Пушкинская, д.7а, кв.46')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (2, 2, N'Зубренко', N'8(905)786-74 53', N'aaaaavitddd@mail.com', N'Ул.Наримановская, д.2, кв.21')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (3, 3, N'Аккулов', N'8(945)304-49 98', N'olzikkorzhik34@gmail.com', N'Проспект Мира, д.7, кв.54')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (4, 4, N'Беляев', N'8(495)988-45 62', N'belllker@mail.ru', N'Ул.Чокморова, д.10 кв.112')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (5, 5, N'Картошкин', N'8(985)348-72 36', N'iceman33@mail.ru', N'Ул.1812 года, д.12, кв.72')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (6, 6, N'Евсеев', N'8(915)101-60 81', N'lyublyuatak@gmail.com', N'Ул.Максима, д.13, кв.13')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (7, 7, N'Мамин', N'8(916)202-61 82', N'mamichhhh@mail.ru', N'Ул.Максима, д.13, кв.17')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (8, 8, N'Короткова', N'8(495)430-90 75', N'sskorottj@gmail.com', N'Ул.Асташковская, д.12, кв.98')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (9, 9, N'Зуйкова', N'8(499)512-23 22', N'curlypelicnnn@gmail.com', N'Ул.Гагарина, д.30, кв.48')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (10, 10, N'Весёлова', N'8(498)342-86 32', N'veselovaa@gmail.com', N'Ул.Мурановская, д.7б, кв.41')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (11, 11, N'Филонова', N'8(965)126-68 36', N'lwnazykina017@gmail.com', N'Новоостанкинская д.12, кв.143')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (12, 12, N'Окошкин', N'8(934)328-42 01', N'oknoogog@gmail.com', N'Ул.Лескова, д.5, кв.12')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (13, 13, N'Чайный', N'8(978)434-21 55', N'mapperteaa@gmail.com', N'mapperteaa@gmail.com')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (14, 14, N'Макаров', N'8(977)600-80 15', N'makarroov@gmail.com', N'Ул.Мурановская, д.7б, кв.98')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (15, 15, N'Романов', N'8(495)576-82 57', N'romanov@mail.com', N'Ул.Пушкинская, д.7а, кв.43')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (16, 16, N'Никитина', N'8(999)462-46 66', N'nikitin@mail.com', N'Ул.Мурановская, д.6., кв.12')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (17, 17, N'Алексеев', N'8(496)364-91 60', N'alexeev@mail.com', N'Ул.Пушкинская, д.7, кв.55')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (18, 18, N'Дарбиев', N'8(797)345-60 46', N'darbbii@mail.com', N'Ул.Асташковская, д.8, кв.36')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (19, 19, N'Кутимова', N'8(988)359-20 56', N'kutimova34@mail.com', N'Ул.Чокморова, д.18а, кв.777')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (20, 20, N'Царицын', N'8(938)571-35 80', N'yakusshhef567@mail.com', N'Ул.АТС, д.3, кв.98')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (21, 21, N'Зуйков', N'8(396)586-72 94', N'zuyykob4@mail.com', N'Ул.Гагарина, д.12, кв.46')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (22, 22, N'Кондратьев', N'8(799)734-46 92', N'kpggjd@mail.com', N'Ул.Лескова, д.7, кв.7')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (23, 23, N'Петров', N'8(476)346-73 68', N'pertrorfr@mail.com', N'Ул.Мурановская, д.8, кв.53')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (24, 24, N'Рябцова', N'8(959)834-32 48', N'proprev@mail.com', N'Проспект Мира, д.11, кв.49')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (25, 25, N'Лавыгина', N'8(489)756-89 34', N'ggdhshhs@mail.com', N'Ул.Прямая, д.2, кв.64')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (26, 26, N'Горошкина', N'8(909)335-43 33', N'goerohgoeroh@mail.com', N'Ул.Пушкинская, д.9, кв.420')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (27, 27, N'Игалкина', N'8(955)739-07 39', N'negalkinasasha@mail.com', N'Ул.1812 года, д.13, кв.90')
INSERT [dbo].[Родители] ([ParentID], [ChildID], [Lastname], [Phone], [Mail], [Address]) VALUES (28, 28, N'Карашев', N'8(540)820-34 83', N'akartash2345@mail.com', N'Ул.Мурановская, д.6, кв.192')
GO
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (1, 1, N'Зайцев                                            ', N'Владислав                                         ', 5, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (2, 1, N'Зубренко                                          ', N'Виталий                                           ', 5, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (3, 1, N'Аккулов                                           ', N'Олжас                                             ', 4, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (4, 1, N'Беляев                                            ', N'Антон                                             ', 5, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (5, 1, N'Картошкин                                         ', N'Александр                                         ', 4, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (6, 1, N'Евсеев                                            ', N'Максим                                            ', 5, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (7, 1, N'Мамин                                             ', N'Никита                                            ', 4, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (8, 1, N'Короткова                                         ', N'Наталья                                           ', 4, N'Женский')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (9, 1, N'Зуйкова                                           ', N'Анна                                              ', 5, N'Женский')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (10, 1, N'Весёлова                                          ', N'Анна                                              ', 4, N'Женский')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (11, 1, N'Филонова                                          ', N'Елена                                             ', 5, N'Женский')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (12, 1, N'Окошкин                                           ', N'Сергей                                            ', 4, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (13, 1, N'Чайный                                            ', N'Роман                                             ', 4, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (14, 1, N'Макаров                                           ', N'Дмитрий                                           ', 5, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (15, 2, N'Романов                                           ', N'Виктор                                            ', 5, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (16, 2, N'Никитина                                          ', N'Алла                                              ', 4, N'Женский')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (17, 2, N'Алексеев                                          ', N'Даниил                                            ', 5, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (18, 2, N'Дарбиев                                           ', N'Даниил                                            ', 5, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (19, 2, N'Кутимова                                          ', N'Лада                                              ', 4, N'Женский')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (20, 2, N'Царицын                                           ', N'Антон                                             ', 4, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (21, 2, N'Зуйков                                            ', N'Виталий                                           ', 5, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (22, 2, N'Кондратьев                                        ', N'Максим                                            ', 5, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (23, 2, N'Петров                                            ', N'Петр                                              ', 4, N'Мужской')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (24, 2, N'Рябцова                                           ', N'Анна                                              ', 4, N'Женский')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (25, 2, N'Лавыгина                                          ', N'Полина                                            ', 4, N'Женский')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (26, 2, N'Горошкина                                         ', N'Василиса                                          ', 5, N'Женский')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (27, 2, N'Игалкина                                          ', N'Александра                                        ', 4, N'Женский')
INSERT [dbo].[Список детей] ([ChildID], [Childgroup], [Lastname], [Name], [Age], [Gender]) VALUES (28, 2, N'Карашев                                           ', N'Сергей                                            ', 5, N'Мужской')
GO
