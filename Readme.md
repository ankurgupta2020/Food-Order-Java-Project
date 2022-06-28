**Food Ordering System**

**GROUP 22**

**OOPD Project**

**Introduction:**

The food ordering system has a list of restaurants available in your city that will give you the option to select the restaurant you want to place an order from or want to dine in.

After selecting the desired restaurant app will display a menu of that restaurant and the customer can see add items according to what he/she wants to eat.

After finalizing all the items customer can see the summary of a bill where all charges for the same are being displayed and he/she can also apply some codes as well for some sort of saving and after that he/she proceeds with the payments and wait for his/her order to arrive meanwhile customer can also track the order and see the estimated delivery time.

**Dependencies required:**

- The latest version of Eclipse IDE for Java Developers

Download link: https://www.eclipse.org/downloads/packages/release/kepler/sr1/eclipse-ide-java-developers

- XAMPP:

Download link:

https://www.apachefriends.org/index.html

- Jar file named mysql-connector-java-8.0.27.jar

Given in the Project folder

**Tools and Technology Used:**

- Java Maven sts
- Eclipse IDE for Java Developers
- Java 8.0.27
- XAMPP

**How to run the project:**

- Open the Import folder in the Eclipse IDE for Java Developers and import the downloaded project
- In Eclipse IDE right click on the project displayed on the left-hand side menu and click on the Build path and then click on the configure build path.
- Now add a file named &quot;mysql-connector-java-8.0.27.jar&quot; given in the project into the libraries and click on the add JARs and Apply and close.
- Now Turn on the apache and SQL server from the XAMPP application
- Now create an SQL database named &quot;customerdatabase&quot; and import given .sql
- Now run the project in Eclipse IDE.

**OOPD concepts used:**

1. Abstraction: We have used abstraction for hiding the subtle implementation details of some functionality and made it look simple on output-oriented rather than implementation-oriented.
2. Inheritance: We have used inheritance to reuse the code rather than writing the same code, again and again, the implementation of the inheritance can be seen between the classes.
3. Encapsulation: To prevent access or unnecessary or accidental alteration of the data we are encapsulating the attribute of the class and making them private by using the getter and setter methods we can access these private attributes of the class.

**Modules:**

- **Order.java**

Variables:

Methods:

• String getOrderStatus () -to retrieve the order status

• void setOrderStatus (String orderStatus) -to set order status

• double getTotalAmonut () -to retrieve total amount

• void setTotalAmonut (double totalAmonut) -to set total amount

• int getPaymentId () -to retrieve payment id

• void setPaymentId (int paymentId) -to set the payment id

• double getDiscount () -to retrieve discount amount

• void setDiscount (double discount) -to set the discount amount

• double getDeliveryCharge () -to retrieve delivery charge

• void setDeliveryCharge (double deliveryCharge) -to set the delivery charge

• double getTotalBill () -to retrieve total bill amount

• void setTotalBill (double totalBill) -to set total bill amount

• int getUserId () -to get the user id

• void setUserId (int userId) -to set user id

• int getorderId () - to retrieve the order id

• void setorderId (int orderId) -to set the order id

- **Cart.java**

Variables:

- item[] cart
- String user\_id
- String restaurant\_id

Methods:

• item[] getCart () -to retrieve the cart

• void setCart (item[] cart) -to set the cart

• String getUser\_id () -to retrieve the user id

• void setUser\_id (String user\_id) -to set the user id

• String getRestaurant\_id () -to retrieve the restaurant id

• void setRestaurant\_id (String restaurant\_id) -to set the restaurant id

• void addToCart (String username, int rest\_ID, int item\_ID, int q, int price) -to add items into the cart according to passed parameters.

• void display\_item ()

• void Cart\_Item ()

- **connection.java**

Variables: None

Methods: None

- **CreditCard.java**

Variables:

- String creditCardNo
- String pass
- Int userid

Methods:

• String getCreditCardNo ()

• void setCreditCardNo (String creditCardNo)

• String getPass ()

• void setPass (String pass)

• int getUserId ()

• void setUserId (int userId)

• void details (int userId)

• void getPayment ()

• int validateCard (String cno)

• int validatePass (String password)

- **DebitCard.java**

