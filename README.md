# Orbit’s Async Technical Test

## About GitHub Codespaces

A [GitHub Codespace](https://github.com/features/codespaces) has been configured for you.

If you’re not familiar with GitHub Codespaces, it is essentially a cloud development environment that allows you to browse and edit code with VSCode, and has all the necessary dependencies to run `rails server` and see your changes live on a URL. That way, neither you nor the reviewers should need to tinker with setting up the development environment locally.

## Get started

- On this repository’s homepage, click the Code button and go to the Codespaces tab
- Click New Codespaces and choose “2 Core”
- The codespace creation should take a few minutes (including the `.devcontainer/boot.sh` command)
- Once the codespace has been created and the setup script has run, run `rails server`
- Click on the URL given in the output of the command (ending with `:3000`)
- You should see a page titled “Our Members” with a prepopulated list of members
- You can run tests with `rails test`

Once that’s all good, you should be ready to start the test!
If you encounter an issue at any point during this setup, please ask your Hiring Manager for help.

## Async Technical Test

At Orbit, we have teammates around the world! 🚀 This means we do a lot of our work asynchronously, and we believe the interview process should reflect that and give everyone a chance to try out that workflow.

Below, you'll find a brief description of the requirements for a given project. We're asking you to build a simple web application that meets the requirements below.

The async exercise will take place during a single day that we will agree on together. We'll give you 1-day access to a private Slack channel, where you'll be expected to communicate your progress and ask us questions.

We'll also send you a link to a GitHub repository that you'll clone and submit a pull request when you're done. Orbit engineers will review the pull request like in a real-world scenario.

There's no single right answer we're looking for here; it's an exercise designed to give the team a sense of how you think and communicate about software engineering, both asynchronously and in meetings.

Use your best judgment to complete the project. The most important result is to have a complete solution, not for everything to be perfect.

Please let us know if you have any questions or anything else to discuss before your interview. Looking forward to speaking with you then!

## Logistics

You'll be given access to a private repo that we're expecting you to clone and submit a PR to when you're done with the exercise.

Please let us know:

- the best days for you to have this async technical test,
- the email address we should send the GitHub and Slack invitations to.

**Expected maximum time spent on the async technical test:**

- 4h for coding
- 1h for pull request review

## Requirements

Prototype a web application for tracking community member activities. See the description below for more information.

Don't spend more than 4h on this exercise. We want to see how you're able to make choices and trade-offs to deliver high-quality work in as little time.

Feel free to add any gem or library you may need, but keep things very simple.

Don't worry about not being able to implement all the user stories. Choose the ones that you think are the most important to achieving the overall goal.

Structure your code and your pull request in the best way possible, like in a real development case.

## Description

You're a software engineer at a company called _Galactic_ and your colleague Erin wants to send swag and perks to your most active community members. Your responsibility is to build a web app to identify those VIP supporters.

_Yes, this app is like a mini-Orbit :) Feel free to be inspired by the main Orbit application, but we ask you not to duplicate code or make the same thing. Be creative!_

## User Stories

- As a user, I want to add “Content” to a community member profile. Content can be blog posts, YouTube videos, etc… and is defined by a URL to that content.
- As a user, I want to see multiple activities for a single member. This updated CSV file might help:
  [seeds_multiple_activities.txt](seeds_multiple_activities.txt)
- As a user, I want the default view of the Members page to be sorted by the most active members.
- As a user, I want to filter the activity feed by `action`.

Bonus points if you do one or several of the following:

- As a user, I want to upload the CSV file via a form.
- As a user, on a member profile, I want to add tags to them. Those tags should be shown on their profile as well as the members list.

**Note:**

- You're not expected to do authentication or user accounts.
- Please add a few tests for the functionality you build.
