-- PostgreSQL Seed Data for NCIP System
-- Converted from MySQL dump

-- Insert purposes
INSERT INTO purposes (purpose_id, purpose_name, code, description, requirements, is_active, created_at) VALUES
(1, 'Educational Assistance', 'EA', 'For students seeking educational support', '[{"id": "birth_cert", "name": "Birth Certificate (PSA Copy)", "required": true}, {"id": "school_id", "name": "School ID", "required": true}, {"id": "grades", "name": "Certificate of Grades", "required": true}, {"id": "enrollment", "name": "Certificate of Enrollment", "required": true}, {"id": "barangay_cert", "name": "Barangay Certificate", "required": true}]', true, '2025-10-11 18:20:52'),
(2, 'Scholarship Application', 'SA', 'For scholarship applications', '[{"id": "birth_cert", "name": "Birth Certificate (PSA Copy)", "required": true}, {"id": "school_id", "name": "School ID", "required": true}, {"id": "grades", "name": "Certificate of Grades", "required": true}, {"id": "income_cert", "name": "Certificate of Income", "required": true}, {"id": "barangay_cert", "name": "Barangay Certificate", "required": true}]', true, '2025-10-11 18:20:52'),
(3, 'Employment', 'E', 'For employment purposes', '[{"id": "birth_cert", "name": "Birth Certificate (PSA Copy)", "required": true}, {"id": "diploma", "name": "Diploma/Certificate", "required": true}, {"id": "resume", "name": "Resume/CV", "required": true}, {"id": "barangay_cert", "name": "Barangay Certificate", "required": true}, {"id": "medical_cert", "name": "Medical Certificate", "required": true}]', true, '2025-10-11 18:20:52'),
(4, 'Business Permit', 'BP', 'For business permit applications', '[{"id": "birth_cert", "name": "Birth Certificate (PSA Copy)", "required": true}, {"id": "business_plan", "name": "Business Plan", "required": true}, {"id": "location_sketch", "name": "Location Sketch", "required": true}, {"id": "barangay_cert", "name": "Barangay Certificate", "required": true}, {"id": "tax_cert", "name": "Tax Certificate", "required": true}]', true, '2025-10-11 18:20:52');

-- Insert services
INSERT INTO services (service_id, service_name, description, is_active, created_at) VALUES
(1, 'Certificate of Confirmation', 'Certificate confirming indigenous identity', true, '2025-10-11 18:20:52'),
(2, 'Ancestral Domain Title', 'Title for ancestral domain claims', true, '2025-10-11 18:20:52'),
(3, 'Free and Prior Informed Consent', 'FPIC documentation', true, '2025-10-11 18:20:52');

-- Insert users
INSERT INTO users (user_id, username, first_name, last_name, email, password_hash, role, is_active, is_approved, phone_number, address, created_at, updated_at) VALUES
(4, 'admin', 'Admin', 'User', 'admin@ncip.gov', '$2b$10$w495boLPAFa/eqJNxmAsh.XVRviaxUniQHjO890vxECijZzWcT/0u', 'admin', true, true, '09171234567', 'General Santos City', '2025-10-11 18:20:52', '2025-10-20 20:51:06'),
(7, 'user1', 'Juan', 'Dela Cruz', 'juan@example.com', '$2b$10$BgEwJRguViTWVgG5V1qdwuVoxHTtCmJbU5pKpsfKYy9bXEg0XPepi', 'user', true, true, '09171231234', 'Koronadal City', '2025-10-11 18:25:31', '2025-10-20 20:48:58'),
(10, 'Anne', 'Analiza', 'Tatad', 'anne_feb19@yahoo.com', '$2b$10$/dc5WJaWmeZXF5bfOrSizuNK6qhPY1nFA2B7ZupzK/ginaVt/.N6C', 'admin', true, true, NULL, NULL, '2025-10-14 14:46:03', '2025-10-14 14:46:03'),
(11, 'Juan123', 'Juan', 'Dela Cruz', 'Juan123@gmail.com', '$2b$10$09jHeEoyS.s/hjJA71kzjerCFwDU1qQ21rUR1y.pNQfhKOYIzTW72', 'user', true, true, '+639106920736', 'Sitio Proper, Daan Suyan, Padidu, Malapatan, Sarangani', '2025-10-14 14:47:01', '2025-10-14 14:47:01'),
(12, 'maria', 'Maria', 'Santos', 'maria@example.com', '$2b$10$hash_for_maria', 'user', true, true, '09173334455', 'Malungon, Sarangani', '2025-10-14 14:47:22', '2025-10-14 14:47:22'),
(100, 'testadmin', 'Test', 'Admin', 'testadmin@ncip.gov.ph', '$2b$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', true, true, NULL, NULL, '2025-10-21 20:41:49', '2025-10-27 16:42:33'),
(999, 'testuser', 'Maria', 'Santos', 'maria.santos@test.com', '$2b$10$test', 'user', true, true, NULL, NULL, '2025-10-21 20:21:55', '2025-10-27 16:42:34'),
(1003, 'chelseyjalaman15@gmail.com', 'Chelsey Janroy', 'Jalaman', 'chelseyjalaman15@gmail.com', '$2b$12$K9MLB3uUvhMfTjl9EJFxe.mRh6oSOxtsLMfcspUqQgvmUu8oaew5O', 'user', true, true, '+639279292789', 'Maribulan, Alabel, Sarangani', '2025-10-27 17:44:30', '2025-10-27 17:44:30');

