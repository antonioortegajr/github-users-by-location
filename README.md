# github-users-by-location
Find and display github users by location search.

## About

This project is to display github users by location search. This will be an MVP. A more production project may be started elsewhere.This is a work in progress meant for anyone looking to do some open source fun.

githubusersbylocation.com

## Use Case

In searching for a local coding community it can be difficult to have an idea of how large that community is. While not 100% github users is a data point.


Example API call:
https://api.github.com/search/users?q=location:Eugene&page=20&per_page=10

## Stack

- Version Control: Github
- Frontend: [svelt](https://svelte.dev/)
- Infrastructure: [teraform](https://www.terraform.io/)
- Cloud : AWS
- CI/CD: [Github Actions](https://docs.github.com/en/actions)

## API

Github api is used for the searching. Docs: https://docs.github.com/en/rest?apiVersion=2022-11-28

Example API call:
https://api.github.com/search/users?q=location:Eugene&page=20&per_page=10


## Local Development

Install the dependencies.

```bash
cd github-users-by-location 
npm install
```

...then start [Rollup](https://rollupjs.org):

```bash
npm run dev
```

Navigate to [localhost:8080](http://localhost:8080). You should see the app running.

```bash
npm run build
```


## On S3

This is deployed to s3 (manually at the moment. Plans to set up CICD in works).

Current S3 link: https://s3.amazonaws.com/www.githubusersbylocation.com/index.html

Live Domain: http://www.githubusersbylocation.com/

## Contributing to this Project

Anyone looking to contribute to this project please read [this doc](/CONTRIBUTING.md)