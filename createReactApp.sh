#!/bin/bash
if [ $# -eq 0 ]
	then
		echo "Type the app name first!";
		exit 1;
fi

# Creating app 

APP_NAME=$1
expo init $APP_NAME
cd $APP_NAME

# Creating neccessary directoriese
mkdir $APP_NAME/routes $APP_NAME/components $APP_NAME/pages $APP_NAME/styles $APP_NAME/redux $APP_NAME/redux/actions $APP_NAME/redux/reducers
touch $APP_NAME/routes/Route.js $APP_NAME/styles/Styles.cs $APP_NAME/redux/store.js $APP_NAME/redux/actions/types.js

yarn add @react-navigation/native
expo install react-native-gesture-handler react-native-reanimated react-native-screens
yarn add @react-navigation/stack
yarn add @react-navigation/bottom-tabs
yarn add @react-navigation/drawer
yarn add @react-native-community/masked-view
npm install --save styled-components
yarn add redux@next react-redux@next

git add .
git commit -m "first commit - installed all dependencies."
code .

