Feature: user can fire at a board
  In order to play a basic game
  As a player
  I want to fire at a board

  Scenario: I can fire
    Given I am in homepage
    When I enter coordinates
    And I click the "Fire" button
    Then I see "hit"