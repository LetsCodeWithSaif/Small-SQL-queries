SELECT a.before_2010, b.after_2010,
(CASE WHEN a.before_2010>b.after_2010 then 'sales Before 2010 was higher'
ELSE 'sales after 2010 was higher'
END) as Solution
From
(Select avg(Global_Sales) as before_2010 from vgsales where Year < 2010) a, 
(Select avg(Global_Sales) as after_2010 from vgsales where Year > 2010) b;