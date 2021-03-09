5.1
area := pi * radius * radius;  
        perimeter := 2 * pi * radius; 
        dbms_output.Put_line('Area = ' || area);  
        dbms_output.Put_line(' Perimeter = ' || perimeter);
		
		
5.2
SELECT geo_name,
 state_us_abbreviation AS "st",
  p0010001 AS "American or Indian or Alaska Native"
FROM us_counties_2010;

5.3
New York