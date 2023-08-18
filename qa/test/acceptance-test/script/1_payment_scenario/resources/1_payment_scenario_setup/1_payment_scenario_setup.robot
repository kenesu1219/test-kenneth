*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ../../../../setup/environment/environment.robot
Resource    ../../../resources/common.robot
Resource    test-data/test_data.robot
Resource    ../xpath/xpath.robot

*** Keywords ***    
Given that consumer will apply for a promo for 7 days
    [Arguments]    ${env}=${empty}    ${browser}=${empty}
    Set Test Variable    ${env}
    Set Test Variable    ${browser}
    Access Website
    Navigate to SIM Plans Menu
    Navigate to 7 DAY SIM Plans page

Access Website
    Open Browser    ${${env}_env}    ${${browser}}
    Maximize Browser Window
    Sleep    5
    
Navigate to SIM Plans Menu
    Mouse Over                    ${home_simplans_navbar} 
    Sleep    5
    
Navigate to 7 DAY SIM Plans page
    Click Element                 ${simplans_7days_option} 
    Sleep    5
    Element Text Should Be        ${7Days_simPlan_header}                        ${assertion_7Days_page}
    Sleep    5
    Scroll Element Into View      ${7Days_buyNow_button} 
    Sleep    5
    Click Element                 ${7Days_buyNow_button}
    Sleep    30  

Pick a new number with a suggested number
    Click Element                 ${simDetails_newNumber_option}  
    Sleep    5
    Click Element                 ${simDetails_actualNumber_option}
    Sleep    5
    
Choose Physical type of Sim
    Scroll Element Into View      ${simDetails_physicalSim_option}
    Click Element                 ${simDetails_physicalSim_option}
    Sleep    5
    Scroll Element Into View      ${simDetails_checkout_button}
    Click Element                 ${simDetails_checkout_button}
    Sleep    5
    
Select New Customer
    Click Element                 ${customerDetails_newCusomter_option}
    Sleep    5

Generate Unique Email
    Generate Random String Mixed
    Set Test Variable    ${randomStr}
    ${email}    Set Variable    ${randomStr}${email}
    Set Test Variable    ${email}
    
Generate Unique Password
    Generate Random String Mixed
    Set Test Variable    ${randomStr}
    ${password}    Set Variable    ${randomStr}${password}
    Set Test Variable    ${password}

Provided Personal Information            
    Input Text                   ${customerDetails_firstName_input}                          ${firstname}
    Sleep    5
    Input Text                   ${customerDetails_lastName_input}                           ${lastname}
    Sleep    5    
    Input Text                   ${customerDetails_dateOfBirth_input}                        ${dateOfBirth} 
    Sleep    5
    Scroll Element Into View     ${customerDetails_contactNumber_input}
    Generate Unique Email
    Input Text                   ${customerDetails_email_input}                              ${email}
    Sleep    5
    Generate Unique Password
    Input Text                   ${customerDetails_password_input}                           ${password}
    Sleep    5
    Input Text                   ${customerDetails_contactNumber_input}                      ${contactNumber} 
    Sleep    5   
    Input Text                   ${customerDetails_address_input}                            ${address}
    Sleep    5
    Click Element                ${customerDetails_billingAddSameAsAdd_checkbox}
    Sleep    5
    Scroll Element Into View     ${customerDetails_acknowledgement_checkbox}      
    Click Element                ${customerDetails_creditCardPayment_option}
    Sleep    5
    Click Element                ${customerDetails_acknowledgement_checkbox}
    Sleep    5
    Scroll Element Into View     ${customerDetails_continueToPayment_button}    
    Click Element                ${customerDetails_continueToPayment_button}
    Sleep    15
    
Provided Card Information
    #Card Number
    Select Frame                 ${cardInfo_cardNumber_frame}	
    Input Text                   ${cardInfo_cardNumber_input}                                ${cardNumber}
    Unselect Frame            
    Sleep    5
    
    #Expiration
    Select Frame                 ${cardInfo_expiry_frame} 
    Input Text                   ${cardInfo_expiry_input}                                    ${expiration}
    Unselect Frame               
    Sleep    5
    
    #Security Code
    Select Frame                 ${cardInfo_securityCode_frame}
    Input Text                   ${cardInfo_securityCode_input}                              ${securityCode}
    Sleep    5
    Unselect Frame              
    
    #Submit
    Click Element                ${cardInfo_confirmation_checkbox}
    Sleep    5
    Click Element                ${cardInfo_placeOrder_button}
    Sleep    15
    
And consumer provided personal information
    Pick a new number with a suggested number
    Choose Physical type of Sim
    Select New Customer
    Provided Personal Information
    
When consumer provided invalid payment details
    Provided Card Information

Then payment fails
    Element Should Contain        ${application_status_header}                                ${assertion_failed}