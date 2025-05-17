-- Drop table if exists
-- DROP TABLE encounters CASCADE;

-- Create table
-- CREATE TABLE encounters (
--   encounter_id UUID PRIMARY KEY,                          -- Auto-increment ID
--   patient_id CHAR(13) NOT NULL REFERENCES patients(patient_id) ON DELETE CASCADE,
--   doctor_id CHAR(13) NOT NULL REFERENCES doctors(doctor_id) ON DELETE SET NULL,
--   visit_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--   symptoms TEXT,
--   diagnosis TEXT,
--   treatment TEXT,
--   note TEXT
-- );

-- CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- INSERT INTO encounters (
--   encounter_id, patient_id, doctor_id, symptoms, diagnosis, treatment
-- ) VALUES (
--   uuid_generate_v4(), '1111111111112', '2000000000001', 'Cough and sore throat', 'Pharyngitis', 'Lozenges'
-- );

select * from encounters;