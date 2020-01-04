
Feature: User can create articles
  As a publisher
  In order to add relevant content to my news service
  I would like to be able to create articles

  Background:
    Given the following user exist:
      | email         | password |
      | user@mail.com | password |

  Scenario: User can succesfully create an article
    Given I am logged in as "user@mail.com"
    And I am on the signed in page
    And I click on "New Article"
    And I fill in "Title" with "Happy holidays"
    And I fill in "Content" with "Buy your gifts now!"
    And I click on "Create Article"
    Then I should be on the "Happy holidays" page
    And I should see "Article was succesfully created."
    And I should see "Happy holidays"
    And I should see "Buy your gifts now!"

  Scenario: Visitor can not create an article [sad path]
    When I am on the landing page
    Then I should not see "New Article"