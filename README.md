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


## API

Github api is used for the searching

Example API call:
https://api.github.com/search/users?q=location:Eugene,%20Oregon&page=20&per_page=10

Sample Retrun: 
`{
  "total_count": 191,
  "incomplete_results": false,
  "items": [
      {
      "login": "antonioortegajr",
      "id": 6744175,
      "node_id": "MDQ6VXNlcjY3NDQxNzU=",
      "avatar_url": "https://avatars.githubusercontent.com/u/6744175?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/antonioortegajr",
      "html_url": "https://github.com/antonioortegajr",
      "followers_url": "https://api.github.com/users/antonioortegajr/followers",
      "following_url": "https://api.github.com/users/antonioortegajr/following{/other_user}",
      "gists_url": "https://api.github.com/users/antonioortegajr/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/antonioortegajr/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/antonioortegajr/subscriptions",
      "organizations_url": "https://api.github.com/users/antonioortegajr/orgs",
      "repos_url": "https://api.github.com/users/antonioortegajr/repos",
      "events_url": "https://api.github.com/users/antonioortegajr/events{/privacy}",
      "received_events_url": "https://api.github.com/users/antonioortegajr/received_events",
      "type": "User",
      "site_admin": false,
      "score": 1.0
    },
       {
      "login": "antonioortegajr",
      "id": 6744175,
      "node_id": "MDQ6VXNlcjY3NDQxNzU=",
      "avatar_url": "https://avatars.githubusercontent.com/u/6744175?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/antonioortegajr",
      "html_url": "https://github.com/antonioortegajr",
      "followers_url": "https://api.github.com/users/antonioortegajr/followers",
      "following_url": "https://api.github.com/users/antonioortegajr/following{/other_user}",
      "gists_url": "https://api.github.com/users/antonioortegajr/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/antonioortegajr/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/antonioortegajr/subscriptions",
      "organizations_url": "https://api.github.com/users/antonioortegajr/orgs",
      "repos_url": "https://api.github.com/users/antonioortegajr/repos",
      "events_url": "https://api.github.com/users/antonioortegajr/events{/privacy}",
      "received_events_url": "https://api.github.com/users/antonioortegajr/received_events",
      "type": "User",
      "site_admin": false,
      "score": 1.0
    },
  ]
}