-- Insert applications
INSERT INTO applications (application_id, user_id, application_number, service_type, purpose, status, form_data, submitted_at, reviewed_at, completed_at, cancelled_at, reviewed_by, reviewer_notes, rejection_reason, created_at, updated_at, review_notes) VALUES
(4, 999, 'TEST-CERT-001', 'Certificate of Confirmation', 'Educational Assistance', 'certificate_issued', '{"personalInfo": {"tribe": "Blaan", "address": "Brgy. Poblacion, Alabel, Sarangani Province", "fullName": "Maria Santos Bacus", "birthPlace": "Alabel, Sarangani Province"}}', '2025-10-21 20:29:59', '2025-10-21 20:29:59', NULL, NULL, 4, NULL, NULL, '2025-10-21 20:29:59', '2025-10-21 20:35:15', NULL),
(5, 999, 'TEST-ADMIN-002', 'Certificate of Confirmation', 'Business Permit', 'certificate_issued', '{"personalInfo": {"tribe": "Tboli", "address": "Brgy. Kawas, Alabel, Sarangani Province", "fullName": "Juan Carlos Dela Cruz", "birthPlace": "Koronadal City, South Cotabato"}}', '2025-10-21 20:41:49', '2025-10-22 15:18:32', NULL, NULL, 4, NULL, NULL, '2025-10-21 20:41:49', '2025-10-22 15:22:29', 'Approved by undefined undefined');

-- Insert genealogy records
INSERT INTO genealogy_records (genealogy_id, first_name, last_name, middle_name, birth_date, birth_place, gender, tribe_affiliation, father_name, mother_name, spouse_name, is_living, death_date, notes, created_by, created_at, updated_at) VALUES
(1, 'Pedro', 'Santos', 'Reyes', '1920-01-15', 'Alabel, Sarangani', 'Male', 'Blaan', NULL, NULL, 'Rosa Mendoza', false, '1995-03-20', 'Patriarch of Santos family', NULL, '2025-10-16 06:05:32', '2025-10-16 06:05:32'),
(2, 'Rosa', 'Mendoza', 'Cruz', '1925-05-10', 'Malungon, Sarangani', 'Female', 'Blaan', NULL, NULL, 'Pedro Santos', false, '1998-07-15', 'Matriarch of Santos family', NULL, '2025-10-16 06:05:32', '2025-10-16 06:05:32'),
(3, 'Antonio', 'dela Cruz', 'Lopez', '1922-08-20', 'Glan, Sarangani', 'Male', 'Tboli', NULL, NULL, 'Esperanza Reyes', false, '2000-12-05', 'Grandfather from maternal side', NULL, '2025-10-16 06:05:32', '2025-10-16 06:05:32'),
(4, 'Esperanza', 'Reyes', 'Garcia', '1928-11-30', 'Kiamba, Sarangani', 'Female', 'Tboli', NULL, NULL, 'Antonio dela Cruz', false, '2005-09-10', 'Grandmother from maternal side', NULL, '2025-10-16 06:05:32', '2025-10-16 06:05:32'),
(7, 'Juan', 'Santos', 'Pedro', '1950-03-15', 'Alabel, Sarangani', 'Male', 'Blaan', 'Pedro Santos', 'Rosa Mendoza', 'Carmen dela Cruz', true, NULL, 'Father of Maria Santos', NULL, '2025-10-16 06:05:32', '2025-10-16 06:05:32'),
(8, 'Carmen', 'dela Cruz', 'Antonio', '1955-07-20', 'Glan, Sarangani', 'Female', 'Tboli', 'Antonio dela Cruz', 'Esperanza Reyes', 'Juan Santos', true, NULL, 'Mother of Maria Santos', NULL, '2025-10-16 06:05:32', '2025-10-16 06:05:32'),
(10, 'Maria', 'Santos', 'Carmen', '1980-12-25', 'Alabel, Sarangani', 'Female', 'Blaan', 'Juan Santos', 'Carmen dela Cruz', NULL, true, NULL, 'Sample genealogy record', NULL, '2025-10-16 06:05:32', '2025-10-16 06:05:32');

