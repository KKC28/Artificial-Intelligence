/* Career advisory system */
/* Advise a M.Tech Student based on his or her interests and performance*/


% Main fucntion as the starting of the career advisory portal
main:-
    introduction,
    reset_history,
    advise_career(_).


% Introduction of the portal frontend
introduction:-
    write('Hello Pal. Welcome to the Career Advisory System!!'), nl,
    write('To get your propect career, please answer the follwing question, by entering the number displayed against each choice, followed by (.)'), nl, nl.
  
  
% advise_career to advise the suitable career for the candidate
advise_career(Career):-
    career(Career),!.
    
% ****************************************************
% Rules
% ****************************************************  

communicationSkill:-
    (speaking(four);speaking(five)),
    (reading(four);reading(five)),
    (writing(four);writing(five)).

thinkinglogically:-
    logicorimagination(logic),
    sensible(no).
    
thinkingimaginatically:-
    logicorimagination(imagination),
    sensible(no).
    
apti:-(aptitude(four);aptitude(five)),!.

coding_power:-(coding(four);coding(five)),!.

programming:-(programmingLanguage(intermediate);programmingLanguage(expert)),!.

gateScore_cgpa_apti:-(gateScore(between70to100);cgpa(above9);apti),!.

skilledCorporate:-(skilled(three);skilled(four);skilled(five)).

skilledEntrepreneur:-(skilled(four);skilled(five)).

participation:-(eventOragniser(yes);committeeMember(yes)).

stableLife:-(jobSecurity(yes);stability(yes)).
% ****************************************************
% Streams
% ****************************************************  



% ****************************************************
% Prospective Career for M.Tech candidate
% ****************************************************


% TEACHING PROFILES
% ----------------------------------------------------

% One can coach people for GATE examination
career(gateCoaching):-
    interestedInTeaching(yes),
    interestedHigherStudies(no),
    gateScore_cgpa_apti,
    stream(cse),
    interestedCSESubjects(yes),
    coding_power,
    programming,
    thinkinglogically,
    communicationSkill,
    write('Career Adivice for you Pal is Coaching students preparing for CSE GATE').
    
career(gateCoaching):-
    interestedInTeaching(yes),
    interestedHigherStudies(no),
    gateScore_cgpa_apti,
    apti,
    stream(ece),
    interestedECESubjects(yes),
    thinkinglogically,
    communicationSkill,
    write('Career Adivice for you Pal is Coaching students preparing for ECE GATE').
    
% One can join phd and teach as assistant professor
career(assitantProfessor):-
    interestedInTeaching(yes),
    interestedHigherStudies(yes),
    interestInResearch(yes),
    thesisOrCapstone(yes),
    independentWorker(yes),
    attendingConfrences(yes),
    write('Career Adivice for you Pal is Post Doctarate(PhD)').


% NON-TEACHING PROFILES
% ----------------------------------------------------
 
 
% One can work in a corporate world doing research
career(research_corporate_job):-
    interestedInTeaching(no),
    interestedHigherStudies(no),
    financialRequirement(yes),
    workingForSomeone(yes),
    workingInShifts(yes),
    interactionWithPublic(no),
    interestInResearch(yes),
    communicationSkill,
    teamwork(yes),
    handleDeadlines(yes),
    stressManagment(yes),
    prebuildThings(yes),
    skilledCorporate,
    write('Career Adivice for you Pal is joining/looking of a Reasrch Corporate Job').

% One can work in a corporate world
career(corporate_job):-
    interestedInTeaching(no),
    interestedHigherStudies(no),
    financialRequirement(yes),
    workingForSomeone(yes),
    workingInShifts(yes),
    interactionWithPublic(no),
    interestInResearch(no),
    communicationSkill,
    teamwork(yes),
    handleDeadlines(yes),
    stressManagment(yes),
    prebuildThings(yes),
    skilledCorporate,
    write('Career Adivice for you Pal is joining/looking of a Corporate Job').

% One can go for PSU
career(government_job):-
    interestedInTeaching(no),
    interestedHigherStudies(no),
    financialRequirement(yes),
    workingForSomeone(yes),
    workingInShifts(yes),
    interactionWithPublic(yes),
    gateScore_cgpa,
    generousBenefits(yes),
    write('Career Adivice for you Pal is joining/looking of a Government Job').
    
    
