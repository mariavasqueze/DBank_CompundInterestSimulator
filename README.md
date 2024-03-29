# dbank
## Compund Interest Simulator

This is a simple project to understand how to work with Motoko. The application let's you input values to add or withraw as if it was an online wallet. But the money you add is compunded, in this case very very fast so you can see the difference and test the app quickly. 

Frontend is HTML, CSS, and JS. 


## Some Instructions:

If you want to start working on your project right away, you might want to try the following commands:

```bash
cd dbank/
dfx help
dfx config --help
```

## Running the project locally:

If you want to test your project locally, you can use the following commands:

```bash
# Starts the replica, running in the background
dfx start --background

# Deploys your canisters to the replica and generates your candid interface
dfx deploy
```

Once the job completes, your application will be available at `http://localhost:8000?canisterId={asset_canister_id}`.

Additionally, if you are making frontend changes, you can start a development server with

```bash
npm start
```

Which will start a server at `http://localhost:8080`, proxying API requests to the replica at port 8000.
