# typescript-contained

Goals:

1. TypeScript => JavaScript => Docker container running Hapi.js server
1. docker-compose service watching TS files for changes, recompile -> docker-compose service watching JS files for changes, restart server
  1. Bonus: Server exposes debug port for VS Code to attach to

Progress:

- [x] Docker-based compilation pipeline
- [x] Watching for changes (local development support)
- [ ] Debug with VS Code
- [ ] Multi-step build pipeline? (Apply Node.js/Docker production suggestions)

# Caveats

> Remember: The container and your local file system are linked through the
> `docker-compose.yml` configuration.

If you need to execute an `npm` command like `npm install`, do so with
`docker-compose run`. This will make sure the package is installed within the
context of the operating system and Node/`npm` version the container uses.

#### Example: Installing a new dependency

```
docker-compose run --rm <service> npm install --save <package>
```
