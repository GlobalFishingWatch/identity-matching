SELECT Attribute1_Type,Attribute1_Value,Attribute2_Type,Attribute2_Value,Start_Date,End_Date,Count,Source FROM
(SELECT "mmsi" Attribute1_Type, STRING(mmsi) Attribute1_Value, 
	     "imo" Attribute2_Type, STRING(imo) Attribute2_Value, 
	     first(timestamp) Start_Date, last(timestamp) End_date, count(*) Count, "Type5_24" Source, month(timestamp) month, year(timestamp) year
	     from [Vessel_identity_messages.type5_24_2012_2015]
	     WHERE mmsi is not null AND mmsi IS NOT NULL AND imo !=0 
	     group by Attribute1_Type, Attribute1_Value, Attribute2_Type, Attribute2_Value, month, year),
(SELECT "mmsi" Attribute1_Type, STRING(mmsi) Attribute1_Value, 
	     "shipname" Attribute2_Type, STRING(shipname) Attribute2_Value, 
	     first(timestamp) Start_Date, last(timestamp) End_date, count(*) Count, "Type5_24" Source, month(timestamp) month, year(timestamp) year
	     from [Vessel_identity_messages.type5_24_2012_2015]
	     WHERE mmsi is not null AND mmsi IS NOT NULL 
	     group by Attribute1_Type, Attribute1_Value, Attribute2_Type, Attribute2_Value, month, year),
(SELECT "mmsi" Attribute1_Type, STRING(mmsi) Attribute1_Value, 
	     "callsign" Attribute2_Type, STRING(callsign) Attribute2_Value, 
	     first(timestamp) Start_Date, last(timestamp) End_date, count(*) Count, "Type5_24" Source, month(timestamp) month, year(timestamp) year
	     from [Vessel_identity_messages.type5_24_2012_2015]
	     WHERE mmsi is not null AND mmsi IS NOT NULL 
	     group by Attribute1_Type, Attribute1_Value, Attribute2_Type, Attribute2_Value, month, year),
(SELECT "mmsi" Attribute1_Type, STRING(mmsi) Attribute1_Value, 
	     "shiptype_text" Attribute2_Type, STRING(shiptype_text) Attribute2_Value, 
	     first(timestamp) Start_Date, last(timestamp) End_date, count(*) Count, "Type5_24" Source, month(timestamp) month, year(timestamp) year
	     from [Vessel_identity_messages.type5_24_2012_2015]
	     WHERE mmsi is not null AND mmsi IS NOT NULL 
	     group by Attribute1_Type, Attribute1_Value, Attribute2_Type, Attribute2_Value, month, year),
(SELECT "imo" Attribute1_Type, STRING(imo) Attribute1_Value, 
	     "shipname" Attribute2_Type, STRING(shipname) Attribute2_Value, 
	     first(timestamp) Start_Date, last(timestamp) End_date, count(*) Count, "Type5_24" Source, month(timestamp) month, year(timestamp) year
	     from [Vessel_identity_messages.type5_24_2012_2015]
	     WHERE imo is not null AND imo IS NOT NULL AND imo !=0 
	     group by Attribute1_Type, Attribute1_Value, Attribute2_Type, Attribute2_Value, month, year),
(SELECT "imo" Attribute1_Type, STRING(imo) Attribute1_Value, 
	     "callsign" Attribute2_Type, STRING(callsign) Attribute2_Value, 
	     first(timestamp) Start_Date, last(timestamp) End_date, count(*) Count, "Type5_24" Source, month(timestamp) month, year(timestamp) year
	     from [Vessel_identity_messages.type5_24_2012_2015]
	     WHERE imo is not null AND imo IS NOT NULL AND imo !=0 
	     group by Attribute1_Type, Attribute1_Value, Attribute2_Type, Attribute2_Value, month, year),
(SELECT "imo" Attribute1_Type, STRING(imo) Attribute1_Value, 
	     "shiptype_text" Attribute2_Type, STRING(shiptype_text) Attribute2_Value, 
	     first(timestamp) Start_Date, last(timestamp) End_date, count(*) Count, "Type5_24" Source, month(timestamp) month, year(timestamp) year
	     from [Vessel_identity_messages.type5_24_2012_2015]
	     WHERE imo is not null AND imo IS NOT NULL AND imo !=0 
	     group by Attribute1_Type, Attribute1_Value, Attribute2_Type, Attribute2_Value, month, year),
(SELECT "shipname" Attribute1_Type, STRING(shipname) Attribute1_Value, 
	     "callsign" Attribute2_Type, STRING(callsign) Attribute2_Value, 
	     first(timestamp) Start_Date, last(timestamp) End_date, count(*) Count, "Type5_24" Source, month(timestamp) month, year(timestamp) year
	     from [Vessel_identity_messages.type5_24_2012_2015]
	     WHERE shipname is not null AND shipname IS NOT NULL 
	     group by Attribute1_Type, Attribute1_Value, Attribute2_Type, Attribute2_Value, month, year),
(SELECT "shipname" Attribute1_Type, STRING(shipname) Attribute1_Value, 
	     "shiptype_text" Attribute2_Type, STRING(shiptype_text) Attribute2_Value, 
	     first(timestamp) Start_Date, last(timestamp) End_date, count(*) Count, "Type5_24" Source, month(timestamp) month, year(timestamp) year
	     from [Vessel_identity_messages.type5_24_2012_2015]
	     WHERE shipname is not null AND shipname IS NOT NULL 
	     group by Attribute1_Type, Attribute1_Value, Attribute2_Type, Attribute2_Value, month, year),
(SELECT "callsign" Attribute1_Type, STRING(callsign) Attribute1_Value, 
	     "shiptype_text" Attribute2_Type, STRING(shiptype_text) Attribute2_Value, 
	     first(timestamp) Start_Date, last(timestamp) End_date, count(*) Count, "Type5_24" Source, month(timestamp) month, year(timestamp) year
	     from [Vessel_identity_messages.type5_24_2012_2015]
	     WHERE callsign is not null AND callsign IS NOT NULL 
	     group by Attribute1_Type, Attribute1_Value, Attribute2_Type, Attribute2_Value, month, year),
