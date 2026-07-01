CREATE DATABASE PoliceDB;
USE PoliceDB;

-----------------------------------------------
----------------Making Tables------------------
-----------------------------------------------

----------------------------------------------------------
-------------------Person Table---------------------------
----------------------------------------------------------
CREATE TABLE Person (
  PersonID CHAR(36) PRIMARY KEY,
  Name VARCHAR(200) NOT NULL,
  CNIC VARCHAR(25) UNIQUE,
  Contact VARCHAR(50),
  Address VARCHAR(300),
  DateOfBirth DATE
);

INSERT INTO Person (PersonID, Name, CNIC, Contact, Address, DateOfBirth) VALUES
('P001', 'Ahmed Khan', '35202-1122334-5', '03001234567', 'Islamabad, G-10/3', '1990-05-12'),
('P002', 'Bilal Ahmed', '33104-9988776-1', '03014567890', 'Lahore, Johar Town', '1988-11-22'),
('P003', 'Sara Malik', '37405-5566778-2', '03029876543', 'Karachi, Gulshan-e-Iqbal', '1995-03-17'),
('P004', 'Zain Ali', '42201-1234433-9', '03121234567', 'Quetta, Jinnah Road', '1992-08-01'),
('P005', 'Hira Saeed', '61101-4433221-0', '03451239871', 'Peshawar, Hayatabad', '1997-06-14'),
('P006', 'Usman Tariq', '35201-7766554-3', '03335678901', 'Rawalpindi, Satellite Town', '1986-09-30'),
('P007', 'Farah Javed', '34501-8899007-8', '03017894562', 'Multan, Cantt', '1993-12-05'),
('P008', 'Hamza Sheikh', '42101-3344556-5', '03219874563', 'Sialkot, Model Town', '1991-07-19'),
('P009', 'Ayesha Noor', '37401-1122993-6', '03331239876', 'Faisalabad, D-Ground', '1998-02-23'),
('P010', 'Ali Raza', '35200-6677889-4', '03131234598', 'Hyderabad, Latifabad', '1989-10-12');

INSERT INTO Person (PersonID, Name, CNIC, Contact, Address, DateOfBirth) VALUES
-- 7 Citizens
('CIT001', 'Imran Saleem', '35203-1122001-4', '03001112221', 'Lahore, DHA Phase 4', '1991-04-11'),
('CIT002', 'Maham Rizvi', '42101-5544332-1', '03125541234', 'Karachi, Clifton Block 8', '1996-09-27'),
('CIT003', 'Rizwan Ali', '37406-8899776-0', '03078889900', 'Islamabad, F-11', '1985-02-08'),
('CIT004', 'Naila Asghar', '61101-9988776-3', '03219998877', 'Peshawar, University Town', '1993-11-19'),
('CIT005', 'Shahbaz Khan', '34502-7766554-5', '03330001122', 'Multan, Shalimar Colony', '1990-01-30'),
('CIT006', 'Khadija Farooq', '35201-2233445-9', '03005558765', 'Rawalpindi, Bahria Phase 5', '1998-07-09'),
('CIT007', 'Jamal Mir', '42201-6655443-7', '03014566789', 'Quetta, Shahbaz Town', '1992-05-17'),

-- 7 Officers
('OFF001', 'Inspector Kamran', '35202-1100223-7', '03008887766', 'Lahore, Cantt Police Lines', '1980-03-14'),
('OFF002', 'DSP Farooq Malik', '33104-4433221-6', '03225556677', 'Islamabad, Police HQ', '1975-10-22'),
('OFF003', 'ASI Saima Noreen', '42101-3344556-9', '03334445566', 'Karachi, Gulshan PS', '1987-06-04'),
('OFF004', 'Constable Junaid', '37405-1133557-8', '03006665554', 'Rawalpindi, Saddar PS', '1994-12-01'),
('OFF005', 'Inspector Hammad', '61101-4499887-2', '03035553322', 'Peshawar, City Police Station', '1983-09-23'),
('OFF006', 'DSP Shazia Bano', '34501-7766885-1', '03137774455', 'Multan, City HQ', '1979-02-16'),
('OFF007', 'ASI Tanveer Abbas', '35200-5566778-0', '03025557788', 'Faisalabad, Civil Lines', '1988-05-28'),

-- 7 Witnesses
('WIT001', 'Moiz Javed', '35203-1100998-3', '03214442220', 'Lahore, Garden Town', '1992-09-03'),
('WIT002', 'Bushra Ansari', '42201-7788990-4', '03045552211', 'Karachi, PECHS', '1989-12-14'),
('WIT003', 'Hassan Rehman', '37401-3399887-1', '03351116677', 'Islamabad, F-8 Markaz', '1995-03-22'),
('WIT004', 'Sana Khalid', '61101-2211099-5', '03001119933', 'Peshawar, Saddar', '1991-01-08'),
('WIT005', 'Faizan Ali', '34501-9988776-2', '03034446688', 'Multan, Bosan Road', '1993-11-27'),
('WIT006', 'Madiha Noor', '35202-5544332-8', '03135552244', 'Rawalpindi, Chaklala', '1997-04-29'),
('WIT007', 'Noman Yousaf', '42101-6677889-3', '03324446600', 'Karachi, Nazimabad', '1990-08-06'),

