
-- Retrieve */ all patients 
 USE aghakan_db;

-- quiz 1.1
 SELECT first_name, last_name, date_of_birth
 FROM patients;
 
-- quiz 1.2 category
SELECT provider_id, first_name, provider_specialty
FROM providers;

-- quiz 2.1 starts with 'Ab'
SELECT *
FROM patients
WHERE first_name LIKE 'Ab%';

-- quiz 2.2 ends with 's'
SELECT *
FROM providers
WHERE provider_specialty LIKE '%s';

-- quiz 3.1 comparison operator
SELECT *
FROM patients
WHERE date_of_birth > '1980-01-01';

-- quiz 3.2 
SELECT acuity
FROM ed_visits
WHERE acuity >= '2';

-- quiz 4.1 Logical operators
SELECT *
FROM patients
WHERE language = 'spanish';

-- quiz 4.2
SELECT *
FROM ed_visits
WHERE reason_for_visit = 'Migraine' 
AND ed_disposition = 'Admitted';

-- quiz 4.3
SELECT *
FROM patients
WHERE date_of_birth BETWEEN '1975-01-01'
AND '1980-12-31';

-- quiz 5.1 sorting data
SELECT first_name, last_name
FROM patients
ORDER BY last_name ASC;

-- quiz 5.2
SELECT *
FROM visits
ORDER BY date_of_visit DESC;

-- quiz 6.1 Advanced Filtering
SELECT * 
FROM admissions,discharges
WHERE primary_diagnosis = 'Stroke'
AND discharge_disposition = 'Home';

-- quiz 6.2
SELECT *
FROM providers
WHERE date_joined > '1995-01-01'
AND provider_specialty = 'Pediatrics' OR 'Cardiology';

-- Bonus quiz
SELECT *
FROM discharges
WHERE discharge_disposition = 'Home' 
AND discharge_date BETWEEN '2018-01-01' AND '2018-01-07';

