
DROP DATABASE IF EXISTS SIBD_dental_clinic;

CREATE database SIBD_dental_clinic;

use SIBD_dental_clinic;

CREATE TABLE employee(
VAT char(15),
name varchar(150) NOT NULL,
birth_date date,
street varchar(150),
city varchar(150),
zip varchar(15),
IBAN varchar(20) NOT NULL,
salary varchar(15),
PRIMARY KEY (VAT),
UNIQUE (IBAN),
CHECK ( salary >= 0 )
);
CREATE TABLE nurse (
VAT char(15),
PRIMARY KEY (VAT),
Foreign key (VAT) references employee(VAT)
);
CREATE TABLE receptionist(
VAT char(15),
PRIMARY KEY (VAT),
Foreign key (VAT) references employee(VAT)
);
CREATE TABLE doctor(
VAT char(15),
specialization char(30),
biography TEXT,
email char(30) NOT NULL,
PRIMARY KEY (VAT),
FOREIGN KEY(VAT) references employee(VAT),
UNIQUE (email)
);
CREATE TABLE permanent_doctor(
years TINYINT NOT NULL,
VAT char(15) NOT NULL,
primary key (VAT),
foreign key (VAT) references doctor (VAT)
);
CREATE TABLE trainee_doctor(
VAT char(30),
VAT_supervisor char(30) NOT NULL,
primary key (VAT),
foreign key (VAT) references doctor(VAT),
foreign key (VAT_supervisor) references permanent_doctor(VAT)
);
CREATE TABLE supervision_report(
VAT char(15),
date_timestamp DATETIME,
description TEXT,
evaluation ENUM('1','2','3','4','5'),
primary key (VAT, date_timestamp),
foreign key (VAT) references trainee_doctor(VAT)
);
CREATE TABLE phone_number_employee(
    VAT char(15),
    phone char(15),
    primary key (VAT, phone),
    foreign key (VAT) references employee(VAT)
);
CREATE TABLE client(
    VAT char(15),
    name char(30),
    birth_date date NOT NULL,
    street char(30),
    city char(30),
    zip char(15),
    gender ENUM('man', 'woman', ''),
    primary key (VAT),
    age int
);
CREATE TABLE phone_number_client(
   VAT char(15),
   phone char(15),
   primary key (VAT, phone),
   foreign key (VAT) references client(VAT)
);
CREATE TABLE appointment(
    VAT_doctor char(15),
    date_timestamp timestamp,
    description TEXT,
    VAT_client char(15),
    primary key (VAT_doctor, date_timestamp),
    foreign key (VAT_doctor) references doctor(VAT),
    foreign key (VAT_client) references client(VAT)
);
CREATE TABLE consultation(
    VAT_doctor char(15),
    date_timestamp timestamp,
    SOAP_S MEDIUMTEXT,
    SOAP_O MEDIUMTEXT,
    SOAP_A MEDIUMTEXT,
    SOAP_P MEDIUMTEXT,
    primary key (VAT_doctor, date_timestamp),
    foreign key (VAT_doctor, date_timestamp) references appointment(VAT_doctor, date_timestamp)
);
CREATE TABLE consultation_assistant(
    VAT_doctor char(15),
    date_timestamp timestamp,
    VAT_nurse char(15),
    primary key (VAT_doctor, date_timestamp, VAT_nurse),
    foreign key (VAT_nurse) references nurse(VAT),
    foreign key (VAT_doctor, date_timestamp) references consultation(VAT_doctor, date_timestamp)
);
CREATE TABLE diagnostic_code(
    ID char(15),
    description MEDIUMTEXT,
    primary key(ID)
);
CREATE TABLE diagnostic_code_relation(
    ID1 char(15),
    ID2 char(15),
    type char(30),
    primary key (ID1, ID2),
    foreign key (ID1) references diagnostic_code(ID),
    foreign key (ID2) references diagnostic_code(ID)
);
CREATE TABLE consultation_diagnostic(
    VAT_doctor char(15),
    date_timestamp timestamp,
    ID char(15),
    primary key(VAT_doctor, date_timestamp, ID),
    foreign key (VAT_doctor, date_timestamp) references consultation(VAT_doctor, date_timestamp),
    foreign key (ID) references diagnostic_code(id)
);
CREATE TABLE medication(
    name char(30),
    lab char(30),
    primary key (name, lab)
);
CREATE TABLE prescription(
    name char(30),
    lab char(30),
    VAT_doctor char(15),
    ID char(15),
    date_timestamp timestamp,
    description LONGTEXT,
    primary key (name, lab, VAT_doctor, date_timestamp, ID),
    foreign key (VAT_doctor, date_timestamp, ID) references consultation_diagnostic(vat_doctor, date_timestamp, id),
    foreign key (name, lab) references medication(name, lab)
);
CREATE TABLE procedure_clinic(
    name char(30),
    type char(30),
    primary key (name)
);
CREATE TABLE procedure_in_consultation(
    name char(30),
    VAT_doctor char(15),
    date_timestamp timestamp,
    description LONGTEXT,
    primary key (name, VAT_doctor, date_timestamp),
    foreign key (VAT_doctor, date_timestamp) references consultation(VAT_doctor, date_timestamp),
    foreign key (name) references procedure_clinic(name)
);
CREATE TABLE procedure_radiology(
    name char(15),
    file char(100),
    VAT_doctor char(15),
    date_timestamp timestamp,
    primary key (name, file, VAT_doctor, date_timestamp),
    foreign key (name, VAT_doctor, date_timestamp) references procedure_in_consultation(name, VAT_doctor, date_timestamp)
);
CREATE TABLE teeth(
    quadrant ENUM('1','2','3','4'),
    number int,
    name char(30),
    primary key (quadrant, number)
);
CREATE TABLE procedure_charting(
    name char(30),
    VAT char(15),
    date_timestamp timestamp,
    quadrant ENUM('1', '2', '3', '4'),
    number int,
    description TEXT,
    measure TEXT,
    primary key (name, VAT, date_timestamp, quadrant, number),
    foreign key (name, VAT, date_timestamp) references procedure_in_consultation(NAME, VAT_DOCTOR, DATE_TIMESTAMP)

);


# DESCRIBE STATEMENTS TO ANALISE
describe employee;
describe nurse;
describe receptionist;
describe doctor;
describe permanent_doctor;
describe trainee_doctor;
describe supervision_report;
describe phone_number_employee;
describe client;
describe phone_number_client;
describe appointment;
describe consultation;
describe consultation_assistant;
describe diagnostic_code;
describe diagnostic_code_relation;
describe consultation_diagnostic;
describe medication;
describe prescription;
describe procedure_clinic;
describe procedure_in_consultation;
describe procedure_radiology;
describe teeth;
describe procedure_charting;

