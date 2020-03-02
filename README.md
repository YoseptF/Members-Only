# _Members Only_

> ON this project we made an application where you can post things if you are part of the club (_verified with your loggin information_), then members can see both, what was posted and by whom, but if you're not part of the clubhouse, you can only wonder with the comments.

![image](https://i.imgur.com/y5GNPEY.png)

![image](https://i.imgur.com/yH5r1qR.png)

## Models

- User:
  - Has and unique _username_, unique _email_ and a _password_ created by a password and a confirmation (thanks to the **bcrypt** gem)

  - Is able to post comments
  - Is able to create posts 
- Post
  - Has a title
  - Has content
  - Has many comments
- Comment
  - Belongs to a user, and also to a Post, where it was... well posted.

### How to use

You can try the models yoursel by:

- Cloning the repo:
  ```
  $ git clone git@github.com:YoseptF/micro-reddit.git
  ```
- Checkout to the correct branch (this depends on what are you testing, exp: develop, feature/_your desired feature_, etc.):
  ```
  $ git checkout _your desired branch_
  ```
- bundle the necesary gems
  ```
  $ bundle
  ```
- yarn the necesary packages
  ```
  $ yarn install --check-files
  ```
- Run your tests on the console
  ```
  $ rails c
  ```
## Built With

- Ruby
- Ruby on Rails

- bcrypt (gem)
- A bunch on gems used inside rails itself

## Authors

👤 **Joseph Flores**
- Github: [@YoseptF](https://github.com/YoseptF)
- Twitter: [@Yosept__](https://twitter.com/Yosept__)
- Linkedin: [Joseph Flores](https://www.linkedin.com/in/joseph-flores-928505106/)

👤 **Alfredo C.**
- Github: [@NewIncome](https://github.com/NewIncome)
- Twitter: [@J_A_fredo](https://twitter.com/J_A_fredo)
- Linkedin: [Alfredo C.](https://www.linkedin.com/in/alfredo-cardenas-62b021183 )