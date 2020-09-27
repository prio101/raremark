# Raremark Assignment

- Change the `config` over the `database.yml`
- Use rails credentials to change the username and password for the postgresql.
  example: `EDITOR=vim rails credentials:edit`

- Run `rails db:create`
- Run `rails db:migrate`
- Run `rails db:seed`  

**Seeder files are chunked in different files**

- Run `rails dev:cache` to begin the caching.
**The first run of the pages needs to cache the fragments, so it will take some time at first time**

- Run `rails server`
