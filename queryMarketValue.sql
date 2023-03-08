use fintechdb;
select p.accountNo, a.accountName, p.ticker, p.noShares*s.lastpx as 'Market Value'
from accountPosBal p
,stockprice s
,account a
,client c
,accountowner o
where p.accountNo = a.accountNo
and   a.accountNo = o.accountNo
and   c.clientNo = o.clientNo
and   s.ticker = p.ticker;