-- 7 Criminals
('CRM001', 'Shahid Mehmood', '35201-1122334-8', '03014445566', 'Lahore, Kot Lakhpat', '1984-07-17'),
('CRM002', 'Kamran Siddiqui', '42101-2233445-7', '03135558877', 'Karachi, Lyari', '1989-02-14'),
('CRM003', 'Fahad Irshad', '37405-3344556-4', '03041119922', 'Islamabad, Tarnol', '1991-11-09'),
('CRM004', 'Zubair Qasim', '61101-4455667-9', '03214448899', 'Peshawar, Kohat Road', '1986-05-25'),
('CRM005', 'Nadeem Abbas', '34501-9988001-5', '03312225566', 'Multan, Old Shujaabad Road', '1987-12-31'),
('CRM006', 'Rashid Khan', '35202-7755443-6', '03011129944', 'Rawalpindi, Raja Bazaar', '1993-09-14'),
('CRM007', 'Imtiaz Alam', '42201-5544882-4', '03078886655', 'Quetta, Sariab Road', '1988-03-12');


SELECT * FROM Person

-----------------------------------------------------------
-------------------Citizen Table---------------------------
-----------------------------------------------------------
CREATE TABLE Citizen (
  CitizenID CHAR(36) PRIMARY KEY,         
  Occupation VARCHAR(100),
  EmergencyContact VARCHAR(100),
  FOREIGN KEY (CitizenID) REFERENCES Person(PersonID) ON DELETE CASCADE
);

INSERT INTO Citizen (CitizenID, Occupation, EmergencyContact) VALUES
('CIT001', 'Software Engineer', '03001112221'),
('CIT002', 'Teacher', '03125541234'),
('CIT003', 'Businessman', '03078889900'),
('CIT004', 'Nurse', '03219998877'),
('CIT005', 'Shop Owner', '03330001122'),
('CIT006', 'Freelancer', '03005558765'),
('CIT007', 'Driver', '03014566789'),
('P003', 'Student', '03029876543'),
('P007', 'Housewife', '03017894562'),
('P009', 'Data Analyst', '03331239876');

SELECT * FROM Citizen
------------------------------------------------------------
-------------------Criminal Table---------------------------
----------------------------------------------------------
CREATE TABLE Criminal (
  CriminalID CHAR(36) PRIMARY KEY,
  Alias VARCHAR(150),
  PreviousCrimes TEXT,
  DangerLevel VARCHAR(50),
  LastArrestDate DATE,
  FOREIGN KEY (CriminalID) REFERENCES Person(PersonID) ON DELETE CASCADE
);

INSERT INTO Criminal (CriminalID, Alias, PreviousCrimes, DangerLevel, LastArrestDate) VALUES
('CRM001', 'Shadow Wolf', 'Burglary, Car Theft', 'High', '2022-11-15'),
('CRM002', 'Black Cobra', 'Mugging, Assault', 'Medium', '2023-01-27'),
('CRM003', 'Red Viper', 'Cyber Fraud', 'Low', '2021-06-13'),
('CRM004', 'Night Phantom', 'House Break-ins', 'Medium', '2020-09-08'),
('CRM005', 'Steel Claw', 'Drug Possession', 'High', '2023-07-20'),
('CRM006', 'Ghost Rider', 'Hit and Run', 'High', '2022-03-11'),
('CRM007', 'Blue Tiger', 'Smuggling', 'Medium', '2021-12-03'),
('P001', 'Falcon', 'Pickpocketing', 'Low', '2020-04-12'),
('P004', 'Desert Fox', 'Illegal Weapons', 'High', '2023-08-04'),
('P008', 'Stone Face', 'Fraud, Scamming', 'Medium', '2022-10-19');

SELECT * FROM Criminal

-----------------------------------------------------------
-------------------Witness Table---------------------------
----------------------------------------------------------
CREATE TABLE Witness (
  WitnessID CHAR(36) PRIMARY KEY,
  WitnessType VARCHAR(100),
  StatementDate DATE,
  ProtectionStatus VARCHAR(100),
  FOREIGN KEY (WitnessID) REFERENCES Person(PersonID) ON DELETE CASCADE
);

INSERT INTO Witness (WitnessID, WitnessType, StatementDate, ProtectionStatus) VALUES
('WIT001', 'Eyewitness', '2023-10-11', 'Low'),
('WIT002', 'Victim', '2023-04-22', 'Medium'),
('WIT003', 'Informant', '2022-12-05', 'High'),
('WIT004', 'Bystander', '2023-02-13', 'Low'),
('WIT005', 'Anonymous Caller', '2023-06-28', 'Medium'),
('WIT006', 'Neighbour', '2023-08-19', 'Low'),
('WIT007', 'Security Guard', '2022-11-09', 'Medium'),
('P002', 'Eyewitness', '2022-07-14', 'Low'),
('P005', 'Victim', '2023-03-21', 'Medium'),
('P006', 'Informant', '2021-09-30', 'High');

SELECT * FROM Witness
--------------------------------------------------------------
-------------------Department Table---------------------------
--------------------------------------------------------------
CREATE TABLE Department (
  DeptID CHAR(36) PRIMARY KEY,
  DeptName VARCHAR(150) NOT NULL,
  Location VARCHAR(200),
  PhoneNumber VARCHAR(50),
  OfficerCount INT DEFAULT 0
);

