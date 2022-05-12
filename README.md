# stakedao_fullstack
This is a first attempt at full Stack, non-copied web3 development using Solidity, JavaScript (Nodejs, Web3js), Reactjs, Ganache, Truffle etc. StakeDAO simply does simple ERC-20 operations.
A user will have to spin up the local development blockchain developed by Ganache
In the command line, go into the file downloaded. Then, run the command 'npm start' (or use yarn as the case may be).
Open up another terminal and run the command 'npm run server' (This is responsible for running MOCK JSON server) where private Keys are stored.
Optional: You can also open another terminal and run the command 'npm run servers' (This is responsible for running the MOCK JSON server- local json file) where input e-mails are stored. Note: these entered e-mails are stored in the file 'emails.json' present in the 'public' folder of app.
When the site is loaded, you can use this private Key '09d46000c025249b9e7e67fc84067a6d9b77c985f589cd1732879d88fbcdb7b7' or '0x09d46000c025249b9e7e67fc84067a6d9b77c985f589cd1732879d88fbcdb7b7' (both will work fine) to log in as the admin.
However, to login as a user, you can use any other Ethereum private Key
# Note: Do not use the private key of any account that has funds in it, or you intend using in future
Currently, within the contract address '0x09c015babc742e2f18fea28061f5050859970759', there are only 900000 STK tokens because 100k was reserved, should in case original funds got drained.
To make things easier, here are 2 private keys from Ganache, that can be used to login to the user page of the local website 'cd2b7df69056b3ddeea4da7dc57f6c78520dbcdca36f669354ddf722b689b4db, a8f3c485cc149f42abe78237b89521eda69cb495092c4b687f8a351636eae9a7', with their corresponding Eth addresses as '0x3295c3cea69197ee13222556A67082a5F7093dEd, 0x4852b8F4917Ec026Cc84c046A3432D8A303E41d7' respectively. These private keys are used to login.
# Note: This is purely for testing purpose and to demonstrate my web3 skills, and should not be used for any other thing. Also, this may be only understood by blockchain developers, developers (frontend and backend) or persons with experience coding. Newer versions wil be released where more persons can easily interact with the dAPP.
Reach out to me on twitter- @mic_lasborne, or email: okeke.michael1000@gmail.com, discord- lasborne#3065 for feedback. Negative criticism, corrections are welcome!
