# identity-matching
Scripts and Queries to Identify Ships based on Registry Lists and Type 4 and 24 Messages


Paul Recently (2/8/2016) outlined a way to identify vessels that we are implementing in this repository and on BigQuery. Below are Paul's notes (which we will edit as we update this repo). 

##Step 1: Create a single table with identity associations from multiple sources
* CLAV List
* Type 5/24
* FFA registry

The table consists of pairs of identity attributes that are associated because they appear together in a single datum from a single source.

Identity attributes
* MMSI
* IMO
* Tuna Registry unique vessel id
* callsign
* name
* VMS unique ID
* etc….

The table has the following fields

* Attribute1_Type	[MMSI, IMO, callsign, etc]
* Attribute1_value	[123456789, ER28X, The Love Boat]
* Attribute2_Type	[MMSI, IMO, callsign, etc]
* Attribute2_value	[123456789, ER28X, The Love Boat]
* Start_Date		Date of first occurrence of this association
* End_Date		Date of last occurrence of this association
* Count			Number of times this association occurs in the date range
* Source			[Type5, CLAV, etc]


Building this table is easy, just dump in all pairs that occur in any source. If a single record contains 3 or more identity attributes, include all possible pairings within that record.


##Step 2: Query the table of identies to find matches

To use the table, we start with single identity attribute that we know, one or more identity attributes that we want to discover, and a target date range.   

Query the table to find a match for the known attribute in Attribute1 or Attribute2, filtering on date range and capture the associated attributes.  Then rank the results based on Source and Count, and take the best result(s).   If you don’t get any decent results, then you can use the other attributes discovered in the first query to conduct a second query to find a “one step removed” result.  Alternatively, you can expand the date range and try again.

If you have more than one known attribute, them query for each on separately, and then take the intersection of the result sets.

This is originally taken from [this Google doc](https://docs.google.com/document/d/17zbJkQsaJrZduqFHPV1XWTHNLXaRGdO57dqornYO2h4/edit) written by Bjorn and Paul.