Variable :

- String debitCardNo
- String pass
- Int userId

Methods:

• String getdebitCardNo ()

• void setdebitCardNo (String debitCardNo)

• String getPass ()

• void setPass (String pass)

• int getUserId ()

• void setUserId (int userId)

• void details (int userId)

• void getPayment()

• int validateCard(String cno)

• int validatePass(String password)

- **Discount.java**

Variables: None

Methods:

Getter Functions to fetch the data:

Setter Function to set the data:

•void update\_discount (String user) throws SQLException

- **item.java**

Variables:

- Int item\_id
- String item\_name
- Int Price
- Int quantity

Methods:

• int getItem\_id ()

• void setItem\_id (int item\_id)

• String getItem\_name ()

• void setItem\_name (String item\_name)

• int getPrice ()

• void setPrice (int price)

• void viewItems (int restId) throws SQLException

• int getQuantity ()

• void setQuantity (int quantity)

- **login.java**

Variables:

- String regname
- String regpass

Methods:

• void setname (Scanner sc)

• String getname ()

• void setPassword (Scanner sc)

• String getPassword ()

• String conn\_register ()

- **main.java**

Variables:

Methods:

•static void main (String[] args) throws SQLException

• static int getUserId (String Username) throws SQLException

- **NetBank.java**

Variables:

- String accNo
- String pass
- Int userId

Methods:

• String getAccNo ()

• void setAccNo (String ac)

• String getPass ()

• void setPass (String pass)

• int getUserId ()

• void setUserId (int userId)

• void details (int userId)

• void getPayment ()

• int validateAcc (String cno)

• int validatePass (String password)

- **Order.java**

Variables:

- Int orderId
- String orderStatus
- Double totalAmount
- Int paymentId
- Double discount
- Double deliveryCharge
- Double totalBill
- Int userId

Methods:

• String getOrderStatus ()

• void setOrderStatus (String orderStatus)

• double getTotalAmonut ()

• void setTotalAmonut (double totalAmonut)

• int getPaymentId ()

• void setPaymentId (int paymentId)

• double getDiscount ()

• void setDiscount (double discount)

• double getDeliveryCharge ()

• void setDeliveryCharge (double deliveryCharge)

• double getTotalBill ()

• void setTotalBill (double totalBill)

• int getUserId ()

• void setUserId (int userId)

• int getorderId ()

• void setorderId (int orderId)

- **Payment.java**

Variables:

- Int paymentId
- String mode
- String status
- Int userId
- Int orderId
- Double amount

Methods:

• int getPaymentId ()

• void setPaymentId (int paymentId)

• String getMode ()

• void setMode (String mode)

• String getStatus ()

• void setStatus (String status)

• int getUserId ()

• void setUserId (int i)

• int getOrderId ()

• void setOrderId (int orderId)

• double getAmount ()

• void setAmount (double amount)

- **Payment\_main.java**

Variables: None

Methods:

• static void proceed (final int userId, int rest\_id) throws SQLException

•static Double calculateDeliveryCharge (final int userId, final int restrauntId, final Statement st) throws SQLException

•static double applyDiscount (final int userId, final int orderId, final Statement st)

•static void proceedToCheckout (final int userId, final Statement st, final Double amount, final int orderId, final Connection connection)

- **register.java**

Attributes:

• String FirstName

• String LastName

• String UserName

• String Password

• String RePassword

• String ContactNo

• String EmailId

• String Pincode

• String City

• String State

• String Country

:

Methods:

• void setFirstname (Scanner sc)

• String getFirstname ()

• void setLastname (Scanner sc)

• String getLastname ()

• void setname (Scanner sc)

• String getname ()

• void setPassword (Scanner sc)

• String getPassword ()

• void setRePassword (Scanner sc)

• String getRePassword ()

• void setNumber (Scanner sc)

• String getNumber ()

• void setEmailId (Scanner sc)

• String getEmailId ()

• void setCountry (Scanner sc)

• String getCountry ()

• void setCity (Scanner sc)

• String getCity ()

• void setState (Scanner sc)

• String getState ()

• void setPincode (Scanner sc)

• String getPincode ()

• void validate ()

• void validate\_2 ()

• void validate\_3 ()

