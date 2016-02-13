We need to have protocols for normalizing field names so that we can easily compare across datasets.

###Ship Names
Normalize as follows:
* all upper case
* eliminate numbers at the end of the ship name
* what else?

Query to normalize:
```
 REGEXP_REPLACE(shipname, '[^\\w]', '')
```
[need to add to this]