INSERT INTO Department (DeptID, DeptName, Location, PhoneNumber, OfficerCount) VALUES
('DEP001', 'Homicide Division', 'Islamabad HQ', '051-1112223', 0),
('DEP002', 'Cyber Crime Unit', 'Lahore Sector 5', '042-9988776', 0),
('DEP003', 'Traffic Enforcement', 'Karachi District East', '021-5566778', 0),
('DEP004', 'Narcotics Control', 'Rawalpindi Central Office', '051-7788990', 0),
('DEP005', 'Special Operations', 'Peshawar Command Center', '091-6677889', 0),
('DEP006', 'Fraud Investigation', 'Faisalabad Regional Office', '041-4455667', 0),
('DEP007', 'Anti-Terrorism Squad', 'Quetta HQ', '081-3322110', 0);

SELECT * FROM Department

------------------------------------------------------------------
-------------------Police_Officer Table---------------------------
------------------------------------------------------------------
CREATE TABLE Police_Officer (
  OfficerID CHAR(36) PRIMARY KEY,
  Badge_Number VARCHAR(50) UNIQUE,
  Rankk VARCHAR(50),
  JoiningDate DATE,
  Specialization VARCHAR(150),
  CaseLimit INT DEFAULT 0,
  Status VARCHAR(50),
  DeptID CHAR(36),
  FOREIGN KEY (DeptID) REFERENCES Department(DeptID) ON DELETE SET NULL
);

INSERT INTO Police_Officer 
(OfficerID, Badge_Number, Rankk, JoiningDate, Specialization, CaseLimit, Status, DeptID) 
VALUES
('OFF001', 'BDG-1001', 'Inspector', '2018-04-12', 'Homicide', 10, 'Active', 'DEP001'),
('OFF002', 'BDG-1002', 'Sub-Inspector', '2020-11-03', 'Digital Forensics', 8, 'Active', 'DEP002'),
('OFF003', 'BDG-1003', 'Constable', '2019-06-27', 'Traffic Control', 5, 'Active', 'DEP003'),
('OFF004', 'BDG-1004', 'Inspector', '2017-02-15', 'Narcotics Ops', 9, 'Active', 'DEP004'),
('OFF005', 'BDG-1005', 'Chief Inspector', '2015-08-09', 'Special Ops', 12, 'Active', 'DEP005'),
('OFF006', 'BDG-1006', 'Sergeant', '2021-01-21', 'Financial Crime', 7, 'Active', 'DEP006'),
('OFF007', 'BDG-1007', 'Senior Inspector', '2016-10-30', 'Counter Terrorism', 11, 'Active', 'DEP007');

SELECT * FROM Police_Officer

-----------------------------------------------------------
-------------------Vehicle Table---------------------------
-----------------------------------------------------------
CREATE TABLE Vehicle (
  VehicleID CHAR(36) PRIMARY KEY,
  Model VARCHAR(150),
  PlateNumber VARCHAR(50) UNIQUE,
  VehicleType VARCHAR(50),
  Years INT,
  Status VARCHAR(50)
);

INSERT INTO Vehicle (VehicleID, Model, PlateNumber, VehicleType, Years, Status) VALUES
('VEH001', 'Toyota Corolla', 'ISB-1234', 'Sedan', 3, 'Active'),
('VEH002', 'Honda Civic', 'LHR-5678', 'Sedan', 5, 'Maintenance'),
('VEH003', 'Suzuki Alto', 'KHI-9101', 'Hatchback', 2, 'Active'),
('VEH004', 'Toyota Hilux', 'ISB-2345', 'Pickup', 4, 'Maintenance'),
('VEH005', 'Honda CRV', 'PEW-6789', 'SUV', 3, 'Active'),
('VEH006', 'Toyota Prado', 'FSB-3456', 'SUV', 6, 'Maintenance'),
('VEH007', 'Suzuki Cultus', 'QUA-7890', 'Hatchback', 1, 'Active'),
('VEH008', 'Ford Ranger', 'ISB-4567', 'Pickup', 5, 'Active'),
('VEH009', 'Honda City', 'FSD-1122', 'Sedan', 2, 'Maintenance'),
('VEH010', 'Toyota Fortuner', 'KHI-3344', 'SUV', 3, 'Active');


SELECT * FROM Vehicle

----------------------------------------------------------
-------------------Patrol Table---------------------------
----------------------------------------------------------
CREATE TABLE Patrol (
  PatrolID CHAR(36) PRIMARY KEY,
  PatrolDate DATE,
  StartTime TIME,
  EndTime TIME,
  Area VARCHAR(200),
  Observations TEXT,
  OfficerID CHAR(36),
  AssignedVehicleID CHAR(36),
  FOREIGN KEY (OfficerID) REFERENCES Police_Officer(OfficerID) ON DELETE SET NULL,
  FOREIGN KEY (AssignedVehicleID) REFERENCES Vehicle(VehicleID) ON DELETE SET NULL
);

