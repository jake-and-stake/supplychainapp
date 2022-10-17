# Supply Chain Project

This is a toy project that allows users to create new items on the blockchain. The project consists of a few parts:
- Front end web application
- Smart contracts
- Test files

The `ItemManager.sol` is deployed to a network and users can send transactions to it to create a new item.
In doing so, the a new item contract is deployed and set at a stage in its supply chain journey: "Created".

## Installation

First ensure you are in a new and empty directory.

1. Download the repository in an empty directory.

2. You can also install Truffle globally.
    ```javascript
    npm install -g truffle
    ```

3. Run the development console.
    ```javascript
    truffle develop
    ```

4. Compile and migrate the smart contracts. Note inside the development console we don't preface commands with `truffle`.
    ```javascript
    migrate
    ```

5. In the `client` directory, we run the React app. Smart contract changes must be manually recompiled and migrated.
    ```javascript
    // in another terminal (i.e. not in the truffle develop prompt)
    cd client
    npm run start
    ```

6. Truffle can run tests written in Solidity or JavaScript against your smart contracts. Note the command varies slightly if you're in or outside of the development console.
    ```javascript
    // inside the development console.
    test

    // outside the development console..
    truffle test
    ```

7. Jest is included for testing React components. Compile your contracts before running Jest, or you may receive some file not found errors.
    ```javascript
    // ensure you are inside the client directory when running this
    npm run test
    ```

8. To build the application for production, use the build script. A production build will be in the `client/build` folder.
    ```javascript
    // ensure you are inside the client directory when running this
    npm run build
    ```
