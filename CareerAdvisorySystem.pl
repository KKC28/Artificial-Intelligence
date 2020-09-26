/* Career advisory system */
/* Advise a M.Tech Student based on his or her interests and performance*/
    
% ****************************************************
% Rules
% ****************************************************  

communicationSkill:-
    (speaking(intermediate);speaking(expert));(reading(intermediate);reading(expert));(writing(intermediate);writing(expert)),!.

programming:-(programmingLanguage(intermediate);programmingLanguage(expert)),!.

gateScore_cgpa:-(gateScore(60);cgpa(8)),!.

participation:-(eventOragniser(yes);committeeMember(yes)),!.

stableLife:-(jobSecurity(yes);stability(yes)).

% ****************************************************
% Prospective Career for M.Tech candidate
% ****************************************************


% TEACHING PROFILES
% ----------------------------------------------------

% One can coach people for GATE examination
career(gateCoaching):-
    interestedInTeaching(yes),
    interestedInGateCoaching(yes),
    gateScore_cgpa,
    aptitude(4),
    interestedCSESubjects(yes),
    coding(4),
    programming,
    logicalReasoning(4),
    communicationSkill,
    problemSolver(yes),
    nl,nl,
    write('Career Advice for you Pal are below :'),nl,
    write("====================================================================="),nl,nl,
    write('1. Coaching students preparing for GATE exam by joing some GATE coaching centers.'),nl,nl,
    write('2. Starting your own YouTube channel for coaching GATE aspirants.'),nl,nl,
    write('3. Opening your own coaching center for training GATE aspirants.'),nl.

    
%One can join phd and teach as assistant professor
career(assitantProfessor):-
    interestedInTeaching(yes),
    interestedInGateCoaching(no),
    interestInResearch(yes),
    thesisOrCourses(yes),
    cgpa(7),
    teamwork(yes),
    stressManagment(yes),
    independentWorker(yes),
    attendingConfrences(yes),
    communicationSkill,
    logicalReasoning(3),
    problemSolver(yes),
    nl,nl,
    write('Career Advice for you Pal are below :'),nl,
    write("====================================================================="),nl,nl,
    write('Doctarate in Philosophy(PhD) with TF.').

% One can join phd and teach as assistant professor
career(teacher):-
    interestedInTeaching(yes),
    interestedInGateCoaching(no),
    interestInResearch(no),
    communicationSkill,
    logicalReasoning(2),
    cgpa(7),
    problemSolver(yes),
    nl,nl,
    write('Career Advice for you Pal are below :'),nl,
    write("====================================================================="),nl,nl,
    write('1. To compelete B.ED and then apply for job as School Teacher.'),nl,nl,
    write('2. To open your own YouTube channel and teach students of your domain.'),nl,nl,
    write('3. To open your own Coaching Center and teach students of your domain.'),nl.

% Last option in the teaching domain
career(drop):-
    interestedInTeaching(yes),
    nl,nl,
    write('Kindly carry out one of the below options to better your chances in Teaching Profile:'),nl,
    write("====================================================================="),nl,nl,
    write('1. Take up a Certification Course in Teaching and Training in your domain and apply for the Teaching jobs.'),nl,nl,
    write('2. Re-take the GATE test to imporve your score to coach GATE Aspirants.'),nl,nl,
    write('3. Start working on your research domain to better your chances.'),nl,nl,
    write('4. Work on your shortcomings and please retake the Q/A for knowing your career prospect.'),nl.

    

% NON-TEACHING PROFILES
% ----------------------------------------------------
 
 
% One can work in a corporate world doing research
career(research_corporate_job):-
    interestedInTeaching(no),
    interestedHigherStudies(no),
    financialRequirement(yes),
    workingForSomeone(yes),
    interactionWithPublic(no),
    interestInResearch(yes),
    workingInShifts(no),
    communicationSkill,
    teamwork(yes),
    handleDeadlines(yes),
    stressManagment(yes),
    prebuildThings(yes),
    skilled(3),
    cgpa(7),
    problemSolver(yes),
    nl,nl,
    write('Career Advice for you Pal are below :'),nl,
    write("====================================================================="),nl,nl,
    write('Joining/looking for a Corporate Job in Research Profile.').

