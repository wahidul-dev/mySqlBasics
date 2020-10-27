
create table continent_report (
Continent_id Numeric(50) Primary Key,
Continent_name varchar(20) Not Null,
Con_total_case numeric(50) Not Null,
Con_new_case numeric(50),
Con_total_death numeric(50) Not Null,
Con_new_death numeric(50),
Con_total_recovered numeric(50),
con_active_case numeric(50),
con_critical_case numeric(50)
);

create table country_report (
Country_id Numeric(50) Primary Key,
Country_name varchar(20) Not Null,
Cou_total_case numeric(50) Not Null,
Cou_new_case numeric(50),
Cou_total_death numeric(50) Not Null,
Cou_new_death numeric(50),
Cou_total_recovered numeric(50),
cou_active_case numeric(50),
cou_total_test numeric(50) Not Null,
continent_id numeric(50) Not Null
);

create table hospital (
Hospital_id Numeric(50) Primary Key,
Hospital_name varchar(50) Not Null,
Address varchar(50),
General_bed numeric(50) Not Null,
ICU_bed numeric(50) Not Null,
Ventilator numeric (50),
Oxygen_cylinder numeric(50),
Cannula numeric(50),
Central_oxygen_line Varchar(1),
country_id numeric(50) Not Null
);

create table hotline (
Hotline_id Numeric(50) Primary Key,
Institute varchar(20) Not Null,
Phone numeric(50) Not Null,
country_id numeric(50) Not Null,
foreign key (country_id) references country_report(country_id)
);

create table death_rate_age (
country_id numeric(50) Not Null,
Age_0_to_19 Float(50),
Age_20_to_29 Float(50),
Age_30_to_39 Float(50),
Age_40_to_49 Float(50),
Age_50_to_59 Float(50),
Age_60_to_69 Float(50),
Age_70_to_79 Float(50),
Age_80_Plus Float(50),
Unknown_data Float(50)
);

create table report_by_date (
Date_country Numeric(50) Primary Key,
Date_is Date Not Null,
Tested numeric(50) Not Null,
Affected numeric(50) Not Null,
Recovered numeric(50) Not Null,
Died numeric(50) Not Null,
Country_id numeric(50) Not Null
);

Insert Into continent_report Values (1, "Europe",4536100,51288,217440,772,2413226,1905434,7479),
(2,"North America", 8460742, 45274, 300535, 1283 , 5315418, 2844789,17602),
(3,"Asia", 9682926, 110253, 180585 , 1719,8005294,1497047,19843),
(4,"South America", 7630906,61993,240915,1698,6453009,936982,15641),
(5, "Africa", 1427620,7365,34378,244,1173809,219433,1402),
(6,"Oceania",30736,163,890,3,27403,2443,19),
(7, "Antarctica",0,0,0,0,0,0,0);

Insert Into country_report Values (1,"USA", 7097937,35696,205471,969,4346110,2546356,99681973,2),
(2,"Germany",277176,1625,9491,10,247900,19785,14557136,1),
(3,"Spain",682267,10799,30904,241,null,null,11820505,1),
(4,"Italy",300897,1392,35738,14,219670,45489,10575979,1),
(5,"Bangladesh",352178,1557,5007,28,260790,86381,1848487,3),
(6,"India",5640496,80391,90021,1056,4581820,968655,65325779,3),
(7,"Canada",146663,1248,9234,6,126904,10525,6766982,2),
(8,"Brazil",4595335,35252,138159,809,3945627,511549,15011116,4),
(9,"South Africa",663282,1346,16118,126,592904,54260,4064117,5),
(10,"Australia",26942,30,854,3,24218,1870,7351283,6),
(11,"New Zealand",1815,0,25,0,1729,61,917699,6);


Insert Into hotline Values (1,"Sastho odhidoptor",16263,5),
(2,"O2I Program ICT Div.",333,5),
(3,"OVAI Sol. LTD.",16633,5),
(4,"Rogtotto res. inst.",10655,5),
(5,"BITID Ctg.",244075042,5),
(6,"Mymensingh Medical",01306497095,5),
(7,"Rajshashi Medical",01744595842,5),
(8,"Rangpur Medical",01712177244,5),
(9,"Cox's Bazar Medical",01713205877,5),
(10,"ICDDRB",01713205877,5),
(11,"BSMMU",09611677777,5);


