Feature: Game Play
  Background:
    Given a new game

  Scenario: Losing a game
    When I move h2 to h3
    And they move e7 to e6
    And I move f2 to f4
    And they move Qd8 to h4
    Then I should be in check
    And I move g2 to g3
    Then I should not be in check
    And they move Qh4 to g3
    Then they have taken my pawn
    And I should be in check mate
    And the game should be over
