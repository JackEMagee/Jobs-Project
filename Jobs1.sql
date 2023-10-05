
SELECT * FROM Jobs..jobs_data

SELECT EdLevel, Count(id) as PeopleCount, AVG(cast(PreviousSalary as bigint)) as AvgSalary,  Avg(YearsCode) as EXP, avg(ComputerSkills) as CS, COUNT(CASE WHEN Employed = 1 THEN 1 END) AS GotJob
FROM Jobs..jobs_data
GROUP BY EdLevel

SELECT Gender, Count(id) as PeopleCount, AVG(cast(PreviousSalary as bigint)) as AvgSalary, Avg(YearsCode) as EXP, avg(ComputerSkills) as CS, COUNT(CASE WHEN Employed = 1 THEN 1 END) AS GotJob
FROM Jobs..jobs_data
GROUP BY Gender

SELECT Age, AVG(cast(PreviousSalary as bigint)) as AvgSalary, COUNT(id) as People, Avg(YearsCode) as EXP, avg(ComputerSkills) as CS, COUNT(CASE WHEN Employed = 1 THEN 1 END) AS Employed
FROM Jobs..jobs_data
GROUP BY Age

SELECT Country, AVG(cast(PreviousSalary as bigint)) as AvgSalary, COUNT(id) as People, Avg(YearsCode) as EXP, avg(ComputerSkills) as CS, COUNT(CASE WHEN Employed = 1 THEN 1 END) AS Employed
FROM Jobs..jobs_data
GROUP BY Country

 
 --Skill breakdown

 Select count(HaveWorkedWith)
 FROM Jobs..jobs_data
 Where HaveWorkedWith like '%Python%'


SELECT TOP 20
       value [Skill]
     , COUNT(*) [#times]
FROM Jobs..jobs_data
CROSS APPLY STRING_SPLIT(HaveWorkedWith, ';')
GROUP BY value
ORDER BY COUNT(*) DESC

SELECT Count(id) FROM Jobs..jobs_data