% One can join family business
career(familyBusiness):-
    interestedInTeaching(no),
    interestedHigherStudies(no),
    financialRequirement(yes),
    workingForSomeone(no),
    interactionWithPublic(no),
    interestInResearch(no),
    stability(yes),
    workingInShifts(yes),
    workingForSomeone(yes),
    communicationSkill,
    teamwork(yes),
    handleDeadlines(yes),
    stressManagment(yes),
    prebuildThings(yes),
    skilledCorporate,
    write('Career Adivice for you Pal is joining/looking of a Family Job').
 
% One can start ones own firm with ones own ideas 
career(entreprenurship):-
    interestedInTeaching(no),
    interestedHigherStudies(no),
    financialRequirement(no),
    interestInResearch(no),
    novelty(yes),
    workingForSomeone(no),
    workingInShifts(no),
    stressManagment(yes),
    prebuildThings(no),
    skilledEntrepreneur,
    communicationSkill,
    initialCapital(yes),
    flexibility(yes),
    write('Career Adivice for you Pal is being an entreprenue and startup your own venture').
    
% HIGHER STUDYING PROFILES
% ----------------------------------------------------
    
% One can choose for a technomanagerial career
career(mba):-
    interestedInTeaching(no),
    interestedHigherStudies(yes),
    interestInResearch(no),
    interestInBusiness(yes),
    participation,
    leadership(yes),
    gateScore_cgpa_apti,
    write('Career Adivice for you Pal is MBA').
    
% One can join as PHD scholar in India or abroad
career(phd):-
    interestedInTeaching(no),
    interestedHigherStudies(yes),
    interestInResearch(yes),
    thesisOrCapstone(yes),
    independentWorker(yes),
    attendingConfrences(yes),
    write('Career Adivice for you Pal is Post Doctarate(PhD)'). 
    
% If nothing suits your profile drop for a year to prepare better.  
career(drop):-
    write('Career Adivice for you Pal is to take a year drop').

 
% ******************************************************************
% Conditions for each criteria mentioned in respective carrer choice
% ******************************************************************
    
    
% Coaching for GATE Coaching in CSE/ECE
%---------------------------------------

stream(Opinion) :-
    progress(stream,Opinion).
stream(Opinion) :-
    \+ progress(stream, _),
    enquire(stream,Opinion,[ece,cse]).
    
gateScore(Opinion) :-
    progress(gateScore,Opinion).
gateScore(Opinion) :-
    \+ progress(gateScore, _),
    enquire(gateScore,Opinion,[between30to50,between50to70,between70to100]).
    
interestedInTeaching(Opinion) :-
    progress(interestedInTeaching,Opinion).
interestedInTeaching(Opinion) :-
    \+ progress(interestedInTeaching, _),
    enquire(interestedInTeaching,Opinion,[yes,no]).
    
speaking(Opinion) :-
    progress(speaking,Opinion).
speaking(Opinion) :-
    \+ progress(speaking, _),
    enquire(speaking,Opinion,[one,two,three,four,five]).
    
reading(Opinion) :-
    progress(reading,Opinion).
reading(Opinion) :-
    \+ progress(reading, _),
    enquire(reading,Opinion,[one,two,three,four,five]).
    
writing(Opinion) :-
    progress(writing,Opinion).
writing(Opinion) :-
    \+ progress(writing, _),
    enquire(writing,Opinion,[one,two,three,four,five]).
    
logicorimagination(Opinion) :-
    progress(logicorimagination,Opinion).
logicorimagination(Opinion) :-
    \+ progress(logicorimagination, _),
    enquire(logicorimagination,Opinion,[logic,imagination]).
    
sensible(Opinion) :-
    progress(sensible,Opinion).
sensible(Opinion) :-
    \+ progress(sensible, _),
    enquire(sensible,Opinion,[yes,no]).
    
cgpa(Opinion) :-
    progress(cgpa,Opinion).
cgpa(Opinion) :-
    \+ progress(cgpa, _),
    enquire(cgpa,Opinion,[between6to8,between8to9,above9]).
    
interestedCSESubjects(Opinion) :-
    progress(interestedCSESubjects,Opinion).
interestedCSESubjects(Opinion) :-
    \+ progress(interestedCSESubjects, _),
    enquire(interestedCSESubjects,Opinion,[yes,no]).
    
