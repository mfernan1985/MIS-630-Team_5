
-- -----------------------------------------------------
-- Inserting data into table `BUSINESS_TYPE`
-- -----------------------------------------------------
Insert into BUSINESS_TYPE(businessType,businessDesc) 
Values('Food','The business of preparing food for other organizations or individuals and serving it to people there or ffering take outs.');
Insert into BUSINESS_TYPE(businessType,businessDesc) 
Values('Fshn','Makers and sellers of clothes and other articles.');
Insert into BUSINESS_TYPE(businessType,businessDesc) 
Values('Gross','Store stocking a range of household goods and groceries.');
Insert into BUSINESS_TYPE(businessType,businessDesc) 
Values('Toys','An industry that manufactures and sells toys for children');
Insert into BUSINESS_TYPE(businessType,businessDesc) 
Values('Ed','Establishments whose primary activity is education, including public, not-for-profit and for-profit establishments.');
Insert into BUSINESS_TYPE(businessType,businessDesc) 
Values('Hlth','Goods and services to treat patients with curative, preventive, rehabilitative, and palliative care.');
-- -----------------------------------------------------
-- Inserting data into table `BUSINESS`
-- -----------------------------------------------------
Insert into BUSINESS(`businessID`,`businessType`,`userID`,`pwd`,`descr`,`fName`,`lName`,`addr1`,`addr2`,`city`,`state`,`zip`) 
Values(101,'Food','jcruise','jonny','Banyan Cafe 
This mobile vegan restaurant is a projection of the bliss and delight from the depths of our hearts. The seed sprouted in February 2010.',
'Jason','Stathom','Hell s Kitchen, Chelsea', 'Midtown West','New York','NY', 10001);
Insert into BUSINESS(`businessID`,`businessType`,`userID`,`pwd`,`descr`,`fName`,`lName`,`addr1`,`addr2`,`city`,`state`,`zip`) 
Values(102,'Fshn','jcash','1221abc','Proper Cloth
Proper Cloth - Simply the best men s custom dress shirts.',
'Jonny','Cash','450 Broadway','2nd Floor','New York','NY',10013);
Insert into BUSINESS(`businessID`,`businessType`,`userID`,`pwd`,`descr`,`fName`,`lName`,`addr1`,`addr2`,`city`,`state`,`zip`) 
Values(103,'Hlth','bpitt','angie','CityMD
CityMD is the compassionate, friendly medical care you have been searching for. With average wait times of 8 minutes, you will have more time to feel better.',
'Brad','Pitt','2398','Broadway','New York','NY',10024);
Insert into BUSINESS(`businessID`,`businessType`,`userID`,`pwd`,`descr`,`fName`,`lName`,`addr1`,`addr2`,`city`,`state`,`zip`) 
Values(104,'Ed','raks','puri','NYC Guitar School
Our teachers and staff are united in a desire to be a Great Guitar School, one with SPECTACULAR lessons/classes & OUTSTANDING service. We want every student, guest & teacher to leave our school strengthened in mind and spirit, and more able to rock!!',
'Raksh','Purii','251 West 30th Street', '11th Floor', 'New York', 'NY', 10001);
Insert into BUSINESS(`businessID`,`businessType`,`userID`,`pwd`,`descr`,`fName`,`lName`,`addr1`,`addr2`,`city`,`state`,`zip`) 
Values(105,'Toys','Ann','Add2+2','Kidding Around
A unique toy store in New York City offering wonderful gifts and goodies for all ages! Sister store to Just Kidding Around in Montclair, NJ.',
'Anne','Hathway','60 W', '15th St', 'New York','NY', 10011);
Insert into BUSINESS(`businessID`,`businessType`,`userID`,`pwd`,`descr`,`fName`,`lName`,`addr1`,`addr2`,`city`,`state`,`zip`) 
Values(106,'Gross','Rgellar','rach','Trader Joes
Trader Joes is a neighborhood grocery store with amazing food and drink from around the globe and around the corner. Great quality at great prices. Thats what we call value.',
'Ross','Gellar','675','6th Ave', 'New York', 'NY', 10010);




-- -----------------------------------------------------
-- Inserting data into table `RECEIPT`
-- -----------------------------------------------------
Insert into RECEIPT(`businessID`,`receiptID`)
Values(101,1001);
Insert into RECEIPT(`businessID`,`receiptID`)
Values(101,1002);
Insert into RECEIPT(`businessID`,`receiptID`)
Values(102,1003);
Insert into RECEIPT(`businessID`,`receiptID`)
Values(103,1004);
Insert into RECEIPT(`businessID`,`receiptID`)
Values(104,1005);
Insert into RECEIPT(`businessID`,`receiptID`)
Values(105,1006);
Insert into RECEIPT(`businessID`,`receiptID`)
Values(105,1007);
Insert into RECEIPT(`businessID`,`receiptID`)
Values(102,1005);
Insert into RECEIPT(`businessID`,`receiptID`)
Values(103,1008);

