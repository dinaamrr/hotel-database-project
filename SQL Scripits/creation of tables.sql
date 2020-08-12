CREATE TABLE Rooms
(
  room_no INT NOT NULL,
  Type CHAR NOT NULL,
  Availibity CHAR NOT NULL,
  Smoking CHAR NOT NULL,
  View CHAR NOT NULL,
  rec_id VARCHAR,
  PRIMARY KEY (room_no),
  FOREIGN KEY (rec_id) REFERENCES Receptionist(rec_id)
);

CREATE TABLE Reservations
(
  Checkin_date DATE NOT NULL,
  Checkout_date DATE NOT NULL,
  res_numer INT NOT NULL,
  guest_id VARCHAR NOT NULL,
  PRIMARY KEY (res_numer),
  FOREIGN KEY (guest_id) REFERENCES Guest(guest_id)
);

CREATE TABLE Guest
(
  guest_name CHAR NOT NULL,
  guest_id VARCHAR NOT NULL,
  Guest_PhoneNo INT NOT NULL,
  e-mail VARCHAR NOT NULL,
  rec_id VARCHAR NOT NULL,
  worker_ID VARCHAR,
  PRIMARY KEY (guest_id),
  FOREIGN KEY (rec_id) REFERENCES Receptionist(rec_id),
  FOREIGN KEY (worker_ID) REFERENCES Room_service(worker_ID)
);

CREATE TABLE Departments
(
  dep_name CHAR NOT NULL,
  dep_no INT NOT NULL,
  ssn INT NOT NULL,
  PRIMARY KEY (dep_name),
  FOREIGN KEY (ssn) REFERENCES Employee(ssn),
  UNIQUE (dep_no)
);

CREATE TABLE Receptionist
(
  rec_id VARCHAR NOT NULL,
  rec_no INT NOT NULL,
  rec_salary FLOAT NOT NULL,
  Email VARCHAR NOT NULL,
  ssn INT NOT NULL,
  PRIMARY KEY (rec_id),
  FOREIGN KEY (ssn) REFERENCES Employee(ssn)
);

CREATE TABLE Employee
(
  Fname CHAR NOT NULL,
  Mname CHAR NOT NULL,
  Lname CHAR NOT NULL,
  emp_address VARCHAR NOT NULL,
  emp_phoneNo INT NOT NULL,
  ssn INT NOT NULL,
  emp_salary FLOAT NOT NULL,
  emp_birthdate DATE NOT NULL,
  dep_name CHAR NOT NULL,
  PRIMARY KEY (ssn),
  FOREIGN KEY (dep_name) REFERENCES Departments(dep_name)
);

CREATE TABLE Room_service
(
  Rooms_in_charge INT NOT NULL,
  Cleaning_speed VARCHAR NOT NULL,
  worker_ID VARCHAR NOT NULL,
  ssn INT NOT NULL,
  PRIMARY KEY (worker_ID),
  FOREIGN KEY (ssn) REFERENCES Employee(ssn)
);

CREATE TABLE Restaurant
(
  Location VARCHAR NOT NULL,
  Meals_times FLOAT NOT NULL,
  Chef__name CHAR NOT NULL,
  Chef_id VARCHAR NOT NULL,
  Age INT NOT NULL,
  Chef_PhoneNo INT NOT NULL,
  dep_name CHAR NOT NULL,
  PRIMARY KEY (Location),
  FOREIGN KEY (dep_name) REFERENCES Departments(dep_name)
);

CREATE TABLE Entertainment_
(
  Tour_Type CHAR NOT NULL,
  Duration VARCHAR NOT NULL,
  Costs FLOAT NOT NULL,
  Shows_Schedule VARCHAR NOT NULL,
  ent_type CHAR NOT NULL,
  dep_name CHAR NOT NULL,
  PRIMARY KEY (ent_type),
  FOREIGN KEY (dep_name) REFERENCES Departments(dep_name)
);

CREATE TABLE clean
(
  worker_ID VARCHAR NOT NULL,
  room_no INT NOT NULL,
  PRIMARY KEY (worker_ID, room_no),
  FOREIGN KEY (worker_ID) REFERENCES Room_service(worker_ID),
  FOREIGN KEY (room_no) REFERENCES Rooms(room_no)
);

CREATE TABLE Guest_Paid
(
  Paid FLOAT NOT NULL,
  guest_id VARCHAR NOT NULL,
  PRIMARY KEY (Paid, guest_id),
  FOREIGN KEY (guest_id) REFERENCES Guest(guest_id)
);
