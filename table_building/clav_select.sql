SELECT 
Attribute1_Type,Attribute1_Value,Attribute2_Type,Attribute2_Value,Start_Date,End_Date,Count,Source 
FROM
(SELECT "clav_TUVI" Attribute1_Type, STRING(clav_TUVI) Attribute1_Value, 
	     "imo" Attribute2_Type, STRING(imo) Attribute2_Value, 
	     clav_DateAutStart as Start_Date, clav_DateAutEnd as End_Date, 0 as Count, "CLAV" Source 
	     from [Registry_matching_sources.CLAV_12_14_2015]
       WHERE clav_TUVI is not null AND imo IS NOT NULL AND imo !='0'),
(SELECT "clav_TUVI" Attribute1_Type, STRING(clav_TUVI) Attribute1_Value, 
	     "shipname" Attribute2_Type, STRING(shipname) Attribute2_Value, 
	     clav_DateAutStart as Start_Date, clav_DateAutEnd as End_Date, 0 as Count, "CLAV" Source 
	     from [Registry_matching_sources.CLAV_12_14_2015]
	     WHERE clav_TUVI is not null AND clav_TUVI IS NOT NULL), 
(SELECT "clav_TUVI" Attribute1_Type, STRING(clav_TUVI) Attribute1_Value, 
	     "callsign" Attribute2_Type, STRING(callsign) Attribute2_Value, 
	     clav_DateAutStart as Start_Date, clav_DateAutEnd as End_Date, 0 as Count, "CLAV" as Source 
       from [Registry_matching_sources.CLAV_12_14_2015]
       WHERE clav_TUVI is not null AND clav_TUVI IS NOT NULL), 
(SELECT "imo" Attribute1_Type, STRING(imo) Attribute1_Value, 
	     "shipname" Attribute2_Type, STRING(shipname) Attribute2_Value, 
	     clav_DateAutStart as Start_Date, clav_DateAutEnd as End_Date, null Count, "CLAV" Source 
	     from [Registry_matching_sources.CLAV_12_14_2015]
	     WHERE imo is not null AND imo IS NOT NULL AND imo !='0'),
(SELECT "imo" Attribute1_Type, STRING(imo) Attribute1_Value, 
	     "callsign" Attribute2_Type, STRING(callsign) Attribute2_Value, 
	     clav_DateAutStart as Start_Date, clav_DateAutEnd as End_Date, null Count, "CLAV" Source 
	     from [Registry_matching_sources.CLAV_12_14_2015]
	     WHERE imo is not null AND imo IS NOT NULL AND imo !='0'),
(SELECT "shipname" Attribute1_Type, STRING(shipname) Attribute1_Value, 
	     "callsign" Attribute2_Type, STRING(callsign) Attribute2_Value, 
	     clav_DateAutStart as Start_Date, clav_DateAutEnd as End_Date, null Count, "CLAV" Source 
	     from [Registry_matching_sources.CLAV_12_14_2015]
	     WHERE shipname is not null AND shipname IS NOT NULL)