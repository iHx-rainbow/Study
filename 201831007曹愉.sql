USE [MoviesDB]
GO
/****** Object:  Database [MoviesDB]    Script Date: 2019/3/27 11:14:27 ******/
select address from Studio where name='MGM'

select birthdate from MovieStar where name='Sandra Bullock'

SELECT [starName]
  FROM [MoviesDB].[dbo].[StarsIn]
  where movieYear = 1980 or movieTitle like '%love%'

SELECT [name]
  FROM [MoviesDB].[dbo].[MovieExec]
  where netWorth >=10000000

SELECT TOP 1000 [name]
  FROM [MoviesDB].[dbo].[MovieStar]
  where address like '%Malibu%'

SELECT [starName]
  FROM [MoviesDB].[dbo].[StarsIn]
  where movieTitle = 'Titanic' and starName in 
  (
  SELECT [name]
  FROM [MoviesDB].[dbo].[MovieStar]
  where gender = 'M' 
  )

SELECT starName
  FROM [MoviesDB].[dbo].[Movies]
  inner join StarsIn on Movies.title=StarsIn.movieTitle
  where studioName = 'MGM' and year =1995

SELECT e.name
  FROM [MoviesDB].[dbo].[MovieExec] e
  inner join [MoviesDB].[dbo].[Studio] s on e.cert#=s.presC#
  where s.name='MGM'

SELECT [title]
  FROM [MoviesDB].[dbo].[Movies]
  where length >
  (
  select length from Movies where title = 'Gone With the Wind'
  )

SELECT [name]
  FROM [MoviesDB].[dbo].[MovieExec] m
  where netWorth > 
  (
  select netWorth from MovieExec where name='Gary Barber'
  )
