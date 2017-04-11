*** Settings ***
Library    Selenium2Library

*** Test Cases ***
poczta
  Open Browser   ${EMPTY}   ff
  Go to   https://www.wp.pl
  Sleep    10
  Click Element    css=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM
  Sleep    10
  Log correct
  Page should contain    Odebrane

  Close All Browsers

wrong user
  Open Browser   ${EMPTY}   ff
  Go to   https://www.wp.pl
  Sleep    10
  Click Element    css=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM
  Log with wrong user
  Page should contain    Niestety podany login lub hasło jest błędne
  Close All Browsers

wrong passw
  Open Browser   ${EMPTY}   ff
  Go to   https://www.wp.pl
  Sleep    10
  Click Element    css=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM
  Log with wrong password
  Page should contain    Niestety podany login lub hasło jest błędne
  Close All Browsers

*** Keywords ***
Log correct
  Input Text     id=login    testerwsb_t1\n
  Input Text    id=password   adam1234\n

Log with wrong password
  Input Text     id=login    testerwsb_t1\n
  Input Text    id=password   adam1224\n

Log with wrong user
  Input Text     id=login    testerwsb_t2\n
  Input Text    id=password   adam1234\n