INSERT INTO Patrol (PatrolID, PatrolDate, StartTime, EndTime, Area, Observations, OfficerID, AssignedVehicleID) VALUES
('PAT001', '2025-12-01', '08:00:00', '12:00:00', 'G-10, Islamabad', 'No incidents reported', 'OFF001', 'VEH001'),
('PAT002', '2025-12-01', '09:00:00', '13:00:00', 'DHA, Lahore', 'Traffic congestion observed', 'OFF002', 'VEH002'),
('PAT003', '2025-12-02', '14:00:00', '18:00:00', 'Gulshan-e-Iqbal, Karachi', 'Patrol completed without issues', 'OFF003', 'VEH003'),
('PAT004', '2025-12-02', '07:00:00', '11:00:00', 'Saddar, Rawalpindi', 'Suspicious activity near market', 'OFF004', 'VEH004'),
('PAT005', '2025-12-03', '10:00:00', '14:00:00', 'Hayatabad, Peshawar', 'Minor traffic violations', 'OFF005', 'VEH005'),
('PAT006', '2025-12-03', '15:00:00', '19:00:00', 'Civil Lines, Faisalabad', 'Routine patrol, no incidents', 'OFF006', 'VEH006'),
('PAT007', '2025-12-04', '06:00:00', '10:00:00', 'Jinnah Road, Quetta', 'Two suspicious persons reported', 'OFF007', 'VEH007'),
('PAT008', '2025-12-04', '12:00:00', '16:00:00', 'Satellite Town, Rawalpindi', 'Traffic cleared quickly', 'OFF001', 'VEH008'),
('PAT009', '2025-12-05', '09:00:00', '13:00:00', 'Cantt, Multan', 'Patrol uneventful', 'OFF002', 'VEH009'),
('PAT010', '2025-12-05', '11:00:00', '15:00:00', 'Clifton Block 8, Karachi', 'Minor disturbance handled', 'OFF003', 'VEH010');


SELECT * FROM Patrol
-------------------------------------------------------------
-------------------Case_File Table---------------------------
-------------------------------------------------------------
CREATE TABLE Case_File (
  CaseID CHAR(36) PRIMARY KEY,
  CaseType VARCHAR(100),
  FilingDate DATE,
  ClosingDate DATE,
  Status VARCHAR(50),
  Priority VARCHAR(50),
  Description TEXT
);

INSERT INTO Case_File (CaseID, CaseType, FilingDate, ClosingDate, Status, Priority, Description) VALUES
('CASE001', 'Homicide', '2025-01-05', '2025-03-12', 'Closed', 'High', 'Investigation of a murder in G-10 Islamabad.'),
('CASE002', 'Cyber Crime', '2025-02-10', NULL, 'Open', 'Medium', 'Fraudulent online transactions reported in Lahore.'),
('CASE003', 'Traffic Violation', '2025-03-01', '2025-03-05', 'Closed', 'Low', 'Multiple traffic rule violations reported in Karachi.'),
('CASE004', 'Narcotics', '2025-04-15', NULL, 'Under Investigation', 'High', 'Drug smuggling detected in Rawalpindi.'),
('CASE005', 'Terrorism', '2025-05-20', NULL, 'Open', 'Critical', 'Suspicious activities related to extremist group in Quetta.'),
('CASE006', 'Financial Fraud', '2025-06-02', '2025-07-10', 'Closed', 'High', 'Illegal financial transactions in Faisalabad.'),
('CASE007', 'Burglary', '2025-07-15', NULL, 'Open', 'Medium', 'House break-in reported in Multan.'),
('CASE008', 'Hit and Run', '2025-08-01', '2025-08-18', 'Closed', 'Medium', 'Vehicle involved in hit and run incident in Rawalpindi.'),
('CASE009', 'Kidnapping', '2025-09-12', NULL, 'Under Investigation', 'Critical', 'Child kidnapping reported in Peshawar.'),
('CASE010', 'Illegal Arms', '2025-10-05', NULL, 'Open', 'High', 'Illegal weapons found in Hyderabad, Latifabad.');

SELECT * FROM Case_File
-------------------------------------------------------
-------------------FIR Table---------------------------
-------------------------------------------------------
CREATE TABLE FIR (
  FIR_Number CHAR(36) PRIMARY KEY,
  FilingDate DATE,
  FilingTime TIME,
  ComplaintDetails TEXT,
  Statuss VARCHAR(50),
  RegisteredByCitizenID CHAR(36),
  CaseID CHAR(36),
  FOREIGN KEY (RegisteredByCitizenID) REFERENCES Citizen(CitizenID) ON DELETE SET NULL,
  FOREIGN KEY (CaseID) REFERENCES Case_File(CaseID) ON DELETE SET NULL
);

INSERT INTO FIR (FIR_Number, FilingDate, FilingTime, ComplaintDetails, Statuss, RegisteredByCitizenID, CaseID) VALUES
('FIR001', '2025-01-05', '09:30:00', 'Murder reported in G-10 Islamabad.', 'Closed', 'CIT001', 'CASE001'),
('FIR002', '2025-02-10', '14:45:00', 'Online fraud and account hacking reported.', 'Open', 'CIT002', 'CASE002'),
('FIR003', '2025-03-01', '10:15:00', 'Traffic accident and rule violations in Karachi.', 'Closed', 'CIT003', 'CASE003'),
('FIR004', '2025-04-15', '11:20:00', 'Illegal drugs smuggling detected.', 'Under Investigation', 'CIT004', 'CASE004'),
('FIR005', '2025-05-20', '16:00:00', 'Suspicious extremist activity in Quetta.', 'Open', 'CIT005', 'CASE005'),
('FIR006', '2025-06-02', '13:35:00', 'Embezzlement and financial fraud in Faisalabad.', 'Closed', 'CIT006', 'CASE006'),
('FIR007', '2025-07-15', '09:50:00', 'House burglary reported in Multan.', 'Open', 'CIT007', 'CASE007'),
('FIR008', '2025-08-01', '12:10:00', 'Hit and run incident involving a vehicle.', 'Closed', 'P003', 'CASE008'),
('FIR009', '2025-09-12', '08:25:00', 'Child kidnapping reported in Peshawar.', 'Under Investigation', 'P007', 'CASE009'),
('FIR010', '2025-10-05', '15:45:00', 'Illegal weapons found in Hyderabad.', 'Open', 'P009', 'CASE010');

