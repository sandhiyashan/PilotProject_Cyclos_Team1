*** Settings ***
Documentation    To validate Banking - payment to user Functionality
Library    SeleniumLibrary
Test Setup    Open the Browser with URL
Test Teardown    close Browser session
Resource    C:\\Cyclos_project\\PilotProject_Cyclos_Team1-2\\Resources\\GenericResource.robot
Resource    C:\\Cyclos_project\\PilotProject_Cyclos_Team1-2\\Resources\\LoginResource.robot
Resource    C:\\Cyclos_project\\PilotProject_Cyclos_Team1-2\\Resources\\HomeResource.robot
Resource    C:\\Cyclos_project\\PilotProject_Cyclos_Team1-2\\Resources\\PaymentUser.robot


*** Test Cases ***

To validate payment to user functionality with valid amount 
    [Tags]    valid_amount_payment
    LoginResource.click the login button
    LoginResource.Fill the Login page
    HomeResource.Click on the Banking button
    PaymentUser.verify the Banking page open
    PaymentUser.Select the option payment to user
    PaymentUser.verify the payment to user page open
    PaymentUser.Enter the username in the to user field
    PaymentUser.Select the user
    PaymentUser.Enter the valid amount in the amount field
    PaymentUser.Click the scheduling dropdown button
    PaymentUser.Click the pay now option
    PaymentUser.Click the next Button in payment page
    PaymentUser.Click the confirm button in the payment page
    sleep   5

#To validate payment to user functionality with invalid amount
