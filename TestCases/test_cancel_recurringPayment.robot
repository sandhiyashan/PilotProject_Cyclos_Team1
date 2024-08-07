*** Settings ***
Documentation    To validate Banking - payment to user Functionality
Library    SeleniumLibrary
Test Setup    Open the Browser with URL
Test Teardown    close Browser session
Resource    ../Resources/GenericResource.robot
Resource    ../Resources/LoginResource.robot
Resource    ../Resources/HomeResource.robot
Resource    ../Resources/PaymentUser.robot
Library    DataDriver    file=../TestData/payment_to_user_testdata.xlsx    sheet_name=Sheet3

Test Template    To validate cancel the Recurring payment



*** Test Cases ***
To validate payment    ${user_name}    ${amount_data} 


*** Keywords ***


To validate cancel the Recurring payment
    [Documentation]    To verify that the recurring payment is cancelled 
    [Tags]    Smoke
    [Arguments]    ${user_name}    ${amount_data}
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    kavi123    kavitha
    LoginResource.click the login button
    HomeResource.Click on the Banking button
    PaymentUser.verify the Banking page open
    PaymentUser.Select the option payment to user
    PaymentUser.verify the payment to user page open
    PaymentUser.Enter the username in the to user field    ${user_name}
    PaymentUser.Select the user
    PaymentUser.Enter the valid amount in the amount field    ${amount_data}
    PaymentUser.Click the scheduling dropdown button
    PaymentUser.Select the Recurring payment option
    PaymentUser.Click the process every dropdown list
    PaymentUser.Select the week in process every dropdown list
    PaymentUser.Click the next Button in payment page
    PaymentUser.Click the confirm button in the payment page
    PaymentUser.Click Cancel the recurring payment
    PaymentUser.verify the cancellation status
