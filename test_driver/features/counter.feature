Feature: Increment Counter

  Scenario: Counter increases when the button is pressed
    Given the "counter" starts at "0"
    When I tap the "Increment" button 10 times
    Then I expect the "counter" to be "10"