load data 
infile 'yob%%YEAR%%.txt' "str '\r\n'"
append
into table NAMES
fields terminated by ','
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( NAME CHAR(4000),
             SEX CHAR(4000),
             FREQ CHAR(4000),
             YEAR "%%YEAR%%"
           )
