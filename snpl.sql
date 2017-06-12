 /* SNPL DATABASE  */;



DROP DATABASE IF EXISTS SNPLDATABASE;

create database SNPLDATABASE;

use SNPLDATABASE;


DROP TABLE IF EXISTS `timesheet_timesheet`;



CREATE TABLE `timesheet_timesheet` (
  `ID` int(11) NOT NULL,
  `ProjectID` varchar(45) NOT NULL,
  `TaskID` varchar(45) NOT NULL,
  `ResourceID` varchar(45) NOT NULL,
  `weekstartdate` date NOT NULL,
  `weekenddate` date NOT NULL,
  `ApprovedBy` varchar(45) NOT NULL,
  `ApprovedDate` date NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `timesheet_timesheet` (`ID`,`ProjectID`,`TaskID`,`CreatedDate`,`CreatedBy`,`ModifiedBy`,`ModifiedDate`,`ResourceID`,`weekstartdate`,`weekenddate`,
`ApprovedBy`,`ApprovedDate`) VALUES (90,"eget,","mus. Proin vel nisl. Quisque","1969-12-31 16:00:00","Kylie Ramirez","Quyn Mccall","2017-05-05 12:19:42",
"aptent taciti sociosqu ad litora torquent per","2017-12-03 08:09:04","2017-10-02 04:15:03","Etiam ligula tortor,","2018-05-24 17:36:27");




DROP TABLE IF EXISTS `timesheet_tasks`;

CREATE TABLE `timesheet_tasks` (
  `ID` int(11) NOT NULL,
  `TaskName` varchar(45) NOT NULL,
  `TaskDescription` varchar(45) NOT NULL,
  `TaskStartDate` date NOT NULL,
  `TaskEndDate` date NOT NULL,
  `ProjectID` varchar(45) NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `timesheet_tasks` (`ID`,`TaskName`,`TaskDescription`,`CreatedDate`,`CreatedBy`,`ModifiedBy`,`ModifiedDate`,`TaskStartDate`,`TaskEndDate`,`ProjectID`) 
VALUES (76,"Kylee Stewart","quis","1969-12-31 16:00:00","Dara Bonner","Felix Walsh","2017-05-07 19:04:06","2017-08-13 09:28:43","2016-12-04 02:53:41","turpis egestas. Aliquam");




DROP TABLE IF EXISTS `timesheet_taskmapping`;

CREATE TABLE `timesheet_taskmapping` (
  `ID` int(11) NOT NULL,
  `TaskID` varchar(45) NOT NULL,
  `ProjectID` varchar(45) NOT NULL,
  `EmployeeID` varchar(45) NOT NULL,
  `EffectiveFrom` date NOT NULL,
  `EffectiveTo` date NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `timesheet_taskmapping` (`ID`,`TaskID`,`ProjectID`,`CreatedDate`,`CreatedBy`,`ModifiedBy`,`ModifiedDate`,`EmployeeID`,`EffectiveFrom`,`EffectiveTo`)
 VALUES (99,"Xyla Ashley","diam at pretium aliquet, metus urna","1969-12-31 16:00:00","Zachary Spencer","Blaine Rutledge","2017-05-07 19:07:44",
 "adipiscing elit. Aliquam auctor, velit","2017-02-10 07:09:45","2016-07-26 20:09:47");



DROP TABLE IF EXISTS `timesheet_projects`;

CREATE TABLE `timesheet_projects` (
  `ID` int(11) NOT NULL,
  `ProjectName` varchar(45) NOT NULL,
  `ProjectDescription` varchar(45) NOT NULL,
  `ProjectOwnership` varchar(45) NOT NULL,
  `ProjectManager` varchar(45) NOT NULL,
  `ProjectStartDate` datetime NOT NULL,
  `ProjectEndDate` date NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `timesheet_projects` (`ID`,`ProjectName`,`ProjectDescription`,`CreatedDate`,`CreatedBy`,`ModifiedBy`,`ModifiedDate`,`ProjectOwnership`,`ProjectManager`,
`ProjectStartDate`,`ProjectEndDate`) VALUES (6,"Chaney Mcbride","odio. Phasellus at augue id","1969-12-31 16:00:00","Gwendolyn Kramer","Joel Maldonado",
"2017-05-05 19:28:17","arcu. Vestibulum ante ipsum","pede. Cras vulputate velit","2016-10-24 06:05:16","2016-12-16 06:42:17");



DROP TABLE IF EXISTS `payroll_payadjustmentmst`;

CREATE TABLE `payroll_payadjustmentmst` (
  `ID` int(11) NOT NULL,
  `AdjustmentTypeCode` varchar(45) NOT NULL,
  `AdjustmentTypeDescr` varchar(255) NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` date NOT NULL,
  `Addition_Deduction` varchar(45) NOT NULL,
  `fix_amt` int(11) NOT NULL,
  `RuleDescription` varchar(45) NOT NULL,
  `Attr1` varchar(45) NOT NULL,
  `Attr2` varchar(45) NOT NULL,
  `Attr3` varchar(45) NOT NULL,
  `Attr4` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `payroll_payadjustmentmst` (`ID`,`AdjustmentTypeCode`,`AdjustmentTypeDescr`,`CreatedDate`,`CreatedBy`,`ModifiedBy`,`ModifiedDate`,`Addition_Deduction`,
`fix_amt`,`RuleDescription`,`Attr1`,`Attr2`,`Attr3`,`Attr4`) VALUES (37,"Addison Noble","ut erat. Sed nunc","1969-12-31 16:00:00","Kirsten Reese","Kendall Barry",
"2017-05-04 17:52:07","id, blandit at,",7,"malesuada fames","pellentesque, tellus","ante","Cras","cursus et, magna. Praesent");


DROP TABLE IF EXISTS `payroll_employeepayslip`;

CREATE TABLE `payroll_employeepayslip` (
  `ID` int(11) NOT NULL,
  `EmployeePayID` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` varchar(45) NOT NULL,
  `Amount` double NOT NULL,
  `PayAdjustmentMSTID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `payroll_employeepayslip` (`ID`,`EmployeePayID`,`Type`,`CreatedDate`,`CreatedBy`,`ModifiedBy`,`ModifiedDate`,`Amount`,`PayAdjustmentMSTID`) VALUES (50,4,"Kim Mcintosh","1969-12-31 16:00:00","Kellie Christian","Ethan Meyers","2017-05-06 03:08:15",8,2);


DROP TABLE IF EXISTS `payroll_employeepay`;

CREATE TABLE `payroll_employeepay` (
  `ID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `PayPeriod` varchar(45) NOT NULL,
  `GrossPay` double NOT NULL,
  `NetPay` double NOT NULL,
  `PaymentDate` date NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` date NOT NULL,
  `PaytypeLID` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `payroll_employeepay` (`ID`,`EmployeeID`,`PayPeriod`,`CreatedDate`,`CreatedBy`,`ModifiedBy`,`ModifiedDate`,`GrossPay`,`NetPay`,
`PaymentDate`,`PaytypeLID`) VALUES (51,1,"Breanna Lynch","2017-06-06 23:57:45","Robin Griffin","Declan Grant","2017-05-06 22:15:40",2,10,"2017-12-30 11:52:46","Jameson Chang");


DROP TABLE IF EXISTS `payroll_employeecompensation`;

CREATE TABLE `payroll_employeecompensation` (
  `ID` int(11) NOT NULL,
  `CandidateID` int(11) NOT NULL,
  `PayAdjustmentMSTID` varchar(45) NOT NULL,
  `Amount` double NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `payroll_employeecompensation` (`ID`,`CandidateID`,`PayAdjustmentMSTID`,`CreatedDate`,`CreatedBy`,`ModifiedBy`,`ModifiedDate`,`Amount`)
 VALUES (69,5,"Sonya Rhodes","2017-06-06 12:14:21","Leonard Rogers","Simon Terry","2017-05-04 18:07:01",2);


DROP TABLE IF EXISTS `payroll_candidatefollowuphst`;

CREATE TABLE `payroll_candidatefollowuphst` (
  `ID` int(11) NOT NULL,
  `CandidateID` int(11) NOT NULL,
  `FollowUpdate` varchar(45) NOT NULL,
  `FollowupRemarks` varchar(45) NOT NULL,
  `JoiningDate` date NOT NULL,
  `FollowupRecruiterID` int(11) NOT NULL,
  `FollowupRecruiterName` varchar(45) NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `payroll_candidatefollowuphst` (`ID`,`CandidateID`,`FollowUpdate`,`CreatedDate`,`CreatedBy`,`ModifiedBy`,`ModifiedDate`,`FollowupRemarks`,`JoiningDate`,`FollowupRecruiterID`,`FollowupRecruiterName`) VALUES (34,7,"Kylee Berger","2017-06-08 01:21:02","Maggy Vazquez","Kendall Rasmussen","2017-05-06 06:24:11","Madaline James","2017-12-08 12:18:06",10,"Martin Wise");


DROP TABLE IF EXISTS `payroll_candidate`;

CREATE TABLE `payroll_candidate` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `mobilenumber` int(11) NOT NULL,
  `interviewhelddate` date NOT NULL,
  `PanelEmployeeID` int(11) NOT NULL,
  `PanelName` varchar(45) NOT NULL,
  `Rating` varchar(45) NOT NULL,
  `ExpectedSalary` double NOT NULL,
  `OfferedSalary` double NOT NULL,
  `OfferDate` date NOT NULL,
  `OfferValidDate` date NOT NULL,
  `RecruiterEmployeeID` int(11) NOT NULL,
  `RecruiterName` varchar(45) NOT NULL,
  `SelectReject` varchar(45) NOT NULL,
  `SelectRejectRemarks` varchar(45) NOT NULL,
  `OfferAcceptedDate` date NOT NULL,
  `JoiningDate` date NOT NULL,
  `NoTurnRemarks` varchar(45) NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `payroll_candidate` (`ID`,`FirstName`,`LastName`,`CreatedDate`,`CreatedBy`,`ModifiedBy`,`ModifiedDate`,`emailid`,`mobilenumber`,`interviewhelddate`,
`PanelEmployeeID`,`PanelName`,`Rating`,`ExpectedSalary`,`OfferedSalary`,`OfferDate`,`OfferValidDate`,`RecruiterEmployeeID`,`RecruiterName`,`SelectReject`,
`SelectRejectRemarks`,`OfferAcceptedDate`,`JoiningDate`,`NoTurnRemarks`) VALUES (74,"Blair","Aileen Russo","2017-06-03 20:31:29","Oleg Chen",
"Warren Rowland","2017-05-07 07:59:31","metus.facilisis.lorem@Nunclectuspede.net",12,"2017-12-27 10:27:20",4,"David Mcmahon","Amelia Holland",
4,4,"2017-08-30 06:46:33","2017-03-08 21:55:55",9,"Montana Ayers","Xaviera Newton","Renee Rivers","2016-09-04 18:35:03","2018-03-14 06:07:58","Quamar Curtis");



DROP TABLE IF EXISTS `travelplan_travelplanitenerary`;

CREATE TABLE `travelplan_travelplanitenerary` (
  `ID` int(11) NOT NULL,
  `TravelPlanID` int(11) NOT NULL,
  `ModeOfTravelLID` varchar(45) NOT NULL,
  `TravelFromLocation` varchar(45) NOT NULL,
  `TravelToLocation` varchar(45) NOT NULL,
  `TravelDateTime` datetime NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `travelplan_travelplanitenerary` (`ID`,`TravelPlanID`,`ModeOfTravelLID`,`CreatedDate`,`CreatedBy`,`ModifiedBy`,`ModifiedDate`,
`TravelFromLocation`,`TravelToLocation`,`TravelDateTime`) VALUES (77,10,"Denise Todd","06-04-17","Rhiannon Flores","Aimee Huff",
"05.04.17","Inez Barry","Stella Spence","2017-11-03 00:52:59");




DROP TABLE IF EXISTS `travelplan_travelplan`;

CREATE TABLE `travelplan_travelplan` (
  `ID` int(11) NOT NULL,
  `employeeid` int(11) NOT NULL,
  `TPRaisedDate` date NOT NULL,
  `TPRaisedBy` varchar(45) NOT NULL,
  `TPFromDate` date NOT NULL,
  `TPTODate` date NOT NULL,
  `TPFromLocation` varchar(45) NOT NULL,
  `TPTOLocation` varchar(45) NOT NULL,
  `TPApprovedBy` varchar(45) NOT NULL,
  `tpapproveddate` date NOT NULL,
  `TravelBookingPRef` varchar(45) NOT NULL,
  `TPAccommodationPref` varchar(45) NOT NULL,
  `TPAssignedTo` varchar(45) NOT NULL,
  `createdby` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` date NOT NULL,
  `status` varchar(45) NOT NULL,
  `ModeOfTravelLID` varchar(45) NOT NULL,
  `EligibleMOT` varchar(45) NOT NULL,
  `RoleligibilityDtlsMOTID` varchar(45) NOT NULL,
  `AccommodationOpted` varchar(45) NOT NULL,
  `AccommodationEligibleType` varchar(45) NOT NULL,
  `AccommodationEligibleAmt` varchar(45) NOT NULL,
  `AccommodationEligibleCtg` varchar(45) NOT NULL,
  `RoleligibilityDtlsAccomodationID` int(11) NOT NULL,
  `ClaimedTotalExpenses` int(11) NOT NULL,
  `ApprovedTotalExpenses` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `travelplan_travelplan` (`ID`,`employeeid`,`tpraiseddate`,`CreatedBy`,`CreatedDate`,
`ModifiedBy`,`ModifiedDate`,`status`,`tpraisedby`,`tpfromdate`,`tptodate`,`tpfromlocation`,`tptolocation`,
`tpapprovedby`,`tpapproveddate`,`travelbookingpref`,`tpaccommodationpref`,`tpassignedto`,`modeoftravellid`,
`eligiblemot`,`RoleligibilityDtlsMOTID`,`AccommodationOpted`,`AccommodationEligibleType`,
`AccommodationEligibleAmt`,`AccommodationEligibleCtg`,`RoleligibilityDtlsAccomodationID`,
`ClaimedTotalExpenses`,`ApprovedTotalExpenses`)
 VALUES (73,4,"2017-10-14 13:54:26","Wynne Sanford","06-03-17",
 "Hyacinth Harrington","05.07.17","Basia Sims","Nevada White","2017-08-06 22:43:51",
 "2016-12-21 08:27:48","Morolo","Sunderland","Quynn Mckinney","2018-03-06 01:02:46",
 "Cum sociis natoque penatibus","Nullam vitae diam. Proin dolor. Nulla","Macy Goodman",
 "Olympia Waller","vitae, erat. Vivamus nisi.","vel quam","tempor","non sapien molestie orci tincidunt ","1234","fermentum vel, mauris. Integer sem",10,6,2);



DROP TABLE IF EXISTS `travelplan_rolemaster`;


CREATE TABLE `travelplan_rolemaster` (
  `ID` int(11) NOT NULL,
  `RoleNm` varchar(45) NOT NULL,
  `RoleDescription` varchar(105) NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` date NOT NULL,
  `Status` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `travelplan_rolemaster` (`ID`,`RoleNm`,`RoleDescription`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`status`) VALUES (12,"Lucian Quinn","ultricies ornare, elit elit fermentum risus, at fringilla purus","Clementine Espinoza","06-03-17","Ulysses Barry","05.06.17","Wanda Fisher");
INSERT INTO `travelplan_rolemaster` (`ID`,`RoleNm`,`RoleDescription`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`status`) VALUES (84,"Scott Reynolds","tristique pharetra. Quisque ac","Reagan Evans","06-04-17","Nora Medina","05.04.17","Kitra Palmer");


DROP TABLE IF EXISTS `travelplan_roleligibilitydtls`;

CREATE TABLE `travelplan_roleligibilitydtls` (
  `ID` int(11) NOT NULL,
  `RoleMasterID` int(11) NOT NULL,
  `EligibilityTypeLid` varchar(45) NOT NULL,
  `EligibilityDescrLid` varchar(45) NOT NULL,
  `Attr1` varchar(45) NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` date NOT NULL,
  `Status` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `travelplan_roleligibilitydtls` (`ID`,`RoleMasterID`,`EligibilityTypeLid`,`EligibilityDescrLid`,`Attr1`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`status`) VALUES (26,9,"Medge Glass","Alyssa Stone","Cody Zamora","Shea Baxter","06-06-17","Todd Oconnor","05.04.17","Jordan Hurley");
INSERT INTO `travelplan_roleligibilitydtls` (`ID`,`RoleMasterID`,`EligibilityTypeLid`,`EligibilityDescrLid`,`Attr1`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`,`status`) VALUES (32,10,"Chelsea Velasquez","Orla Kane","Sierra Beck","Damian Baldwin","06-04-17","Steel Estes","05.05.17","Eve Medina");



DROP TABLE IF EXISTS `travelplan_payrollmst`;


CREATE TABLE `travelplan_payrollmst` (
  `ID` int(11) NOT NULL,
  `E` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `travelplan_payrollmst` (`ID`,`e`) VALUES (22,"Faith Hood");





DROP TABLE IF EXISTS `travelplan_lookup`;


CREATE TABLE `travelplan_lookup` (
  `ID` int(11) NOT NULL,
  `LookupType` varchar(45) NOT NULL,
  `Lookupvalue` int(11) NOT NULL,
  `LookupDescr` varchar(255) NOT NULL,
  `parentID` int(11) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `travelplan_lookup` (`ID`,`lookuptype`,`lookupvalue`,`parentid`,`status`,`createdby`,`createddate`,`modifiedby`,`modifieddate`,`lookupdescr`) VALUES 
(10,"Palmer Hoover",88,29,"Aileen Allison","Oleg Barrera",'07-08-17',"Dominique Snyder",'02-11-18',"Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui,");



INSERT INTO `travelplan_lookup` (`ID`,`lookuptype`,`lookupvalue`,`parentid`,`status`,`createdby`,`createddate`,`modifiedby`,`modifieddate`,`lookupdescr`) VALUES 
(11,"snpl",89,27,"snpl","srinivas",'07-09-17',"nagaraju","02-12-18","snpl hyderabad, libero et tristique pellentesque, tellus sem mollis dui,");




DROP TABLE IF EXISTS `travelplan_expensereport`;


CREATE TABLE `travelplan_expensereport` (
  `ID` int(11) NOT NULL,
  `TravelPlanID` int(11) NOT NULL,
  `ClaimDate` date NOT NULL,
  `ExpenseTypeLID` varchar(45) NOT NULL,
  `ExpenseDescr` varchar(255) NOT NULL,
  `BillAvailable` varchar(45) NOT NULL,
  `BillNum` int(11) NOT NULL,
  `BillDate` date NOT NULL,
  `Currency` varchar(45) NOT NULL,
  `ClaimedAmount` double NOT NULL,
  `ApprovedAmount` double NOT NULL,
  `ERAssignedTO` varchar(45) NOT NULL,
  `ERApprovedBy` varchar(45) NOT NULL,
  `ERAssignedDate` date NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `travelplan_expensereport` (`ID`,`TravelPlanID`,`claimdate`,`ExpenseTypeLID`,`ExpenseDescr`,`billavailable`,`billnum`,`billdate`,`currency`,`claimedamount`,
`ApprovedAmount`,`ERAssignedTO`,`ERApprovedBy`,`ERAssignedDate`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,`ModifiedDate`) VALUES(55,10,"28.09.17","123",
 "velit eu SNPL ltd","yes",32,"05-12-18","indian",1000,1000,"Aladdin Hurley","Reece Patrick","10-06-17","Chantale Ellis","01-12-18","Tatiana Jones","05-03-18");







DROP TABLE IF EXISTS `travelplan_employee`;


CREATE TABLE `travelplan_employee` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `TypeLID` varchar(45) NOT NULL,
  `DateOfJoin` date NOT NULL,
  `DateOfExit` date NOT NULL,
  `DesignationLID` varchar(45) NOT NULL,
  `RoleID` int(11) NOT NULL,
  `Login` varchar(45) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `MobileNum` int(11) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `Address1` varchar(45) NOT NULL,
  `Address2` varchar(45) NOT NULL,
  `Address3` varchar(45) NOT NULL,
  `District` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `EmergencyContactNum` int(11) NOT NULL,
  `EmergencyContactName` varchar(45) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `AdharCardNum` int(11) NOT NULL,
  `PANCardNum` varchar(45) NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedDate` date NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` date NOT NULL,
  `Status` varchar(45) NOT NULL,
  `TotalLeaves` int(11) NOT NULL,
  `ManagerID` int(11) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `BankAccountNum` int(11) NOT NULL,
  `BankName` varchar(105) NOT NULL,
  `BankIFSCCode` varchar(45) NOT NULL,
  `CandidateID` int(11) NOT NULL,
  PRIMARY KEY (`ID`,`CandidateID`,`BankIFSCCode`,`BankName`),
  UNIQUE KEY `AdharCardNum_UNIQUE` (`AdharCardNum`),
  UNIQUE KEY `PANCardNum_UNIQUE` (`PANCardNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `travelplan_employee` (`ID`,`name`,`TypeLID`,`DateOfJoin`,`DateOfExit`,`DesignationLID`,`RoleID`,`Login`,`emailid`,`MobileNum`,`gender`,`Address1`,`Address2`,
`Address3`,`District`,`City`,`State`,`Country`,`EmergencyContactNum`,`EmergencyContactName`,`Mobile`,`AdharCardNum`,`PANCardNum`,`CreatedBy`,`CreatedDate`,`ModifiedBy`,
`ModifiedDate`,`Status`,`TotalLeaves`,`ManagerID`,`DateOfBirth`,`BankAccountNum`,`BankName`,`BankIFSCCode`,`CandidateID`) 
VALUES (22,"Faith Hood","Zephr Peck","04.06.17","06.08.17","Theodore Rodriquez",2,"Baker Jordan","sodales.at@habitantmorbi.com",6,"Jin Perry","Amy Stafford",
"Daniel Hunt","Erin Hobbs","Autumn Hurst","Cade Goff","Ulric Hunter","Sybil Mack",7,"Althea Oneill",3,6,"Burton Holloway","Alana Cline","06-03-17","Orson Kirk","05.04.16",
"Fallon Watkins",12,8,"02.06.18",12,"Harriet Andrews","Hollee Snow",15);

\\selecting database \\

select * from timesheet_timesheet;
select * from timesheet_tasks;
select * from timesheet_taskmapping;
select * from timesheet_projects;
select * from payroll_payadjustmentmst;
select * from payroll_employeepayslip;
select * from payroll_employeepay;
select * from payroll_employeecompensation;
select * from payroll_candidatefollowuphst;
select * from payroll_candidate;
select * from travelplan_travelplanitenerary;
select * from travelplan_travelplan;
select * from travelplan_rolemaster;
select * from travelplan_roleligibilitydtls;
select * from travelplan_payrollmst;
select * from travelplan_lookup;
select * from travelplan_expensereport;
select * from travelplan_employee;
