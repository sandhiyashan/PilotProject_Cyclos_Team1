*** Settings ***
Documentation    This checks the Member account fubctionality
Library    SeleniumLibrary
Resource    I:\\CYCLOS\\CYCLOS-PROJECT\\PilotProject_Cyclos_Team1\Resources\\MemberAccountResource.robot
Resource    I:\\CYCLOS\\CYCLOS-PROJECT\\PilotProject_Cyclos_Team1\Resources\\HomeResource.robot
Resource    I:\\CYCLOS\\CYCLOS-PROJECT\\PilotProject_Cyclos_Team1\Resources\\GenericResource.robot
Resource    I:\\CYCLOS\\CYCLOS-PROJECT\\PilotProject_Cyclos_Team1\Resources\\LoginResource.robot
Test Setup    Open the Browser with URL
Test Teardown    close Browser session


*** Test Cases ***
TC_001: Validate the Member Account
    [Documentation]     validate the balance and transaction
    [Tags]    Login
    LoginResource.Fill the Login page
    HomeResource.Click the Banking Option
    MemberAccountResource.Verify the Banking page is displayed
    MemberAccountResource.Verify the Member account page
    MemberAccountResource.Verify the balance
    MemberAccountResource.Assert the transaction data