SELECT * FROM FIR

-------------------------------------------------------------------
-------------------Criminal_Record Table---------------------------
-------------------------------------------------------------------
CREATE TABLE Criminal_Record (
  RecordID CHAR(36) PRIMARY KEY,
  CrimeDate DATE,
  CrimeType VARCHAR(150),
  Sentence TEXT,
  CourtVerdict TEXT,
  CriminalID CHAR(36),
  CaseID CHAR(36),
  FOREIGN KEY (CriminalID) REFERENCES Criminal(CriminalID) ON DELETE SET NULL,
  FOREIGN KEY (CaseID) REFERENCES Case_File(CaseID) ON DELETE CASCADE
);

INSERT INTO Criminal_Record (RecordID, CrimeDate, CrimeType, Sentence, CourtVerdict, CriminalID, CaseID) VALUES
('REC001', '2025-01-04', 'Murder', 'Life imprisonment', 'Guilty', 'CRM001', 'CASE001'),
('REC002', '2025-02-08', 'Online Fraud', '3 years imprisonment', 'Guilty', 'CRM002', 'CASE002'),
('REC003', '2025-03-01', 'Traffic Violation', 'Fine: 5000 PKR', 'Guilty', 'CRM003', 'CASE003'),
('REC004', '2025-04-14', 'Drug Smuggling', '5 years imprisonment', 'Guilty', 'CRM004', 'CASE004'),
('REC005', '2025-05-18', 'Terrorist Activity', '10 years imprisonment', 'Guilty', 'CRM005', 'CASE005'),
('REC006', '2025-06-01', 'Financial Fraud', '7 years imprisonment', 'Guilty', 'CRM006', 'CASE006'),
('REC007', '2025-07-14', 'Burglary', '2 years imprisonment', 'Guilty', 'CRM007', 'CASE007'),
('REC008', '2025-08-01', 'Hit and Run', '3 years imprisonment', 'Guilty', 'P001', 'CASE008'),
('REC009', '2025-09-10', 'Kidnapping', '8 years imprisonment', 'Guilty', 'P004', 'CASE009'),
('REC010', '2025-10-03', 'Illegal Arms', '5 years imprisonment', 'Guilty', 'P008', 'CASE010');

SELECT * FROM Criminal_Record

---------------------------------------------------------------
-------------------Crime_Scene Table---------------------------
---------------------------------------------------------------
CREATE TABLE Crime_Scene (
  SceneID CHAR(36) PRIMARY KEY,
  Location VARCHAR(300),
  DiscoveryDate DATE,
  DiscoveryTime TIME,
  SceneType VARCHAR(100),
  ProcessingStatus VARCHAR(100),
  CaseID CHAR(36),
  FOREIGN KEY (CaseID) REFERENCES Case_File(CaseID) ON DELETE CASCADE
);

INSERT INTO Crime_Scene (SceneID, Location, DiscoveryDate, DiscoveryTime, SceneType, ProcessingStatus, CaseID) VALUES
('SCN001', 'G-10/3 Islamabad, Near Park', '2025-01-04', '08:30:00', 'Homicide Scene', 'Processed', 'CASE001'),
('SCN002', 'DHA Phase 4, Lahore, Residential Area', '2025-02-08', '10:15:00', 'Cyber Crime Scene', 'Under Analysis', 'CASE002'),
('SCN003', 'Gulshan-e-Iqbal, Karachi, Main Road', '2025-03-01', '09:00:00', 'Traffic Accident', 'Processed', 'CASE003'),
('SCN004', 'Rawalpindi Central Market, Near Warehouse', '2025-04-14', '14:20:00', 'Drug Smuggling', 'Under Investigation', 'CASE004'),
('SCN005', 'Quetta Industrial Zone, Warehouse #5', '2025-05-18', '16:45:00', 'Terrorist Activity Site', 'Under Investigation', 'CASE005'),
('SCN006', 'Faisalabad Regional Office, Finance Dept', '2025-06-01', '11:30:00', 'Financial Fraud Scene', 'Processed', 'CASE006'),
('SCN007', 'Multan, Shalimar Colony, Residential House', '2025-07-14', '13:15:00', 'Burglary Scene', 'Processed', 'CASE007'),
('SCN008', 'Rawalpindi, Saddar Road', '2025-08-01', '07:50:00', 'Hit and Run Scene', 'Processed', 'CASE008'),
('SCN009', 'Peshawar, University Town', '2025-09-10', '09:40:00', 'Kidnapping Scene', 'Under Investigation', 'CASE009'),
('SCN010', 'Hyderabad, Latifabad, Warehouse', '2025-10-03', '12:10:00', 'Illegal Arms Scene', 'Under Investigation', 'CASE010');

SELECT * FROM Crime_Scene
-----------------------------------------------------------------
-------------------Investigation Table---------------------------
-----------------------------------------------------------------
CREATE TABLE Investigation (
  InvestigationID CHAR(36) PRIMARY KEY,
  StartDate DATE,
  EndDate DATE,
  InvestigationType VARCHAR(100),
  Findings TEXT,
  Status VARCHAR(50),
  CaseID CHAR(36),
  FOREIGN KEY (CaseID) REFERENCES Case_File(CaseID) ON DELETE CASCADE
);