interestedECESubjects(Opinion) :-
    progress(interestedECESubjects,Opinion).
interestedECESubjects(Opinion) :-
    \+ progress(interestedECESubjects, _),
    enquire(interestedECESubjects,Opinion,[yes,no]).
    
aptitude(Opinion) :-
    progress(aptitude,Opinion).
aptitude(Opinion) :-
    \+ progress(aptitude, _),
    enquire(aptitude,Opinion,[one,two,three,four,five]).
    
coding(Opinion) :-
    progress(coding,Opinion).
coding(Opinion) :-
    \+ progress(coding, _),
    enquire(coding,Opinion,[one,two,three,four,five]).
    
programmingLanguage(Opinion) :-
    progress(programmingLanguage,Opinion).
programmingLanguage(Opinion) :-
    \+ progress(programmingLanguage, _),
    enquire(programmingLanguage,Opinion,[beginner,intermediate,epxert]).
    
    
% Career in Corporate Job
%-------------------------

interestedHigherStudies(Opinion) :-
    progress(interestedHigherStudies,Opinion).
interestedHigherStudies(Opinion) :-
    \+ progress(interestedHigherStudies, _),
    enquire(interestedHigherStudies,Opinion,[yes,no]).
    
interestInResearch(Opinion) :-
    progress(interestInResearch,Opinion).
interestInResearch(Opinion) :-
    \+ progress(interestInResearch, _),
    enquire(interestInResearch,Opinion,[yes,no]).
    
handleDeadlines(Opinion) :-
    progress(handleDeadlines,Opinion).
handleDeadlines(Opinion) :-
    \+ progress(handleDeadlines, _),
    enquire(handleDeadlines,Opinion,[yes,no]).

stressManagment(Opinion) :-
    progress(stressManagment,Opinion).
stressManagment(Opinion) :-
    \+ progress(stressManagment, _),
    enquire(stressManagment,Opinion,[yes,no]).
    
skilled(Opinion) :-
    progress(skilled,Opinion).
skilled(Opinion) :-
    \+ progress(skilled, _),
    enquire(skilled,Opinion,[beginner,intermediate,epxert]).
    
teamwork(Opinion) :-
    progress(teamwork,Opinion).
teamwork(Opinion) :-
    \+ progress(teamwork, _),
    enquire(teamwork,Opinion,[yes,no]).
    
workingForSomeone(Opinion) :-
    progress(workingForSomeone,Opinion).
workingForSomeone(Opinion) :-
    \+ progress(workingForSomeone, _),
    enquire(workingForSomeone,Opinion,[yes,no]).

workingInShifts(Opinion) :-
    progress(workingInShifts,Opinion).
workingInShifts(Opinion) :-
    \+ progress(workingInShifts, _),
    enquire(workingInShifts,Opinion,[yes,no]).

prebuildThings(Opinion) :-
    progress(prebuildThings,Opinion).
prebuildThings(Opinion) :-
    \+ progress(prebuildThings, _),
    enquire(prebuildThings,Opinion,[yes,no]).

financialRequirement(Opinion) :-
    progress(financialRequirement,Opinion).
financialRequirement(Opinion) :-
    \+ progress(financialRequirement, _),
    enquire(financialRequirement,Opinion,[yes,no]).


% Career in Government Job
%-------------------------

stability(Opinion) :-
    progress(stability,Opinion).
stability(Opinion) :-
    \+ progress(stability, _),
    enquire(stability,Opinion,[yes,no]).
    
servingCountryMen(Opinion) :-
    progress(servingCountryMen,Opinion).
servingCountryMen(Opinion) :-
    \+ progress(servingCountryMen, _),
    enquire(servingCountryMen,Opinion,[yes,no]).
    
interactionWithPublic(Opinion) :-
    progress(interactionWithPublic,Opinion).
interactionWithPublic(Opinion) :-
    \+ progress(interactionWithPublic, _),
    enquire(interactionWithPublic,Opinion,[yes,no]).
    
jobSecurity(Opinion) :-
    progress(jobSecurity,Opinion).
jobSecurity(Opinion) :-
    \+ progress(jobSecurity, _),
    enquire(jobSecurity,Opinion,[yes,no]).

generousBenefits(Opinion) :-
    progress(generousBenefits,Opinion).
generousBenefits(Opinion) :-
    \+ progress(generousBenefits, _),
    enquire(generousBenefits,Opinion,[yes,no]).
    
    
    
