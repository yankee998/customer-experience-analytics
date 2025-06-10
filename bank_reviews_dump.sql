SQL> -- Banks table
SQL> SELECT 'CREATE TABLE Banks (bank_id NUMBER PRIMARY KEY, bank_name VARCHAR2(100) NOT NULL);' FROM dual;
CREATE TABLE Banks (bank_id NUMBER PRIMARY KEY, bank_name VARCHAR2(100) NOT NULL
);                                                                              
                                                                                
SQL> SELECT 'INSERT INTO Banks (bank_id, bank_name) VALUES (' || bank_id || ', ''' || bank_name || ''');' FROM Banks;
INSERT INTO Banks (bank_id, bank_name) VALUES (1, 'Commercial Bank of Ethiopia')
;                                                                               
                                                                                
INSERT INTO Banks (bank_id, bank_name) VALUES (2, 'Bank of Abyssinia');         
INSERT INTO Banks (bank_id, bank_name) VALUES (3, 'Dashen Bank');               
SQL> 
SQL> -- Reviews table
SQL> SELECT 'CREATE TABLE Reviews (review_id NUMBER PRIMARY KEY, bank_id NUMBER, review_text VARCHAR2(1000), rating NUMBER(1), review_date DATE, source VARCHAR2(50), FOREIGN KEY (bank_id) REFERENCES Banks(bank_id));' FROM dual;
CREATE TABLE Reviews (review_id NUMBER PRIMARY KEY, bank_id NUMBER, review_text 
VARCHAR2(1000), rating NUMBER(1), review_date DATE, source VARCHAR2(50), FOREIGN
 KEY (bank_id) REFERENCES Banks(bank_id));                                      
                                                                                
SQL> SELECT 'INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, source) VALUES (' || review_id || ', ' || bank_id || ', ''' || REPLACE(review_text, '''', '''''') || ''', ' || rating || ', TO_DATE(''' || TO_CHAR(review_date, 'YYYY-MM-DD') || ''', ''YYYY-MM-DD''), ''' || source || ''');' FROM Reviews;
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (1, 1, 'The CBE app has been highly unreliable in recent weeks. It fre
quently fails to work properly on both Ethio Telecom and Safaricom networks, whe
ther using Wi-Fi or mobile data. This week, the system was down entirely for ext
ended periods, making it very difficult to access banking services. The app only
 functions intermittently, and the lack of consistency is frustrating. I hope th
e issues are addressed soon, and that any non-technical influences are removed f
rom such essential services.', 2, TO_DATE('2025-05-25', 'YYYY-MM-DD'), 'Google P
lay');                                                                          
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (2, 1, 'this new update(Mar 19,2025) is great in fixing bugs, stabilit
y and smooth experience I''ll give u that but it came with a big shortcoming whi
ch is not allowing to take screenshot. I can''t screenshot neither my balance no
r the transaction or anything within the app, i understand it''s for security re
asons but please bring that back, allow us to take screenshot we need that. Than
ks.', 4, TO_DATE('2025-03-20', 'YYYY-MM-DD'), 'Google Play');                   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (3, 1, 'Good job to the CBE team on this mobile app! It''s designed in
 a way that''s simple and intuitive to navigate, which is great for everyone. It
 effectively handles the essential banking tasks I need to perform regularly. It
''s a practical and reliable tool that makes everyday banking much more convenie
nt. Thank you for this useful application.', 5, TO_DATE('2025-04-04', 'YYYY-MM-D
D'), 'Google Play');                                                            
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (4, 1, 'this app has developed in a very good ways but there are some 
comments I need to make 1- preventing the screenshot likely not good for someone
 like me coz I need to make screenshot for quicker evidence. 2-it would be good 
if you make us to access recent transaction histories for 30 days coz we don''t 
have to go to the Bank''s in person to see old transactions or add colander cate
gory so user can easily access old transactions through colanders.', 5, TO_DATE(
'2025-05-31', 'YYYY-MM-DD'), 'Google Play');                                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (5, 1, 'everytime you uninstall the app you have to reach them out phy
sically. very oldy! if that''s one of security layer, they''d check for fraud at
tempt via app source directly(source:- app store, play store ... etc) implicitly
 ! we are in 2025, physical presence for every app install is traditional(tradit
ionally very rare).', 1, TO_DATE('2025-06-04', 'YYYY-MM-DD'), 'Google Play');   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (6, 1, 'as if the update of march 19 i can''t take a screenshot in the
 app. i can just save it as file and that is so annoying. i used to save all scr
eenshot in my gallery in one folder now with the extra steps added i have to sav
e the file go to file and then screenshot it. the solution is to allow the scree
nshot to be save in to gallery automatically. i wish you give this review attent
ion and resolve the issue shortly.', 2, TO_DATE('2025-03-19', 'YYYY-MM-DD'), 'Go
ogle Play');                                                                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (7, 1, 'Old version was very friendly to use. Now we can''t see the #R
eason The #transaction history (very limited) and now it crash every time it''s 
opened. More over, the last update prevents us from taking #screenshots. Thanks 
for the developers as they are getting more stupid than ever.', 1, TO_DATE('2025
-03-21', 'YYYY-MM-DD'), 'Google Play');                                         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (8, 1, 'Taking away the screenshot of the receipt is just silly. Worse
 is tbe download button putting a copy of the screenshot - which you prevented t
o be taken - in tbe downloads folder where we cant attach directly from Whatsapp
. Millions of people use the screenshot as proof of payment / transfer yet you m
ake that harder for everyone? I have every user contacts the developer or manage
r who made this awful decision.', 1, TO_DATE('2025-03-20', 'YYYY-MM-DD'), 'Googl
e Play');                                                                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (9, 1, 'Recently there is big problem when sending to safaricom, teleb
ir, and even to cbebirr wallet could anybody who is responsible fix it, it''s ve
ry frustrating it''s been 5 days and my money hasn''t been returned it takes it 
out of my account but doesn''t send it to my mpesa update- they have just correc
ted it and sent me back the money but still I''m afraid now to send again', 2, T
O_DATE('2025-05-31', 'YYYY-MM-DD'), 'Google Play');                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (10, 1, 'I was using this app for the last two years with no problems.
 It stopped working about 3 months ago. when I tried to transfer funds it gives 
me error "can''t do this transaction. inactive account."', 4, TO_DATE('2025-05-2
7', 'YYYY-MM-DD'), 'Google Play');                                              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (11, 1, 'It''s very good in reminding the account numbers you have bee
n used, but Need to show recipient history whenever you want to present it.or it
 has to have a search on options for a spesfic time you want to look for receipt
s with out going for account details at bank. if you lost your receipt without d
ownloading it and need to look sometime a while you can''t get in simple search 
on the app.', 1, TO_DATE('2025-02-15', 'YYYY-MM-DD'), 'Google Play');           
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (12, 1, 'It crashes multiple times everytime you launch it. Fix it. Ed
it: crash fixed but screenshots has been disabled. I don''t know who thought thi
s was a good idea.', 1, TO_DATE('2025-03-26', 'YYYY-MM-DD'), 'Google Play');    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (13, 1, 'The latest update prevents taking screenshots, which is reall
y annoying! please allow us to take screenshots! we need it for evidence (partic
ularly, in case of transfer failure!).', 1, TO_DATE('2025-03-27', 'YYYY-MM-DD'),
 'Google Play');                                                                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (14, 1, 'The history sometimes misses transactions, tranfer to cbe bir
r debited but not really transferred, We need to really cop up with the world fo
r real. The hacks and security problems, invest on and solve them.', 3, TO_DATE(
'2025-03-30', 'YYYY-MM-DD'), 'Google Play');                                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (15, 1, 'every update was made the system better and better until the 
March 19th, 2025 update, not allowing us to screenshot. you guys didn''t underst
and how much it''s a really quick and significant thing. You add extra steps to 
us, which makes the process draw back', 3, TO_DATE('2025-04-18', 'YYYY-MM-DD'), 
'Google Play');                                                                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (16, 1, 'I’ve been using the CBE mobile banking app, and overall, I ap
preciate its features. However, I’ve noticed that when I turn on the developer o
ptions on my device, the app stops functioning properly. It would be great if yo
u could look into this issue, as I often need to access developer settings for o
ther applications. Thank you for your attention to this matter!', 1, TO_DATE('20
25-01-29', 'YYYY-MM-DD'), 'Google Play');                                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (17, 1, 'Very good application. However, I have one functionality reco
mmendation. What if you let the app transfer money to any telebirr account as fo
r MPESA? By the way, I am not the only one to ask this. Thank you!', 4, TO_DATE(
'2025-04-01', 'YYYY-MM-DD'), 'Google Play');                                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (18, 1, 'I have using the CBE mobile banking app. and overall i apprec
iate its Feuteres However i.ve Notticed that when i turn on the Developer option
s on my divice the App.Stop Functioning prorerly It.Would Be Great If You could 
look into This issue as l often need to access Developer setting for Otter Appli
cation ThankYou For Your attention to This Matter', 4, TO_DATE('2025-05-13', 'YY
YY-MM-DD'), 'Google Play');                                                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (19, 1, 'In the previous, I gave 4 ¿ for this app based on my evaluati
on. This app was without biometric security and may be exposed to cheaters unexp
ectedly. It is solved now. You can add verification security on the setting app.
 But there is something problem still with verification. It must prevent logging
 in without correct input fingerprint.', 5, TO_DATE('2024-12-20', 'YYYY-MM-DD'),
 'Google Play');                                                                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (20, 1, 'I don''t understand the reason, why I need to disable develop
er options to access the app, it has no security risks nor does it hinder the ap
p''s functionalities. This goes out to the dev, I hope your life is filled with 
inconveniences.', 1, TO_DATE('2025-04-02', 'YYYY-MM-DD'), 'Google Play');       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (61, 1, 'Still needs development on several features.... For example -
 bank statements available online. The text feature of available balance and deb
ited/credited notifications is very old school and involves too much digital tra
il. App doesn''t always work, could be due to network issues in Ethiopia though.
 Another major issue is an error message is displayed when transferring from CBE
 to other banks. Ive almost lost a few thousands doing this once. Always cross c
heck your balances.', 1, TO_DATE('2024-08-27', 'YYYY-MM-DD'), 'Google Play');   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (62, 1, 'Recently app keeps closing and the notification after says th
is app has a bug. Can you make an update please', 4, TO_DATE('2025-03-31', 'YYYY
-MM-DD'), 'Google Play');                                                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (63, 1, 'Unstatisfied with the new update keeps crashing every now and
 then and even though i haven''t reached the max txn per day still refuses to tr
ansfer...probably going to change my bank if it''s not fixed asap', 1, TO_DATE('
2025-03-10', 'YYYY-MM-DD'), 'Google Play');                                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (64, 1, 'The app has brought a new problem. When i open the app, it cl
oses itself then i have to open it again. Please fix this issue if it''s your pr
oblem', 3, TO_DATE('2025-03-14', 'YYYY-MM-DD'), 'Google Play');                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (65, 1, 'The good thing is its simplicity to undertake the basic funct
ions. Updates with improvements and fixes should have been released by now. Plea
se fix. 5 years after last review… Issues with beneficiary are fixed. However, s
till unable to track transactions much less to download in appropriate formats. 
This feature got diminished in the latest update. Please improve and fix.', 3, T
O_DATE('2023-03-15', 'YYYY-MM-DD'), 'Google Play');                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (66, 1, 'this app is absolutely fantastic I love it and I enjoying to 
it ,let us support this foundation together .', 5, TO_DATE('2025-05-25', 'YYYY-M
M-DD'), 'Google Play');                                                         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (67, 1, 'Funds transferred from the same bank do not reflect in the ac
count, even though a confirmation text message was received.', 3, TO_DATE('2025-
05-11', 'YYYY-MM-DD'), 'Google Play');                                          
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (68, 1, 'It is Amazing Mobile Banking App....But why the screenshot of
 the receipt doesnt work', 5, TO_DATE('2025-05-13', 'YYYY-MM-DD'), 'Google Play'
);                                                                              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (69, 1, 'Very good app, but please make it reliable . it crashes somet
imes .', 4, TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'Google Play');                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (70, 1, 'Sometimes it has a nasty lag for several hour fix that , the 
rest is ¿', 4, TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'Google Play');             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (71, 1, 'it is smart app but it has stoped after some period of time o
n my device with out any reason .', 5, TO_DATE('2025-05-25', 'YYYY-MM-DD'), 'Goo
gle Play');                                                                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (72, 1, 'nice app suitable to use it. the only weak side is it need da
ta connections and hoping will be fixed to offline i gave 4 rate', 4, TO_DATE('2
025-04-05', 'YYYY-MM-DD'), 'Google Play');                                      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (73, 1, 'The updated app is attractive and is working very well. Force
d to revise my previous rating of 2 star to 4 star. Hope it will keep on working
! Rated it excellent for the past years. Revised my review after it keeps on cra
shing in 2019 and installing it for a second time in less than 3 months. Please 
work on the problems.', 4, TO_DATE('2020-07-25', 'YYYY-MM-DD'), 'Google Play'); 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (74, 1, 'I really love this app,it is amazing. It is more flexible tha
n any other banks app. The only and main problem that I encountered with this ap
p is,if it is uninstalled from this devices, I have to go to the bank and mostly
 the specific barank the account is opened to reconfigur again. This is very unp
ractical in most cases,since people are traveling and very busy in their day to 
day activities. Kindly consider to change this option.', 5, TO_DATE('2023-09-11'
, 'YYYY-MM-DD'), 'Google Play');                                                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (75, 1, 'I have been using this app for more than a year it came with 
best version, but now after the last update it''s not working well as before. It
 can''t sync, the connection is not working at all. I can''t see recent transact
ions and make any transfer , all the features are not working, I hope you will c
ome with a better update soon.', 2, TO_DATE('2020-09-12', 'YYYY-MM-DD'), 'Google
 Play');                                                                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (76, 1, 'In fact, it''s a good app to make our daily life easier! Howe
ver, I have encountered several times issues with this app. 1. It''s not always 
working with network error, even though the network is good on my phone. 2. It h
appened to me several times that when I transfer money to someone''s account, I 
doubled the transfer! Or in another word, my money sent two times. If I wanted t
o send 10,000, I found that sent 20,000 because of the APP error. I hope this wi
ll be fixed soon.', 1, TO_DATE('2023-09-04', 'YYYY-MM-DD'), 'Google Play');     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (77, 1, 'there are to many bugs app keeps crashi ng and the update fil
e seems to keep getting worse', 2, TO_DATE('2025-03-24', 'YYYY-MM-DD'), 'Google 
Play');                                                                         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (78, 1, 'I fails mid transaction, No screenshot, download don''t work,
 link shared not working bring back the old app this is usless', 1, TO_DATE('202
5-03-26', 'YYYY-MM-DD'), 'Google Play');                                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (79, 1, 'Since last week this app has started not working. It simply l
og in without network but can''t sync. Please fix it.', 5, TO_DATE('2025-03-21',
 'YYYY-MM-DD'), 'Google Play');                                                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (80, 1, 'Best app but there is some problem I can''t send money to tel
ebirr or mpesa so if you can add that it could be use full', 4, TO_DATE('2025-05
-02', 'YYYY-MM-DD'), 'Google Play');                                            
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (81, 1, 'its great app but when updating we can''t take screen shot pl
ease try to fix it', 3, TO_DATE('2025-04-10', 'YYYY-MM-DD'), 'Google Play');    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (82, 1, 'URGENT FIX REQUIRED!!! The app does not work anymore! Account
 balance is not displayed. Trying to use any service on the app shows error "Non
e available". What is the point of an internet/mobile banking app if you cannot 
carry out banking services from your fingertips? I also don''t want to reinstall
 because CBE activation code can only be recieved in the bank, which sounds very
 ridiculous. These days, banks send OTP to email, so customers can manage their 
account anywhere in the world.', 1, TO_DATE('2023-12-26', 'YYYY-MM-DD'), 'Google
 Play');                                                                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (83, 1, 'The inconvenience of this app is that it requires developer o
ptions to be turned off. This hinders my ability to customize my phone as some o
f the customization can only be done in the developer options. Also, it didn''t 
have this requirement before, so why now? And please return it how it was becaus
e this should not be an issue. Also, when a transaction is completed before it u
sed to allow me to save the image of the completed transaction, now it doesn''t,
 so please fix that also.', 1, TO_DATE('2025-01-01', 'YYYY-MM-DD'), 'Google Play
');                                                                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (84, 1, 'some times it is difficult to get reciepts for the payment ma
de', 1, TO_DATE('2025-03-23', 'YYYY-MM-DD'), 'Google Play');                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (85, 1, 'the worst commercial company that fails to do even the most n
ormal things again and and again.', 1, TO_DATE('2025-05-03', 'YYYY-MM-DD'), 'Goo
gle Play');                                                                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (86, 1, 'I can simply describe this app as "Making all your work easie
r".', 5, TO_DATE('2025-04-28', 'YYYY-MM-DD'), 'Google Play');                   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (87, 1, 'In the updated version of the app, it takes more time to down
load the receipt.', 3, TO_DATE('2025-04-15', 'YYYY-MM-DD'), 'Google Play');     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (88, 1, 'In the lasted update you removed the capability to screenshot
 transactions.', 3, TO_DATE('2025-03-21', 'YYYY-MM-DD'), 'Google Play');        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (89, 1, 'very good, but sometimes NUR CBE comes without my consent. ev
en if I choose locked, it appears', 4, TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'Goo
gle Play');                                                                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (90, 1, 'Sometimes it brings a contradicting notifications. First I sa
w an internet poll form. After I filled it, another message comes that advises u
sers not fill any forms sent or bank did not send such documents. Sometimes the 
app gets stack without any prior notices. It happened quite numerical times with
 me. Otherwise great app. I think a followup maintenance and improvements needed
', 3, TO_DATE('2024-03-09', 'YYYY-MM-DD'), 'Google Play');                      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (91, 1, 'It used to work properly, but not anymore. I used to use the 
app from abroad; but these days, it kept saying "unable to connect" when I tried
 to check my balance and do transactions.', 1, TO_DATE('2025-02-07', 'YYYY-MM-DD
'), 'Google Play');                                                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (92, 1, 'Before the new version, the app was fast and merits 4 ¿. Howe
ver, following the upgrade, the app is slow and takes time to reload. Apps are u
seless without speed, so make them work.', 1, TO_DATE('2024-12-19', 'YYYY-MM-DD'
), 'Google Play');                                                              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (93, 1, 'Recent transactions doesn''t load properly sometimes . And al
so when transferring to someone sometimes it says failed and but already transfe
rred which might cause to double transfer', 1, TO_DATE('2025-02-07', 'YYYY-MM-DD
'), 'Google Play');                                                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (94, 1, 'Why force-disable Developer Options in the latest update? I g
et that it''s a security precaution, but it''s overkill. Plenty of other financi
al apps do not require it and it''s sometimes necessary for debugging/experiment
al reasons', 1, TO_DATE('2025-01-21', 'YYYY-MM-DD'), 'Google Play');            
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (95, 1, 'I don''t understand the reason why this app asks me to turn o
ff my developer options whenever I try to log into the app ¿ This issue immediat
ely needs to be fixed. Why would I sacrifice my phone''s performance to use only
 this app? It''s ridiculous ¿', 2, TO_DATE('2025-01-06', 'YYYY-MM-DD'), 'Google 
Play');                                                                         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (96, 1, 'The apk doesn''t work when the phones developer option is tur
ned on. It always asks me to turn off the developer options to open the apk. Ple
ase fix it as it is unnecessary.', 4, TO_DATE('2025-01-26', 'YYYY-MM-DD'), 'Goog
le Play');                                                                      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (97, 1, 'The not allowing the app while "developer options" is on need
s to be fixed! Why the hell is an app telling me what to do with my own OS??? Th
is is an unnecessary fix that needs to be fixed!!!', 1, TO_DATE('2025-01-01', 'Y
YYY-MM-DD'), 'Google Play');                                                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (98, 1, 'Worst update ever. It asked to disable the developer''s optio
n which they don''t have any authority over. Most useless update ever. I wish I 
could give it a 0 star if it was possible. Why do you care about my phone''s set
tings? Stupid developers. Should Switch to other banks.', 1, TO_DATE('2025-01-01
', 'YYYY-MM-DD'), 'Google Play');                                               
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (99, 1, 'The app is crashing several times it''s really annoying and s
ometimes it''s says failed during different operations ?????? Please fix it!?', 
1, TO_DATE('2025-02-04', 'YYYY-MM-DD'), 'Google Play');                         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (100, 1, 'It''s very good app for transactions, to give you 5star one 
more thing you need to do is include bank statement showing methods. And one mor
e thing after you take your commission why you take 5birr monthly without my con
firmation?', 4, TO_DATE('2024-12-16', 'YYYY-MM-DD'), 'Google Play');            
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (101, 2, 'This app is a joke. It crashes more than it works, takes for
ever to load, and half the features are just decorative at this point. Can’t log
 in, can’t transfer money, can’t even check my balance without it bugging out. T
o the developer: Are you actually trying to make this work, or is this some kind
 of social experiment to test our patience? Did you build this in your sleep? Be
cause it definitely looks like it. If this is your idea of a functional app, may
be consider a different career path¿', 1, TO_DATE('2025-05-21', 'YYYY-MM-DD'), '
Google Play');                                                                  
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (102, 2, 'Hello, I’m facing a problem with the BOA Mobile app. Every t
ime I enter my phone number and password, the app crashes and shows an error tha
t says “BoaMobile closed because this app has a bug.” I tried updating, reinstal
ling, and clearing cache, but nothing worked. Please fix this bug in the next up
date. I really need access to my account. Thank you.', 1, TO_DATE('2025-06-03', 
'YYYY-MM-DD'), 'Google Play');                                                  
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (103, 2, 'It keeps showing this pop up to turn off developer options e
ven tho it''s off! I had to turn on and then off to make it work! This is a horr
ible experience and needs a fix asap! Plus kinda slow.', 1, TO_DATE('2025-04-19'
, 'YYYY-MM-DD'), 'Google Play');                                                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (104, 2, 'Edit: New bug, app not letting me type in my otp codes. Sham
eful Why does this app not allow me to use it while having developer options on?
 Did y''all consider that I might, perhaps, be an actual developer? Why am I exp
ected to toggle the option on and off just to bank (restarting my phone when I d
o)? Why is the message labled as somthing that will "smoothen" the experience? T
his is like the most "security consultant" thing to implement in an app. Please 
invest in actual security, not this mess.', 1, TO_DATE('2025-03-12', 'YYYY-MM-DD
'), 'Google Play');                                                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (105, 2, 'i entered incorrect security question by mistake boa app loc
k pin forever, why is there no other options? ?? i contacted different branchs m
ore then 4times but they didn''t able to solve this issue .', 5, TO_DATE('2025-0
5-10', 'YYYY-MM-DD'), 'Google Play');                                           
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (106, 2, 'This is the best app; many features are awesome, but it shou
ld work without the need to turn off the developer options. I''m tired of having
 to constantly switch the developer options off and on. I''ve been expressing my
 struggles about this. I have precious settings enabled in the developer options
, and to open the App Boa app, I have to turn them off. Please help us, Abyssini
a Bank. I hope you can provide an update soon.', 4, TO_DATE('2024-12-08', 'YYYY-
MM-DD'), 'Google Play');                                                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (107, 2, 'I don''t know what is wrong with BOA as a bank in general. I
t''s been going backwards since last year or so. The app is a disaster to use in
 every possible way. Not stable to log in and very slow to perform transactions,
 couldn''t take a screenshot (or can''t even find the pictures even using its sa
ve screenshot option). Most of the time, it fails to perform transactions and so
 on. Simply, it''s the worst!', 1, TO_DATE('2024-08-03', 'YYYY-MM-DD'), 'Google 
Play');                                                                         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (108, 2, 'What''s wrong with App. this days? it doesn''t working prope
rly. 1) it''s VERY SLOW & doesn''t open. it''s very Annoying. 2) most of the tim
e it says repeatedly Please try it again or try it later but again and again it 
doesn''t open or work. 3) repeatedly it says something went wrong then it off th
e screen. I''ve updated the App. when it needed but nothing changed. ¿PLEASE if 
it has some issues with the App. Please fix it otherwise I''m going to uninstall
 it.', 2, TO_DATE('2024-05-08', 'YYYY-MM-DD'), 'Google Play');                  
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (109, 2, 'I’m giving this app one star because there are no options be
low that. My experience has been incredibly frustrating due to the extremely lon
g loading times, and the app even closes automatically at times. People choose m
obile banking for its convenience, but this app is far too time-consuming, makin
g it the worst I’ve used. I hope improvements are made to enhance the user exper
ience.', 1, TO_DATE('2024-12-07', 'YYYY-MM-DD'), 'Google Play');                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (110, 2, 'I have a fitayah account, a type of interest free account, a
nd because their system is unable to process anything for people like me I can''
t see any of my accounts in the account list on any transaction, although I can 
see it when performing security actions or checking my balance, as such this app
 is as useless to me as the previous one. Unbelievable', 1, TO_DATE('2024-02-18'
, 'YYYY-MM-DD'), 'Google Play');                                                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (111, 2, 'Worst App ever. Totally unreliable. And it didn''t work at a
ll for the last 4 months.', 1, TO_DATE('2025-05-18', 'YYYY-MM-DD'), 'Google Play
');                                                                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (112, 2, 'What an awesome app! It is supper easy to use with very attr
active GUI. But there are some problems to be addressed: (1) It crashes frequent
ly and requires mobile cache to be cleared to relaunch. (2) Automatic OTP input 
is good. But fix the manual activation option, too. (3) It does not boot fast. (
4) There are minor errors during the installation. (5) Color contrast: In the tr
ansactions menu, the credit accounts should be in dark green than light green. T
he debit accounts should be in dark red.', 5, TO_DATE('2024-02-06', 'YYYY-MM-DD'
), 'Google Play');                                                              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (21, 1, 'before it was smooth and good. this time after the new update
 in 2025 i can not make screenshot of my recite. even the downlod button is very
 delayed in putting my recite in my gallery for simple proof. please fix this i 
am unable to show proof of payment to my clients. thankyou.', 3, TO_DATE('2025-0
4-04', 'YYYY-MM-DD'), 'Google Play');                                           
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (22, 1, 'my first frequent experience of cbe app is critical-time fail
ure such as suspending payment on air for 2-5 days with zero explanation, deduct
ing from sender account without depositing to the receiver act. Another fatal er
ror by the banking company as a whole (not the app itself though) is forced-bank
ing with corporations without consent of employers-users of the corresponding co
rporations', 2, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');            
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (23, 1, 'What an absolutely terrible update. No screenshots and you st
ill have this stupid restriction on developer options. WHAT ABOUT THOSE OF US WH
O ARE ACTUALLY DEVELOPERS!!!!!! At this point telebirr just wins the game 100%. 
CBE. Do. Better!', 1, TO_DATE('2025-03-21', 'YYYY-MM-DD'), 'Google Play');      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (24, 1, 'Please bring back the screenshot option. The screenshot downl
oad option takes like 15 second appear in gallery and most people don''t know ab
out it.', 3, TO_DATE('2025-03-25', 'YYYY-MM-DD'), 'Google Play');               
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (25, 1, 'The recent update automatically turns the developers option o
n, and when one starts the app, a message pops up saying the app does not work w
ith the developers option on. So, one has to go to the settings and manually tur
n the developers option off. Otherwise the app doesn''t work.', 3, TO_DATE('2025
-01-01', 'YYYY-MM-DD'), 'Google Play');                                         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (26, 1, 'The review page keeps loading, and even sync is completed. Th
e history page always shows old/unknown transactions. ...... Edited: I guess the
 loading page means it expires and needs to go to the nearest bank and ask for a
n extension for another 3 years. Upgrade to 3 stars .', 3, TO_DATE('2024-12-30',
 'YYYY-MM-DD'), 'Google Play');                                                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (27, 1, 'First this app was pretty good and well connection while tran
sferring money, but now there''s no such a worst mob app ever while transferring
 money it corrupts due to the network and took the amount of money you were tran
sferring from your account then after seconds interruptions it''s shows that the
 money is transferred (this case happens especially to telebirrr wallet) then af
ter you report the issue to the CBE customer service they refund your money to y
our CBE account after 3-5 days.', 2, TO_DATE('2025-01-09', 'YYYY-MM-DD'), 'Googl
e Play');                                                                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (28, 1, 'Two step verification update is fake (meaningless). Why becau
se the app gives you an option of to use pin while requesting two step verificat
ion step. ¿ This updated app is not differ than the previous one in case of secu
rity & safegaurding users.¿¿¿¿ The other features of the app are best and easy t
o use it.¿¿¿¿¿¿¿¿¿¿', 1, TO_DATE('2025-03-06', 'YYYY-MM-DD'), 'Google Play');   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (29, 1, 'Really! this app is more simple to use at any time in every w
here also it''s transaction quality between the users within the transaction rec
eipt as abank that means this app is our bank on hand in mobile frankly I proud 
on this bank digital. I have no word to wrote ...... but it''s have weakness on 
poor connection.', 5, TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'Google Play');      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (30, 1, 'The app is full of bugs here and there, perhaps it''s from th
e backend side idk. For instance the transaction history you see on top is one m
ade a couple of months ago and you have to refresh until you reach the top. it''
s just so bizarre. And you can''t even search for a transaction you made. Someon
e with a lot of transactions will find it annoying. Even simple things like loca
lising dates to Amharic dates are now correctly implemented.', 2, TO_DATE('2025-
02-25', 'YYYY-MM-DD'), 'Google Play');                                          
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (31, 1, 'It made life alot easier. I cant even imagine having to make 
all those transactions in person. So this app was crucial for me. Very good app.
 well done.', 5, TO_DATE('2025-04-03', 'YYYY-MM-DD'), 'Google Play');           
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (32, 1, 'It used to be the best bank app in Ethiopia. But now using it
 is a terrible experience. For every transaction it shows an error message. Maki
ng a simple payment requires 5 to 6 trials to complete.', 1, TO_DATE('2025-01-31
', 'YYYY-MM-DD'), 'Google Play');                                               
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (33, 1, 'I''m sad guys what are you doing? Why did you add the screens
hot restriction to the app? You just made it worse it was a great value to us. Y
ou need to rethink it. i will change the 1 star rating when you resolve the issu
e.', 1, TO_DATE('2025-03-22', 'YYYY-MM-DD'), 'Google Play');                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (34, 1, 'it was good app but it have some issues like it doesnt give m
e the right amount that I have in the bank and have some issues in transferring'
, 2, TO_DATE('2025-06-04', 'YYYY-MM-DD'), 'Google Play');                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (35, 1, 'Its good but we need an option of choosing a specific period 
to get a historique of transactions. For example when i want to check my previou
s transactions i only get few transactions. Thank you.', 2, TO_DATE('2025-01-30'
, 'YYYY-MM-DD'), 'Google Play');                                                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (36, 1, 'always disappointing ! especially the iOS one !! some similar
 local applications are extremely superior to this application!! Really disappoi
nting!', 1, TO_DATE('2025-05-17', 'YYYY-MM-DD'), 'Google Play');                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (37, 1, 'As an app developer, I rely on Developer Mode to build and te
st apps, but this app blocks access entirely if it''s enabled. This restriction 
is unnecessary and makes it impossible for developers to use the service. Instea
d of outright blocking, consider implementing enhanced security measures that do
n''t alienate professionals who need this setting. Please reconsider this policy
.', 2, TO_DATE('2024-12-31', 'YYYY-MM-DD'), 'Google Play');                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (38, 1, 'it is good app. But you have integrate cbe with cbe birr. to 
allow cardless withdrawal directly from our accout!', 4, TO_DATE('2025-03-31', '
YYYY-MM-DD'), 'Google Play');                                                   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (39, 1, 'Doesn''t work properly. It crashes some many times. commercia
l bank of Ethiopia not only the application but also sending money to own CBE bi
rr doesn''t get your money in your bank account. forcefully you must wait 3-5 da
ys to get your money back to your account. walk up CBE the world is going to dec
entralized finance.', 1, TO_DATE('2025-03-26', 'YYYY-MM-DD'), 'Google Play');   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (40, 1, 'I am not exaggerating when I say that this application is one
 of the biggest players in the banking industry. It has simplified a lot of thin
gs for the user, even if the bank is in his pocket. But my opinion is (1), when 
we transfer money, there is a word limit on the (Note) at the end. Why can''t we
 write our reason briefly? I don''t understand why it is limited. On the other h
and, there is no limit on the bank. Could you explain this? (2), when we pay for
 water, why is the code not mentioned', 5, TO_DATE('2025-03-29', 'YYYY-MM-DD'), 
'Google Play');                                                                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (41, 1, 'If any developer is reading this please fix the screenshot fu
nctionality or at least the download button should work flawlessly without me to
uching it twenty times.', 1, TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'Google Play')
;                                                                               
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (42, 1, 'well designed! Fixing bugs & two step verification with biome
tric... simply it''s great!', 5, TO_DATE('2025-05-06', 'YYYY-MM-DD'), 'Google Pl
ay');                                                                           
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (43, 1, 'I have seen lots of great updates right here, especially the 
2FA using the biometric security technique, I suggest you work on minimising app
 crashing due to the accumulation of cache, very little cache crash it.', 4, TO_
DATE('2025-02-03', 'YYYY-MM-DD'), 'Google Play');                               
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (44, 1, 'Add customer service please other than calling 951. Why would
 you have a mobile app but not an online text-based customer service? Why? Disap
pointing And I will never use the top-up feature again, I have been trying to re
charge my safaricom balance but your app would say time out and then credit my a
ccount but never recharge my balance, why? Where is my money? Do you expect me t
o call 951 at midnight?', 2, TO_DATE('2025-02-08', 'YYYY-MM-DD'), 'Google Play')
;                                                                               
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (45, 1, 'Why on earth is CBE telling me to turn off developer mode? As
 the name clearly states, it''s for developers, not for CBE to dictate. There ar
e countless financial apps out there that work just fine without demanding such 
an unnecessary restriction. If your app can’t handle developer mode, that’s a yo
u problem. Fix your code instead of disabling features that have absolutely noth
ing to do with you.', 2, TO_DATE('2025-01-25', 'YYYY-MM-DD'), 'Google Play');   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (46, 1, 'I really like this app as it is being updated from time to ti
me and includes multiple payment options. In particular, giving a receipt makes 
it even more preferable. However, when it is refreshed, it does not show the his
tory of credit and deposit in order and, I am of the opinion that it is better i
f the recent history is fixed respectively according to the transaction date in 
the future because there is a problem of confusion.', 3, TO_DATE('2024-09-12', '
YYYY-MM-DD'), 'Google Play');                                                   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (47, 1, 'The previous version is much better than this one. I used it 
for more than six years without any problem. But now I''m having a serious troub
le with the updated app. I don''t know why it takes him forever to refresh and l
oad the home page once you sign in. And if it fails to load, it never recovers. 
I only see some UI changes. Really disappointed', 2, TO_DATE('2021-01-01', 'YYYY
-MM-DD'), 'Google Play');                                                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (48, 1, 'I like the application very much because it is user friendly 
and makes transactions easiest, especially for business matters. But, these few 
days I faced difficulties of opening it. I tried to uninstall and re install the
 app, and re verified at the nearest cbe center. But still failed to use all the
 functions. It says ''none available''. Any suggestions please!', 3, TO_DATE('20
23-06-05', 'YYYY-MM-DD'), 'Google Play');                                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (49, 1, 'Most of the time, in the ''Recents'' button the app becomes s
tuck and doesn''t show up details of transactions and doesn''t even scroll down;
 should be solved. Second, the app doesn''t save the last pop-up screen when a t
ransaction is complete. Third, there is no telebirr transfer to other person opt
ion and the app by default lets you to only own telebirr transfer.', 4, TO_DATE(
'2022-10-06', 'YYYY-MM-DD'), 'Google Play');                                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (50, 1, 'It''s a great app. I''ve been using this app since the bank l
aunched it. As a long-term user, I would like to point out things that need to b
e improved. 1. Deleting money transfer history should be the user''s choice. 2. 
There should be an option to download an in-depth transfer history for each tran
sfer activity , just as there is posiblity to download a single time transfer re
cit. Do that and get 5 star.', 3, TO_DATE('2022-03-18', 'YYYY-MM-DD'), 'Google P
lay');                                                                          
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (51, 1, 'This app has several issues based on my experience. Below are
 the problems that I encountered: 1. The app frequently crashes. 2. It only show
s a limited transaction record history (25 transactions). 3. You can''t access t
he transaction records after 8:00 pm and on Sundays. 4. It displays a "payment f
ailed" message. It would be greatly appreciated if you could address these issue
s', 1, TO_DATE('2024-08-25', 'YYYY-MM-DD'), 'Google Play');                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (52, 1, '1 star because I have to visit my bank for new installation o
f the app and reactivation takes about 45 to 60 minutes with there long queue an
d system failures. Learn from telebire app and give options to customers to apt 
out of this ridiculous security feature. Second why is there no customization in
 the settings for displaying which account I want displayed in the first section
 rather that slide to my main account every time. You are making us pay a monthl
y subscription. Bare minimum is not it', 1, TO_DATE('2025-02-26', 'YYYY-MM-DD'),
 'Google Play');                                                                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (53, 1, 'My experience with this app has been outstanding so far,but s
ometimes it has a hard time connecting with network and makes it hard to make tr
ansactions. Apart from that it''s amazing.', 4, TO_DATE('2024-12-17', 'YYYY-MM-D
D'), 'Google Play');                                                            
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (54, 1, 'I have been using this app for almost four years now. In the 
beginning, it was working fine. Sometime later, it gets difficult to create a co
nnection to my account, and could not manage to make and see transactions on my 
account. After updating it lately, Jul 2020, I was glad this app came with some 
user interface improvements, and the connection was quite fast. Not longer than 
two weeks, the app starts to get stuck, and it cannot even show me the UI proper
ly. As a result, I have a useless app on my cell phone, hoping that [you] will s
oon come with updates.', 2, TO_DATE('2020-09-03', 'YYYY-MM-DD'), 'Google Play');
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (55, 1, 'Application UI and new features are better than the previous 
version. I found a minor bugs though. I couldn''t transfer to an account from th
e beneficiary list, it says None Available; There is still so much to do with th
e localization; Instead of ¿¿ it says ¿¿ and more like this; date conversion is 
missing also. If this minor things are fixed it will be much better.', 3, TO_DAT
E('2020-11-05', 'YYYY-MM-DD'), 'Google Play');                                  
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (56, 1, 'It is a good and progressive app through the updates. I think
 the app should further solve its bugs like 1. It doesn''t download or share att
achment on android 12 and 11, it used to work on android 10. 2. Sometimes transa
ctions seem like they have failed and there are no records, but the transactions
 actually have passed this is a very serious issue, because people will try the 
transaction again which will end up doubling the payment.', 4, TO_DATE('2022-09-
15', 'YYYY-MM-DD'), 'Google Play');                                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (57, 1, 'With each update the app is getting slower and slower, specia
lly when requesting transaction history. And I wish the logging process could be
 done easily. When someone changes a phone, it makes it mandatory to consult the
 branch and that makes it not to be self assisted. Hope you could fix it. Please
 add an option of transferring to other TeleBirr numbers other than the "Own tel
ebirr" option. It id very limiting now a days', 4, TO_DATE('2023-08-11', 'YYYY-M
M-DD'), 'Google Play');                                                         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (58, 1, 'Absolutely the best app! It works flawlessly, anytime and any
where.', 5, TO_DATE('2025-04-17', 'YYYY-MM-DD'), 'Google Play');                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (59, 1, 'The CBE mobile banking app is a time-saver, but it needs seve
ral improvements, like adding fingerprint authentication. It''s risky when peopl
e see me entering my PIN. Additionally, the fees are unreasonable. You could lea
rn from Tele Birr, which adjusts fees based on the transaction amount. However, 
the CBEMB app charges a flat 10 birr fee for amounts between 5 and 1000 birr, wh
ich I think is unfair.', 2, TO_DATE('2024-09-04', 'YYYY-MM-DD'), 'Google Play');
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (60, 1, 'The app is awesome. But there are many things to highlight.Fo
r example, When spending money from the account , a confirmation text message mu
st be sent to the account holder. Also the fact that, the PIN is only four digit
s is not safe enough for security, if it is more than eight digits and includes 
numbers and symbols, it will be cool.', 3, TO_DATE('2023-01-29', 'YYYY-MM-DD'), 
'Google Play');                                                                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (150, 2, 'I''ve never seen a very worst mobile banking system like thi
s, i lost 37000 birr because of your delay transaction system, i called 8397 and
 they told me stay for confirmation but, after i changed my mind and waiting for
 confirmation call to cancel the process they sent it with out my approval, so p
lease don''t use the mobile banking system please', 1, TO_DATE('2024-04-23', 'YY
YY-MM-DD'), 'Google Play');                                                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (151, 2, 'BOA is unreasonably holding and delaying transactions for mo
re than a day, even transactions within the same bank itself. This is a huge gap
 that I observed in BOA mobile banking. I didn''t experience this kind of challe
nge while having transactions in other banks'' mobile banking platforms. After w
aiting so long, I called your customer support team and the response they gave m
e was "it was the system that holds the transaction & will be released on workin
g days". This is not totally fair.', 1, TO_DATE('2024-09-15', 'YYYY-MM-DD'), 'Go
ogle Play');                                                                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (152, 2, 'Bad app . it stuck when you open and noting WORKS.', 1, TO_D
ATE('2025-04-23', 'YYYY-MM-DD'), 'Google Play');                                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (153, 2, 'Installed the latest version of this app on my Android 14 de
vice, but it is not working. I have already received the activation key from you
r branch (via SMS), but couldn''t activate it. It is a failed app. I bet you don
''t have QA testers.', 1, TO_DATE('2024-04-24', 'YYYY-MM-DD'), 'Google Play');  
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (154, 2, 'Decent, but there problems sometimes it says error When i tr
ansfer money but infact it transferred because of this bug i transferred 2 times
 instead of 1 and also we can''t transfer money to others telebirr acc we only c
an to our self BOE Dev fix this !!!', 3, TO_DATE('2025-03-11', 'YYYY-MM-DD'), 'G
oogle Play');                                                                   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (155, 2, 'i have went to the bank so many times because i couldn''t ma
ke any transaction i can only see my balance nothing else so what is the point o
f having mobile banking if i can''t make any transaction with it please work in 
that', 1, TO_DATE('2025-03-21', 'YYYY-MM-DD'), 'Google Play');                  
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (156, 2, 'Worst App it ain''t allowing yo activate not even in the nea
rest branch are able to activate it. I have been client of the bank for 10years.
 What is this BoA? As we know it being a leading in simplifying banking service 
this App needs to be fixed. Then we will give it better rate,', 1, TO_DATE('2024
-02-13', 'YYYY-MM-DD'), 'Google Play');                                         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (157, 2, 'Great graphics, but why my music have to stop when I open th
is app? Make it make sense. But overall, it''s good, but also needs too much dat
a just to load this app. We might need a lite version of this.', 3, TO_DATE('202
4-02-15', 'YYYY-MM-DD'), 'Google Play');                                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (158, 2, 'the app used to run fine, but now it takes like forever to e
ven open the main dashboard and sometimes it just crashes on its own. you guys g
otta step it up. we need this app to be way faster', 1, TO_DATE('2024-06-27', 'Y
YYY-MM-DD'), 'Google Play');                                                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (159, 2, 'The app keeps crashing it stops responding while I''m using 
it or trying to open the app. Now I have to go to the bank in person to do any b
anking activities. In short it is the worst mobile banking system in Ethiopia', 
1, TO_DATE('2024-07-11', 'YYYY-MM-DD'), 'Google Play');                         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (160, 2, 'I have nothing against your service but your App!!!!??? When
 will it ever work? Why do you keep changing the interface whenever there is an 
update? The most unreadable annoying app.', 1, TO_DATE('2024-03-22', 'YYYY-MM-DD
'), 'Google Play');                                                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (161, 2, 'I can''t believe in this day and age, one of the major banks
 of the country can''t seem to understand that having a working mobile payment o
ption is a **MUST** to survive. I have decided to move my accounts to CBE and Aw
ash because of this. Can''t be bothered with this useless app.', 1, TO_DATE('202
4-07-04', 'YYYY-MM-DD'), 'Google Play');                                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (162, 2, 'I''m disappointed with the recent changes to this app. Disab
ling developer options for functionality seems unnecessary. The previous version
 offered a more user-friendly experience.', 1, TO_DATE('2024-06-06', 'YYYY-MM-DD
'), 'Google Play');                                                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (163, 2, 'It''s just terrible. It kept crashing in middle of transacti
on. Hell sometimes it won''t open. My phone is stock Android (pixel 8) and I don
''t even know how this happens. Fix it!', 1, TO_DATE('2024-05-20', 'YYYY-MM-DD')
, 'Google Play');                                                               
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (164, 2, 'Its nice platform when i compare with the previous version! 
But, when i try to use mobile banking the app states use the updated one! As it 
orders, i updated BOA from playstore, when i try to use mobile banking on the fo
llowing day the same thing-update from the playstore!!!!', 5, TO_DATE('2024-02-2
0', 'YYYY-MM-DD'), 'Google Play');                                              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (165, 2, 'This application is losing major factions on a daily basis. 
I can count how many times I have used this app; it is completely useless and di
sappointing if I am not going to use it in times of need then I don''t see the p
oint.', 1, TO_DATE('2024-11-28', 'YYYY-MM-DD'), 'Google Play');                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (166, 2, 'Unreliable, expensive service. Most of the time, it is not w
orking. Sometimes, it will take more than a day to complete transactions and cha
rges more for this unworthy service. I will not recommend this bank app to anyon
e.', 1, TO_DATE('2024-06-10', 'YYYY-MM-DD'), 'Google Play');                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (167, 2, 'Worst mobile banking app I ever experienced I was blaming ot
her apps but comparing with this they''re too much better!!!! It clashes it take
s much longer time to login while loading in short it''s a complete of trash', 1
, TO_DATE('2025-03-06', 'YYYY-MM-DD'), 'Google Play');                          
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (168, 2, 'Why is not letting me access my account. The whole point of 
this app is for me to gey access to my account without physically being at the b
ank. I would give it a zero but a one will suffice to get my point accross.', 1,
 TO_DATE('2024-12-27', 'YYYY-MM-DD'), 'Google Play');                           
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (169, 2, 'please add language in the apps setting(amharic afan oromo, 
tigniya,and others) sometimes bank to bank transfer is not available through tim
e and even if if it is available not reachable…it is serious issue!', 1, TO_DATE
('2025-02-15', 'YYYY-MM-DD'), 'Google Play');                                   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (170, 2, 'I downloaded the app for the first time while reading other 
customers reviews and as soon as i installed and opened the app it closes back a
utomatically, what unserious bank, now i uninstalled the app immediately', 1, TO
_DATE('2025-03-03', 'YYYY-MM-DD'), 'Google Play');                              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (171, 2, 'The App is not working on Android 9.1 at all. It shows an er
ror notification and forcefully closes the app. Must be fixed ASAP.', 1, TO_DATE
('2024-07-19', 'YYYY-MM-DD'), 'Google Play');                                   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (172, 2, 'I am having a challenge to use the app. The app does not all
ow to update the previous app. Neither does it allow to manually insert OTP - Bo
A please modify the app to allow these features', 3, TO_DATE('2024-02-06', 'YYYY
-MM-DD'), 'Google Play');                                                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (173, 2, 'it doesn''t work period z slowest mobile banking ever i woul
d rather use *815#', 1, TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'Google Play');    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (174, 2, 'The bug is still there,the app crashes every time i try to l
og in, especially in old phones like my Galaxy A32', 1, TO_DATE('2025-03-10', 'Y
YYY-MM-DD'), 'Google Play');                                                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (175, 2, 'This app is way better than both Apollo and the old mobile b
anking app. It''s super easy to use and loads really fast. If you already have b
oa mobile banking before, activating it is a piece of cake. Great job on making 
such an awesome app – keep it up !', 5, TO_DATE('2024-01-27', 'YYYY-MM-DD'), 'Go
ogle Play');                                                                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (176, 2, 'Worst app ever previous version was way better than this ver
sion after I activated my mobile banking app it says account not found but I''m 
their system my IB customer does work fine please fix your bugs and test it befo
re you release it I have visit and report many branches and head quarter but the
y can''t fix the problem', 1, TO_DATE('2024-03-23', 'YYYY-MM-DD'), 'Google Play'
);                                                                              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (177, 2, 'I don''t know why they roll out new updates without making s
ure it works! Why???? Do they need to update to a new staff? Perhaps pay for a b
etter network?? Mindenew? I don''t know there always a problem with this app.', 
1, TO_DATE('2024-03-02', 'YYYY-MM-DD'), 'Google Play');                         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (178, 2, 'The application used to work well. But after updates I''m no
t able to use the forgot password feature, which is blocking me from accessing i
t as a whole.', 1, TO_DATE('2024-08-20', 'YYYY-MM-DD'), 'Google Play');         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (179, 2, 'It has good backgroud and simple. But keeps saying no conect
ivty , login, Close immediately you made it porly not woriking on stable network
!!!', 1, TO_DATE('2024-04-21', 'YYYY-MM-DD'), 'Google Play');                   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (180, 2, 'By far the nicest looking app by an Ethiopian Bank. But it''
s functionality is weak. It is full of Transaction error, Function Error. Kudos,
 but it needs more backend work.', 2, TO_DATE('2024-04-22', 'YYYY-MM-DD'), 'Goog
le Play');                                                                      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (181, 2, 'A lot of the app''s features have been rearranged but someti
mes it works sometimes it doesnt...and that makes it less reliable specially at 
times of need...pls improve it', 2, TO_DATE('2024-04-18', 'YYYY-MM-DD'), 'Google
 Play');                                                                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (182, 2, 'This app is the most worst app I used in Ethiopia and belive
 me I know I live in Ethiopia. Being the fincial app It doesn''t work when you w
ant it. It makes you wait for cash out code and immediately debit the amount bef
ore sending the code I have got to say abysinia bank I didn''t expect this from 
you and I use CBE mobile banking', 1, TO_DATE('2024-05-18', 'YYYY-MM-DD'), 'Goog
le Play');                                                                      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (183, 2, 'Hi I have problem with this App BOA mobile I don''t know wha
t is wrong with this App I did many times download but it''s sam doesn''t work i
f sam like that this app way I have to be customer with them how I know my accou
nt and checking save The book is no Not enough alone', 1, TO_DATE('2024-08-28', 
'YYYY-MM-DD'), 'Google Play');                                                  
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (184, 2, 'The app has bugs. Signing in is still a challenge. Transfer 
to another bank is impossible. The app is slow and bland.', 3, TO_DATE('2024-05-
11', 'YYYY-MM-DD'), 'Google Play');                                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (185, 2, 'Sorry to say this compared to other banks mobile app its the
 worest it need more improvement the app doesn''t match the bank standard it nee
d more update its too slow plus it keep saying stop developing option on your ph
one when no developing setting enabled ??plus when it come to recent transaction
 nothing to display...', 1, TO_DATE('2024-05-24', 'YYYY-MM-DD'), 'Google Play');
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (186, 2, 'My advice for whoever reading is go look for other bank(awas
h bank is a great example). This bank won''t even allow you to access your money
 when you want. It has bad servers which don''t work(respond) on time.', 1, TO_D
ATE('2024-05-11', 'YYYY-MM-DD'), 'Google Play');                                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (187, 2, 'It was working good before the last update but after the upd
ate it asks to disable developer option. why is that? That means any developer w
ith developer option enabled can''t access his account. It crushs a lot of times
.', 2, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 'Google Play');                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (188, 2, 'The app is terrible, nothing functions properly. Especially 
since the latest update, it crashes all the time.', 1, TO_DATE('2024-05-01', 'YY
YY-MM-DD'), 'Google Play');                                                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (189, 2, 'After last update, the app keeps crashing, not working. Pls 
fix it. Mobile transactions become impossible.', 1, TO_DATE('2024-05-02', 'YYYY-
MM-DD'), 'Google Play');                                                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (190, 2, 'It say "The request was not successful. please check device 
connectivity or try again" why? One of the bank manager told me it is because of
 my phone''s android version which is 9.1 It is ridiculous! Disappointing', 1, T
O_DATE('2024-09-11', 'YYYY-MM-DD'), 'Google Play');                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (191, 2, 'Slow login, crashes frequently, annoying app ever. Since you
 updated this app, it''s been extremely unhelpful.', 1, TO_DATE('2024-05-01', 'Y
YYY-MM-DD'), 'Google Play');                                                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (192, 2, 'I don''t know why every time you come up with a new update t
he app get worst than the oldest, it is taking more time to load, can load money
 to telebirr, can''t pay awach. Please try to fix it.', 1, TO_DATE('2024-05-02',
 'YYYY-MM-DD'), 'Google Play');                                                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (193, 2, 'The latest update has a bug it keeps crashing. Please fix it
 it''s so inconvenient to do our business this way. That or we will switch to ot
her banks', 3, TO_DATE('2024-04-30', 'YYYY-MM-DD'), 'Google Play');             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (194, 2, 'A total disaster of an app. Always offline, never works, it'
's embarassing. I''ve lost hope and taken my business to a competitor', 1, TO_DA
TE('2024-08-08', 'YYYY-MM-DD'), 'Google Play');                                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (195, 2, '"I am extremely disappointed with the poor service I have re
ceived. It is unacceptable that I cannot make transactions of 30,000 Birr and so
metimes my money gets stuck in the air. As a result of your incompetence, I have
 been forced to change my bank account. This level of service is completely unac
ceptable and needs to be rectified immediately."', 1, TO_DATE('2024-05-06', 'YYY
Y-MM-DD'), 'Google Play');                                                      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (196, 2, 'Worst app ever, not user friendly, even doesn''t serve basic
 functionality correctly, takes to much time to login and navigate through the a
pp, we expected more from this bank', 1, TO_DATE('2024-08-07', 'YYYY-MM-DD'), 'G
oogle Play');                                                                   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (197, 2, 'Despite the enhanced technology you have, the application do
esn''t work properly, and it asks for the developer option to be turned off, fix
 that.', 3, TO_DATE('2024-08-12', 'YYYY-MM-DD'), 'Google Play');                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (198, 2, 'I prefer the earlier version. This updated app crushes durin
g login and says there is bug. Please fix the bug issue.', 4, TO_DATE('2024-05-0
3', 'YYYY-MM-DD'), 'Google Play');                                              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (199, 2, 'Its amazing and easy to use , but from these two past days i
t crashes and tells me "there is not enough connectivity" while my internet was 
good enough , and i can''t open it anymore !! Fix this proplem ASAP.', 5, TO_DAT
E('2024-03-02', 'YYYY-MM-DD'), 'Google Play');                                  
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (200, 2, 'It usually crashes and the reason it gives is a problem on i
nternet connection although the internet was fine.', 1, TO_DATE('2024-07-23', 'Y
YYY-MM-DD'), 'Google Play');                                                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (201, 3, 'The new mobile banking application is a major upgrade! It’s 
incredibly user-friendly, with a clean and modern design that makes navigation s
imple and intuitive. I really appreciate how fast it loads and how smooth the ov
erall experience is. All essential services like balance checks, transfers, and 
bill payments are eas y to find and use. The added security features give me pea
ce of mind, and the app runs reliably without crashes or glitches. It’s clear a 
lot of thought went into the user experi', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'
), 'Google Play');                                                              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (202, 3, 'Dashen Super App is a game-changer! It’s fast, user-friendly
, and packed with features that make everyday banking and transactions super con
venient. I love how everything I need from mobile banking to utility payments is
 all in one place. The interface is clean, and everything works smoothly. Defini
tely one of the best apps out there. Highly recommended!', 5, TO_DATE('2025-04-2
1', 'YYYY-MM-DD'), 'Google Play');                                              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (203, 3, 'I have been using the Dashen Supper app mobile banking app ,
 and overall, I appreciate its features.However,I’ve noticed that when I turn on
 the developer options on my device, the app stops functioning properly. It woul
d be great if you could look into this issue, as I often need to access develope
r settings for other applications . Thank you for your attention to this matter!
', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');                      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (204, 3, 'The Dashen Super App offers a quick and user-friendly experi
ence, bringing together a variety of services, like budgeting, payments, airtime
 recharges, and more, all in one convenient platform. Its sleek design and intui
tive navigation ensure effortless transactions. It''s evident that Dashen Bank h
as carefully crafted the app to make everyday financial activities easier. A gre
at choice for anyone aiming to streamline their digital routines!', 5, TO_DATE('
2025-04-21', 'YYYY-MM-DD'), 'Google Play');                                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (205, 3, 'Game changer app! Dashen Bank Super App is fast, secure, and
 easy to use. The three-click payment makes sending money super quick, and the Q
R code payment is perfect for cashless shopping. I also love the biometric login
 and easy airtime and bill payments. Everything I need is in one place. Dashen B
ank has really raised the bar for digital banking in Ethiopia. Highly recommende
d!', 5, TO_DATE('2025-05-26', 'YYYY-MM-DD'), 'Google Play');                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (206, 3, 'A solid step forward by Dashen Bank. The SuperApp combines e
ssential banking features with lifestyle services, making everything accessible 
in one place. The interface is smooth, and transactions are quick and reliable. 
It’s clear a lot of thought went into the design and functionality. Great job!',
 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (207, 3, 'As an Internal Customer, Dashen Bank SuperApp has greatly si
mplified my online banking experience. It''s easy to use, allowing me to quickly
 check balances, transfer money and pay Bills. The app''s advanced security feat
ures are highly secure, ensuring my data is well protected. The Three click, Cha
t Banking and IPS features have also given me a smarter experience. In deed Dash
en Bank is always steping ahead!', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Goog
le Play');                                                                      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (208, 3, 'i can''t recommend the Dashen Super App enough! This app is 
truly a game changer for anyone looking for a seamless and efficient way to mana
ge their daily life. It combines multiple essential services into one easy-to-us
e platform, saving time and simplifying tasks The user interface is modern, intu
itive, and super responsive, making navigation a breeze. Whether it''s banking, 
payment services, or accessing lifestyle features, everything is just a few clic
ks away!!', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (209, 3, 'The Dashen Bank Super App has truly elevated my mobile banki
ng experience. It''s fast, user-friendly, and packed with all the essential feat
ures. The interface is clean and intuitive, making navigation easy even for firs
t-time users. I also appreciate the added security features that give me peace o
f mind while banking on the go. Dashen Bank has done an amazing job with this ap
p—it’s reliable, efficient, and always improving. Highly recommended for anyone 
looking for seamless digital banking!', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 
'Google Play');                                                                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (210, 3, 'A truly impressive app — user-friendly and a game-changer in
 Ethiopian banking. The Dashen Super App stands out as one of the most innovativ
e and convenient digital banking solutions in Ethiopia’s financial history. Smoo
th navigation, seamless features, and a wide range of services all in one place.
 Well done!', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');           
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (211, 3, 'there is nothing super about this app, repeatedly failed tra
nsaction and wastes customer valuable time. if you have to do system upgrade do 
it at a time when there is less traffic demand. your Technical difficulty should
 not be reflected on customer.', 2, TO_DATE('2025-04-24', 'YYYY-MM-DD'), 'Google
 Play');                                                                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (212, 3, '"Dashen Super App'''' is impressive with its focus on simpli
city, speed, and quality. The user interface is clean and easy to understand. Tr
ansactions process quickly, and the overall quality of the app is top-notch. A m
ust-have for Dashen Bank customers. ¿¿¿ ¿¿¿ ¿¿¿ ¿¿¿¿ ¿¿¿¿', 5, TO_DATE('2025-04-
22', 'YYYY-MM-DD'), 'Google Play');                                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (213, 3, 'Dashen SupApp is the most contemporary application, offering
 a great experience by enabling users to perform multiple tasks through a single
 platform—such as chatting with friends, transferring money, paying bills, and m
ore. It is the first app of its kind in the Ethiopian banking industry, making i
t a remarkable opportunity for entrepreneurs working in app-based sales and soft
ware marketing. Good job, Dashen Bank!', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'),
 'Google Play');                                                                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (214, 3, 'Dashen Bank Super App is a game-changer! The user-friendly d
esign, wide range of services, and smooth performance make it incredibly conveni
ent for everyday banking. It’s fast, secure, and truly reflects the bank’s commi
tment to digital excellence. Highly recommended!', 5, TO_DATE('2025-04-21', 'YYY
Y-MM-DD'), 'Google Play');                                                      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (215, 3, 'This banking superapp is incredibly well designed. The desig
n and appearance of the app and the overall experience I have when using the app
 is fantastic. The app is packed with features from banking to e-commerce all in
 one place.It even has a budget setting option which is super useful for managin
g my money. Everything runs smoothly and I love how convenient it has made my da
ily life. Huge Kudos to Dashen Bank. You are truly living up to the motto ''''Al
ways one step ahead." Keep it up!', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Goo
gle Play');                                                                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (216, 3, 'I am very impressed with the Dashen super app. It is user-fr
iendly and operates efficiently. The budget and chatbot features are impressive,
 and all items can be purchased with just three clicks.', 5, TO_DATE('2025-04-21
', 'YYYY-MM-DD'), 'Google Play');                                               
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (217, 3, 'Dashen SuperApp the ultimate all-in-one solution! From banki
ng and shopping to bill payments, everything you need is right at your fingertip
s. Life just got a whole lot easier!', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), '
Google Play');                                                                  
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (218, 3, 'The Dashen Super App is a game-changer in digital banking, o
ffering a seamless and convenient experience. With its user-friendly interface, 
fast transactions, and a wide range of financial services, it simplifies banking
 for customers. Features like bill payments, fund transfers, mobile top-ups, and
 loan applications make it an all-in-one solution. Plus, its security measures e
nsure safe and reliable Experiance effortless banking', 5, TO_DATE('2025-02-26',
 'YYYY-MM-DD'), 'Google Play');                                                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (219, 3, 'I’ve been using the Dashen Bank Super App for a while now, a
nd it’s been a game-changer. The app is super fast and reliable—I’ve never had a
n issue with transactions being delayed. One of my favorite features is the chat
 banking, which makes it so easy to do things like check my balance or transfer 
money just by typing a quick message. The budgeting tool is also really useful. 
It helps me keep track of my spending and gives me a clear picture of where', 5,
 TO_DATE('2025-03-28', 'YYYY-MM-DD'), 'Google Play');                           
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (220, 3, 'I had a disappointing experience with Dashen Bank''s Super U
p service. The app is very slow and takes forever to load during transactions, w
hich is incredibly frustrating. Additionally, it doesn''t generate receipts for 
any transactions, making it difficult to keep track of my expenses. I also reach
ed out to customer support, but the response time was longer than expected. Over
all, I was hoping for a better experience, but I find the service lacking and in
 need of improvement.', 2, TO_DATE('2025-04-09', 'YYYY-MM-DD'), 'Google Play'); 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (221, 3, 'This super app is a total game-changer—fast, reliable, and p
acked with everything I need in one place. It’s seamless and super convenient. L
ove it!"', 5, TO_DATE('2025-04-23', 'YYYY-MM-DD'), 'Google Play');              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (222, 3, 'Smooth and secure experience transfers, bill payments, and t
racking expenses are all effortless. The intuitive design makes banking on the g
o.', 5, TO_DATE('2025-04-24', 'YYYY-MM-DD'), 'Google Play');                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (223, 3, 'The app keeps getting better with every update! Smooth perfo
rmance, great UI, and top-notch security. Thank you for making banking so conven
ient!"', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (224, 3, 'I''m really impressed with this app! It’s user-friendly, run
s smoothly, and has all the features I need. Makes my tasks so much easier and s
aves me a lot of time. Highly recommended!', 5, TO_DATE('2025-04-23', 'YYYY-MM-D
D'), 'Google Play');                                                            
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (225, 3, 'It is,really super because of its unique offerings to indivi
duals and businesses.It is a secure UX first app intended to cater comprehensive
 digital meeds.I am also happy to know that Dashen is considering to make the ap
p more inclusive by lowering the mobile version requirements .', 5, TO_DATE('202
5-04-21', 'YYYY-MM-DD'), 'Google Play');                                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (226, 3, 'Greately improved since it was released! I really like the b
udget and expense tegistration feature. For ATM or POS withdrawals, it is not po
ssible to account these expenses, even if it is visible on the transactions wind
ow. If that can be worked on, it will be improve so much!!', 5, TO_DATE('2025-03
-10', 'YYYY-MM-DD'), 'Google Play');                                            
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (227, 3, 'This app is the most unreliable mobile banking application I
 have ever used for transaction, it is very late, non-responsive and full of bug
s. Its is very disappointing. It is just inconvinient, and not user friendly and
 compatabke at all !!!!!!', 1, TO_DATE('2025-03-14', 'YYYY-MM-DD'), 'Google Play
');                                                                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (228, 3, 'The app is incredibly handy for managing multiple financial 
tasks, from bill payments to managing budgets. It’s saved me a lot of time and m
ade banking way more convenient. Definitely worth checking out!', 5, TO_DATE('20
25-04-21', 'YYYY-MM-DD'), 'Google Play');                                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (229, 3, 'This app is not supporting smart phones that have old androi
d version and so it is none inclusive. At the same time the amole lite is not wo
rking properly and once you reached to maximum otp trail mistakes due to network
 or other errors like stacks , you will be tied up to make Transactions. Ohh... 
tired!!!!!', 1, TO_DATE('2025-03-20', 'YYYY-MM-DD'), 'Google Play');            
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (230, 3, 'This is not only a mobile banking app, it is beyond that. We
 will access our account easily, we are able to get many information easily here
. i.e. exchage rate. We are able to chat with others, we are able to budget, we 
are able to transfer to other bank and within Dashen. we are able to access many
 accounts in a single app, we are able to pay bills in QR scan, we are able to m
ake payments and order delivery items here in a single app. #Always one step ahe
ad.', 5, TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'Google Play');                   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (231, 3, 'Super Up is the ultimate digital banking app, living up to i
ts name with speed, efficiency, and innovation. Designed for a seamless experien
ce, it offers lightning-fast transactions, top-tier security, and effortless fin
ancial management. With Super Up, banking has never been this smooth, smart, and
 super!', 5, TO_DATE('2025-02-26', 'YYYY-MM-DD'), 'Google Play');               
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (232, 3, 'Its good app than other compitators but it confuse when we t
ransfer it needs OTP and PIN most user inter their pin instead of OTP we know th
e litrecy level of our society so if it is device based i dont know the needs of
 OTP so please try to fix', 3, TO_DATE('2025-05-18', 'YYYY-MM-DD'), 'Google Play
');                                                                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (233, 3, 'Db sup app is A platform or an application that can grasp mo
re satisfactions through fastest mode of operation which means for budget planni
ng, to use QR code(scan, pay, go) chat with staff, acc to acc other bank ft, mer
chant payment, and easly. I addition to i satisfied and i invite everyone to use
 those platform!!.', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (234, 3, 'The app has various usefull functions, which make easy the p
ayment system. Also, it will connect with sellers having reasonable prices.', 5,
 TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'Google Play');                           
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (235, 3, 'One of the best digital platforms I’ve used! From smooth tra
nsactions to a seamless shopping experience, Highly recommended', 5, TO_DATE('20
25-04-21', 'YYYY-MM-DD'), 'Google Play');                                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (236, 3, 'Dashen SuperApp is a lifesaver! Banking, shopping, and bills
 in one super easy app. The new e-commerce feature is awesome and supports local
 merchants. Fast, secure, and proudly Ethiopian.Download it now—you won’t regret
 it!', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');                  
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (237, 3, 'A game changer in Ethiopian digital banking fast, secure, an
d packed with services. Everything you need, all in one powerful app. A true lea
p toward financial convenience and innovation!', 4, TO_DATE('2025-04-21', 'YYYY-
MM-DD'), 'Google Play');                                                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (238, 3, 'It is a very user friendly, attractive user interface, full 
of useful features. I really encourage everyone to give it a try.', 5, TO_DATE('
2025-04-21', 'YYYY-MM-DD'), 'Google Play');                                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (239, 3, 'Dashen Super App contains extended selections for customers 
and can be easily accessible and also friendly to use.', 5, TO_DATE('2025-04-22'
, 'YYYY-MM-DD'), 'Google Play');                                                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (240, 3, 'The Dashen Super App offers a modern, user-friendly experien
ce that leverages the latest technological advancements to deliver a seamless e-
commerce platform', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (241, 3, 'I have an incredible experience with Dashen super app, what 
an amazing platform is it?. keep pioneering in technological advancement ¿¿¿', 5
, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');                          
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (242, 3, 'The user experience is seamless, and everything just works p
erfectly right out of the box. I can’t believe how much time and effort it saves
 me every day.', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (243, 3, 'The app has great user interface with comprehensive payments
 and E-commerce platforms. And also it includes unique features such as chat Ban
king and budget.', 5, TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'Google Play');      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (244, 3, 'Excellent banking app for all your needs! Who needs a physic
al branch when you can use Dashen Bank Super App Instead! I''ve never had an iss
ue with anything that Dashen Bank Super App haven''t handled swiftly and resolve
d to my satisfaction and above I don''t often write reviews but this is an app/b
ank that I would highly recommended to everyone ¿ ¿¿', 5, TO_DATE('2025-01-22', 
'YYYY-MM-DD'), 'Google Play');                                                  
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (245, 3, 'It has a great application features from the beginning. I''m
 glad to use it even I haven''t used it yet because I haven''t activated my acco
unt yet. But it''s simple, comprehensive, full of information, and fast. ¿¿¿ ¿¿¿
¿: The super app has impressed me more than I expected.', 5, TO_DATE('2025-01-15
', 'YYYY-MM-DD'), 'Google Play');                                               
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (246, 3, 'I have used many mobile banking and also tellebir and mpesa 
nothing come close to this app. Well done Dashen indeed one step a head. A lot o
f cool features that amole hasn''t the receipt and the account statement is supe
rb for me. I hope you add more integrated small apps to.', 5, TO_DATE('2025-03-1
2', 'YYYY-MM-DD'), 'Google Play');                                              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (247, 3, 'The App is incredibly user-friendly and brings multiple serv
ices into one place. It''s fast, intuitive, and makes daily tasks super convenie
nt. A true all-in-one solution!', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Googl
e Play');                                                                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (248, 3, 'After i download the app recently had a smooth expriance, it
s user friendly, fast, and everything works as expected. keep up the good work.'
, 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (249, 3, 'This is the worst mobile banking experience I’ve ever had. I
t doesn’t work when you need it, and it randomly updates itself without warning.
 You can’t make transactions whenever you want. It’s a nightmare for anyone who 
relies on this as their main banking option, especially those with a lot of mone
y in their account. I’m lucky I’m not one of them, but still, it’s infuriating n
ot being able to access your money when you need it."l', 1, TO_DATE('2025-04-07'
, 'YYYY-MM-DD'), 'Google Play');                                                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (250, 3, 'dashen bank super up has very fast and convenience and also 
it has contain more things on one app .I am very interesting to use dashen bank 
super up', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (251, 3, 'it has clear detail information about the application so it 
helps customer how to use the app. and it is very easy to use and also app is se
cure.', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (252, 3, 'Dear Users of the Dashen Bank Super App,I have been using th
e Dashen Bank Super App for a while now, and I must say—it’s truly a game-change
r! The app is incredibly fast and reliable; I’ve never encountered any delays wi
th my transactions. One feature I absolutely love is Chat Banking. It makes ever
yday tasks like checking my balance or transferring money as simple as sending a
 quick message. Also, the budgeting tool has been a huge help in tracking my spe
nding and giving me a clearer', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google 
Play');                                                                         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (253, 3, 'Banking, but make it smart. Local solutions, all in one plac
e. Smooth, fast, and actually saving time. Feels like the future. Love it!', 5, 
TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');                            
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (254, 3, 'It is very slow and it lacks many features to be a super app
. High rating is given by their employees, not by the customers.', 1, TO_DATE('2
025-04-25', 'YYYY-MM-DD'), 'Google Play');                                      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (255, 3, 'the very easy, secured, fast and multifunctional dashen supp
er application I ever seen. dashen really one steps ahead!!!', 5, TO_DATE('2025-
04-21', 'YYYY-MM-DD'), 'Google Play');                                          
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (256, 3, 'I was really amazed by the idea of an e-commerce service on 
a banking app. This is what it means to be one step ahead. Please include all ki
nds of products in there as soon as possible.', 5, TO_DATE('2025-04-21', 'YYYY-M
M-DD'), 'Google Play');                                                         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (257, 3, 'All-in-one convenience, From managing accounts to paying bil
ls and shopping online and the chat banking is game changer, this app does it al
l seamlessly.', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (258, 3, 'It has good feature. But, it is Very Slow! difficult to pay 
or receive. The Speed should be improved, else I didn''t recommend.', 2, TO_DATE
('2025-02-24', 'YYYY-MM-DD'), 'Google Play');                                   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (259, 3, 'It has a Good performance but need more upgrade for more per
formance like when we login account not be fast balance show other thing looking
 good. Carry on. Thanks so much for Greatest service', 4, TO_DATE('2025-01-17', 
'YYYY-MM-DD'), 'Google Play');                                                  
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (260, 3, 'Nothing is changed in the updated version. You have been col
lecting comments but where is the feed back you improved in this version. supera
pp is mot functioning today.', 4, TO_DATE('2025-05-20', 'YYYY-MM-DD'), 'Google P
lay');                                                                          
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (261, 3, 'The Dashen Super App delivers a remarkably fast, highly secu
re, and exceptionally user-friendly experience, establishing it as a leading app
lication in its category.keep it up and stay ahead Dashen Bank.', 5, TO_DATE('20
25-04-14', 'YYYY-MM-DD'), 'Google Play');                                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (262, 3, 'one of the best digital platforms I''ve used! from smooth tr
ansactions to a seamless shopping experience, highly recommended.', 5, TO_DATE('
2025-04-21', 'YYYY-MM-DD'), 'Google Play');                                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (263, 3, 'dashen bank supper app is the most easy to use and have high
 speed,quality and I like features like chat,budget,fuel payment, and security f
or my opinion this product is techonolgy edge,this international standard thanks
 for product oweners (dashen bank)', 3, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Go
ogle Play');                                                                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (264, 3, 'I wanted to share some concerns about your Supper App. It ap
pears to be experiencing reliability issues and isn’t performing as expected. I 
hope this can be addressed soon to improve the user experience. One star ¿ for n
ow.', 1, TO_DATE('2025-03-19', 'YYYY-MM-DD'), 'Google Play');                   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (265, 3, 'A powerful, local solution that rivals any global app. I lov
e how easy it is to explore services and products.', 5, TO_DATE('2025-04-22', 'Y
YYY-MM-DD'), 'Google Play');                                                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (266, 3, 'All-in-one finance & e-commerce super app! Pay, save, shop s
eamlessly. Fast, secure. #BankAndShop', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 
'Google Play');                                                                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (267, 3, 'A must have, seamless, all in one digital platform "DB Super
app"! Keep living your motto "Always one step ahead"', 5, TO_DATE('2025-05-12', 
'YYYY-MM-DD'), 'Google Play');                                                  
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (268, 3, 'Dashen bank app is very good, but sometimes it is not workin
g well', 5, TO_DATE('2025-05-15', 'YYYY-MM-DD'), 'Google Play');                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (269, 3, 'Dashen SuperApp blends finance, shopping, and daily services
 effortlessly. The new e-commerce feature is smooth and supports local merchants
—proud to back an Ethiopian-made solution!', 5, TO_DATE('2025-04-21', 'YYYY-MM-D
D'), 'Google Play');                                                            
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (270, 3, 'The new e-commerce feature is incredibly amazing and user fr
iendly.', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');               
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (271, 3, 'I am highly excited by using this application and it is the 
most favorable as well as preferrable mobile app.', 5, TO_DATE('2025-05-03', 'YY
YY-MM-DD'), 'Google Play');                                                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (272, 3, 'making transactions has never been easier. the new update is
 just amazing', 5, TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'Google Play');         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (273, 3, 'Dashen Super App gives me an amazing convenience and makes l
ife easy.', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (274, 3, 'Dashen Bank super App is the most suitable, reliable, and fa
st digital banking system.', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Pla
y');                                                                            
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (275, 3, 'nice app especially GUI and I have got some error when you s
end within dashen bank the receipter is not get SMS notification', 4, TO_DATE('2
025-05-03', 'YYYY-MM-DD'), 'Google Play');                                      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (276, 3, 'I really like this amazing application and Dashen Supper app
 that has made my life easier.', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google
 Play');                                                                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (277, 3, 'Easy to use and has many options. It is the best financial a
pp I have ever used.', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');  
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (278, 3, 'Incomparably user-friendly and fast app for mobile banking.'
, 5, TO_DATE('2025-04-24', 'YYYY-MM-DD'), 'Google Play');                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (279, 3, 'It is very fast and secured mobile banking app! I like this 
app!', 5, TO_DATE('2025-04-29', 'YYYY-MM-DD'), 'Google Play');                  
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (280, 3, 'Assefa Genetu = Dashen superup is the latest and inclussive 
.I am happy with this super up.', 5, TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'Googl
e Play');                                                                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (281, 3, 'Dashen Bank Super Up,use the app and makes your easy,fast,co
nvinent.', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (282, 3, 'Feature-rich? Absolutely. But the speed? Painfully slow. Ser
iously, is it communicating with a server on Mars or something?', 5, TO_DATE('20
25-04-16', 'YYYY-MM-DD'), 'Google Play');                                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (283, 3, 'It''s great! But it will be advanced if you include a captio
n that allow customers to transfer to Telebirr account. Dashen Bank, "¿¿ ¿¿¿ ¿¿ 
¿¿¿ ¿¿¿¿" (Always one step ahead!)', 4, TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'Go
ogle Play');                                                                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (284, 3, 'This app is literally the best thing ever The chat banking i
s so easy just text and it’s done Super smooth, fast, and honestly a life saverI
f you haven’t downloaded it yet you’re missing out big time', 5, TO_DATE('2025-0
1-23', 'YYYY-MM-DD'), 'Google Play');                                           
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (285, 3, 'The app missed some important features 1. It does''t show re
cent transactions 2. Transfer to Telebirr limited to own telebirr 3. The stateme
nt does''t show running balance', 2, TO_DATE('2025-02-11', 'YYYY-MM-DD'), 'Googl
e Play');                                                                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (286, 3, 'It''s slow to send OTP. it''s not reliable. It crushed many 
times. It needs improvement in many ways', 1, TO_DATE('2025-04-07', 'YYYY-MM-DD'
), 'Google Play');                                                              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (287, 3, 'Fast, reliable and user friendly. Amazing chatting features.
 Keep it up! Always one step ahead!', 5, TO_DATE('2025-01-24', 'YYYY-MM-DD'), 'G
oogle Play');                                                                   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (288, 3, 'It grows ethiopian digital banking step ahead.All fetures in
 one,simple fast and convince.', 5, TO_DATE('2025-05-14', 'YYYY-MM-DD'), 'Google
 Play');                                                                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (289, 3, 'The Dashen supperapp is a revolutionary advancement in digit
al banking, combining exceptional usability, an intuitive interface and a seamle
ss user experience. among its standout features are the integration of QR codes,
 account statement, transaction advise, chat, transaction authentication for lim
it thresholds, budgeting and different app in a single dashboard. Truly ahead of
 the curve ..... keep up the excellent work ¿¿', 5, TO_DATE('2025-04-21', 'YYYY-
MM-DD'), 'Google Play');                                                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (290, 3, 'An app with High performance and advanced features!', 5, TO_
DATE('2025-04-21', 'YYYY-MM-DD'), 'Google Play');                               
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (291, 3, 'Fast, Reliable and User Friendly. Keep it Up', 5, TO_DATE('2
025-04-22', 'YYYY-MM-DD'), 'Google Play');                                      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (292, 3, 'I have experienced on using the app of Banks in Ethiopia, th
is Dashen sup is like old version of the applications for using. I gave 3 star f
or it''s very low speed while login and processing', 3, TO_DATE('2025-04-07', 'Y
YYY-MM-DD'), 'Google Play');                                                    
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (293, 3, 'no working for me hulum information asgebiche continue or ac
cept yemilew button ayeseram my phone is Samsung A51', 1, TO_DATE('2025-04-21', 
'YYYY-MM-DD'), 'Google Play');                                                  
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (294, 3, 'this app is the most simply to use and secure safe i love it
 to use for any bank transaction', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'Goog
le Play');                                                                      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (295, 3, 'The app is very backward and doesn''t always work. If it wor
ks three hours out of 24 hours it''s great!¿', 1, TO_DATE('2025-04-14', 'YYYY-MM
-DD'), 'Google Play');                                                          
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (296, 3, 'Highly impressed! Dash Bank really nailed it with this app. 
Secure, reliable, and packed with features I use daily', 5, TO_DATE('2025-04-21'
, 'YYYY-MM-DD'), 'Google Play');                                                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (297, 3, 'one of the best digital platforms I’ve used! From smooth tra
nsactions to a seamless shopping experie', 5, TO_DATE('2025-04-21', 'YYYY-MM-DD'
), 'Google Play');                                                              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (298, 3, 'This app is not working unless you turn off developer mode o
n your phone. So it takes your rights to just use it.', 2, TO_DATE('2025-04-04',
 'YYYY-MM-DD'), 'Google Play');                                                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (299, 3, 'amazing features, faster and easy to use', 5, TO_DATE('2025-
04-21', 'YYYY-MM-DD'), 'Google Play');                                          
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (300, 3, 'Exceptional digital experience, SupperApp will bring new par
adigm shift in the banking business. Bravo Dashen keep it up!!!!', 5, TO_DATE('2
025-04-22', 'YYYY-MM-DD'), 'Google Play');                                      
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (113, 2, 'Can you please just make it functional. I don''t think anyon
e cares how good it looks if not a single functionality works. Plus it''s not ev
en aestheticaly nice. The loading animated icon has white irregular edges becaus
e the logo wasn''t cut out correctly. The app doesn''t work at all. It doesn''t 
even login. It gets stuck on login just showing the logo animation and blames th
e issue on connectivity. Connectivity is fine and the proof is that this review 
is posted.', 1, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 'Google Play');            
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (114, 2, 'Terrible Bank Experience It’s unbelievable that with all the
 modern technology, this bank still struggles with even basic transactions. The 
app constantly crashes, services are limited, and every time I try to transfer m
oney or load Telebirr, there’s a huge delay. I have to wait 5 days for failed tr
ansactions to be refunded! Even USSD is unreliable. They’ve put me in embarrassi
ng situations countless times, and customer care never fixes anything. I’ve swit
ched banks, and you should too!', 1, TO_DATE('2024-10-14', 'YYYY-MM-DD'), 'Googl
e Play');                                                                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (115, 2, 'I have a worst experience while using this mobile applicatio
n through out the year. Most of the time it fails to "Login" or automatically cl
osed the app. And also it takes so much loading time (5 minutes +) trying to acc
ess the internal services. Sometimes also while transferring within and to other
 bank also fails. So, BOA please fix your app.', 1, TO_DATE('2024-11-29', 'YYYY-
MM-DD'), 'Google Play');                                                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (116, 2, 'It crashes frequently. It launches on Android 8.1 but I don'
't think it actually works on versions less than 10. If so, it shouldn''t be ava
ilable for download by such devices to begin with, like many other finance apps 
are not. It was so much better three months ago, upgrades should be for the bett
er.', 1, TO_DATE('2024-09-06', 'YYYY-MM-DD'), 'Google Play');                   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (117, 2, 'Developers/ the company takes too long to update the app, an
d throughout that process, the app is basically useless. We can''t send money or
 even be able to check our account. They even take it down from the Play Store f
or a while. This whole process usually takes them 3 to 5 days. This is very disa
ppointing. It is an improvement from the previous version of the app, but they s
till have a long way to go to compete with the likes of CBE. Transferring to oth
er banks sometimes doesn''t work.', 2, TO_DATE('2024-05-03', 'YYYY-MM-DD'), 'Goo
gle Play');                                                                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (118, 2, 'Why the app doesn''t allow to update the previous version. I
n addition to this, when I install the new version and try to activate, the app 
doesn''t allow to write the activation OTP code to the screen. I have received t
he OTP password from telegram and email. Would you please fix this bug. Thank yo
u', 1, TO_DATE('2024-02-03', 'YYYY-MM-DD'), 'Google Play');                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (119, 2, 'This app future is good, but there is problems with apps to 
reset and activate it, which is difficult even to the branch staffs, and it take
s too long times to active at the branch plus most of the time high expected fai
lure of activation after process at the counter and OTP sent not work', 1, TO_DA
TE('2025-05-06', 'YYYY-MM-DD'), 'Google Play');                                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (120, 2, 'This app has been found useless while I compared with the fi
rst version of IB12111...that was very good, you guys what is the matter with yo
u. You are far from the technology and the competetor''s digital product through
 convenience, reliable, easeness _-dashen, cbe, zemen... they are doing well! sh
are their experience and be able to satisfy your esteemed customers including me
. unless you will be down soon!', 1, TO_DATE('2024-04-29', 'YYYY-MM-DD'), 'Googl
e Play');                                                                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (121, 2, 'I will give only one star, because it faced with multiple of
 problems. 1. The app is not as fast as the other banks App, for e.g like CBE 2.
 The App asks repeatedly to switch off developer options, even if it is switched
 off. 3. Bank of Abyssinia''s services are interesting, but they ignored the iss
ues on the App service. 4. Most customers gave a complain on the App, but no one
 accept their complain to fix the issue. 5. Lastly, I will not recommend the App
 unless the issue has been solved ASAP!!', 1, TO_DATE('2025-01-03', 'YYYY-MM-DD'
), 'Google Play');                                                              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (122, 2, 'i would have given it a lower if it was possible because it 
crush so much and it take the bank so long to fix the bug', 1, TO_DATE('2025-04-
08', 'YYYY-MM-DD'), 'Google Play');                                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (123, 2, 'This app is incredibly frustrating to use. It’s filled with 
issues that make it difficult to navigate and complete tasks efficiently. I’ve n
ever encountered such a poorly designed banking application before. It needs sig
nificant improvements to enhance user experience. It deserves a vey low rating.'
, 1, TO_DATE('2024-09-26', 'YYYY-MM-DD'), 'Google Play');                       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (124, 2, 'The version 24.04.26 is not opening on any of my devices. I 
noticed this issue on my friend''s Android 9 phone and also on my Samsung Androi
d 12 phone. Even after weekly updates, the newest version is not working properl
y. Please provide a stable version update, as I prefer the older version of the 
app from the new one.', 1, TO_DATE('2024-05-04', 'YYYY-MM-DD'), 'Google Play'); 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (125, 2, 'So BoA, your last application was horrible and buggy. And we
 thought "finally!! a functional new app with better UI." But It didn''t last lo
ng, a non existent connection error at login.... Please just fix your app to the
 simplest functional form and it would be up to your other service standards.', 
1, TO_DATE('2024-04-21', 'YYYY-MM-DD'), 'Google Play');                         
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (126, 2, 'It has been a while since you guys started giving the mobile
 app service but still couldn''t get it to work. I''m sure you know that it does
n''t work already but not sure if you''re lazy or incompetent to fix it. You are
 losing business because of this. Complacency will have consequences.', 1, TO_DA
TE('2024-12-10', 'YYYY-MM-DD'), 'Google Play');                                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (127, 2, 'OMG this is like the worst mobile banking app ever. I have m
any different mobile banking app from different banks but this is the worst so f
ar. It says it has connection issue when I have wifi or data connection and whil
e I''m using other social media apps. It keeps asking me for update once like ev
ery week and takes forever to load like I have to wait at least 10 minutes to lo
gin and another 10 min to see my balance.', 1, TO_DATE('2024-05-02', 'YYYY-MM-DD
'), 'Google Play');                                                             
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (128, 2, 'Was working fine for 2 days then Error the request was not s
uccessful please check your connectivity or try again my connection works perfec
tly i reinstalled the app called support multiple times all of them said it''s a
 system problem be patient it has been a week since then, called again they even
 dared to say the problem is your phone restart it which i did but still the sam
e other banking apps work perfectly but this my experience with this app, horrib
le the whole system is bad', 1, TO_DATE('2024-02-14', 'YYYY-MM-DD'), 'Google Pla
y');                                                                            
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (129, 2, 'This is a much better app from BOA, easy to activate with AT
M credit info, that helps someone like myself who already forgots previous PIN N
o or IB password. Apps runs fast unlike the previous versions. I hope you don''t
 ruin it with unnecessary update. Please notify customers to use this app throug
h their SMS.', 5, TO_DATE('2024-01-18', 'YYYY-MM-DD'), 'Google Play');          
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (130, 2, 'The app does not work well from abroad, there have been cont
inuous upgrades and updates that are very interruptive and non-responsive. Staff
 do not have the technical capabilities to support whereas the support number an
d online support are never available.', 1, TO_DATE('2024-02-12', 'YYYY-MM-DD'), 
'Google Play');                                                                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (131, 2, 'This app is not efficient and can''t be used for people outs
ide Ethiopia. I am not able to enter back my OTP code into the App screen as it 
gets frozen and nothing can be done. Also the login screen forces to enter a loc
al cell phone in Ethiopia and a PIN number. Those of us who live abroad are left
 out. The previous application with BoA Authenitcater was working efficiently an
d I was also able to login using my LapTop. I recommend the Application to use l
ogin user name & email instead of Ph#.', 1, TO_DATE('2024-02-23', 'YYYY-MM-DD'),
 'Google Play');                                                                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (132, 2, 'Be careful of using this app to transfer large sums of money
. Recently I can''t top up my mobile card, can''t pay tickets, can''t transfer m
oney to Telebirr. The *815# works but what''s the use of an app if we''re using 
USSD. It will refund your mobile top up days after failing to top up but I would
n''t want to risk that. I''m a big fan of BoA but I wouldn''t recommend this app
. ¿', 1, TO_DATE('2024-05-15', 'YYYY-MM-DD'), 'Google Play');                   
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (133, 2, 'Very poor app. It crashes every time, doesn''t load properly
, and you can''t even buy airtime. The programming is subpar. Please take lesson
s from other online banking apps. I would give it a zero if I could!!', 1, TO_DA
TE('2024-05-10', 'YYYY-MM-DD'), 'Google Play');                                 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (134, 2, 'The app doesnot allow to transfer from foreign currency acco
unts to local currency accounts , it says transaction not allowed , please check
 it and also it is difficult to activate the app from abroad countries since the
 otp doesn''t reach by sms and it uses email, it doesn''t allow manual otp input
 and the email hardly received , please review your app and make an update !!!',
 2, TO_DATE('2024-03-22', 'YYYY-MM-DD'), 'Google Play');                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (135, 2, 'When we come to use mobile banking app this app is the WORES
T one. Who made this app? Why? im almost forget to use it While the app right in
front to my phone. I preffered to go branch office rather than to use it. Let al
one for transaction or other service for simple purpose to check my balance i us
ed to call for the bank ''call center'' rather than to open for this difficult a
pp. It need high speed internet service, it stop service for simple interuption 
of the network, after transfer the 1/2', 1, TO_DATE('2024-02-13', 'YYYY-MM-DD'),
 'Google Play');                                                                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (136, 2, 'Please add an option to manually input the OTP. I am residin
g outside of Ethiopia. I encountered difficulty accessing my account following t
he recent update (change) of your mobile banking app. Unfortunately, I am unable
 to activate the app on my mobile device. During the activation process, the app
 prompts for an OTP, which I can receive via Telegram. However, there is no opti
on to manually input the OTP. I kindly request your assistance in resolving this
 matter and activating my account', 3, TO_DATE('2024-02-03', 'YYYY-MM-DD'), 'Goo
gle Play');                                                                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (137, 2, 'It''s been two months now, I cannot do any transaction using
 this app. It''s really disappointing. I am using bank of Abyssinia currently be
cause it''s the nearest bank to my work place. The bank is turning to the worst 
bank in the country day by day. They always respond to customers that they are u
pdating their system all year long, I think that''s what they train their custom
er service operators to do.', 1, TO_DATE('2024-06-26', 'YYYY-MM-DD'), 'Google Pl
ay');                                                                           
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (138, 2, 'The worst mobile banking app! It doesn''t load (seems like w
ith the perfect WiFi and data connection it still manages to have network issues
), when you finally get into the app, it makes it so hard more than it should be
 to send money.', 1, TO_DATE('2024-05-31', 'YYYY-MM-DD'), 'Google Play');       
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (139, 2, 'Playstore need to have some option to give 0 stars because t
his application right here, deserve exactly that, imagine being one of the bigge
st banks In the country and can''t manage to have good mobile application in the
 Era of mobile money, you guys are in the brink of collapse you better make it r
ight real quick or you gonna be 10 meters down to the grave. DON''T USE THIS APP
, IT''S WASTE OF TIME.', 1, TO_DATE('2024-05-21', 'YYYY-MM-DD'), 'Google Play');
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (140, 2, 'the app isn''t working after it asked me the password it sta
rts loading, but it doesn''t open', 3, TO_DATE('2025-04-20', 'YYYY-MM-DD'), 'Goo
gle Play');                                                                     
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (141, 2, 'It can''t actively on initialization, it says incorrect OTP 
getting the exact OTP', 1, TO_DATE('2025-03-29', 'YYYY-MM-DD'), 'Google Play'); 
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (142, 2, 'The updated version of this app is just time wasting. It doe
sn''t work with 2G/3G network.require log in frequently,not fast as much as poss
ible.automatic log out are the bad features of this app', 1, TO_DATE('2024-04-13
', 'YYYY-MM-DD'), 'Google Play');                                               
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (143, 2, 'Very unprofessional and mischievous bank in my opinion. I ha
ve had several occasions but recently I used Abyssinia Card to withdraw money an
d it was deducted from my account but despite reporting several times they said 
they are processing it but I learned yesterday that since it has been 3 months t
he bank has decided to include it in their income. How absurd. If you can avoid 
this bank.', 1, TO_DATE('2024-12-06', 'YYYY-MM-DD'), 'Google Play');            
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (144, 2, 'This is terrible app. What the hell is your problem. Passwor
ds can''t be entered manually. I''m abroad. I don''t have my Ethiopian Sim. I''m
 receiving the activation code via telegram. But you locked the system not to ac
cept the activation OTP manually. Hence, I can''t see my accounts, I can''t make
 transactions etc.... how can you not think of this in advance.... now I''m in a
 terrible situation. I can''t know what is going on with my account. WOULD YOU F
IX IT NOW.... NOT TOMORROW or THE DAY AFTER...', 1, TO_DATE('2024-02-16', 'YYYY-
MM-DD'), 'Google Play');                                                        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (145, 2, 'This app is trash, it''s not working for the past 3-4 days. 
I''ve to go to the bank to send money to other banks. Plus the app keeps crashin
g since the last update. BOA as a bank is deteriorating! This has to change.', 1
, TO_DATE('2024-04-30', 'YYYY-MM-DD'), 'Google Play');                          
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (146, 2, 'The worst mobile banking app ever!!! I have tried to transfe
r 25,000 from my BOA account to my CBE and it still hasn''t reached my CBE accou
nt yet. When I tried contacting customer support they just tell me it''s a probl
em with the system. I have waited 48 hours and I still haven''t received my mone
y. Bank of Abyssinia the worst bank and system, I don''t recommend this app or b
ank to anyone.', 1, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 'Google Play');        
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (147, 2, 'This is the most stupid app I''ve seen, why would I turn off
 developer mode just because you can''t make your app secure, this clearly indic
ates the app has very poor implementation and unskilled developers.. There are a
 lot of people who need developer option for different reasons. Please for the s
ake of the bank, fix this thing... Even the most secure international banking ap
ps don''t require it. Not to mention the lag and crashes', 1, TO_DATE('2024-07-1
2', 'YYYY-MM-DD'), 'Google Play');                                              
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (148, 2, 'The app is essentially unusable, it asks to disable develope
r mode even when it is already disabled and crashes, sometimes it only works wit
h wifi and sometimes only with data, or it crashes just because.......', 1, TO_D
ATE('2024-07-04', 'YYYY-MM-DD'), 'Google Play');                                
                                                                                
INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, sourc
e) VALUES (149, 2, 'This app takes too long time to be opened. And even it is no
t working simply as other banks application. Why this app does not give a digita
l invoice. Even, I am not able to find where the screeshot is kept after transac
tion. So, please the developer should fix all these.', 1, TO_DATE('2024-08-07', 
'YYYY-MM-DD'), 'Google Play');                                                  
                                                                                
SQL> SPOOL OFF
