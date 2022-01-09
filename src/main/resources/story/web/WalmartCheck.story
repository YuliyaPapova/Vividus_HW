Description: HW Walmart;

Scenario: Open create account page
Given I am on a page with the URL 'https://Walmart.com'
When I hover a mouse over an element with the xpath '//a[@link-identifier="Account"]'
When I click on an element by the xpath '//a[@link-identifier="Create an account"]'
Then the page with the URL 'https://www.walmart.com/account/signup?vid=oaoh' is loaded

Scenario: Create account
When I add 'myName' to a field with the name 'firstName'
When I add 'myLastName' to a field with the name 'lastName'
When I add 'myEmail@yandex.ru' to a field with the name 'email'
When I add 'Qwe123456' to a field with the name 'password'
When I click on an element by the xpath '//button[text()="Create account"]'
Then the page with the URL 'https://www.walmart.com/account?action=Create&rm=true' is loaded

Scenario: Search
When I add 'cucumber' to a field by the xpath '//form[@role="search"]//input'
When I click on an element by the xpath '//button[@aria-label="Search icon"]'
Then the page with the URL 'https://www.walmart.com/search?q=cucumber&typeahead=c' is loaded

Scenario: Open product page
When I click on an element by the xpath '//a[@link-identifier="44419690"]'
Then the page with the URL 'https://www.walmart.com/ip/Mini-Cucumber-1lb/44419690' is loaded

Scenario: Add to cart
When I click on an element by the xpath '//div[@data-testid="add-to-cart-section"]//button'
Then a element with the xpath '(//header//div)[last()]//button//span[1]' and text '1' exists

Scenario: Open cart
When I click on an element by the xpath '(//header//div)[last()]//button'
Then the page with the URL 'https://www.walmart.com/ip/Mini-Cucumber-1lb/44419690?step=cart' is loaded