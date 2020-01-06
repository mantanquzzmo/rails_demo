Feature: User can create articles
  As a publisher
  In order to keep the content up to date
  I would like to be able to edit articles

  Background:
    Given the following user exist:
      | email         | password |
      | user@mail.com | password |

    Given the following articles exist:
      | title                | content              |
      | A breaking news item | Some breaking action |

    And I am on the landing page

  Scenario: User can edit an article
    Given I am logged in as "user@mail.com"
    And I click on "A breaking news item"
    And I click on "Edit article"
    And I fill in "Title" with "Zlatan returns"
    And I fill in "Content" with "And scores a goal"
    And I click on "Update article"
    Then I should see "Article updated"
    And I should see "Zlatan returns"
    And I should see "And scores a goal"