% One can work in a corporate world
career(corporate_job):-
    interestedInTeaching(no),
    interestedHigherStudies(no),
    financialRequirement(yes),
    workingForSomeone(yes),
    interactionWithPublic(no),
    interestInResearch(no),
    prebuildThings(yes),
    workingInShifts(yes),
    communicationSkill,
    teamwork(yes),
    handleDeadlines(yes),
    stressManagment(yes),
    skilled(3),
    cgpa(7),
    problemSolver(yes),
    nl,nl,
    write('Career Advice for you Pal are below :'),nl,
    write("====================================================================="),nl,nl,
    write('Joining/looking for a Corporate Job in IT Sector.').
    
    
% One can work in a corporate world
career(startup_job):-
    interestedInTeaching(no),
    interestedHigherStudies(no),
    financialRequirement(yes),
    workingForSomeone(yes),
    interactionWithPublic(no),
    interestInResearch(no),
    prebuildThings(no),
    communicationSkill,
    teamwork(yes),
    handleDeadlines(yes),
    stressManagment(yes),
    skilled(4),
    cgpa(7),
    problemSolver(yes),
    nl,nl,
    write('Career Advice for you Pal are below :'),nl,
    write("====================================================================="),nl,nl,
    write('Joining/looking for a Corporate Job in Startups.').
    
% One can go for PSU
career(government_job):-
    interestedInTeaching(no),
    interestedHigherStudies(no),
    financialRequirement(yes),
    workingForSomeone(yes),
    interactionWithPublic(yes),
    workingInShifts(yes),
    cgpa(6),
    generousBenefits(yes),
    problemSolver(yes),
    nl,nl,
    write('Career Advice for you Pal are below :'),nl,
    write("====================================================================="),nl,nl,
    write('Joining/looking for a Government Job.').
    
% If nothing suits your profile drop for a year to prepare better.  
career(drop):-
    interestedInTeaching(no),
    interestedHigherStudies(no),
    financialRequirement(yes),
    nl,nl,
    write('Kindly carry out one of the below options to better your chances in Non-Teaching Profile:'),nl,
    write("====================================================================="),nl,nl,
    write('1. Join some trainaing Institutes and prepare for the job in your domain.'),nl,nl,
    write('2. Self-Study to prepare yourself better for the coporate world.'),nl,nl,
    write('3. Work on your shortcomings and please retake the Q/A for knowing your career prospect.'),nl.
    
% One can start ones own firm with ones own ideas 
career(entreprenurship):-
    interestedInTeaching(no),
    interestedHigherStudies(no),
    financialRequirement(no),
    workingForSomeone(no),
    novelty(yes),
    workingInShifts(no),
    stressManagment(yes),
    prebuildThings(no),
    skilled(4),
    communicationSkill,
    initialCapital(yes),
    flexibility(yes),
    problemSolver(yes),
    nl,nl,
    write('Career Advice for you Pal are below :'),nl,
    write("====================================================================="),nl,nl,
    write('Being an Enterprenuer and startup your own venture.').
    
    
% If nothing suits your profile drop for a year to prepare better.  
career(drop):-
    interestedInTeaching(no),
    interestedHigherStudies(no),
    financialRequirement(no),
    nl,nl,
    write('Career Advice for you Pal are below :'),nl,
    write("====================================================================="),nl,nl,
    write('1. Please showcase your venture idea on Investment Portals to get the seed money .'),nl,nl,
    write('2. Please look for a busineness idea for your venture.'),nl,nl,
    write('3. Work on your shortcomings and please retake the Q/A for knowing your career prospect.'),nl.
    

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
    cgpa(8),
    aptitude(4),
    problemSolver(yes),
    communicationSkill,
    teamwork(yes),
    stressManagment(yes),
    nl,nl,
    write('Career Advice for you Pal are below :'),nl,
    write("====================================================================="),nl,nl,
    write(' Master in Business Administration(MBA).').
    
