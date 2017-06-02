Feature: GameScore
	In order to know how well I am doing
	As a player
	I want to be told the current score of my game

@mytag
Scenario: Every ball is a gutter ball
	Given I start a new game
	When I roll all gutter balls
	Then my score should be 0


Scenario: Every ball knocks down 1 pin
	Given I start a new game
	When I roll 20 balls which knock down 1 pin 
	Then my score should be 20


Scenario: Every ball knocks down 2 pins
	Given I start a new game
	When I roll 20 balls which knock down 2 pins
	Then my score should be 40


Scenario: One strike followed by remaing balls knocking down 1 pin
	Given I start a new game
	When I roll a strike
	 And I roll 18 gutter balls
	Then my scode should be 30


Scenario: Every ball is a strike
	Given I start a new game
	When I roll a strike 12 times
	Then my scode should be 300


Scenario: A strike is 10 points plus the value of the next 2 balls
	Given I start a new game
	When I roll a strike
	And I roll a strike
	And I roll a ball which knocks down 2 pins
	Then my score should be 22


Scenario: A strike does not count before next two balls are known
	Given I start a new game
	When I roll a strike
	And I roll a ball which knocks down 7 pins
	Then my score should be 0


Scenario: A spare adds the value of the next ball to the roll
	Given I start a new game
	When I roll a ball which knocks down 3 pins
	 And I roll a ball which knocks down 7 pins
   	 And I roll a ball which knocks down 5 pins
	 And I roll a ball which knocks down 2 pins
	Then my score should be 22


Scenario: A spare does not count before next ball is known
	Given I start a new game
	When I roll a ball which knocks down 3 pins
	 And I roll a ball which knocks down 7 pins
	Then my score should be 3

