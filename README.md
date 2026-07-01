# SQL-POLICE-STATION-DATABASE
This project is a relational database schema (MySQL) named PoliceDB, designed to digitize and manage the day-to-day operations of a police station, from citizen complaints to case closure. It contains 20 interlinked tables with sample seed data representing people, cases, and law-enforcement resources across several Pakistani cities.
Core Design
The schema uses a supertype/subtype (inheritance) pattern:

A base Person table stores common attributes (name, CNIC, contact, address, DOB) shared by everyone in the system.
Four subtype tables extend it via foreign keys back to PersonID: Citizen, Criminal, Witness, and Police_Officer — each adding role-specific fields (e.g., DangerLevel for criminals, Badge_Number for officers, ProtectionStatus for witnesses).

Functional Modules

Case & Incident Management

Case_File — central record for each case (type, status, priority, dates)
FIR — First Information Reports filed by citizens, linked to a case
Criminal_Record — conviction/sentencing history tied to criminals and cases


Investigation Workflow

Investigation — tracks investigation type, findings, and status per case
Crime_Scene — scene details (location, discovery time, processing status)
Evidence — chain-of-custody tracking, storage location, linked to criminal records


Law Enforcement Resources

Department — divisions like Homicide, Cyber Crime, Narcotics, Anti-Terrorism
Police_Officer — rank, specialization, department assignment, case load
Vehicle and Patrol — patrol scheduling, vehicle/officer assignment, area observations


Many-to-Many Relationship (Junction) Tables

Case_Criminal, Case_Witness, Case_Evidence — link cases to multiple criminals, witnesses, and evidence items with contextual notes/roles
Investigation_Officer, Investigation_Scene, Patrol_Officer — assign multiple officers/scenes to investigations and patrols



Key Features

Full referential integrity via foreign keys with ON DELETE CASCADE / SET NULL rules to maintain consistency when records are removed
Supports realistic case lifecycles: FIR filing → investigation → evidence collection → criminal record → case closure
Includes sample data for 7 citizens, 7 criminals, 7 witnesses, and 7 officers across major cities (Islamabad, Lahore, Karachi, Peshawar, Rawalpindi, Multan, Quetta), plus realistic case types (Homicide, Cyber Crime, Narcotics, Terrorism, Traffic Violations)