-- -----------------------------------------------------
-- Inserting data into table `Review`
-- -----------------------------------------------------
Insert into REVIEW(`businessID`,`receiptID`,`review`,`response`,`status`,`review_date`,`response_date`)
Values(101,1001,'Love love the Vietnamese sandwich and the best multigrain toast in town!!!',
'Thank you Rakshat, we will keep serving you this way!','A','2015-02-12','2015-02-13');
Insert into REVIEW(`businessID`,`receiptID`,`review`,`response`,`status`,`review_date`,`response_date`)
Values(101,1002,'if you enjoy thick mucus nose noises and shitty customer service than this is the place for you!!! Felt so dirty here. I would rather they double their prices and have better customer service with employees who like their jobs. So awful. And they could start doing delivery....man oh man! They would kill it with those two things. I should be their marketing and promo manager, just sayin!
Otherwise, the food was yum (although I felt maybe mucus was in every bite...) The sesame pancake was what ever but the duck pancake was amazing- and I think I got a brand new fresh one which is probably why it was so good. The dumplings were also yum and BIG!...MAJOR moneys worth here. wonton soup was great too. 
No dine in area. No delivery. No decent customer service!
yummy but grossed out....weigh your options people!',
'We are very sorry to dissapoint you Ugandhara, please give us another chance and give your valuable feedback again. Here is a 40% discount coupon for your next visit: 4ZXCGA3',
'A','2015-03-19','2015-03-19');
Insert into REVIEW(`businessID`,`receiptID`,`review`,`status`,`review_date`)
Values(102,1003,'Fantastic Customer Service!!
My husband ordered a custom shirt through proper cloth. We went to the store on broadway which is a very cool experience. The sales people were very patient, informative, and helpful. The first shirt arrived in the mail and was not to our liking, we took it into the store for additional fitting and a week later a perfect fit shirt arrived. Now that they have the specific measurements on file, we just have to go back to pick new fabrics. 
The prices here are also very reasonable for custom tailoring and custom shirts
we are excited to try some of their suiting options which are also VERY reasonably priced.',
'P','2015-04-11');
Insert into REVIEW(`businessID`,`receiptID`,`review`,`status`,`review_date`)
Values(103,1004,'The doctor (Dr. Lisa Singh did not prescribe me the correct medicine to ensure fast recovery.
Hence, I had to miss work on Monday, 12/15 to let the new medicine (which I had to call and recommend they change the prescription from ointment to drops on Sunday, 12/14). Ointments do not work for Adults who need fast recovery per pink eye. It was very messy and did  not give me any improvement. When i got the drops after the initial use, i notice immediate relief and my eyes healed in the next 3 days with continuous use. 
For this visit, the amount was $514.36. Unbelievable! I WILL NEVER GO BACK!!',
'P','2015-04-03');
Insert into REVIEW(`businessID`,`receiptID`,`review`,`response`,`status`,`review_date`,`response_date`)
Values(104,1005,'Amazing school. Bf and I have been taking ukulele lessons together here for a while. We learned so much in such a short period of time. 
The teachers here are very friendly, encouraging and experienced with teaching. We went from complete beginners to enthusiasts. We would love to take more lessons here. 
If you want to learn guitar or ukulele, go to this place: you cannot go wrong.',
'Thank you for your appreciation Alex!','A','2015-04-08','2015-04-08');
Insert into REVIEW(`businessID`,`receiptID`,`review`,`response`,`status`,`review_date`,`response_date`)
Values(105,1006,'What an amazing discovery. I needed a specific toy and went to Kidding Around! the service was amazing from the owner to sales clerks. A nice quality inventory of toys and games and just a pleasure to shop. I recommend this store to anyone who want to support local business, appreciate quality service and product and have that special store to go back to for always!!!',
'Thank you Bhuvan, we try to keep as much variety and range of toys as we can. We are glad you liked your experience with us. Hope to see you again.','A','2015-04-09','2015-04-09');
Insert into REVIEW(`businessID`,`receiptID`,`review`,`status`,`review_date`)
Values(105,1007,'OMG 
This store has an excellent selection of toys and gifts for children. 
The staff are able to provide helpful suggestions based in child s age and interests.',
'P','2015-04-10');
Insert into Review(`businessID`,`receiptID`,`review`,`response`,`status`,`review_date`,`response_date`)
Values(102,1005,'Came here to look for some reasonably priced suits that were recommended by a colleague of mine.  The guys here are professional and know their stuff.   They take your measurements and help you make a few selections based on a few questions they ask regarding your style, taste and preference.  
I recommend asking for a suit thats a little more fitting (classic).  Trust me they wont mess up and they are keen on detail!',
'Thank you for your appreciation Alex','A','2015-04-11','2015-04-11');