INSERT INTO Investigation (InvestigationID, StartDate, EndDate, InvestigationType, Findings, Status, CaseID) VALUES
('INV001', '2025-01-05', '2025-03-10', 'Forensic Analysis', 'Evidence confirms suspect involvement.', 'Closed', 'CASE001'),
('INV002', '2025-02-11', NULL, 'Digital Forensics', 'Ongoing analysis of hacked accounts.', 'Ongoing', 'CASE002'),
('INV003', '2025-03-01', '2025-03-04', 'Traffic Inspection', 'Driver found guilty of violations.', 'Closed', 'CASE003'),
('INV004', '2025-04-15', NULL, 'Undercover Operations', 'Suspected drug network partially identified.', 'Ongoing', 'CASE004'),
('INV005', '2025-05-21', NULL, 'Counter-Terrorism Surveillance', 'Group activity under continuous monitoring.', 'Ongoing', 'CASE005'),
('INV006', '2025-06-03', '2025-07-08', 'Financial Audit', 'Illegal transactions traced to company accounts.', 'Closed', 'CASE006'),
('INV007', '2025-07-16', NULL, 'Neighborhood Inquiry', 'Burglary suspect identified and tracked.', 'Ongoing', 'CASE007'),
('INV008', '2025-08-02', '2025-08-17', 'Traffic Accident Reconstruction', 'Vehicle confirmed responsible for hit and run.', 'Closed', 'CASE008'),
('INV009', '2025-09-13', NULL, 'Surveillance and Interrogation', 'Suspect location partially identified.', 'Ongoing', 'CASE009'),
('INV010', '2025-10-06', NULL, 'Illegal Arms Inspection', 'Illegal weapons seized, suspects at large.', 'Ongoing', 'CASE010');

SELECT * FROM Investigation
------------------------------------------------------------
-------------------Evidence Table---------------------------
------------------------------------------------------------
CREATE TABLE Evidence (
  EvidenceID CHAR(36) PRIMARY KEY,
  EvidenceType VARCHAR(150),
  CollectionDate DATE,
  StorageLocation VARCHAR(200),
  ChainOfCustody TEXT,
  Staatus VARCHAR(50),
  RelatedRecordID CHAR(36),
  CaseID CHAR(36),
  FOREIGN KEY (RelatedRecordID) REFERENCES Criminal_Record(RecordID) ON DELETE SET NULL,
  FOREIGN KEY (CaseID) REFERENCES Case_File(CaseID) ON DELETE NO ACTION
);

INSERT INTO Evidence (EvidenceID, EvidenceType, CollectionDate, StorageLocation, ChainOfCustody, Staatus, RelatedRecordID, CaseID) VALUES
('EVD001', 'Fingerprint Samples', '2025-01-05', 'Islamabad Forensics Lab', 'Collected by OFF001, logged and sealed.', 'Stored', 'REC001', 'CASE001'),
('EVD002', 'Laptop and Hard Drive', '2025-02-12', 'Lahore Cyber Lab', 'Collected by OFF002, evidence bag sealed.', 'Under Analysis', 'REC002', 'CASE002'),
('EVD003', 'Traffic Camera Footage', '2025-03-01', 'Karachi Traffic Dept', 'Retrieved by OFF003, stored digitally.', 'Stored', 'REC003', 'CASE003'),
('EVD004', 'Seized Drugs', '2025-04-15', 'Rawalpindi Narcotics Warehouse', 'Collected by OFF004, sealed and logged.', 'Under Analysis', 'REC004', 'CASE004'),
('EVD005', 'Suspect Devices', '2025-05-21', 'Quetta ATS Evidence Room', 'Collected by OFF005, chain documented.', 'Stored', 'REC005', 'CASE005'),
('EVD006', 'Bank Records', '2025-06-03', 'Faisalabad Fraud Investigation Dept', 'Collected by OFF006, verified and logged.', 'Stored', 'REC006', 'CASE006'),
('EVD007', 'Burglary Tools', '2025-07-16', 'Multan Police Station Evidence Locker', 'Collected by OFF007, sealed.', 'Stored', 'REC007', 'CASE007'),
('EVD008', 'Vehicle Parts', '2025-08-02', 'Rawalpindi Traffic Dept Garage', 'Retrieved by OFF001, cataloged.', 'Stored', 'REC008', 'CASE008'),
('EVD009', 'Kidnapping Evidence', '2025-09-13', 'Peshawar Police HQ', 'Collected by OFF005, documented chain.', 'Under Analysis', 'REC009', 'CASE009'),
('EVD010', 'Illegal Arms', '2025-10-06', 'Hyderabad Police Warehouse', 'Seized by OFF008, logged and sealed.', 'Stored', 'REC010', 'CASE010');

SELECT * FROM Evidence
-----------------------------------------------------------------
-------------------Case_Criminal Table---------------------------
-----------------------------------------------------------------
CREATE TABLE Case_Criminal (
  CaseID CHAR(36),
  CriminalID CHAR(36),
  Roles VARCHAR(100),
  PRIMARY KEY (CaseID, CriminalID),
  FOREIGN KEY (CaseID) REFERENCES Case_File(CaseID) ON DELETE CASCADE,
  FOREIGN KEY (CriminalID) REFERENCES Criminal(CriminalID) ON DELETE CASCADE
);