% One can join as PHD scholar in India or abroad
career(phd):-
    interestedInTeaching(no),
    interestedHigherStudies(yes),
    interestInResearch(yes),
    thesisOrCourses(yes),
    independentWorker(yes),
    attendingConfrences(yes),
    problemSolver(yes),
    communicationSkill,
    teamwork(yes),
    stressManagment(yes),
    nl,nl,
    write('Career Advice for you Pal are below :'),nl,
    write("====================================================================="),nl,nl,
    write('Doctarate in Philosophy(PhD).').
    
% If nothing suits your profile drop for a year to prepare better.  
career(drop):-
    interestedInTeaching(no),
    interestedHigherStudies(yes),
    nl,nl,
    write('Kindly carry out one of the below options to better your chances fo Higher Studies:'),nl,
    write("====================================================================="),nl,nl,
    write('1. Please take your time to decide either between MBA or PHD .'),nl,nl,
    write('2. Please take some time off and rethink your options.'),nl,nl,
    write('3. Work on your shortcomings and please retake the Q/A for knowing your career prospect.'),nl.
 
% ******************************************************************
% Conditions for each criteria mentioned in respective carrer choice
% ******************************************************************
    
    
% Coaching for GATE Coaching in CSE/ECE
%---------------------------------------

problemSolver(Opinion) :-
    progress(problemSolver,Opinion).
problemSolver(Opinion) :-
    \+ progress(problemSolver, _),
    enquire(problemSolver,Opinion,[yes,no]).
    
interestedInGateCoaching(Opinion) :-
    progress(interestedInGateCoaching,Opinion).
interestedInGateCoaching(Opinion) :-
    \+ progress(interestedInGateCoaching, _),
    enquire(interestedInGateCoaching,Opinion,[yes,no]).
    
logicalReasoning(Opinion) :-
    progress(logicalReasoning,Opinion).
logicalReasoning(Opinion) :-
    \+ progress(logicalReasoning, _),
    query(logicalReasoning),
    choices([1,2,3,4,5], 1),
    read(Selected_Choice),
    getSelectedChoice(Selected_Choice,[1,2,3,4,5],Result),
    asserta(progress(logicalReasoning,Result)),
    Result>=Opinion.

stream(Opinion) :-
    progress(stream,Opinion).
stream(Opinion) :-
    \+ progress(stream, _),
    enquire(stream,Opinion,[ece,cse]).
    
gateScore(Opinion) :-
    progress(gateScore,Opinion).
gateScore(Opinion) :-
    \+ progress(gateScore, _),
    query(gateScore),
    choices([30,50,60,70], 1),
    read(Selected_Choice),
    getSelectedChoice(Selected_Choice,[30,50,60,70],Result),
    asserta(progress(gateScore,Result)),
    Result>=Opinion.
    
interestedInTeaching(Opinion) :-
    progress(interestedInTeaching,Opinion).
interestedInTeaching(Opinion) :-
    \+ progress(interestedInTeaching, _),
    enquire(interestedInTeaching,Opinion,[yes,no]).
    
speaking(Opinion) :-
    progress(speaking,Opinion).
speaking(Opinion) :-
    \+ progress(speaking, _),
    enquire(speaking,Opinion,[beginner,intermediate,expert]).
    
reading(Opinion) :-
    progress(reading,Opinion).
reading(Opinion) :-
    \+ progress(reading, _),
    enquire(reading,Opinion,[beginner,intermediate,expert]).
    
writing(Opinion) :-
    progress(writing,Opinion).
writing(Opinion) :-
    \+ progress(writing, _),
    enquire(writing,Opinion,[beginner,intermediate,expert]).
    
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
 
timeLimit(Opinion) :-
    progress(timeLimit,Opinion).
timeLimit(Opinion) :-
    \+ progress(timeLimit, _),
    enquire(timeLimit,Opinion,[full_time,part_time]).

    
