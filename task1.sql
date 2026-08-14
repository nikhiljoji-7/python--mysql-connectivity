create database MovieStreamDB;
use MovieStreamDB;

create table Movies(Movie_ID int ,
					Movie_Name varchar(50),Genere enum("Action","Romance","Thriller"),
                    Language enum("Tamil","Malayalam","Kannada","Hindi"),
                    Rating decimal(2,1),Duration_Min int , Release_Year int);

select * from Movies;                    

insert  into Movies(Movie_ID,Movie_Name,Genere,Language,Rating,Duration_Min,Release_Year)
				values(101,"Leo","Action","Tamil",8.2,164,2023),
                (102,"Premalu","Romance","Malayalam",8.5,156,2024),
                (103,"KGF","Action","Kannada",8.4,168,2018),
                (104,"Drishyam","Thriller","Malayalam",8.6,160,2013),
                (105,"Jawan","Action","Hindi",7.4,169,2023),
                (106,"96","Action","Tamil",7.8,158,2018);

select Movie_Name,Rating from Movies;

select distinct Genere from Movies;

select distinct Language from Movies;

select * from Movies ;

select Movie_Name,Rating from Movies order by rating desc limit  3;

select Movie_Name,Rating from Movies order by rating desc limit  2;

select * from Movies where rating > 8.0;

select Movie_Name,Release_year from Movies where Release_Year > 2020;

select * from Movies where Genere = "Action";

select * from Movies order by rating desc;

select * from Movies order by Release_year Asc;

select Max(rating) from Movies;

select Min(Duration_min)from Movies;

select avg(Rating) from Movies;
select Genere,count(*) from Movies group by Genere; 

select avg(Rating) from Movies group by Language;

select Genere,count(*) from Movies group by Genere having count(*)>1;

select Language ,count(*) from Movies group by Language having count(*)>1;


       
			