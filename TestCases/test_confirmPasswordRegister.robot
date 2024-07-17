*** Settings ***
Documentation    Test to Register Page
Library    SeleniumLibrary
Library    DataDriver    file=../TestData/login_data.xlsx    sheet_name=confirmPassword
Test Setup    Open the Browser with URL
Test Teardown    Close Browser Session
Resource    ../Resources/GenericResource.robot
Resource    ../Resources/HomeResource.robot
Resource    ../Resources/RegisterResource.robot
Test Template    Valid register with invalid confirm password

*** Test Cases ***
valid register Test case
    ${name}    ${login}    ${email}    ${website}    ${gender}    ${mobile}    ${land_line}    ${address}    ${zip}    ${city}    ${region}    ${password}    ${confirm_password}

*** Keywords ***

Valid register with invalid confirm password
    [Documentation]    To validate register functionality with invalid confirm password field
    [Arguments]    ${name}    ${login}    ${email}    ${website}    ${gender}    ${mobile}    ${land_line}    ${address}    ${zip}    ${city}    ${region}    ${password}    ${confirm_password}
    [Tags]    Regression
    HomeResource.Go to Register Page
    RegisterResource.Verify Register Page opens
    RegisterResource.Fill the Required feilds    ${name}    ${login}    ${email}
    RegisterResource.Fill the Remaining profile feilds    ${website}    ${gender}    ${mobile}    ${land_line}
    RegisterResource.Enable address fields
    RegisterResource.Fill the address fields    ${address}    ${zip}    ${city}    ${region}
    RegisterResource.Click next button
    RegisterResource.Fill password fields    ${password}    ${confirm_password}
    RegisterResource.Click Registration confirmation checkbox
    RegisterResource.Click submit button
    RegisterResource.verification for confirmPassword

