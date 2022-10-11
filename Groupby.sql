--Gruplama Ýþlemleri 

select sh.CustomerID, p.FirstName, p.MiddleName, P.LastName, sum(sh.TotalDue) total, avg(sh.TotalDue) aver
from Sales.SalesOrderHeader sh
join Person.Person p on sh.CustomerID = p.BusinessEntityID
where sh.CustomerID in (19434,
19380,
19480,
19426)
group by sh.CustomerID, p.FirstName, p.MiddleName, P.LastName
having sum(sh.TotalDue) > 2000								 
order by total												 
															 
															 

