patient_symptom(anna,fatigue).
patient_symptom(anna,indigestion).
patient_symptom(anna,abdominal_pain).
patient_symptom(anna,breathing_problems).

patient_symptom(jim,cough).
patient_symptom(jim,fever).
patient_symptom(jim,chills).

patient_symptom(kate,chills).
patient_symptom(kate,fatigue).
patient_symptom(kate,cough).
patient_symptom(kate,fever).
patient_symptom(kate,headache).

:- include('diseases.pl').

% possible symptoms 
symptoms([abdominal_pain,breathing_problems,chills,cough,fatigue,fever,headache,indigestion]).

list_length([],0).
list_length([H|T], L+1) :- list_length(T,L).

number_of_possible_symptoms(L) :- list_length(A, K), symptoms(A), L is K.

ask_about_symptoms(0).
ask_about_symptoms(N) :- N>0, write('Do you have '), symptoms(A), nth1(N,A,X), write(X),  write('?'), nl, M is N-1, ask_about_symptoms(M).