% Career for Enterepreneurship
%---------------------------------------

    
novelty(Opinion) :-
    progress(novelty,Opinion).
novelty(Opinion) :-
    \+ progress(novelty, _),
    enquire(novelty,Opinion,[yes,no]).

initialCapital(Opinion) :-
    progress(initialCapital,Opinion).
initialCapital(Opinion) :-
    \+ progress(initialCapital, _),
    enquire(initialCapital,Opinion,[yes,no]).
    
flexibility(Opinion) :-
    progress(flexibility,Opinion).
flexibility(Opinion) :-
    \+ progress(flexibility, _),
    enquire(flexibility,Opinion,[yes,no]).

    
% Career for PHD
%---------------------------------------
thesisOrCapstone(Opinion) :-
    progress(thesisOrCapstone,Opinion).
thesisOrCapstone(Opinion) :-
    \+ progress(thesisOrCapstone, _),
    enquire(thesisOrCapstone,Opinion,[yes,no]).
    
independentWorker(Opinion) :-
    progress(independentWorker,Opinion).
independentWorker(Opinion) :-
    \+ progress(independentWorker, _),
    enquire(independentWorker,Opinion,[yes,no]).
    
attendingConfrences(Opinion) :-
    progress(attendingConfrences,Opinion).
attendingConfrences(Opinion) :-
    \+ progress(attendingConfrences, _),
    enquire(attendingConfrences,Opinion,[yes,no]).
 
 
% Career for MBA
%---------------------------------------
eventOragniser(Opinion) :-
    progress(eventOragniser,Opinion).
eventOragniser(Opinion) :-
    \+ progress(eventOragniser, _),
    enquire(eventOragniser,Opinion,[yes,no]).

committeeMember(Opinion) :-
    progress(independentWorker,Opinion).
committeeMember(Opinion) :-
    \+ progress(committeeMember, _),
    enquire(committeeMember,Opinion,[yes,no]).
    
leadership(Opinion) :-
    progress(leadership,Opinion).
leadership(Opinion) :-
    \+ progress(leadership, _),
    enquire(leadership,Opinion,[yes,no]).

interestInBusiness(Opinion) :-
    progress(linterestInBusiness,Opinion).
interestInBusiness(Opinion) :-
    \+ progress(interestInBusiness, _),
    enquire(interestInBusiness,Opinion,[yes,no]).



% ****************************************************
% Questions asked to get the Opinion
% ****************************************************

    
% Coaching for GATE Coaching in CSE/ECE
%--------------------------------------

query(gateScore) :-
    write('What is your gate score?'), nl.
    
query(stream) :-
    write('Which stream are you from?'), nl.
    
query(interestedInTeaching) :-
    write('Are you interested in mentoring/teaching students'), nl.
    
query(speaking) :-
    write('How fluent are you in speaking English?'), nl.
    
query(reading) :-
    write('How good are you at reading English?'), nl.

query(writing) :-
    write('How good are you at writing English?'), nl.
    
query(logicorimagination) :-
    write('Which do you prefer more Logic or Imagination'), nl.
    
query(sensible) :-
    write('Do you let you emotions affect your decisions'), nl.
    
query(cgpa) :-
    write('What is your CGPA?'), nl.
    
query(interestedECESubjects) :-
    write('Are your interested in subjects like Diginatl Circuits,Analog Circuits,Signals and Systems,Control System?'), nl.
    
query(interestedCSESubjects) :-
    write('Are your interested in subjects like Data Structure/Algorithms, Operatiing System,Computer Networking,DBMS,COA etc ?'), nl.
    
query(aptitude) :-
    write('How much would you rate yourself in aptitude?'), nl.
    
query(coding) :-
    write('How much would you rate yourself in coding?'), nl.

query(programmingLanguage) :-
    write('How good are you at any programming languages like Java,C++,C,python'), nl.
    
% Career in Corporate Job
%-------------------------

query(interestedHigherStudies) :-
    write('Are you interested in going for higher studies?'), nl.

query(interestInResearch) :-
    write('Are you interested in research work?'), nl.

query(handleDeadlines) :-
    write('Are you capable of handling deadline/s ?'), nl.
    
query(stressManagment) :-
    write('Are you capable of working under stress ?'), nl.
    
