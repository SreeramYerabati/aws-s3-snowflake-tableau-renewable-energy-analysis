SELECT * FROM energy_consumption;


SELECT income_level, COUNT(*) FROM ENERGY_CONSUMPTION
GROUP BY income_level; 


/* TASK-1
1. For Low INCOME LEVEL, increase the usage by 10%
2. FOR Medium INCOME_LEVEL, increase the usage by 20% 
3. FOR High INCOME LEVEL, increase the usage by 30% 
*/ 

UPDATE energy_consumption 
SET monthly_usage_kwh = monthly_usage_kwh * 1.1 
WHERE income_level = 'Low';

UPDATE energy_consumption 
SET monthly_usage_kwh = monthly_usage_kwh * 1.2 
WHERE income_level = 'Middle';

UPDATE energy_consumption 
SET monthly_usage_kwh = monthly_usage_kwh * 1.3 
WHERE income_level = 'High';


/* TASK-2 
1. For income level Low, reduce the Cost_savings_USD by 10% 
2. For income level Medium, reduce the Cost_savings_USD by 20% 
3. For income level High, reduce the Cost_savings_USD by 30% 
*/

UPDATE energy_consumption 
SET cost_savings_usd = cost_savings_usd * 0.9 
WHERE income_level = 'Low';

UPDATE energy_consumption 
SET cost_savings_usd = cost_savings_usd * 0.8
WHERE income_level = 'Middle';

UPDATE energy_consumption 
SET cost_savings_usd = cost_savings_usd * 0.7 
WHERE income_level = 'High';

select * from energy_consumption;