INSERT INTO Case_Criminal (CaseID, CriminalID, Roles) VALUES
('CASE001', 'CRM001', 'Primary Suspect'),
('CASE002', 'CRM002', 'Primary Suspect'),
('CASE003', 'CRM003', 'Violator'),
('CASE004', 'CRM004', 'Primary Suspect'),
('CASE005', 'CRM005', 'Accomplice'),
('CASE006', 'CRM006', 'Primary Suspect'),
('CASE007', 'CRM007', 'Primary Suspect'),
('CASE008', 'P001', 'Driver'),
('CASE009', 'P004', 'Kidnapper'),
('CASE010', 'P008', 'Arms Dealer'),
('CASE005', 'CRM007', 'Associate'),  -- multiple criminals in a case
('CASE002', 'P008', 'Accomplice');   -- multiple criminals in a case

SELECT * FROM Case_Criminal
----------------------------------------------------------------
-------------------Case_Witness Table---------------------------
----------------------------------------------------------------
CREATE TABLE Case_Witness (
  CaseID CHAR(36),
  WitnessID CHAR(36),
  StatementText TEXT,
  PRIMARY KEY (CaseID, WitnessID),
  FOREIGN KEY (CaseID) REFERENCES Case_File(CaseID) ON DELETE CASCADE,
  FOREIGN KEY (WitnessID) REFERENCES Witness(WitnessID) ON DELETE CASCADE
);

INSERT INTO Case_Witness (CaseID, WitnessID, StatementText) VALUES
('CASE001', 'WIT001', 'I saw the suspect fleeing the crime scene around 8:15 AM.'),
('CASE002', 'WIT002', 'I received a suspicious email from the suspect and reported it.'),
('CASE003', 'WIT003', 'I witnessed the traffic violation and noted the vehicle number.'),
('CASE004', 'WIT004', 'Observed unusual activities at the warehouse during night hours.'),
('CASE005', 'WIT005', 'I heard suspicious conversations and called authorities immediately.'),
('CASE006', 'WIT006', 'Found financial documents that seemed fraudulent in the office.'),
('CASE007', 'WIT007', 'Saw the suspect breaking into the house around midnight.'),
('CASE008', 'P002', 'Noticed the speeding vehicle hitting another car.'),
('CASE009', 'P005', 'Heard screams and saw suspicious persons near the alley.'),
('CASE010', 'P006', 'Observed individuals carrying illegal weapons into a warehouse.'),
('CASE005', 'WIT003', 'Saw the suspects leaving in a black van.'),
('CASE002', 'P006', 'Helped in tracking the digital footprint of the hacker.');

SELECT * FROM Case_Witness
-----------------------------------------------------------------
-------------------Case_Evidence Table---------------------------
-----------------------------------------------------------------
CREATE TABLE Case_Evidence (
  CaseID CHAR(36),
  EvidenceID CHAR(36),
  Notes TEXT,
  PRIMARY KEY (CaseID, EvidenceID),
  FOREIGN KEY (CaseID) REFERENCES Case_File(CaseID) ON DELETE CASCADE,
  FOREIGN KEY (EvidenceID) REFERENCES Evidence(EvidenceID) ON DELETE CASCADE
);

INSERT INTO Case_Evidence (CaseID, EvidenceID, Notes) VALUES
('CASE001', 'EVD001', 'Fingerprint matched the primary suspect.'),
('CASE002', 'EVD002', 'Laptop contains incriminating files.'),
('CASE003', 'EVD003', 'Traffic footage used in court.'),
('CASE004', 'EVD004', 'Drugs analyzed and stored for trial.'),
('CASE005', 'EVD005', 'Devices linked to multiple suspects.'),
('CASE006', 'EVD006', 'Bank records verified and submitted.'),
('CASE007', 'EVD007', 'Tools matched to burglary scene.'),
('CASE008', 'EVD008', 'Vehicle parts confirm involvement.'),
('CASE009', 'EVD009', 'Evidence collected from kidnap scene.'),
('CASE010', 'EVD010', 'Illegal arms seized for prosecution.'),
('CASE005', 'EVD007', 'Additional tools connected to secondary suspect.'),
('CASE002', 'EVD010', 'Evidence used to track accomplice activities.');

SELECT * FROM Case_Evidence
-------------------------------------------------------------------------
-------------------Investigation_Officer Table---------------------------
-------------------------------------------------------------------------
CREATE TABLE Investigation_Officer (
  InvestigationID CHAR(36),
  OfficerID CHAR(36),
  AssignedRole VARCHAR(100),
  PRIMARY KEY (InvestigationID, OfficerID),
  FOREIGN KEY (InvestigationID) REFERENCES Investigation(InvestigationID) ON DELETE CASCADE,
  FOREIGN KEY (OfficerID) REFERENCES Police_Officer(OfficerID) ON DELETE CASCADE
);

INSERT INTO Investigation_Officer (InvestigationID, OfficerID, AssignedRole) VALUES
('INV001', 'OFF001', 'Lead Investigator'),
('INV002', 'OFF002', 'Digital Forensics Expert'),
('INV003', 'OFF003', 'Traffic Officer'),
('INV004', 'OFF004', 'Field Officer'),
('INV005', 'OFF005', 'Counter-Terrorism Lead'),
('INV006', 'OFF006', 'Financial Analyst'),
('INV007', 'OFF007', 'Field Investigator'),
('INV008', 'OFF001', 'Accident Reconstruction Expert'),
('INV009', 'OFF005', 'Surveillance Officer'),
('INV010', 'OFF007', 'Evidence Collection Lead'),
('INV005', 'OFF007', 'Supporting Investigator'),
('INV002', 'OFF006', 'Technical Support');

