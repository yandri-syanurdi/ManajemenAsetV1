/**
 * @format
 */

import { AppRegistry, YellowBox} from 'react-native';
import App from './App';
import {name as appName} from './app.json';

YellowBox.ignoreWarnings(['Remote debugger'])

console.disableYellowBox = true;

AppRegistry.registerComponent(appName, () => App);
