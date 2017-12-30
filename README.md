# _Riddles of the Sphinx_

#### _An app that presents two random riddles, 09.12.2017_

#### By _**Margaret Berry and Mark Helt**_

## Description
_Like Oedipus at the gates of Thebes, a user must answer two riddles to enter the city. If either answer is incorrect, the Sphinx will 'eat' the user._

## Project Goals
* _Practice sampling from a hash._
* _Account for varied user inputs._
* _Practice writing user and integration tests._

## Specifications

| Spec              | Input | Output |
|-------------------|-------|--------|
| Returns dead if the answer is incorrect     | Incorrect answer    | Dead!      |
| Returns alive if the answer is correct     | Correct answer    | You live.      |

## Setup/Installation Requirements
_Run the following commands in Terminal:_

1. `$ git clone` [this repository](https://github.com/codemargaret/sphinx.git)
2. `$ cd sphinx`
3. `$ ruby app.rb`
4. _Navigate to localhost:4567 in your preferred browser._

## Known Bugs
* _Does not account for singular vs. plural for all riddles._

## Support and contact details
_If you have questions, comments, or concerns, please contact [Margaret](codeberry1@gmail.com).  Feel free to make a contribution to the code._

## Technologies Used
* _Ruby_
* _Sinatra_

### License
*This software is licensed under the MIT license.*

Copyright (c) 2017 **_Margaret Berry and Mark Helt_**
