*** Settings ***
Documentation    To validate Advertisement Functionality
Library    SeleniumLibrary
Test Setup    Open the Browser with URL
Test Teardown    close Browser session
Resource    ../Resources/GenericResource.robot
Resource    ../Resources/LoginResource.robot
Resource    ../Resources/HomeResource.robot
Resource   ../Resources/AdvertisementResource.robot


*** Test Cases ***

verify that the valid keyword is entered in the keyword field
    [Tags]    valid_keyword_search
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    sandhiyas    Sand@123
    LoginResource.click the login button
    HomeResource.Click on the MarketPlace button
    AdvertisementResource.verify that the markerplace is open
    AdvertisementResource.Click on the advertisement page button
    #AdvertisementResource.Enter the valid Keyword in the keyword box
    #AdvertisementResource.verify the keyword based image displayed
    AdvertisementResource.Number of product displayed

verify that the Invalid keyword is entered in the keyword field
    [Tags]    Invalid_keyword_search
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    sandhiyas    Sand@123
    LoginResource.click the login button
    HomeResource.Click on the MarketPlace button
    AdvertisementResource.verify that the markerplace is open
    AdvertisementResource.Click on the advertisement page button
    Sleep    5s
    AdvertisementResource.Enter the invalid Keyword in the keyword box
    AdvertisementResource.verify the invalid keyword message is displayed


Verify the advertisements functionality with dropdownlist order by Relevance
    [Tags]    Relevance
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    sandhiyas    Sand@123
    LoginResource.click the login button
    HomeResource.Click on the MarketPlace button
    AdvertisementResource.verify that the markerplace is open

    AdvertisementResource.Click on the advertisement page button
    Sleep    5
    AdvertisementResource.Enter the valid Keyword in the keyword box
    AdvertisementResource.Click on the dropdown button Order by
    AdvertisementResource.Select the option relevance


Verify the advertisements functionality with dropdownlist order by last published
    [Tags]    last_published
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    sandhiyas    Sand@123
    LoginResource.click the login button
    HomeResource.Click on the MarketPlace button
    AdvertisementResource.verify that the markerplace is open
    AdvertisementResource.Click on the advertisement page button
    AdvertisementResource.Enter the valid Keyword in the keyword box
    AdvertisementResource.Click on the dropdown button Order by
    AdvertisementResource.Select the option last published


Verify the advertisements functionality with dropdownlist order by lowest
    [Tags]    lowest_price
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    sandhiyas    Sand@123
    LoginResource.click the login button
    HomeResource.Click on the MarketPlace button
    AdvertisementResource.verify that the markerplace is open
    AdvertisementResource.Click on the advertisement page button
    AdvertisementResource.Enter the valid Keyword in the keyword box
    AdvertisementResource.Click on the dropdown button Order by
    AdvertisementResource.Select the option lowest price


Verify the advertisements functionality with dropdownlist order by Highest
    [Tags]    Highest_price
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    sandhiyas    Sand@123
    LoginResource.click the login button
    HomeResource.Click on the MarketPlace button
    AdvertisementResource.verify that the markerplace is open
    AdvertisementResource.Click on the advertisement page button
    AdvertisementResource.Enter the valid Keyword in the keyword box
    AdvertisementResource.Click on the dropdown button Order by
    AdvertisementResource.Select the option highest price





