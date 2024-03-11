/*Use SQL functions to format customer names
- Capitalize the last name 
- Capitalize the first letter of the first name and 
  the rest of the name in lower case  */
SELECT concat(
UPPER(SUBSTR(C.first_name, 1, 1)) || LOWER(SUBSTR(C.first_name, 2))
,' ', UPPER(C.last_name)
) as name_concat
from customers C