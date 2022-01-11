Description: HW Trello1;

Scenario: Open create account page
Given I am on the main application page
When I click on an element by the xpath '//a[text()="Log in"]'
Then the page with the URL 'https://trello.com/login' is loaded
When I add 'gugen17@gmail.com' to a field by the xpath '//input[@id="user"]'
When I click on an element by the xpath '//input[@id="login"]'
When I add 'xz00792ld' to a field by the xpath '//input[@id="password"]'
When I click on an element by the xpath '//button[@id="login-submit"]'
Then the host of the page URL is 'id.atlassian.com'

Scenario: test API for Trello Board creation
Given request body: {}
When I issue a HTTP POST request for a resource with the URL '${createBoardApi}${tokens}&name=NewBoard#{generate(regexify '-[a-z]{2}[0-9]{2}')}'
Then the response code is equal to '200'




