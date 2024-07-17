*** Settings ***
Documentation    This checks the Business Directory functionality
Library    SeleniumLibrary
Resource    ../Resources/BusinessDirectoryResource.robot
Resource    ../Resources/GenericResource.robot
Resource    ../Resources/LoginResource.robot
Library    DataDriver    file=../TestData/busDir_data.xlsx   sheet_name=invalid_data
Test Setup    Open the Browser with URL
Test Teardown    close Browser session
Test Template    To Validate the Business Directory functionality with invalid data

*** Variables ***
${invalid_keyword}

*** Test Cases ***
Validate Business Directory functionality with invalid data    ${invalid_keyword}
    
    
*** Keywords ***
To Validate the Business Directory functionality with invalid data
    [Documentation]    This checks the Business Directory functionality with invalid data
    [Arguments]    ${invalid_keyword}
    [Tags]  smoke
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    demo    1234
    LoginResource.click the login button
    HomeResource.Click the Marketplace Option
    HomeResource.Verify the Marketplace page is displayed
    BusinessDirectoryResource.Select the option business directory
    BusinessDirectoryResource.verify the business directory page open
    BusinessDirectoryResource.Enter the key in keyword field    ${invalid_keyword}
    BusinessDirectoryResource.Verify the invalid key alert
