Feature: Developer creates post

  Scenario: Happy path
    Given I am a signed in developer
    And a tag exists
    When I click create TIL
    Then I see a form for TIL
    When I enter information into that form
    And I select a tag
    And I click create
    Then I see the homepage
    And I see the post I created
    And I see the tag I selected

  Scenario: Happy path with markdown headers
    Given I am a signed in developer
    And a tag exists
    When I click create TIL
    Then I see a form for TIL
    When I enter information with markdown headers into that form
    And I select a tag
    And I click create
    Then I see the homepage
    And I see the markdown headers I created

  Scenario: Happy path with markdown inline code
    Given I am a signed in developer
    And a tag exists
    When I click create TIL
    Then I see a form for TIL
    When I enter information with markdown inline code into that form
    And I select a tag
    And I click create
    Then I see the homepage
    And I see the markdown inline code I created

  Scenario: Happy path with markdown bullets
    Given I am a signed in developer
    And a tag exists
    When I click create TIL
    Then I see a form for TIL
    When I enter information with markdown bullets into that form
    And I select a tag
    And I click create
    Then I see the homepage
    And I see the markdown bullets I created

  Scenario: No post body
    Given I am a signed in developer
    When I click create TIL
    Then I see a form for TIL
    When I click create
    Then I see an error message "Body can't be blank"

  Scenario: Post body too long
    Given I am a signed in developer
    When I click create TIL
    Then I see a form for TIL
    When I enter a long body into that form
    And I select no tag
    When I click create
    Then I see an error message "Body is too long"

  Scenario: No tag
    Given I am a signed in developer
    When I click create TIL
    Then I see a form for TIL
    When I enter information into that form
    And I click create
    Then I see an error message "Tag can't be blank"