cgpa(Opinion) :-
    progress(cgpa,Opinion).
cgpa(Opinion) :-
    \+ progress(cgpa, _),
    query(cgpa),
    choices([6,7,8,9], 1),
    read(Selected_Choice),
    getSelectedChoice(Selected_Choice,[6,7,8,9],Result),
    asserta(progress(cgpa,Result)),
    Result>=Opinion.
    
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
    query(aptitude),
    choices([1,2,3,4,5], 1),
    read(Selected_Choice),
    getSelectedChoice(Selected_Choice,[1,2,3,4,5],Result),
    asserta(progress(aptitude,Result)),
    Result>=Opinion.
    
coding(Opinion) :-
    progress(coding,Opinion).
coding(Opinion) :-
    \+ progress(coding, _),
    query(coding),
    choices([1,2,3,4,5], 1),
    read(Selected_Choice),
    getSelectedChoice(Selected_Choice,[1,2,3,4,5],Result),
    asserta(progress(coding,Result)),
    Result>=Opinion.
    
programmingLanguage(Opinion) :-
    progress(programmingLanguage,Opinion).
programmingLanguage(Opinion) :-
    \+ progress(programmingLanguage, _),
    enquire(programmingLanguage,Opinion,[beginner,intermediate,expert]).
    
    
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
    query(skilled),
    choices([1,2,3,4,5], 1),
    read(Selected_Choice),
    getSelectedChoice(Selected_Choice,[1,2,3,4,5],Result),
    asserta(progress(skilled,Result)),
    Result>=Opinion.
    
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
thesisOrCourses(Opinion) :-
    progress(thesisOrCourses,Opinion).
thesisOrCourses(Opinion) :-
    \+ progress(thesisOrCourses, _),
    enquire(thesisOrCourses,Opinion,[yes,no]).
    
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


query(problemSolver) :-
    write(' Q. Are you a problem solver ?'), nl.
    
query(logicalReasoning) :-
    write(' Q. How much will you rate yourself in logical reasoning(5 being the highest) ?'), nl.
  
query(interestedInGateCoaching) :-
    write('Q. Are you interested in teaching GATE aspirants ?'), nl.

query(timeLimit) :-
    write('Q. Are you loooking for a full time or a part time teaching job ?'), nl.
    
query(gateScore) :-
    write('Q. What is your GATE score ?'), nl.
    
query(stream) :-
    write('Q. Which stream/department are you from ?'), nl.
    
query(interestedInTeaching) :-
    write('Q. Are you looking for a career in Teaching/Mentoring domain ?'), nl.
    
query(speaking) :-
    write('Q. How good are you in speaking English ?'), nl.
    
query(reading) :-
    write('Q. How good are you at reading English ?'), nl.

query(writing) :-
    write('Q. How good are you at writing English ?'), nl.    
    
query(sensible) :-
    write('Q. Do you let your emotions affect your decisions ?'), nl.
    
query(cgpa) :-
    write('Q. What is your CGPA in your highest degree of education pursued currently ?'), nl.
    
query(interestedECESubjects) :-
    write('Q. Are your interested in subjects like Digital Circuits, Analog Circuits, Signals and Systems, Control System etc ?'), nl.
    
query(interestedCSESubjects) :-
    write('Q. Are your interested in subjects like Data Structures & Algorithms, Operatiing System, Database Management System etc ?'), nl.
    
query(aptitude) :-
    write('Q. How much would you rate yourself in aptitude(5 being the highest) ?'), nl.
    
query(coding) :-
    write('Q. How much would you rate yourself in coding or building program logic(5 being the highest) ?'), nl.

query(programmingLanguage) :-
    write('Q. How good are you at any programming languages like Java, C++, C, python ?'), nl.
    
% Career in Corporate Job
%-------------------------

query(interestedHigherStudies) :-
    write('Q. Do you want to carry on further with your studies ?'), nl.

query(interestInResearch) :-
    write('Q. Are you interested in doing research work in your domain?'), nl.