SELECT * FROM Investigation_Officer
-----------------------------------------------------------------------
-------------------Investigation_Scene Table---------------------------
-----------------------------------------------------------------------
CREATE TABLE Investigation_Scene (
  InvestigationID CHAR(36),
  SceneID CHAR(36),
  Notes TEXT,
  PRIMARY KEY (InvestigationID, SceneID),
  FOREIGN KEY (InvestigationID) REFERENCES Investigation(InvestigationID) ON DELETE CASCADE,
  FOREIGN KEY (SceneID) REFERENCES Crime_Scene(SceneID) ON DELETE NO ACTION
);

INSERT INTO Investigation_Scene (InvestigationID, SceneID, Notes) VALUES
('INV001', 'SCN001', 'Forensic team collected fingerprint samples and documented the scene.'),
('INV002', 'SCN002', 'Digital evidence collected and secured in cyber lab.'),
('INV003', 'SCN003', 'Traffic footage analyzed and reported.'),
('INV004', 'SCN004', 'Undercover surveillance conducted overnight.'),
('INV005', 'SCN005', 'Arms seizure recorded, scene processed.'),
('INV006', 'SCN006', 'Financial documents verified on site.'),
('INV007', 'SCN007', 'Burglary tools documented at crime scene.'),
('INV008', 'SCN008', 'Vehicle inspection completed, photographs taken.'),
('INV009', 'SCN009', 'Scene secured, evidence collected.'),
('INV010', 'SCN010', 'Illegal arms collected and logged.'),
('INV005', 'SCN007', 'Secondary scene linked to suspects in multi-location investigation.'),
('INV002', 'SCN010', 'Additional devices collected for cyber-crime investigation.');


SELECT * FROM Investigation_Scene
------------------------------------------------------------------
-------------------Patrol_Officer Table---------------------------
------------------------------------------------------------------
CREATE TABLE Patrol_Officer (
  PatrolID CHAR(36),
  OfficerID CHAR(36),
  PRIMARY KEY (PatrolID, OfficerID),
  FOREIGN KEY (PatrolID) REFERENCES Patrol(PatrolID) ON DELETE CASCADE,
  FOREIGN KEY (OfficerID) REFERENCES Police_Officer(OfficerID) ON DELETE CASCADE
);

INSERT INTO Patrol_Officer (PatrolID, OfficerID) VALUES
('PAT001', 'OFF001'),
('PAT001', 'OFF003'),
('PAT002', 'OFF002'),
('PAT002', 'OFF006'),
('PAT003', 'OFF003'),
('PAT004', 'OFF004'),
('PAT005', 'OFF005'),
('PAT005', 'OFF007'),
('PAT006', 'OFF006'),
('PAT007', 'OFF007'),
('PAT008', 'OFF001'),
('PAT009', 'OFF002');

SELECT * FROM Patrol_Officer


-----------------------------------------------------
-------------------Queries---------------------------
-----------------------------------------------------

--List all officers along with their department names

SELECT po.OfficerID, po.Rankk, d.DeptName
FROM Police_Officer po
JOIN Department d ON po.DeptID = d.DeptID;


--Show all patrols with the officer names and vehicle plate numbers

SELECT p.PatrolID, per.Name AS OfficerName, v.PlateNumber
FROM Patrol p
JOIN Police_Officer po ON p.OfficerID = po.OfficerID
JOIN Person per ON po.OfficerID = per.PersonID
JOIN Vehicle v ON p.AssignedVehicleID = v.VehicleID;


--Find all FIRs with the citizen name who registered it

SELECT f.FIR_Number, per.Name AS CitizenName, f.Statuss
FROM FIR f
JOIN Citizen c ON f.RegisteredByCitizenID = c.CitizenID
JOIN Person per ON c.CitizenID = per.PersonID;


--FIRs with citizens (using LEFT JOIN)

SELECT FIR.FIR_Number, FIR.FilingDate, FIR.ComplaintDetails, Citizen.CitizenID, Citizen.Occupation
FROM FIR
LEFT JOIN Citizen ON FIR.RegisteredByCitizenID = Citizen.CitizenID;


--Criminals and their cases (using RIGHT JOIN)

SELECT Case_File.CaseID, Case_File.CaseType, Criminal.Alias, Case_Criminal.Roles
FROM Case_File
RIGHT JOIN Case_Criminal ON Case_File.CaseID = Case_Criminal.CaseID
RIGHT JOIN Criminal ON Case_Criminal.CriminalID = Criminal.CriminalID;


--Officers in investigations (using WHERE instead of JOIN conditions)

SELECT Investigation.InvestigationID, Investigation.InvestigationType, Police_Officer.OfficerID
FROM Investigation, Investigation_Officer, Police_Officer
WHERE Investigation.InvestigationID = Investigation_Officer.InvestigationID
AND Investigation_Officer.OfficerID = Police_Officer.OfficerID;


--Cases with lead officers (using HAVING)

SELECT Case_File.CaseID, Police_Officer.OfficerID AS LeadOfficer, COUNT(*) AS TotalLeads
FROM Case_File
JOIN Investigation ON Case_File.CaseID = Investigation.CaseID
JOIN Investigation_Officer ON Investigation.InvestigationID = Investigation_Officer.InvestigationID
JOIN Police_Officer ON Investigation_Officer.OfficerID = Police_Officer.OfficerID
WHERE Investigation_Officer.AssignedRole LIKE '%Lead%'
GROUP BY Case_File.CaseID, Police_Officer.OfficerID
HAVING COUNT(*) >= 1;


