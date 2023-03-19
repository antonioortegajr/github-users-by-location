# github-users-by-location
Find and display github users by location search

## About

This project is to display github users by location search. This will be an MVP. A more production project may be started elsewhere.

## Use Case

In seaching for a local coding community it can be difficult to have an idea of how large that community is. While not 100% github users is a data point.


Example API call:
https://api.github.com/search/users?q=location:Eugene,%20Oregon&page=20&per_page=10

## Stack

- Version Control: Github
- Frontend: svelt
- Infrastructure: teraform
- Cloud : AWS
  - Lambda
  - S3
  - Cloud Watch
- CI/CD: Github Actions
