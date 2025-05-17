-- Drop table if exists
-- DROP TABLE doctors;

-- Create table
CREATE TABLE if not exists doctors (
  doctor_id CHAR(13) PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  gender TEXT CHECK (gender IN ('male', 'female')),
  specialty TEXT,
  license_number TEXT UNIQUE,
  phone TEXT,
  email TEXT,

  -- เพิ่มสำหรับระบบล็อกอิน
  email_auth TEXT UNIQUE NOT NULL,      -- Email สำหรับล็อกอิน (ควรไม่ซ้ำกัน)
  pass_auth TEXT NOT NULL               -- Password สำหรับล็อกอิน (ควรเข้ารหัสตอนใช้งานจริง)
);

INSERT INTO doctors (
  doctor_id, first_name, last_name, gender, specialty, license_number,
  phone, email, email_auth, pass_auth
) VALUES
  ('2000000000001', 'Alice', 'Walker', 'female', 'Cardiology', 'LIC123456',
   '0881234567', 'alice.walker@hospital.com', 'alice.login@hospital.com', 'hashed_pass_1'),

  ('2000000000002', 'Robert', 'Lee', 'male', 'Neurology', 'LIC234567',
   '0882345678', 'robert.lee@hospital.com', 'robert.login@hospital.com', 'hashed_pass_2');

select * from doctors;