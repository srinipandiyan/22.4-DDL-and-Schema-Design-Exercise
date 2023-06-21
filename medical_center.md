Doctors:
doctor_id (PK)
doctor_name
specialization

Visits:
visit_id (PK)
doctor_id (FK)
patient_id (FK)
visit_date


Patients:
patient_id (PK)
patient_name
insurance
date_of_birth

Diagnoses:
diagnosis_id (PK)
visit_id (FK)
disease_id (FK)
notes

Diseases:
disease_id (PK)
disease_name
description