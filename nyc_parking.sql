-- drop table nyc_parking_data_raw;
Create external table nyc_parking_data_raw  
    (Summons_Number	float,
    Plate_ID	string,
    Registration_State	string,
    Plate_Type	string,
    Issue_Date	timestamp,
    Violation_Code	float,
    Vehicle_Body_Type	string,
    Vehicle_Make	string,
    Issuing_Agency	string,
    Street_Code1	float,
    Street_Code2	float,
    Street_Code3	float,
    Vehicle_Expiration_Date	float,
    Violation_Location	string,
    Violation_Precinct	float,
    Issuer_Precinct	float,
    Issuer_Code	float,
    Issuer_Command	string,
    Issuer_Squad	string,
    Violation_Time	string,
    Time_First_Observed	string,
    Violation_County	string,
    Violation_In_Front_Of_Or_Opposite	string,
    House_Number	string,
    Street_Name	string,
    Intersecting_Street	string,
    Date_First_Observed	float,
    Law_Section	float,
    Sub_Division	string,
    Violation_Legal_Code	string,
    Days_Parking_In_Effect	string,
    From_Hours_In_Effect	string,
    To_Hours_In_Effect	string,
    Vehicle_Color	string,
    Unregistered_Vehicle	string,
    Vehicle_Year	float,
    Meter_Number	string,
    Feet_From_Curb	float,
    Violation_Post_Code	string,
    Violation_Description	string,
    No_Standing_or_Stopping_Violation	string,
    Hydrant_Violation	string,
    Double_Parking_Violation	string
    ) ROW FORMAT DELIMITED
    FIELDS TERMINATED BY ','
    STORED AS TEXTFILE
    location 's3://nyc-parking-data/data/'
    tblproperties ("skip.header.line.count"="1");