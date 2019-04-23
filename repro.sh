#!/bin/bash

git clone https://github.com/p-sam/electron-prompt.git

(
  cd electron-prompt
  git checkout v1.3.0
  npm install babel-preset-{react,env}
  yarn link
)

electron-forge init --template=vue repro-project
cp -t repro-project/src repro.js index.html
cd repro-project

# use the npm-provided package
yarn add electron-prompt
yarn start

# now try with the link'd version
yarn link electron-prompt
yarn start

echo Remember to run \'yarn unlink\' from the electron-prompt folder\!