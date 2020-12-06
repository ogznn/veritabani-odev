USE [master]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[kamyoncu1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[kisi_ad] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[kamyon_markasi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[kamyon_ad] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[teslimatin_gonderilecegi_yer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[sehir1] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[teslimatin_yola_ciktigi_yer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[sehir2] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
insert into kamyoncu1 (kisi_ad) values ('Emrah')
insert into kamyoncu1 (kisi_ad) values ('Murat')
insert into kamyoncu1 (kisi_ad) values ('Fatih')
insert into kamyon_markasi (kamyon_ad) values ('DAF')
insert into kamyon_markasi (kamyon_ad) values ('Mercedes')
insert into kamyon_markasi (kamyon_ad) values ('Scania')
insert into teslimatin_gonderilecegi_yer (sehir1) values ('Samsun')
insert into teslimatin_gonderilecegi_yer (sehir1) values ('Artvin')
insert into teslimatin_gonderilecegi_yer (sehir1) values ('Ýstanbul')
insert into teslimatin_yola_ciktigi_yer (sehir2) values ('Tiflis')
insert into teslimatin_yola_ciktigi_yer (sehir2) values ('Bakü')
insert into teslimatin_yola_ciktigi_yer (sehir2) values ('Ýsfahan')

select ka1.ID , kisi_ad [Þoför] , kam.kamyon_ad [Kamyon Markasý] , tgy.sehir1 [Yola Çýkacaðý Þehir] , tyc.sehir2 [Gideceði Þehir]

from kamyon_markasi kam right join kamyoncu1 ka1 on
ka1.ID = kam.ID
inner join teslimatin_gonderilecegi_yer tgy on
kam.ID = tgy.ID
left join teslimatin_yola_ciktigi_yer tyc on
tgy.ID = tyc.ID