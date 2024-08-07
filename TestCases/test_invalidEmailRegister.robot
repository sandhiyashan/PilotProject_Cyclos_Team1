*** Settings ***
Documentation    Test to Register Page
Library    SeleniumLibrary
Library    DataDriver    file=../TestData/login_data.xlsx    sheet_name=invalidEmail
Test Setup    Open the Browser with URL
Test Teardown    Close Browser Session
Resource    ../Resources/GenericResource.robot
Resource    ../Resources/HomeResource.robot
Resource    ../Resources/RegisterResource.robot
Test Template    Valid register with invalid email field

*** Test Cases ***
valid register Test case
    ${name}    ${login}    ${email}

*** Keywords ***

Valid register with invalid email field
    [Documentation]    To validate register functionality with invalid email field
    [Arguments]    ${name}    ${login}    ${email} 
    [Tags]    Regression
    HomeResource.Go to Register Page
    RegisterResource.Verify Register Page opens
    RegisterResource.Fill the Required feilds    ${name}    ${login}    ${email}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    RegisterResource.clicking next button for mandatory field
    RegisterResource.verification for invalid email