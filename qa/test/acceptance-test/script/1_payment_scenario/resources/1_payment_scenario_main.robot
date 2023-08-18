*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ../../../setup/environment/environment.robot
Resource    ../../../resources/common.robot
Resource    test-data/test_data.robot
Resource    1_payment_scenario_setup/1_payment_scenario_setup.robot


*** Test Cases ***
01_Payment using Credit Card Fails
    Given that consumer will apply for a promo for 7 days    dev    chrome
    And consumer provided personal information
    When consumer provided invalid payment details
    Then payment fails