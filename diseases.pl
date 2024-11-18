Disease, Symptom, Patient = symbol
patient_symptom(Patient, Symptom)
hypothesis(Patient, Disease)

% possible health problems
hypothesis(Patient, heart_attack) := 
	patient_symptom(Patient, fatigue),
	patient_symptom(Patient, breathing_problems),
	patient_symptom(Patient, indigestion),
	patient_symptom(Patient, abdominal_pain).
	
hypothesis(Patient, stroke) := 
	patient_symptom(Patient, sight_problems),
	patient_symptom(Patient, dizziness),
	patient_symptom(Patient, confusion),
	patient_symptom(Patient, speech_problems).
	
hypothesis(Patient, lung_disease) := 
	patient_symptom(Patient, cough),
	patient_symptom(Patient, breathing_problems),
	patient_symptom(Patient, phlegm).
	
hypothesis(Patient, flu) := 
	patient_symptom(Patient, cough),
	patient_symptom(Patient, headache),
	patient_symptom(Patient, fatigue),
	patient_symptom(Patient, chills),
	patient_symptom(Patient, fever).