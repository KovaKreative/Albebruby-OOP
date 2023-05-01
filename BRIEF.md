## Task 1: List of Classes
Player, Question, Game

## Task 2:
- The Player class will keept track of the player and their lives. It will hold the player name (or number) and the amount of lives/points they have left. In order to be initialized, the player will have to enter their name, and if the name is blank, it will be automatically made "Player 1", "Player 2", etc.
  - Property 1: Name or designated number. (add attribute reader / writer)
  - Property 2: Number of lives.
  - Method 1: remove a life from the player. (Can be a class method, not an instance method).

- The Question class will house the math question data. Its instance variables will include the number range, and it will have a series of methods for each type of math problem that will be given and the answer. Each instance of the Question will randomize its properties and its methods will present the player with a unique, randomly generated math problem.
  - Constant 1: number range
  - Property 1: Stringified question (add attribute reader)
  - Property 2: Answer (add attribute reader)
  - Method 1: Generate a random question. This method will choose either +, -, *, or / and random numbers and will generate a stringified question that it will store in property 1. It will then calculate its own question and store the answer in property 2.

- The Game class will be in charge of managing the game itself. It will be solely responsible for user I/O.
  - Property 1: Players []
  - Property 2: Current turn. Starts at 0, and will increment constantly and use total (players % current turn) to determine whose turn it is.
  - Property 3: Current math question = instance of question class
  - Property 4: Player's current answer
  - Method 1: Instantiates the game. It will ask each player their name, and store the player instances in an array.
  - Method 2: Toggle turn. This method will cycle turns. 
  - Method 3: Generate new math question and store it as own property.
  - Method 4: Retrieve the stringified math question and display it for the player. Prompt the player for the answer.
  - Method 5: Take in the user's answer and retrieve the question's answer, compare them.
  - Method 6: Trigger a player's remove life method for answering incorrectly. 
  - Method 7: Check if one of the players have 0 lives and if so, present the victory screen for the other player.