-- Insert genealogy relationships
INSERT INTO genealogy_relationships (relationship_id, person_id, related_person_id, relationship_type, is_primary, notes, created_by, created_at, updated_at) VALUES
(1, 10, 7, 'father', true, NULL, NULL, '2025-10-16 06:05:32', '2025-10-16 06:05:32'),
(2, 10, 8, 'mother', true, NULL, NULL, '2025-10-16 06:05:32', '2025-10-16 06:05:32'),
(3, 10, 1, 'paternal_grandfather', true, NULL, NULL, '2025-10-16 06:05:32', '2025-10-16 06:05:32'),
(4, 10, 2, 'paternal_grandmother', true, NULL, NULL, '2025-10-16 06:05:32', '2025-10-16 06:05:32'),
(5, 10, 3, 'maternal_grandfather', true, NULL, NULL, '2025-10-16 06:05:32', '2025-10-16 06:05:32'),
(6, 10, 4, 'maternal_grandmother', true, NULL, NULL, '2025-10-16 06:05:32', '2025-10-16 06:05:32');

-- Insert application timeline
INSERT INTO application_timeline (timeline_id, application_id, submission_date, submission_deadline, first_document_uploaded_at, last_document_uploaded_at, all_documents_submitted_at, review_started_at, review_completed_at, approved_at, completed_at, processing_time_days, is_overdue, overdue_days, created_at, updated_at) VALUES
(1, 4, '2025-10-15 15:17:19', '2025-11-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, 0, '2025-10-15 15:17:19', '2025-10-15 15:17:19');

-- Insert pending registrations
INSERT INTO pending_registrations (id, first_name, last_name, display_name, email, phone_number, address, ethnicity, password_hash, birth_certificate_data, status, rejection_comment, submitted_at, approved_at, rejected_at, created_at, updated_at) VALUES
(1, 'John', 'Doe', 'John D.', 'john.doe.test@example.com', '+639123456789', 'Sample Street, Alabel, Sarangani', 'Blaan', '$2b$12$nvp57vNgjlwVXCXf1k/mjelEJdn2aW6HX.0Y82RKjoBUBWrOAkmaG', NULL, 'pending', NULL, '2025-10-27 16:01:49', NULL, NULL, '2025-10-27 16:01:49', '2025-10-27 16:01:49');

-- Insert user registrations (approved)
INSERT INTO user_registrations (id, first_name, last_name, display_name, email, phone_number, address, ethnicity, password_hash, birth_certificate_data, status, approved_at, approved_by, created_at, updated_at) VALUES
(4, 'Chelsey Janroy', 'Jalaman', 'Chelsey Jalaman', 'chelseyjalaman15@gmail.com', '+639279292789', 'Maribulan, Alabel, Sarangani', 'Blaan', '$2b$12$y4ALTm6JGfq.PZvkYY.fsOIKcwYtlu0dDafAr9IYjPxPXp5dztIi.', 'data:image/jpeg;base64,...', 'approved', '2025-10-23 03:54:40', 4, '2025-10-23 03:54:40', '2025-10-23 03:54:40');

-- Reset sequences to match the data
SELECT setval('purposes_purpose_id_seq', (SELECT MAX(purpose_id) FROM purposes));
SELECT setval('services_service_id_seq', (SELECT MAX(service_id) FROM services));
SELECT setval('users_user_id_seq', (SELECT MAX(user_id) FROM users));
SELECT setval('applications_application_id_seq', (SELECT MAX(application_id) FROM applications));
SELECT setval('genealogy_records_genealogy_id_seq', (SELECT MAX(genealogy_id) FROM genealogy_records));
SELECT setval('genealogy_relationships_relationship_id_seq', (SELECT MAX(relationship_id) FROM genealogy_relationships));
SELECT setval('application_timeline_timeline_id_seq', (SELECT MAX(timeline_id) FROM application_timeline));
SELECT setval('pending_registrations_id_seq', (SELECT MAX(id) FROM pending_registrations));
SELECT setval('user_registrations_id_seq', (SELECT MAX(id) FROM user_registrations));
