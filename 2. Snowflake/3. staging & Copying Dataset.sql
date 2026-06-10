create stage tableau.tableau_Data.tableau_stage
url = 's3://<BUCKET NAME>'
storage_integration = tableau_Integration;

-- Copy Data into tableau_dataset
copy into tableau_dataset 
from @tableau_stage
file_format = (type=csv field_delimiter=',' skip_header=1 )
on_error = 'continue';

list @s1;

SELECT * FROM tableau_dataset;
 
CREATE TABLE energy_consumption AS 
SELECT * FROM tableau_dataset;

SELECT * FROM energy_consumption;
