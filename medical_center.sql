CREATE TABLE Doctors (
  doctor_id SERIAL PRIMARY KEY,
  doctor_name VARCHAR(255),
  specialization VARCHAR(255)
);

CREATE TABLE Visits (
  visit_id SERIAL PRIMARY KEY,
  doctor_id INT,
  patient_id INT,
  visit_date DATE,
  FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
  FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

CREATE TABLE Patients (
  patient_id SERIAL PRIMARY KEY,
  patient_name VARCHAR(255),
  insurance VARCHAR(255),
  date_of_birth DATE
);

CREATE TABLE Diagnoses (
  diagnosis_id SERIAL PRIMARY KEY,
  visit_id INT,
  disease_id INT,
  notes TEXT,
  FOREIGN KEY (visit_id) REFERENCES Visits(visit_id),
  FOREIGN KEY (disease_id) REFERENCES Diseases(disease_id)
);

CREATE TABLE Diseases (
  disease_id SERIAL PRIMARY KEY,
  disease_name VARCHAR(255),
  description TEXT
);