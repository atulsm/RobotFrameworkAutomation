*** Variables ***
${var}  1

*** Keywords ***
Sample Keyword
    Log    First automation code with robot   
    
Set Var ${new val}
    Log  Old value: ${var}
    ${var}  Set Variable     ${new val}   
    Log  New value: ${var} 
        
 
*** Test Cases ***
Sample testcase
    Sample Keyword
    Set Var 10
