import {createStackNavigator, createSwitchNavigator, createAppContainer, DrawerNavigator, createDrawerNavigator} from 'react-navigation';

import HomeScreen from './HomeScreen'
import ScanBarcodeScreen from './ScanBarcodeScreen'
import UpdateDataScreen from './UpdateDataScreen'
import LoginScreen from './loginScreen'
import TodoList from './todoList/'
import ImagePreviewScreen from './ImagePreviewScreen'
import InputCode from './InputCode'
import DrawerScreen from './drawerScreen'
import ListScreen from './listScreen';

const ScanBarcodeStack = createStackNavigator({ 
    HomeScreen        : HomeScreen, 
    ScanBarcodeScreen : ScanBarcodeScreen, 
    UpdateDataScreen  : UpdateDataScreen,
    ImagePreviewScreen: ImagePreviewScreen,
    
})
const UpdateDataStack = createStackNavigator({ 
    UpdateDataScreen : UpdateDataScreen 
})


const AppNavigator = createSwitchNavigator(
    {
        HomeScreen       : HomeScreen,
        ScanBarcodeStack : ScanBarcodeStack,
        UpdateDataStack  : UpdateDataStack,
        ListScreen       : ListScreen,
        LoginScreen      : LoginScreen,
        TodoList         : TodoList,
        InputCode        : InputCode,
        DrawerScreen     : DrawerScreen,
        

    },
    {
        initialRouteName: 'LoginScreen'
    }
);

export default AppNavigator