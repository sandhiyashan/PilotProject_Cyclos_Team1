*** Settings ***
Documentation    All the page object and keyword of Payment to user Page
Library    SeleniumLibrary

*** Variables ***
${Banking_title}    xpath://div[@class="side-menu-header"]//following-sibling::div
${select_payment_to_user}    xpath://div[text()="Payment to user"]
${payment_user_title}    xpath://div[@class="content-title d-flex"]//div
${to_User}    xpath://input[@placeholder="Type to search"]
#${select_user}    xpath://a[@class="select-option autocomplete-option-0"]
${select_user}    xpath://div[@class="dropdown-menu show"]//a[1]
${amount}    xpath://div[@class="input-group"]//input
${Scheduling}    xpath://button[@title="Pay now"]
${pay_now_option}    xpath://a[text()=' Pay now ']
${next}    xpath://span[text()='Next']

${confirm_button}    xpath://span[text()='Confirm']
*** Keywords ***


verify the Banking page open
    #Sleep    10
    Wait Until Element Is Visible    ${Banking_title} 
    Element Text Should Be    ${Banking_title}     Banking 

Select the option payment to user
    Wait Until Element Is Visible    ${select_payment_to_user}
    Click Element    ${select_payment_to_user}

verify the payment to user page open
    Element Text Should Be    ${payment_user_title}     Payment to user 

Enter the username in the to user field
    Input Text    ${to_User}    Dinesh dk


Select the user
    #Sleep    5 
    Click Element    ${select_user}


Enter the valid amount in the amount field
    Input Text    ${amount}    2


Click the scheduling dropdown button
    Click Element    ${Scheduling}

Click the pay now option
    Click Element    ${pay_now_option}

Click the next Button in payment page
    Wait Until Element Is Visible    ${next}
    Click Element    ${next}

Click the confirm button in the payment page
    Wait Until Element Is Visible    ${confirm_button}
    Click Element    ${confirm_button}



