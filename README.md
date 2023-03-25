# github-users-by-location
Find and display github users by location search

## About

This project is to display github users by location search. This will be an MVP. A more production project may be started elsewhere.

githubusersbylocation.com

## Use Case

In searching for a local coding community it can be difficult to have an idea of how large that community is. While not 100% github users is a data point.


Example API call:
https://api.github.com/search/users?q=location:Eugene,%20Oregon&page=20&per_page=10

## Stack

- Version Control: Github
- Frontend: svelt
- Infrastructure: teraform
- Cloud : AWS
- CI/CD: Github Actions


## API

Github api is used for the searching

Example API call:
https://api.github.com/search/users?q=location:Eugene&page=20&per_page=10


## Local Development

Install the dependencies...

```bash
cd svelte-app
npm install
```

...then start [Rollup](https://rollupjs.org):

```bash
npm run dev
```

Navigate to [localhost:8080](http://localhost:8080). You should see your app running. Edit a component file in `src`, save it, and reload the page to see your changes.
