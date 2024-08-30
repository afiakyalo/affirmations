# Affirmations

## Description

Affirmations is a small Ruby project aimed at bringing joy and some confidence to any user
 - When loaded, the user sees a single affirmation
 - Refreshing the page displays another affirmation

## Table of Contents
- [Getting Set Up](#getting-set-up)
- [Must Haves To Do list](#must-haves-to-do-list)
- [Deployment](#deployment)

## Getting Set Up
1. Clone repo: `git clone https://github.com/afiakyalo/affirmations.git`

2. The application is running on   `rails  >= 7.2.1` and `ruby 3.3.4`.

3. Instal ruby gems by running `bundle install`. Possible issues to look out for: 
 - **pg** - May require individual installation with additional arguments, see the following reference for more details: [Reference](https://michaelrigart.be/install-pg-ruby-gem-without-postgresql/). If you installed postgres via brew, try `gem install pg -- --with-pg-config=/usr/local/Cellar/postgresql@12/12.4_1/bin/pg_config`.

4. Build postgres db: `bundle exec rails db:create db:migrate`
5. Seed dbs: `bundle exec rails db:seed`
6. In the main prism directory, run the rails server: `bundle exec rails s` and go to `localhost:3000`. 


## Must Haves To Do list
- Fix next affirmation dynamic loading by clicking anywhere on the page. Option to use React here. 
- Add tests
- Deploy to Heroku
- Document on Readme
- Use Bootstrap/MUI for CSS 
- Cleanup code

Nice-to-haves:
- Centered affirmation with static image on half of page
- Optimize for different screen sizes

