-- DROP TABLE IF EXISTS patients;

CREATE TABLE patients (
  patient_id CHAR(13) PRIMARY KEY,  -- ใช้ CHAR(13) เพื่อรองรับตัวเลขนำหน้า 0
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  birth_date DATE,
  gender TEXT CHECK (gender IN ('male', 'female')),
  phone TEXT,
  email TEXT,
  weight FLOAT,
  height FLOAT,
  blood_type TEXT CHECK (blood_type IN ('A', 'B', 'AB', 'O'))
);

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

INSERT INTO patients (
  patient_id, first_name, last_name, birth_date, gender, phone, email, weight, height, blood_type
) VALUES
  ('1001234567890', 'John', 'Doe', '1985-03-12', 'male', '1234567890', 'john.doe@example.com', 78.5, 175.0, 'O'),
  ('1001234567891', 'Emily', 'Smith', '1992-07-24', 'female', '0987654321', 'emily.smith@example.com', 62.3, 165.0, 'A'),
  ('1001234567892', 'Michael', 'Brown', '1978-11-03', 'male', '1112223333', 'michael.brown@example.com', 85.0, 180.0, 'B'),
  ('1001234567893', 'Sophia', 'Davis', '2000-01-15', 'female', '2223334444', 'sophia.davis@example.com', 55.0, 160.0, 'AB'),
  ('1001234567894', 'William', 'Johnson', '1990-05-30', 'male', '3334445555', 'william.johnson@example.com', 70.2, 172.0, 'O');

select * from patients;

