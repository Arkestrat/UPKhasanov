USE [UPKhasanov]
GO
/****** Object:  Table [dbo].[Adds]    Script Date: 03.12.2024 12:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adds](
	[AddID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[CategoryID] [int] NOT NULL,
	[Title] [nchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Adds] PRIMARY KEY CLUSTERED 
(
	[AddID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 03.12.2024 12:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nchar](50) NOT NULL,
	[Description] [nchar](255) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 03.12.2024 12:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[AddID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[CommentText] [nchar](100) NOT NULL,
	[CreatedAt] [date] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 03.12.2024 12:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Buyer] [int] NOT NULL,
	[Saller] [int] NOT NULL,
	[AddID] [int] NOT NULL,
	[DateOfOrder] [date] NOT NULL,
	[Status] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 03.12.2024 12:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nchar](50) NOT NULL,
	[Password] [nchar](256) NOT NULL,
	[Email] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adds] ON 

INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (0, 1, 1, N'w211                                                                                                ', N'sdadas', CAST(111 AS Decimal(18, 0)), N'Актуально')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (101, 1, 1, N'iPhone 13 Pro Max                                                                                   ', N'iPhone 13 Pro Max, 128GB, great condition, unlocked', CAST(999 AS Decimal(18, 0)), N'Активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (102, 2, 3, N'Women’s Winter Jacket                                                                               ', N'Stylish and warm winter jacket, size M', CAST(50 AS Decimal(18, 0)), N'Активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (103, 1, 2, N'Modern Sofa                                                                                         ', N'Comfortable and stylish sofa, grey, 3-seat', CAST(350 AS Decimal(18, 0)), N'Активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (104, 3, 5, N'2-Bedroom Apartment for Rent                                                                        ', N'Cozy apartment in the city center, fully furnished', CAST(1200 AS Decimal(18, 0)), N'Не активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (105, 4, 4, N'2015 Honda Civic                                                                                    ', N'2015 Honda Civic, 80,000 miles, in great condition', CAST(9500 AS Decimal(18, 0)), N'Не активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (106, 5, 1, N'Samsung Galaxy S21                                                                                  ', N'New Samsung Galaxy S21, 128GB, sealed box', CAST(799 AS Decimal(18, 0)), N'Активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (107, 6, 3, N'Men’s Leather Jacket                                                                                ', N'Genuine leather jacket, size L, excellent condition', CAST(120 AS Decimal(18, 0)), N'Не активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (108, 7, 2, N'Office Desk                                                                                         ', N'Wooden office desk, excellent condition, brown color', CAST(150 AS Decimal(18, 0)), N'Активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (109, 8, 9, N'Harry Potter Book Set                                                                               ', N'Complete set of Harry Potter books, hardcover', CAST(120 AS Decimal(18, 0)), N'Не активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (110, 9, 10, N'Yoga Mat & Accessories                                                                              ', N'High-quality yoga mat, includes straps and blocks', CAST(40 AS Decimal(18, 0)), N'Активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (111, 10, 7, N'Home Cleaning Services                                                                              ', N'Professional cleaning for homes, available weekly', CAST(50 AS Decimal(18, 0)), N'Не активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (112, 11, 6, N'Graphic Designer                                                                                    ', N'Experienced graphic designer offering freelance work', CAST(231 AS Decimal(18, 0)), N'Не активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (113, 12, 8, N'Persian Cat for Sale                                                                                ', N'6-month-old Persian cat, fully vaccinated', CAST(300 AS Decimal(18, 0)), N'Не активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (114, 13, 5, N'Land for Sale in Suburbs                                                                            ', N'5000 sqft of land, great for building or farming', CAST(25000 AS Decimal(18, 0)), N'Не активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (115, 14, 1, N'MacBook Pro 16"                                                                                     ', N'2020 MacBook Pro, i7, 16GB RAM, 512GB SSD', CAST(2200 AS Decimal(18, 0)), N'Активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (116, 15, 3, N'Kid’s Winter Boots                                                                                  ', N'Warm, waterproof winter boots for kids, size 32', CAST(30 AS Decimal(18, 0)), N'Не активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (117, 16, 10, N'Mountain Bike                                                                                       ', N'Durable mountain bike, barely used, size M', CAST(400 AS Decimal(18, 0)), N'Не активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (118, 17, 3, N'Baby Clothes Bundle                                                                                 ', N'Bundle of baby clothes, sizes 0-6 months', CAST(25 AS Decimal(18, 0)), N'Активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (119, 18, 12, N'Massage Chair                                                                                       ', N'High-quality massage chair, almost new', CAST(500 AS Decimal(18, 0)), N'Активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (120, 19, 14, N'Vintage Painting                                                                                    ', N'Vintage oil painting, framed, great condition', CAST(800 AS Decimal(18, 0)), N'Активен')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (121, NULL, 1, N'asdsa                                                                                               ', N'adsads', CAST(3112 AS Decimal(18, 0)), N'Актуально')
INSERT [dbo].[Adds] ([AddID], [UserID], [CategoryID], [Title], [Description], [Price], [Status]) VALUES (125, NULL, 21, N'saddsa                                                                                              ', N'dsasdasda', CAST(12232 AS Decimal(18, 0)), N'Неактуально')
SET IDENTITY_INSERT [dbo].[Adds] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (1, N'Car                                               ', N'All kinds of electronic devices, gadgets, and accessories.                                                                                                                                                                                                     ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (2, N'Work                                              ', N'Furniture for home, office, and garden.                                                                                                                                                                                                                        ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (3, N'Technique                                         ', N'Men''s, women''s, and kids'' clothing.                                                                                                                                                                                                                            ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (4, N'Vehicles                                          ', N'Cars, motorcycles, bicycles, and other vehicles.                                                                                                                                                                                                               ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (5, N'Real Estate                                       ', N'Houses, apartments, land, and commercial property for sale or rent.                                                                                                                                                                                            ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (6, N'Jobs                                              ', N'Job listings for various industries and roles.                                                                                                                                                                                                                 ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (7, N'Services                                          ', N'Services offered such as cleaning, repair, tutoring, etc.                                                                                                                                                                                                      ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (8, N'Pets                                              ', N'Pets for sale, adoption, or pet-related products.                                                                                                                                                                                                              ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (9, N'Books                                             ', N'Books for sale or exchange, including fiction, non-fiction, educational, etc.                                                                                                                                                                                  ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (10, N'Sports & Outdoors                                 ', N'Sports equipment, outdoor gear, and fitness equipment.                                                                                                                                                                                                         ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (11, N'Food & Beverages                                  ', N'Food and drink products for sale or exchange.                                                                                                                                                                                                                  ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (12, N'Health & Beauty                                   ', N'Beauty products, wellness items, and healthcare equipment.                                                                                                                                                                                                     ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (13, N'Music & Instruments                               ', N'Musical instruments, equipment, and accessories.                                                                                                                                                                                                               ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (14, N'Art & Collectibles                                ', N'Artwork, antiques, and collectibles for sale or auction.                                                                                                                                                                                                       ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (15, N'Home Appliances                                   ', N'Appliances for home use, such as refrigerators, washing machines, etc.                                                                                                                                                                                         ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (16, N'Toys & Games                                      ', N'Toys, games, and other entertainment products for children and adults.                                                                                                                                                                                         ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (17, N'Baby & Kids                                       ', N'Baby products, kids'' furniture, clothing, and accessories.                                                                                                                                                                                                     ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (18, N'Tickets                                           ', N'Tickets for concerts, events, sports matches, and shows.                                                                                                                                                                                                       ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (21, N'Abdurasul                                         ', N'хороший мальчик                                                                                                                                                                                                                                                ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (26, N'dsadsa                                            ', N'dsadas                                                                                                                                                                                                                                                         ')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (1, 101, 2, N'Is this iPhone unlocked and in good condition?                                                      ', CAST(N'2024-11-02' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (2, 102, 3, N'Is the jacket available in size L?                                                                  ', CAST(N'2024-11-05' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (3, 103, 4, N'How old is the sofa and does it have any damage?                                                    ', CAST(N'2024-11-06' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (4, 104, 5, N'Can I schedule a viewing for the apartment this weekend?                                            ', CAST(N'2024-11-11' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (5, 105, 6, N'Does the car have a clean title?                                                                    ', CAST(N'2024-11-16' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (6, 106, 7, N'Is the Galaxy S21 still available for purchase?                                                     ', CAST(N'2024-11-17' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (7, 107, 8, N'Is the leather jacket real leather?                                                                 ', CAST(N'2024-11-18' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (8, 108, 9, N'Can I pick up the office desk today?                                                                ', CAST(N'2024-11-18' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (9, 109, 11, N'Are the Harry Potter books in good condition?                                                       ', CAST(N'2024-11-19' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (10, 110, 11, N'Is the yoga mat made of eco-friendly materials?                                                     ', CAST(N'2024-11-19' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (11, 111, 12, N'Can you provide more details about the cleaning services?                                           ', CAST(N'2024-11-20' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (12, 112, 13, N'How many years of experience do you have as a designer?                                             ', CAST(N'2024-11-20' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (13, 113, 14, N'Is the Persian cat vaccinated and dewormed?                                                         ', CAST(N'2024-11-21' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (14, 114, 15, N'Can you send pictures of the land?                                                                  ', CAST(N'2024-11-22' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (15, 115, 16, N'Can I get a better price for the MacBook Pro?                                                       ', CAST(N'2024-11-23' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (16, 116, 17, N'Are the winter boots new or used?                                                                   ', CAST(N'2024-11-23' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (17, 117, 18, N'Is the mountain bike available for immediate pickup?                                                ', CAST(N'2024-11-23' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (18, 118, 19, N'Is the baby clothes bundle for boys or girls?                                                       ', CAST(N'2024-11-24' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (19, 119, 20, N'How many hours of massage does the chair offer?                                                     ', CAST(N'2024-11-24' AS Date))
INSERT [dbo].[Comments] ([CommentID], [AddID], [UserID], [CommentText], [CreatedAt]) VALUES (20, 120, 1, N'Can you provide a certificate of authenticity for the painting?                                     ', CAST(N'2024-11-25' AS Date))
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (0, N'mm3a11                                            ', N'123                                                                                                                                                                                                                                                             ', N'dsdasasd                                                                                            ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (1, N'john_doe                                          ', N'password123                                                                                                                                                                                                                                                     ', N'john.doe@example.com                                                                                ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (2, N'jane_smith                                        ', N'qwerty2024                                                                                                                                                                                                                                                      ', N'jane.smith@email.com                                                                                ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (3, N'alice_brown                                       ', N'mypass456                                                                                                                                                                                                                                                       ', N'alice.brown@domain.com                                                                              ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (4, N'bob_white                                         ', N'123abcSecure                                                                                                                                                                                                                                                    ', N'bob.white@mail.com                                                                                  ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (5, N'claire_green                                      ', N'supersecret789                                                                                                                                                                                                                                                  ', N'claire.green@web.com                                                                                ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (6, N'mark_jones                                        ', N'passw0rd!                                                                                                                                                                                                                                                       ', N'mark.jones@company.com                                                                              ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (7, N'lucy_wilson                                       ', N'letmein123                                                                                                                                                                                                                                                      ', N'lucy.wilson@email.com                                                                               ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (8, N'oscar_martin                                      ', N'1securePassword                                                                                                                                                                                                                                                 ', N'oscar.martin@domain.com                                                                             ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (9, N'emma_white                                        ', N'whitepass2024                                                                                                                                                                                                                                                   ', N'emma.white@service.com                                                                              ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (10, N'steve_king                                        ', N'kingofpasswords                                                                                                                                                                                                                                                 ', N'steve.king@company.com                                                                              ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (11, N'mia_baker                                         ', N'baker@123                                                                                                                                                                                                                                                       ', N'mia.baker@org.com                                                                                   ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (12, N'kevin_adams                                       ', N'qwertyKevin2024                                                                                                                                                                                                                                                 ', N'kevin.adams@work.com                                                                                ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (13, N'sophie_davis                                      ', N'davis@1234                                                                                                                                                                                                                                                      ', N'sophie.davis@company.com                                                                            ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (14, N'charles_lee                                       ', N'secureCharles78                                                                                                                                                                                                                                                 ', N'charles.lee@mail.com                                                                                ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (15, N'diana_smith                                       ', N'Diana$123                                                                                                                                                                                                                                                       ', N'diana.smith@service.com                                                                             ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (16, N'nathan_wood                                       ', N'NathanWood2024                                                                                                                                                                                                                                                  ', N'nathan.wood@domain.com                                                                              ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (17, N'zoe_martinez                                      ', N'zmart@2024                                                                                                                                                                                                                                                      ', N'zoe.martinez@email.com                                                                              ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (18, N'matthew_clark                                     ', N'matthews4ever                                                                                                                                                                                                                                                   ', N'matthew.clark@company.com                                                                           ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (19, N'lily_scott                                        ', N'lilypass2024                                                                                                                                                                                                                                                    ', N'lily.scott@domain.com                                                                               ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (20, N'george_harris                                     ', N'harris321                                                                                                                                                                                                                                                       ', N'george.harris@web.com                                                                               ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (21, N'ark                                               ', N'123                                                                                                                                                                                                                                                             ', N'abdurasul.khasanov@gmail.com                                                                        ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (22, N'qwe                                               ', N'123                                                                                                                                                                                                                                                             ', N'dasasdas                                                                                            ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (28, N'adsadsaas                                         ', N'dsaasddsadsa                                                                                                                                                                                                                                                    ', N'dsaasdasd                                                                                           ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (29, N'mmm                                               ', N'123                                                                                                                                                                                                                                                             ', N'mmm@gmail.com                                                                                       ')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Adds]  WITH CHECK ADD  CONSTRAINT [FK_Adds_Categories1] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Adds] CHECK CONSTRAINT [FK_Adds_Categories1]
GO
ALTER TABLE [dbo].[Adds]  WITH CHECK ADD  CONSTRAINT [FK_Adds_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Adds] CHECK CONSTRAINT [FK_Adds_Users]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Adds] FOREIGN KEY([AddID])
REFERENCES [dbo].[Adds] ([AddID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Adds]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users1] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users1]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Adds] FOREIGN KEY([AddID])
REFERENCES [dbo].[Adds] ([AddID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Adds]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([Buyer])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users1] FOREIGN KEY([Saller])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users1]
GO