Insert Into death_rate_age Values (1,null,null,null,null,null,null,null,null,null),
(2,0,0,0,0,4.5,9.0,23.3,63.2,null),
(3,0,0.5,0.4,1.1,2.5,7.8,20.4,67.3,null),
(4,0,0,0,1.2,3.7,11.1,29.9,40.6,13.5),
(5,0.8,0.8,2.3,11.5,17.6,22.1,null,null,44.9),
(6,null,null,null,null,null,null,null,null,null),
(7,10,17.4,15,14.7,14.1,9,6.4,13.4,null),
(8,null,null,null,null,null,null,null,null,null),
(9,null,null,null,null,null,null,null,null,null),
(10,null,null,null,null,null,null,null,null,null),
(11,null,null,null,null,null,null,null,null,null) ;
  
Insert Into Hospital Values 
(1,"Kuwait-Bangladesh Friendship Government Hospital","Isakha Ave, Dhaka 1230",200,16,26,123,12,"N",5),
(2,"Kurmitola hospital","Tongi Diversion Rd, Dhaka 1206",275,10,9,439,22,"N",5),
(3,"Dhaka medical college","Dhaka 1000",883,24,14,628,10,"Y",5),
(4,"Central Police Hospital","2 DIT Ave, Dhaka 1000",600,15,15,60,15,"Y",5),
(5,"Holy Family Red Crescent Medical College Hospital","1 Eskaton Garden Rd, Dhaka 1000",420,10,6,120,4,"Y",5),
(6,"Shaheed Suhrawardy Medical College and Hospital","Dhaka 1207",174,0,0,280,0,"Y",5),
(7,"Square Hospital","18/F, Bir Uttam Qazi Nuruzzaman Sarak,Dhaka 1205",74,25,15,25,4,"Y",5),
(8,"IBN SINA Medical College Hospital","1/1 B, Kallyanpur, Dhaka 1216",36,6,6,50,10,"Y",5),
(9,"United Hospital Limited","Plot # 15 Rd No 71, Dhaka 1212",59,22,22,110,26,"Y",5),
(10,"Evercare Hospital Dhaka","Plot: 81 Block: E, Dhaka 1229",51,20,11,211,15,"Y",5);


Insert Into report_by_date Values (140905,STR_TO_DATE('SEP-14-2020','%b-%d-%Y'),14216,1812,2512,26,5),
(150905,STR_TO_DATE('SEP-15-2020','%b-%d-%Y'),14050,1724,2439,43,5),
(160905,STR_TO_DATE('SEP-16-2020','%b-%d-%Y'),13360,1615,2375,21,5),
(170905,STR_TO_DATE('SEP-17-2020','%b-%d-%Y'),13673,1593,2443,36,5),
(180905,STR_TO_DATE('SEP-18-2020','%b-%d-%Y'),12730,1541,1923,22,5),
(190905,STR_TO_DATE('SEP-19-2020','%b-%d-%Y'),13170,1567,2051,32,5),
(200905,STR_TO_DATE('SEP-20-2020','%b-%d-%Y'),11591,1544,2179,26,5),
(210905,STR_TO_DATE('SEP-21-2020','%b-%d-%Y'),13053,1705,2152,40,5),
(220905,STR_TO_DATE('SEP-22-2020','%b-%d-%Y'),14164,1557,2073,28,5),
(230905,STR_TO_DATE('SEP-23-2020','%b-%d-%Y'),14150,1666,2163,37,5);

Alter table country_report
	Add Constraint continent_id_fk
	Foreign Key (continent_id)
	References continent_report (continent_id);
Alter table death_rate_age
	Add Constraint death_rate_age_fk
	Foreign Key (country_id)
	References country_report (country_id);
Alter table hospital
	Add Constraint country_id_hospital_fk
	Foreign Key (country_id)
	References country_report (country_id);
Alter table hotline
	Add Constraint country_id_hotline_fk
	Foreign Key (country_id)
	References country_report (country_id);
Alter table report_by_date
	Add Constraint country_id_date_fk
	Foreign Key (country_id)
	References country_report (country_id);