
#Scenario 1 A customer is looking for a restaurant to have lunch.
#He/she opens TSB.com enters the service and location. TSB displays the list of restaurants, their description, address, contact information and the reviews
#Query: List all the restaurants description, address, contact information and reviews for food in New York, NY or for the zip code 10001

select businessID,businessType,userID,pwd,fName,lName,addr1,addr2,city,state,zip,descr
from business
Where businessType = 'Food'
and zip = '10001';
-- or using city state--
select businessID,businessType,userID,pwd,descr,fName,lName,addr1,addr2,city,state,zip
from business
Where businessType = 'Food'
and city = 'New York'
and state = 'NY';
-- reviews--
select businessID,review from REVIEW
where businessID = '101';




# Scenario 2 : A business owner wants to register the business with TSB.com. 
#Business owner needs to create an account with TSB.com and can enter the business category, description, address, pictures, website url, contact information etc.
#Query: Traders Joe grocery store owner in New York wants to register his business

Insert into BUSINESS(businessID,businessType,userID,pwd,descr,fName,lName,addr1,addr2,city,state,zip) 
Values(107,'Gross','Rgellar','rach','Trader Joes
Trader Joes is a neighborhood grocery store with amazing food and drink from around the globe and around the corner. Great quality at great prices. Thats what we call value.',
'Ross','Gellar','675','6th Ave', 'New York', 'NY', 10010);

# Secnario 3
# Query: A customer recently visited Banyan Cafe and wants to write a reviw about his experience. Later, the business owner responded to the review.
#Before writin review receipt table needs to be populated with receipt number to avoid fake reviews
Insert into RECEIPT(`businessID`,`receiptID`)
Values(107,1007);

Insert into Review(businessID,receiptID,review,response,status,review_date,response_date)
Values(107,1007,'if you enjoy thick mucus nose noises and shitty customer service than this is the place for you!!! Felt so dirty here. I would rather they double their prices and have better customer service with employees who like their jobs. So awful. And they could start doing delivery....man oh man! They would kill it with those two things. I should be their marketing and promo manager, just sayin!
Otherwise, the food was yum (although I felt maybe mucus was in every bite...) The sesame pancake was what ever but the duck pancake was amazing- and I think I got a brand new fresh one which is probably why it was so good. The dumplings were also yum and BIG!...MAJOR moneys worth here. wonton soup was great too. 
No dine in area. No delivery. No decent customer service!
yummy but grossed out....weigh your options people!',
'We are very sorry to dissapoint you Ugandhara, please give us another chance and give your valuable feedback again. Here is a 40% discount coupon for your next visit: 4ZXCGA3',
'A','2015-03-19','2015-03-19');


-- Scenario 4
-- A Business owner wants to chek the reviews before TSB publishes.
-- Business owner can view the pending reviews.He/she can sort out the issue with customer and ask them go back and change the review, else business owner can just respond to the review within 10 days. 

-- Query1: List all the reviews that are in pending status --
-- In case of a negative review, the business can request the customer to change the review (the owner will check all the pending reviews and takes action accordingly to reach out to the customer to change the review, no specific query is run except to check the reviews)
select businessID,receiptID,review,status from review where businessID = '102' and status = 'P';

-- Query2: Business owner responds to the reviw by writing a response in 10 days
update review set response ='sorry for inconvenience',status='A',response_date=current_time where businessID= '102' and receiptID='1003';
