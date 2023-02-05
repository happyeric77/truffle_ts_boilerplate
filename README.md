###### tags: `EVM` `TRUFFLE` `TYPESCRIPT`

# Create a simple blockchain project by truffle + typescript

![](https://i.imgur.com/sZMhbU4.png)

This project is inspired from [Typechain truffle-v5 example](https://github.com/dethcrypto/TypeChain/tree/master/examples/truffle-v5).

Debugging EVM solidity project is always a pain when writing "JS" test script.
The video [here](https://youtu.be/NbFq0hvNpGA) is to guid you through how to use Turrfle framework with typescript.

- [source code](https://github.com/happyeric77/truffle_ts_boilerplate)
- [video](https://youtu.be/NbFq0hvNpGA)
- [hackMD](https://hackmd.io/@happyeric77/SJuBrA33j)

Just clone the boilderplate and `yarn install` the dependancy. And we are ready to go.

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
