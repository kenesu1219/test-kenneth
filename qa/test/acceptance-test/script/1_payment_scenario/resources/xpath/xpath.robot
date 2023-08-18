*** Variables ***
# Homepage
${home_simplans_navbar}                                   //a[@href="/sim-plans"] 

# Navigate to 7 DAY SIM Plans page
${simplans_7days_option}                                  //a[@href="/sim-plans/7-day-sim-plans"]
${7Days_simPlan_header}                                   //div[@class="plan-table-heading"]
${7Days_buyNow_button}                                    //a[@href="/mobile/cart/7-day-10gb"] 

# Pick a new number with a suggested number
${simDetails_newNumber_option}                            //label[@class="css-14b8rqd"]
${simDetails_actualNumber_option}                         //span[@class="css-y5ibac"]

# Choose Physical type of Sim
${simDetails_physicalSim_option}                          //div[@class="css-1vy9u2m"]
${simDetails_checkout_button}                             //span[@class="css-1tisfka"]

# Select New Customer
${customerDetails_newCusomter_option}                     //div[@class="css-1ohxdt3"]

# Provided Personal Information 
${customerDetails_firstName_input}                       //input[@name="firstName"]     
${customerDetails_lastName_input}                        //input[@name="lastName"]
${customerDetails_dateOfBirth_input}                     //input[@name="dateOfBirth"]
${customerDetails_email_input}                           //input[@name="email"]
${customerDetails_password_input}                        //input[@name="password"]
${customerDetails_contactNumber_input}                   //input[@name="contactNumber"]
${customerDetails_address_input}                         //input[@class="react-autosuggest__input"]       
${customerDetails_billingAddSameAsAdd_checkbox}          //*[@id="react-autowhatever-1--item-0"]/span      
${customerDetails_creditCardPayment_option}              //*[@id="__next"]/div[2]/div/div[1]/div/div/div[4]/div/fieldset/div/label[1]/div[1]
${customerDetails_acknowledgement_checkbox}              //*[@id="__next"]/div[2]/div/div[1]/div/div/div[5]/div/div[1]/label/div[1]
${customerDetails_continueToPayment_button}              //div[@class="css-arhuk1"]
     
# Provided Card Information
${cardInfo_cardNumber_frame}                             //*[@id="__next"]/div[2]/div/div[1]/div/div[2]/div/div[1]/div[1]/div/div/iframe
${cardInfo_cardNumber_input}                             //input[@name="cardnumber"]  

${cardInfo_expiry_frame}                                 //*[@id="__next"]/div[2]/div/div[1]/div/div[3]/div[1]/div/div/div[1]/div[1]/div/div/iframe
${cardInfo_expiry_input}                                 //input[@name="exp-date"]  

${cardInfo_securityCode_frame}                           //*[@id="__next"]/div[2]/div/div[1]/div/div[3]/div[2]/div/div/div[1]/div[1]/div/div/iframe
${cardInfo_securityCode_input}                           //input[@name="cvc"]          

${cardInfo_confirmation_checkbox}                        //div[@class="css-1417z9a"]
${cardInfo_placeOrder_button}                            //div[@class="css-arhuk1"] 

# Verification
${application_status_header}                             //div[@class="css-cqbrkr"]