query(skilled) :-
    write('How would you rate your skill in your domain?'), nl.
    
query(teamwork) :-
    write('Are you a teamwork/collaborator?'), nl.

query(workingForSomeone) :-
    write('Do you like working for someone?'), nl.
    
query(workingInShifts) :-
    write('Do you like working at a defined time?'), nl.

query(prebuildThings) :-
    write('Do you find yourself interested in working on pre-build stuffs?'), nl.

query(financialRequirement) :-
    write('Is money your priority?'), nl.

% Career in Government Job
%-------------------------
    
query(stability) :-
    write('Are you looking for statbility in life?'), nl.
    
query(servingCountryMen) :-
    write('Do you want to serve your country men/women'), nl.
    
query(interactionWithPublic) :-
    write('Are you looking for a prospect were you get to interact with normal public'), nl.

query(jobSecurity) :-
    write('Are you looking for job security?'), nl.

query(generousBenefits) :-
    write('Are you looking for generous benefits like accompdation,lifelong pension,health benefits?'), nl.
    
% Career for Enterepreneurship
%---------------------------------------

query(novelty) :-
    write('Do you always look for newness in work your come across to?'), nl.
    
query(initialCapital) :-
    write('Do you have an intial capital of more than 5 lakhs to support your venture?'), nl.

query(flexibility) :-
     write('Are you flexible enough to stretch you time?'), nl.
     
 
% Career for PHD
%---------------------------------------

query(thesisOrCapstone) :-
    write('Are you doinga ny thesis or capstone work in your interested domain?'), nl.
    
query(independentWorker) :-
    write('Can you work independently?'), nl.

query(leadership) :-
     write('Do you possess leaderhsip skill or have led in some event or so?'), nl.

 
% Career for MBA
%---------------------------------------

query(eventOragniser) :-
    write('Were you a part of any event in your college?'), nl.
    
query(committeeMember) :-
    write('Are you a member of any committe in your college?'), nl.

query(attendingConfrences) :-
     write('Do you like attedning to various reseearch confernces?'), nl.

query(interestInBusiness) :-
     write('Are you intereseted in busines?'), nl.

% ****************************************************
% Recording the choice selcted by the user
% ****************************************************


% Coaching
%-----------

choice(between30to50) :-
    write('30-50').
    
choice(between50to70) :-
    write('50-70').
    
choice(between70to100) :-
    write('70-100').
    
choice(cse) :-
    write('Computer Science and Engineering').

choice(ece) :-
    write('Electronics and Commnunication Engineering').
    
choice(one) :-
    write('1').

choice(two) :-
    write('2').

choice(three) :-
    write('3').

choice(four) :-
    write('4').

choice(five) :-
    write('5').
    
choice(1) :-
    write('1').

choice(2) :-
    write('2').

choice(3) :-
    write('3').

choice(4) :-
    write('4').

choice(5) :-
    write('5').
    
choice(logic) :-
    write('Logic').
    
choice(imagination) :-
    write('Imagination').
    
choice(between6to8) :-
    write('6-8').
    
choice(between8to9) :-
    write('8-9').
    
choice(above9) :-
    write('9-10').
    
choice(beginner) :-
    write('Beginner').
    
choice(intermediate) :-
    write('Intermediate').
    
choice(epxert) :-
    write('Epxert').
    
choice(yes) :-
    write('Yes.').

choice(no) :-
    write('No.').


% Formatting to present the query
choices([],_).
choices([H|T],Serial_No) :-
  write(Serial_No),write('.)    '),choice(H),nl,
  Next_No is Serial_No+1,
  choices(T,Next_No).
  
  
% Gets the selected choice of the user from the set of options
getSelectedChoice(1,[H|_],H).
getSelectedChoice(Selected_Choice,[_|T],Result) :-
  Selected_Choice>1,
  Previous_Index is Selected_Choice-1,
  getSelectedChoice(Previous_Index,T,Result).
  
  
% Queries to the user about their choice
enquire(Query,Choice,Options) :-
    query(Query),
    choices(Options, 1),
    read(Selected_Choice),
    getSelectedChoice(Selected_Choice,Options,Result),
    asserta(progress(Query,Result)),
    Result=Choice.
 
% To reset history before every enquiry 
reset_history:-
  retract(progress(_, _)),
  fail.
  
reset_history.


% To store choices made by the user
:- dynamic(progress/2).


























































