*** Settings ***
Documentation    All the page objects and keywords of Home page
Library    SeleniumLibrary
*** Variables ***
${Banking_Xpath}    xpath://a[@id='menu_banking']

*** Keywords ***
Click the Banking Option
     Wait Until Element Is Visible    ${Banking_Xpath}   
     Click Element   ${Banking_Xpath} 
