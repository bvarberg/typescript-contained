# typescript-contained

## Goals

- [x] TypeScript => JavaScript => Docker container running Hapi.js server
- [x] Watch for code changes, recompile, restart server
- [x] Attach a VS Code debugger to the running container, so we can inspect as it runs

## Value

- Shared development environment for all developers
- Portable product (container) can be run on any platform that supports Docker

## Caveats

> Remember: The container and your local file system are linked through the
> `docker-compose.yml` configuration.

If you need to execute an `npm` command like `npm install`, do so with
`docker-compose run`. This will make sure the package is installed within the
context of the operating system and Node/`npm` version the container uses.

#### Example: Installing a new dependency

```
docker-compose run --rm <service> npm install --save <package>
```
