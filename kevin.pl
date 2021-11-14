%facts
%Author_Name:NKUSI Kevin
%REGnum:220002919
%ProgramName: prolog program to find fact ,rules and Queries 
%Description: This is simple prolog program to find fact ,rules and Queries 
%CreatedOn:November/14/2021
%Text-Editor:Vscode

student(paul).
student(peter).
student(kamana).
student(yvan).
student(gatera).
student(samantha).
student(thomas).
student(habwa).
student(manase).
student(xander).
student(gatare).
student(milla).

teacher(matayo).
teacher(alice).
teacher(janvier).
teacher(anna).
teacher(tam).
teacher(evan).
teacher(teres).
teacher(manzi).

course(mathematics).
course(database).
course(electronics).
course(entrepreneurship).
course(micro_economics).
course(anatomy).
course(geography).
course(physics).

school(ict).
school(economics).
school(medicine).
school(mining).


room(room1).
room(room2).
room(room3).
room(room4).
room(room5).
room(room6).
room(room7).

allocated_to(room1,ict).
allocated_to(room2,ict).
allocated_to(room3,medicine).
allocated_to(room4,medicine).
allocated_to(room5,mconomics).
allocated_to(room6,economics).
allocated_to(room7,mining).

study_in(paul,room1).
study_in(thomas,room1).
study_in(kamana,room2).
study_in(samantha,room3).
study_in(manase,room3).
study_in(yvan,room4).
study_in(gatera,room5). 
study_in(milla,room5).
study_in(gatare,room6).
study_in(peter,room6).
study_in(xander,room7).
study_in(teta,room7).
study_in(xander,room7). 
study_in(teta,room7).

studies(paul,mathematics).
studies(thomas,mathematics).
studies(kamana,mathematics).
studies(thomas,database).
studies(hirwa,database).
studies(kamana,database).
studies(paul,electronics).
studies(thomas,electronics).

studies(samantha,micro_economics). 
studies(manase,micro_economics).
studies(yvan,micro_economics).
studies(samantha,entrepreneurship). 
studies(manase,entrepreneurship).
studies(yvan,entrepreneurship).


studies(gatera,anatomy). 
studies(milla,anatomy).
studies(gatare,anatomy).
studies(peter,anatomy).



studies(xander,geography).
studies(teta,geography).
studies(alexandre,physics). 
studies(teta,physics).

teaches(matayo,mathematics).
teaches(alice,electronics).
teaches(teres,database).
teaches(anatomy,janvier).
teaches(tam,micro_economics).
teaches(evan,entrepreneurship).
teaches(anna,physics).
teaches(onesphore,geography).


taught_in(mathematics,ict).
taught_in(database,ict).
taught_in(electronics,ict).

taught_in(micro_economics,economics).
taught_in(entrepreneurship,economics).
taught_in(anatomy,medicine).

taught_in(geography,mining).
taught_in(physics,mining).



%rules

classmate(X,Y) :-
studies(X,C),
studies(Y,C),
study_in(X,D),
study_in(Y,D),
X\==Y.

teach_same_student(X,Y) :-
teaches(X,D),
teaches(Y,E),
studies(F,D),
studies(G,E),
classmate(F,G),
X\==Y.

teach_in_same_room(X,Y) :-
teaches(X,D),
teaches(Y,E),
studies(F,D),
studies(G,E),
study_in(F,T),
study_in(G,T),
X\==Y,
F\==G.

share_course(X,Y) :-
studies(X,S),
studies(Y,S),
X\==Y.

teach_in_same_school(X,Y) :-
teaches(X,S),
teaches(Y,Z),
taught_in(Z,G),
taught_in(S,G),
X\==Y.