query(handleDeadlines) :-
    write('Q. Are you capable of handling deadline/s ?'), nl.
    
query(stressManagment) :-
    write('Q. Are you capable of working under stress ?'), nl.
    
query(skilled) :-
    write('Q. How skilled are you in your domain/field ?'), nl.
    
query(teamwork) :-
    write('Q. Are you a teamworker, capable of doing work collaboratively ?'), nl.

query(workingForSomeone) :-
    write('Q. Is it okay for you to work for someone ?'), nl.
    
query(workingInShifts) :-
    write('Q. Can your work in asssigned shfts ?'), nl.

query(prebuildThings) :-
    write('Q. Do you find yourself interested in working and exploring on pre-build tools and technologies ?'), nl.

query(financialRequirement) :-
    write('Q. Are you looking for financial stability in the near future? '), nl.

% Career in Government Job
%-------------------------
    
query(stability) :-
    write('Q. Are you looking for stability in life ?'), nl.
    
query(interactionWithPublic) :-
    write('Q. Are you looking for a prospect were you get to interact with the common public ?'), nl.

query(jobSecurity) :-
    write('Q. Are you looking for job security ?'), nl.

query(generousBenefits) :-
    write('Q. Are you looking for generous benefits like accomodation,lifelong pension,health benefits ?'), nl.
    
% Career for Enterepreneurship
%---------------------------------------

query(novelty) :-
    write('Q. Do you always look for novelty in work you come across to ?'), nl.
    
query(initialCapital) :-
    write('Q. Do you have an intial capital of more than 5 lakhs to support a venture ?'), nl.

query(flexibility) :-
     write('Q. Are you flexible enough to stretch your time ?'), nl.
     
 
% Career for PHD
%---------------------------------------

query(thesisOrCourses) :-
    write('Q. Are you doing any thesis/capstone work or have taken extra courses/extra credits in your interested domain ?'), nl.
    
query(independentWorker) :-
    write('Q. Can you work independently ?'), nl.

query(attendingConfrences) :-
     write('Q. Do you like attending to various research conferences ?'), nl.

 
% Career for MBA
%---------------------------------------
    
query(committeeMember) :-
    write('Q. Are you or had you been a member of any committe/s in your college ?'), nl.

query(leadership) :-
     write('Q. Do you possess leaderhsip skill or have been a part of an event of any scale, which you have led ?'), nl.

query(interestInBusiness) :-
     write('Q. Are you looking for a Managerial Corporate role ?'), nl.

% ****************************************************
% Recording the choice selcted by the user
% ****************************************************


% Coaching
%-----------
    
choice(cse) :-
    write('Computer Science and Engineering').

choice(ece) :-
    write('Electronics and Commnunication Engineering').
    
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
    
choice(6) :-
    write('6.0-6.9').

choice(7) :-
    write('7.0-7.9').

choice(8) :-
    write('8.0-8.9').

choice(9) :-
    write('9-10').
    
choice(full_time) :-
    write('Full Time').
    
choice(part_time) :-
    write('Part Time').
    
choice(30) :-
    write('30-49').
    
choice(50) :-
    write('50-59').
    
choice(60) :-
    write('60-69').
    
choice(70) :-
    write('70-100').
    
choice(beginner) :-
    write('Beginner').
    
choice(intermediate) :-
    write('Intermediate').
    
choice(expert) :-
    write('Expert').
    
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

% Main fucntion as the starting of the career advisory portal
main:-
    introduction,
    reset_history,
    advise_career(_).


% Introduction of the portal frontend
introduction:-
    nl,
    write('Welcome to the Career Advisory System'),nl,
    write('*****************************************'),nl,nl,
    write('INSTRUCTION:To get your career prospect, please provide us with the following informations, by entering the number displayed against each choice, followed by (.)'), nl, nl.
    
  
% advise_career to advise the suitable career for the candidate
advise_career(Career):-
    career(Career),!.
    
    
    
    
    
    
    
    
    
    
    
    
    
    
% Reference: https://github.com/calmesam01/Career-Counseling-System