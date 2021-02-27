Feature: User posts tweets

  Scenario: user who does not follow anyone does not see tweets
    Given Alice doesn't follow anyone
    When Alive retrieves the feed
    Then Alice sees an empty list of tweets

  Scenario: users see tweets of people they follow
    Given Alice follows Bob
    When Alive retrieves the feed
    Then Alice sees Bob's tweets