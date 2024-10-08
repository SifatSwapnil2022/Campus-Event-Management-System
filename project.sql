INSERT INTO `project` (`CREATE TABLE admin (`)
VALUES
('admin_id          NUMBER NOT NULL'),
('a_u_name       VARCHAR2(10) NOT NULL'),
('a_u_f_name  VARCHAR2(20)'),
('mail             VARCHAR2(30)'),
('img   BLOB'),
('mobile NUMBER NOT NULL'),
('u_type        VARCHAR2(10)'),
('is_actv       VARCHAR2(2)'),
('pfrnc        VARCHAR2(35)'),
('psrd         VARCHAR2 (4)NOT NULL'),
('admin_u_id     NUMBER NOT NULL'),
(');'),
('CREATE UNIQUE INDEX admin__idx ON'),
('admin ('),
('admin_u_id'),
('ASC );'),
('ALTER TABLE admin ADD CONSTRAINT admin_pk PRIMARY KEY ( admin_id );'),
('CREATE TABLE adminasorganizer ('),
('a_organizerid  NUMBER NOT NULL'),
('admin_admin_id NUMBER NOT NULL'),
('event_event_id NUMBER(10) NOT NULL'),
(');'),
('ALTER TABLE adminasorganizer ADD CONSTRAINT adminasorganizer_pk PRIMARY KEY ( a_organizerid );'),
('CREATE TABLE club ('),
('club_id           NUMBER NOT NULL'),
('c_u_name       VARCHAR2(10) NOT NULL'),
('c_u_f_name  VARCHAR2(20)'),
('mail             VARCHAR2(30)'),
('img   BLOB NOT NULL'),
('mobile NUMBER NOT NULL'),
('u_type        VARCHAR2(10)'),
('is_actv       VARCHAR2(2)'),
('pfrnc        VARCHAR2(35)'),
('psrd         VARCHAR2(4)NOT NULL'),
('club_u_id      NUMBER NOT NULL'),
(');'),
('CREATE UNIQUE INDEX club__idx ON'),
('club ('),
('club_u_id'),
('ASC );'),
('ALTER TABLE club ADD CONSTRAINT club_pk PRIMARY KEY ( club_id );'),
('CREATE TABLE clubasorganiger ('),
('c_organigerid  NUMBER NOT NULL'),
('club_club_id   NUMBER NOT NULL'),
('event_event_id NUMBER(10) NOT NULL'),
(');'),
('ALTER TABLE clubasorganiger ADD CONSTRAINT clubasorganiger_pk PRIMARY KEY ( c_organigerid );'),
('CREATE TABLE dept ('),
('dept_id     NUMBER NOT NULL'),
('d_u_name       VARCHAR2(10) NOT NULL'),
('d_u_f_name  VARCHAR2(30)'),
('mail             VARCHAR2(30)'),
('img   BLOB'),
('mobile NUMBER NOT NULL'),
('dept        VARCHAR2(8)'),
('u_type        VARCHAR2(10)'),
('is_actv       VARCHAR2(2)'),
('pfrnc        VARCHAR2(35)'),
('psrd         VARCHAR2 (4)NOT NULL'),
('dept_u_id      NUMBER NOT NULL'),
(');'),
('CREATE UNIQUE INDEX dept__idx ON'),
('dept ('),
('dept_u_id'),
('ASC );'),
('ALTER TABLE dept ADD CONSTRAINT dept_pk PRIMARY KEY ( dept_id );'),
('CREATE TABLE departmetasorganizer ('),
('deptorganizerid          NUMBER NOT NULL'),
('dept_dept_id NUMBER NOT NULL'),
('event_event_id           NUMBER(10) NOT NULL'),
(');'),
('ALTER TABLE departmetasorganizer ADD CONSTRAINT departmetasorganizer_pk PRIMARY KEY ( deptorganizerid );'),
('CREATE TABLE event ('),
('event_id    NUMBER(10) NOT NULL'),
('title       VARCHAR2(30)'),
('description VARCHAR2(60)'),
('catagory    VARCHAR2(20)'),
('location    VARCHAR2(20)'),
('"Date"      DATE'),
('time        TIMESTAMP'),
('capacity    NUMBER(10)'),
('status      VARCHAR2(20)'),
('badget      NUMBER(10'),
(');'),
('ALTER TABLE event ADD CONSTRAINT event_pk PRIMARY KEY ( event_id );'),
('CREATE TABLE facanddept ('),
('dept_dept_id NUMBER NOT NULL'),
('faculty_faculty_id       NUMBER NOT NULL'),
(');'),
('ALTER TABLE facanddept ADD CONSTRAINT facanddept_pk PRIMARY KEY ( dept_dept_id'),
('faculty_faculty_id );'),
('CREATE TABLE faculty ('),
('faculty_id        NUMBER NOT NULL'),
('f_u_name       VARCHAR2(10) NOT NULL'),
('f_u_f_name  VARCHAR2(20)'),
('mail             VARCHAR2(30)'),
('img   BLOB NOT NULL'),
('mobile NUMBER NOT NULL'),
('dept        VARCHAR2(8)'),
('u_type        VARCHAR2(10)'),
('is_actv       VARCHAR2(2)'),
('pfrnc        VARCHAR2(35)'),
('psrd         VARCHAR2(4)NOT NULL'),
('faculty_u_id   NUMBER NOT NULL'),
(');'),
('CREATE UNIQUE INDEX faculty__idx ON'),
('faculty ('),
('faculty_u_id'),
('ASC );'),
('ALTER TABLE faculty ADD CONSTRAINT faculty_pk PRIMARY KEY ( faculty_id );'),
('CREATE TABLE facultyasorganizer ('),
('f_organizerid      NUMBER'),
('event_event_id     NUMBER(10) NOT NULL'),
('faculty_faculty_id NUMBER NOT NULL'),
(');'),
('ALTER TABLE facultyasorganizer ADD CONSTRAINT facultyasorganizer_pk PRIMARY KEY ( event_event_id );'),
('CREATE TABLE facultyfeedback ('),
('f_feedback_id      NUMBER NOT NULL'),
('faculty_faculty_id NUMBER NOT NULL'),
('event_event_id     NUMBER(10) NOT NULL'),
('rating             NUMBER(1'),
('"Comment"          VARCHAR2(8)'),
('submissiontime     TIMESTAMP'),
(');'),
('ALTER TABLE facultyfeedback ADD CONSTRAINT facultyfeedback_pk PRIMARY KEY ( f_feedback_id );'),
('CREATE TABLE guest ('),
('guest_id          NUMBER NOT NULL'),
('g_u_name       VARCHAR2(10) NOT NULL'),
('g_u_f_name  VARCHAR2(20)'),
('mail             VARCHAR2(30)'),
('img   BLOB NOT NULL'),
('mobile NUMBER NOT NULL'),
('u_type        VARCHAR2(10)'),
('is_actv       VARCHAR2(2)'),
('pfrnc        VARCHAR2(35)'),
('psrd         VARCHAR2 (4)NOT NULL'),
('guest_u_id     NUMBER NOT NULL'),
(');'),
('CREATE UNIQUE INDEX guest__idx ON'),
('guest ('),
('guest_u_id'),
('ASC );'),
('ALTER TABLE guest ADD CONSTRAINT guest_pk PRIMARY KEY ( guest_id );'),
('CREATE TABLE guest_registration ('),
('g_r_id           NUMBER NOT NULL'),
('event_event_id   NUMBER(10) NOT NULL'),
('guest_guest_id   NUMBER NOT NULL'),
('registrationtime TIMESTAMP'),
(');'),
('ALTER TABLE guest_registration ADD CONSTRAINT guest_registration_pk PRIMARY KEY ( event_event_id'),
('g_r_id );'),
('CREATE TABLE guestattendence ('),
('g_attendenceid             NUMBER NOT NULL'),
('guest_guest_id             NUMBER NOT NULL'),
('event_event_id             NUMBER(10) NOT NULL'),
('g_attendencesubmissiontime TIMESTAMP'),
(');'),
('ALTER TABLE guestattendence ADD CONSTRAINT guestattendence_pk PRIMARY KEY ( g_attendenceid );'),
('CREATE TABLE guestfeedback ('),
('g_feedbackid     NUMBER NOT NULL'),
('guest_guest_id   NUMBER NOT NULL'),
('event_event_id   NUMBER(10) NOT NULL'),
('g_rating         NUMBER(1'),
('g_comments       VARCHAR2(30)'),
('g_submissiontime TIMESTAMP'),
(');'),
('ALTER TABLE guestfeedback ADD CONSTRAINT guestfeedback_pk PRIMARY KEY ( g_feedbackid );'),
('CREATE TABLE logistrics ('),
('logistrics_id      NUMBER NOT NULL'),
('l_u_name        VARCHAR2(10) NOT NULL'),
('l_u_f_name   VARCHAR2(20)'),
('mail              VARCHAR2(30)'),
('img    BLOB'),
('mobile  NUMBER NOT NULL'),
('u_type         VARCHAR2(30)'),
('is_actv        VARCHAR2(2)'),
('pfrnc         VARCHAR2(35)'),
('psrd          VARCHAR2 (4)NOT NULL'),
('logistrics_u_id NUMBER NOT NULL'),
(');'),
('CREATE UNIQUE INDEX logistrics__idx ON'),
('logistrics ('),
('logistrics_u_id'),
('ASC );'),
('ALTER TABLE logistrics ADD CONSTRAINT logistrics_pk PRIMARY KEY ( logistrics_id );'),
('CREATE TABLE logistricsofevent ('),
('logistrics_logistrics_id NUMBER NOT NULL'),
('event_event_id           NUMBER(10) NOT NULL'),
('item_name                VARCHAR2(8)'),
('quantity                 NUMBER(10)'),
('loeid                    NUMBER NOT NULL'),
(');'),
('ALTER TABLE logistricsofevent ADD CONSTRAINT logistricsofevent_pk PRIMARY KEY ( loeid );'),
('CREATE TABLE sponsor ('),
('sponsor_id        NUMBER NOT NULL'),
('sp_u_name      VARCHAR2(10) NOT NULL'),
('sp_u_f_name VARCHAR2(20)'),
('mail             VARCHAR2(30)'),
('img   BLOB'),
('mobile NUMBER NOT NULL'),
('u_type        VARCHAR2(10)'),
('is_actv       VARCHAR2(2)'),
('pfrnc        VARCHAR2(35)'),
('psrd         VARCHAR2(4)NOT NULL'),
('sponsor_u_id   NUMBER NOT NULL'),
(');'),
('CREATE UNIQUE INDEX sponsor__idx ON'),
('sponsor ('),
('sponsor_u_id'),
('ASC );'),
('ALTER TABLE sponsor ADD CONSTRAINT sponsor_pk PRIMARY KEY ( sponsor_id );'),
('CREATE TABLE sponsorofevent ('),
('soeid NUMBER NOT NULL'),
('sponsor_sponsor_id NUMBER NOT NULL'),
('event_event_id     NUMBER(10) NOT NULL'),
('contributiontype   VARCHAR2(8)'),
('amount             NUMBER(10'),
('quantity           NUMBER(10)'),
(');'),
('ALTER TABLE sponsorofevent ADD CONSTRAINT sponsorofevent_pk PRIMARY KEY ( soeid );'),
('CREATE TABLE stuanddept ('),
('student_student_id       NUMBER NOT NULL'),
('dept_dept_id NUMBER NOT NULL'),
(');'),
('ALTER TABLE stuanddept ADD CONSTRAINT stuanddept_pk PRIMARY KEY ( student_student_id'),
('dept_dept_id );'),
('CREATE TABLE student ('),
('student_id        NUMBER NOT NULL'),
('s_u_name       VARCHAR2(10) NOT NULL'),
('s_u_f_name  VARCHAR2(20)'),
('mail             VARCHAR2(30)'),
('img   BLOB NOT NULL'),
('mobile NUMBER NOT NULL'),
('dept        VARCHAR2(8)'),
('u_type        VARCHAR2(10)'),
('is_actv       VARCHAR2(2)'),
('pfrnc        VARCHAR2(35)'),
('psrd         VARCHAR2(4)NOT NULL'),
('student_u_id   NUMBER NOT NULL'),
(');'),
('CREATE UNIQUE INDEX student__idx ON'),
('student ('),
('student_u_id'),
('ASC );'),
('ALTER TABLE student ADD CONSTRAINT student_pk PRIMARY KEY ( student_id );'),
('CREATE TABLE student_feedback ('),
('s_feedback_id      NUMBER NOT NULL'),
('student_student_id NUMBER NOT NULL'),
('event_event_id     NUMBER(10) NOT NULL'),
('s_rating           NUMBER(5'),
('s_comment          VARCHAR2(30)'),
('s_submissiontime   DATE'),
(');'),
('ALTER TABLE student_feedback ADD CONSTRAINT student_feedback_pk PRIMARY KEY ( s_feedback_id );'),
('CREATE TABLE studentattedence ('),
('s_attendenceid     NUMBER NOT NULL'),
('student_student_id NUMBER NOT NULL'),
('event_event_id     NUMBER(10) NOT NULL'),
('s_a_submissiontime TIMESTAMP'),
(');'),
('ALTER TABLE studentattedence ADD CONSTRAINT studentattedence_pk PRIMARY KEY ( s_attendenceid );'),
('CREATE TABLE studentregistration ('),
('s_r_id              NUMBER NOT NULL'),
('student_student_id  NUMBER NOT NULL'),
('event_event_id      NUMBER(10) NOT NULL'),
('s_registrantiontime TIMESTAMP'),
(');'),
('ALTER TABLE studentregistration ADD CONSTRAINT studentregistration_pk PRIMARY KEY ( s_r_id );'),
('CREATE TABLE App_User ('),
('u_id           NUMBER NOT NULL'),
('u_name         VARCHAR2(10) NOT NULL'),
('u_f_name    VARCHAR2(20) NOT NULL'),
('mail             VARCHAR2(30)'),
('img   BLOB'),
('mobile NUMBER NOT NULL'),
('dept        VARCHAR2(8)'),
('u_type        VARCHAR2(10)'),
('is_actv       VARCHAR2(2)'),
('pfrnc        VARCHAR2(35)'),
('psrd         VARCHAR2(8)NOT NULL'),
(');'),
('ALTER TABLE App_User ADD CONSTRAINT user_pk PRIMARY KEY ( u_id );'),
('CREATE TABLE user_type('),
('ut_id           NUMBER NOT NULL'),
('u_type        VARCHAR2(10) NOT NULL'),
(');'),
('ALTER TABLE user_type ADD CONSTRAINT usertype_pk PRIMARY KEY ( ut_id );'),
('ALTER TABLE admin'),
('ADD CONSTRAINT admin_user_fk FOREIGN KEY ( admin_u_id )'),
('REFERENCES App_User ( u_id );'),
('ALTER TABLE adminasorganizer'),
('ADD CONSTRAINT adminasorganizer_admin_fk FOREIGN KEY ( admin_admin_id )'),
('REFERENCES admin ( admin_id );'),
('ALTER TABLE adminasorganizer'),
('ADD CONSTRAINT adminasorganizer_event_fk FOREIGN KEY ( event_event_id )'),
('REFERENCES event ( event_id );'),
('ALTER TABLE club'),
('ADD CONSTRAINT club_user_fk FOREIGN KEY ( club_u_id )'),
('REFERENCES App_User ( u_id );'),
('ALTER TABLE clubasorganiger'),
('ADD CONSTRAINT clubasorganiger_club_fk FOREIGN KEY ( club_club_id )'),
('REFERENCES club ( club_id );'),
('ALTER TABLE clubasorganiger'),
('ADD CONSTRAINT clubasorganiger_event_fk FOREIGN KEY ( event_event_id )'),
('REFERENCES event ( event_id );'),
('ALTER TABLE dept'),
('ADD CONSTRAINT dept_user_fk FOREIGN KEY ( dept_u_id )'),
('REFERENCES App_User ( u_id );'),
('ALTER TABLE departmetasorganizer'),
('ADD CONSTRAINT deptasorganizer_fk FOREIGN KEY ( dept_dept_id )'),
('REFERENCES dept ( dept_id );'),
('ALTER TABLE departmetasorganizer'),
('ADD CONSTRAINT departmetasorganizer_event_fk FOREIGN KEY ( event_event_id )'),
('REFERENCES event ( event_id );'),
('ALTER TABLE facanddept'),
('ADD CONSTRAINT facanddept_dept_fk FOREIGN KEY ( dept_dept_id )'),
('REFERENCES dept ( dept_id );'),
('ALTER TABLE facanddept'),
('ADD CONSTRAINT facanddept_faculty_fk FOREIGN KEY ( faculty_faculty_id )'),
('REFERENCES faculty ( faculty_id );'),
('ALTER TABLE faculty'),
('ADD CONSTRAINT faculty_user_fk FOREIGN KEY ( faculty_u_id )'),
('REFERENCES App_User ( u_id );'),
('ALTER TABLE facultyasorganizer'),
('ADD CONSTRAINT facultyasorganizer_event_fk FOREIGN KEY ( event_event_id )'),
('REFERENCES event ( event_id );'),
('ALTER TABLE facultyasorganizer'),
('ADD CONSTRAINT facultyasorganizer_faculty_fk FOREIGN KEY ( faculty_faculty_id )'),
('REFERENCES faculty ( faculty_id );'),
('ALTER TABLE facultyfeedback'),
('ADD CONSTRAINT facultyfeedback_event_fk FOREIGN KEY ( event_event_id )'),
('REFERENCES event ( event_id );'),
('ALTER TABLE facultyfeedback'),
('ADD CONSTRAINT facultyfeedback_faculty_fk FOREIGN KEY ( faculty_faculty_id )'),
('REFERENCES faculty ( faculty_id );'),
('ALTER TABLE guest_registration'),
('ADD CONSTRAINT guest_registration_event_fk FOREIGN KEY ( event_event_id )'),
('REFERENCES event ( event_id );'),
('ALTER TABLE guest_registration'),
('ADD CONSTRAINT guest_registration_guest_fk FOREIGN KEY ( guest_guest_id )'),
('REFERENCES guest ( guest_id );'),
('ALTER TABLE guest'),
('ADD CONSTRAINT guest_user_fk FOREIGN KEY ( guest_u_id )'),
('REFERENCES App_User ( u_id );'),
('ALTER TABLE guestattendence'),
('ADD CONSTRAINT guestattendence_event_fk FOREIGN KEY ( event_event_id )'),
('REFERENCES event ( event_id );'),
('ALTER TABLE guestattendence'),
('ADD CONSTRAINT guestattendence_guest_fk FOREIGN KEY ( guest_guest_id )'),
('REFERENCES guest ( guest_id );'),
('ALTER TABLE guestfeedback'),
('ADD CONSTRAINT guestfeedback_event_fk FOREIGN KEY ( event_event_id )'),
('REFERENCES event ( event_id );'),
('ALTER TABLE guestfeedback'),
('ADD CONSTRAINT guestfeedback_guest_fk FOREIGN KEY ( guest_guest_id )'),
('REFERENCES guest ( guest_id );'),
('ALTER TABLE logistrics'),
('ADD CONSTRAINT logistrics_user_fk FOREIGN KEY ( logistrics_u_id )'),
('REFERENCES App_User ( u_id );'),
('ALTER TABLE logistricsofevent'),
('ADD CONSTRAINT logistricsofevent_event_fk FOREIGN KEY ( event_event_id )'),
('REFERENCES event ( event_id );'),
('ALTER TABLE logistricsofevent'),
('ADD CONSTRAINT logistricsofevent_fk FOREIGN KEY ( logistrics_logistrics_id )'),
('REFERENCES logistrics ( logistrics_id );'),
('ALTER TABLE sponsor'),
('ADD CONSTRAINT sponsor_user_fk FOREIGN KEY ( sponsor_u_id )'),
('REFERENCES App_User ( u_id );'),
('ALTER TABLE sponsorofevent'),
('ADD CONSTRAINT sponsorofevent_event_fk FOREIGN KEY ( event_event_id )'),
('REFERENCES event ( event_id );'),
('ALTER TABLE sponsorofevent'),
('ADD CONSTRAINT sponsorofevent_sponsor_fk FOREIGN KEY ( sponsor_sponsor_id )'),
('REFERENCES sponsor ( sponsor_id );'),
('ALTER TABLE stuanddept'),
('ADD CONSTRAINT stuanddept_dept_fk FOREIGN KEY ( dept_dept_id )'),
('REFERENCES dept ( dept_id );'),
('ALTER TABLE stuanddept'),
('ADD CONSTRAINT stuanddept_student_fk FOREIGN KEY ( student_student_id )'),
('REFERENCES student ( student_id );'),
('ALTER TABLE student_feedback'),
('ADD CONSTRAINT student_feedback_event_fk FOREIGN KEY ( event_event_id )'),
('REFERENCES event ( event_id );'),
('ALTER TABLE student_feedback'),
('ADD CONSTRAINT student_feedback_student_fk FOREIGN KEY ( student_student_id )'),
('REFERENCES student ( student_id );'),
('ALTER TABLE student'),
('ADD CONSTRAINT student_user_fk FOREIGN KEY ( student_u_id )'),
('REFERENCES App_User ( u_id );'),
('ALTER TABLE studentattedence'),
('ADD CONSTRAINT studentattedence_event_fk FOREIGN KEY ( event_event_id )'),
('REFERENCES event ( event_id );'),
('ALTER TABLE studentattedence'),
('ADD CONSTRAINT studentattedence_student_fk FOREIGN KEY ( student_student_id )'),
('REFERENCES student ( student_id );'),
('ALTER TABLE studentregistration'),
('ADD CONSTRAINT studentregistration_event_fk FOREIGN KEY ( event_event_id )'),
('REFERENCES event ( event_id );'),
('ALTER TABLE studentregistration'),
('ADD CONSTRAINT studentregistration_student_fk FOREIGN KEY ( student_student_id )'),
('REFERENCES student ( student_id );'),
('ALTER TABLE App_User ADD ("CREATED_AT" TIMESTAMP DEFAULT SYSTIMESTAMP);'),
('ALTER TABLE "ADMIN" ADD ("CREATED_AT" TIMESTAMP DEFAULT SYSTIMESTAMP);'),
('ALTER TABLE "STUDENT" ADD ("CREATED_AT" TIMESTAMP DEFAULT SYSTIMESTAMP);'),
('ALTER TABLE "CLUB" ADD ("CREATED_AT" TIMESTAMP DEFAULT SYSTIMESTAMP);'),
('ALTER TABLE "dept" ADD ("CREATED_AT" TIMESTAMP DEFAULT SYSTIMESTAMP);'),
('ALTER TABLE "FACULTY" ADD ("CREATED_AT" TIMESTAMP DEFAULT SYSTIMESTAMP);'),
('ALTER TABLE "GUEST" ADD ("CREATED_AT" TIMESTAMP DEFAULT SYSTIMESTAMP);'),
('ALTER TABLE "LOGISTRICS" ADD ("CREATED_AT" TIMESTAMP DEFAULT SYSTIMESTAMP);'),
('ALTER TABLE "SPONSOR" ADD ("CREATED_AT" TIMESTAMP DEFAULT SYSTIMESTAMP);');
