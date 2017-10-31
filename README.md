# README

AskWise is a question-and-answer platform intended for teams. This tool is
intended to serve three purposes:  

__The current build of Askwise is going through architectural adjustments, as the application is being adjusted for multi-tenant support. You may experience issues with deployment in the meantime.__

* Determine which questions are getting asked the most within a company or
organization
* Provide materials to build a knowledge base, using these frequently-asked
questions.
* Make it easy for team members to retrieve obscure information.

AskWise is currently alpha software, provided as-is.

## Features
* __User Profiles__ - See questions and answers provided by any user.
* __Departments__ - Users in a team can be assigned to specific departments, so
that you can know which departments are asking certain types of questions.
* __Tagging__ - Questions can be tagged with a given topic, and questions can
be searched by their related tags. This keeps similar topics in the same place.
* __Sentry Integration__ - Basic integration with [the open source error tracking platform](https://sentry.io/welcome/). Handy
for self-hosters and developers looking to extend Askwise.

## Future Roadmap
* __Search__ - All questions should be searchable. As a bonus, you should be
able to search for Questions, Users, and Departments
* __Voting__ - Allow your team to agree on which answer is the best one.
* __Admin Dashboard__ - For managing configuration.
* __Slack Integration__ - Dedicate a Slack channel to asking questions, and a bot
will search the knowledge base and provide an answer. If a question hasn't been
asked yet, it will give users the chance to create one.
* __Analytics__ - Gain insight into which departments are asking about a given
subject, with stats on how frequently questions are asked.
