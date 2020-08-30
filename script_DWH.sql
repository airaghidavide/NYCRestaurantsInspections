------------------------------------------------------------------------------------------
-- TABLES
------------------------------------------------------------------------------------------

/****** Object:  Table [dbo].[DIM_ACTION]    Script Date: 24/08/2020 10:03:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM_ACTION](
	[id_action] [int] NOT NULL,
	[action] [nvarchar](150) NULL,
 CONSTRAINT [PK_DIM_ACTION] PRIMARY KEY CLUSTERED 
(
	[id_action] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

---------------------------------------------------------------------------------------


/****** Object:  Table [dbo].[DIM_BOROUGH]    Script Date: 24/08/2020 10:03:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM_BOROUGH](
	[id_borough] [int] NOT NULL,
	[borough] [nvarchar](50) NULL,
 CONSTRAINT [PK_DIM_BOROUGH] PRIMARY KEY CLUSTERED 
(
	[id_borough] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


---------------------------------------------------------------------------------------

/****** Object:  Table [dbo].[DIM_CRITICAL_FLAG]    Script Date: 24/08/2020 10:04:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM_CRITICAL_FLAG](
	[id_critical_flag] [int] NOT NULL,
	[critical_flag] [nvarchar](50) NULL,
	[critical_flag_description] [nvarchar](50) NULL,
 CONSTRAINT [PK_DIM_CRITICAL_FLAG] PRIMARY KEY CLUSTERED 
(
	[id_critical_flag] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

----------------------------------------------------------------------------------------

/****** Object:  Table [dbo].[DIM_CUISINE]    Script Date: 24/08/2020 10:04:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM_CUISINE](
	[id_cuisine] [int] NOT NULL,
	[cuisine_description] [nvarchar](100) NULL,
 CONSTRAINT [PK_DIM_CUISINE] PRIMARY KEY CLUSTERED 
(
	[id_cuisine] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

----------------------------------------------------------------------------------------

/****** Object:  Table [dbo].[DIM_GEOGRAPHY]    Script Date: 24/08/2020 10:05:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM_GEOGRAPHY](
	[id_geography] [int] NOT NULL,
	[id_borough] [int] NULL,
	[zipcode] [nvarchar](50) NULL,
	[latitude] [nvarchar](50) NULL,
	[longitude] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_geography] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------------------------------------------

/****** Object:  Table [dbo].[DIM_GRADE]    Script Date: 24/08/2020 10:05:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM_GRADE](
	[id_grade] [int] NOT NULL,
	[grade] [nvarchar](50) NULL,
	[grade_description] [nvarchar](100) NULL,
 CONSTRAINT [PK_DIM_GRADE] PRIMARY KEY CLUSTERED 
(
	[id_grade] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------------------------------------------

/****** Object:  Table [dbo].[DIM_INSPECTION_TYPE]    Script Date: 24/08/2020 10:05:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM_INSPECTION_TYPE](
	[id_inspection_type] [int] NOT NULL,
	[inspection_type] [nvarchar](100) NULL,
 CONSTRAINT [PK_DIM_INSPECTION_TYPE] PRIMARY KEY CLUSTERED 
(
	[id_inspection_type] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------------------------------------------

/****** Object:  Table [dbo].[DIM_RESTAURANT]    Script Date: 24/08/2020 10:06:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM_RESTAURANT](
	[id_restaurant] [bigint] NOT NULL,
	[restaurant_name] [nvarchar](100) NULL,
	[phone] [nvarchar](50) NULL,
	[street] [nvarchar](50) NULL,
	[building] [nvarchar](50) NULL,
	[id_cuisine] [int] NULL,
	[id_geography] [int] NULL,
 CONSTRAINT [PK_DIM_RESTAURANT] PRIMARY KEY CLUSTERED 
(
	[id_restaurant] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------------------------------------------

/****** Object:  Table [dbo].[DIM_TIME]    Script Date: 24/08/2020 10:06:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM_TIME](
	[id_time] [date] NOT NULL,
	[day] [int] NULL,
	[day_name] [nvarchar](50) NULL,
	[week] [int] NULL,
	[month] [int] NULL,
	[month_name] [nvarchar](50) NULL,
	[quarter] [int] NULL,
	[year] [int] NULL,
 CONSTRAINT [PK_DIM_TIME] PRIMARY KEY CLUSTERED 
(
	[id_time] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------------------------------------------


/****** Object:  Table [dbo].[DIM_VIOLATION_TYPE]    Script Date: 24/08/2020 10:06:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM_VIOLATION_TYPE](
	[id_violation_code] [int] NOT NULL,
	[violation_code] [nvarchar](50) NULL,
	[violation_description] [nvarchar](400) NULL,
 CONSTRAINT [PK_DIM_VIOLATION_TYPE] PRIMARY KEY CLUSTERED 
(
	[id_violation_code] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------------------------------------------

/****** Object:  Table [dbo].[FCT_INSPECTIONS]    Script Date: 24/08/2020 10:06:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FCT_INSPECTIONS](
	[id_inspection] [bigint] NOT NULL,
	[inspection_date] [date] NULL,
	[id_restaurant] [bigint] NULL,
	[id_inspection_type] [int] NULL,
	[id_violation_code] [int] NULL,
	[id_action] [int] NULL,
	[id_critical_flag] [int] NULL,
	[id_grade] [int] NULL,
	[score] [float] NULL,
 CONSTRAINT [PK_FCT_INSPECTIONS] PRIMARY KEY CLUSTERED 
(
	[id_inspection] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------------------------------------------
-- VIEWS
------------------------------------------------------------------------------------------

/****** Object:  View [dbo].[VW_CNT_INSPECTIONS]    Script Date: 24/08/2020 10:07:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[VW_CNT_INSPECTIONS]
as
select distinct id_restaurant,inspection_date,t.month_name,t.year
from FCT_INSPECTIONS f
inner join DIM_TIME t
 on t.id_time = f.inspection_date
where inspection_date <> '1900-01-01';



GO


------------------------------------------------------------------------------------------

/****** Object:  View [dbo].[VW_LAST_INSPECTION_GRADE]    Script Date: 24/08/2020 10:08:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[VW_LAST_INSPECTION_GRADE]
as
with RecentInspDate as (
       select id_restaurant
              , max(inspection_date) as MostRecentInspDate
       from FCT_INSPECTIONS i
       inner join DIM_INSPECTION_TYPE it
	    on it.id_inspection_type = i.id_inspection_type
	   inner join DIM_GRADE g
	    on g.id_grade = i.id_grade
	   where it.id_inspection_type in (10, 19)                                          
              OR (it.id_inspection_type in (9,19)                                                                                
              AND SCORE <= 13) or (it.id_inspection_type in (21,11) and g.id_grade in (0,1,2,3,6,7))
	   group by id_restaurant
)
select 
      distinct 
	           fct.id_restaurant,
	           r.restaurant_name,
			   fct.inspection_date,
			   gr.grade_description,
			   fct.score,
			   g.latitude,
			   g.longitude
from FCT_INSPECTIONS fct
inner join RecentInspDate s
 on fct.id_restaurant = s.id_restaurant
  and  fct.inspection_date = s.MostRecentInspDate
inner join DIM_RESTAURANT r
 on r.id_restaurant = s.id_restaurant
inner join DIM_GRADE gr
 on gr.id_grade = fct.id_grade
inner join DIM_GEOGRAPHY g
 on g.id_geography = r.id_geography

GO

------------------------------------------------------------------------------------------

/****** Object:  View [dbo].[VW_NUM_CRITICAL_FLAG]    Script Date: 24/08/2020 10:08:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[VW_NUM_CRITICAL_FLAG]
as
select distinct f.id_restaurant,f.inspection_date,cuisine_description,critical_flag_description
from FCT_INSPECTIONS f
inner join DIM_TIME t
 on t.id_time = f.inspection_date
inner join DIM_RESTAURANT r
 on r.id_restaurant = f.id_restaurant
inner join DIM_CUISINE c
 on c.id_cuisine = r.id_cuisine
inner join DIM_CRITICAL_FLAG fc
 on fc.id_critical_flag = f.id_critical_flag
  and fc.id_critical_flag <> 1
where inspection_date <> '1900-01-01';
GO


------------------------------------------------------------------------------------------