• void validate\_4 ()

• void validate\_5 ()

• void validate\_6 ()

• void validate\_7 ()

• void validate\_8 ()

• void validate\_9 ()

• void validate\_10 ()

• void validate\_11 ()

• void conn ()

- **rest\_menu.java**

Variables:None

Methods:None

- **restaurant.java**

Variables:

- Int RestaurantId
- String RestaurantName
- String state

Methods:

• int viewRestaurant (String username) throws SQLException

• int getRestaurantId ()

• void setRestaurantId (int restaurantId)

• String getRestaurantName ()

• void setRestaurantName (String restaurantName)

• String getState ()

• void setState (String state)

- **Tracking.java**

Variables:

- double eta
- double latitude1
- double latitude2
- double longitude1
- double longitude2
- double d\_long
- double d\_lat

Methods:

• static double CalculateEstimatedDeliveryDistance (int userId, int RestaurantId) throws SQLException

• static double CalculateEstimatedDeliveryTime (int userId, int RestaurantId) throws SQLException

• static void Track\_Order (int userId, int RestaurantId, int orderId) throws SQLException, InterruptedException

- **UPI.java**

Variables:

- String upiId
- String pass
- Int userId

Methods:

• String getupiId ()

• void setupiId (String upiId)

• String getPass ()

• void setPass (String pass)

• int getUserId ()

• void setUserId (int userId)

• void details (int userId)

• void getPayment ()

• int validateupi (String cno)

• int validatePass (String password)

- **Validate.java**

Variables: None

Methods:

• static boolean validFName (String FirstName)

• static boolean validLName (String LastName)

• static boolean validUName (String UserName)

• static boolean validPass (String Password)

• static boolean checkUserName (String UserName)

**Functional Requirements:**

1. **Authentication:**

It includes User authentication means if any user is using the app for the first time then he/she shall choose to create a new account option which is Signup and can proceed next after entering the required information.

The next time user needs to log in using the hie/her credentials that have been entered while creating a new account.

1. **Order:**

After the successful completion of the authentication in the above step depending on the city, the user belongs to the app will display all the restaurants that are available in that particular city and registered on the portal.

say fo users belonging to Delhi there are two restaurants available at a moment now we can choose any of them.

After choosing the restaurant a menu of that restaurant is been displayed to the user and by item id of any item, the user can add items to the cart with its quantity.

After choosing all items we are having the following options we can View the cart, we can delete an item from the cart or we can drop the entire cart as well.

1. **Payment:**

After clicking on the checkout for the payment option user can see the total base bill amount which is the sum of both item price\*quantity. Here minimum order value is 100 now the delivery charge will be calculated according to the distance between the user and the restaurant.

Here If the user has not applied any promo code among SAVE50 or SAVE20 then he/she apply whichever code of his/her choice to get the discount

Now base price +delivery charge-promo discount(if applicable) will be shown as the payable amount to the user.

1. **Payment Mode:**

Among the all available options like credit cards, debit cards, Net banking, UPI users can proceed with any option and can make the payment for the order.

1. **Tracking:**

After the payment is successfully done by the user we are calculating the distance and using that calculating the estimated time for the delivery and timer runs for the user and if the order gets delivered before time then we are taking the rating for the app and food and if time exceeds the estimated time by 10% we are displaying the option to cancel the order.

**Further Improvement:**

1. Making Good looking GUI Interface for making app users convenient
2. Making Admin functionality
3. Posting reviews by user
4. Restaurant owner functionality.
5. Making delivery more convenient by providing the phone number of the rider.
6. Can add option to customize item
7. Add filter in restaurant and menu also i.e: Jain, Pure vegetarian, etc.
8. Hosting using cloud base service to increase scalability and capacity.
9. Implement a local wallet that can be used to carry out transactions flawlessly.
10. To attract more customers can come up with a referral reward system for the app.
11. Implement login using OTP via phone number and E-mail.
12. Implement real-time tracking of riders using G maps API.

**SQL Database tables: (customerdatabase.sql)**

**cutomerdatabase** tables:

creditcard

cust

debitcard

discount

item

itemprice

netbanking

order

order\_item

payment

restaurant

r\_location

upi

rating

u\_location