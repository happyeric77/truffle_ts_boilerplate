# Truffle + Typescript boilerplate

For more detail, check out the tutorial [here](https://youtu.be/NbFq0hvNpGA)

## pre-requisition

1. Install npm dependencies:

```sh
yarn install
```

2. Generate types:

Typechain generate transpiled associated files

```sh
yarn typecheck
```

3. Run local EVM on localhost

```sh
ganache-cli
```

4. Execute test script

```sh
truffle test
```

5. Exectue migration script

```sh
yarn migrate
```

6. Delete all auto generated transpiled files/folders (migrations/ test/ types/ build)

```sh
yarn clean
```
