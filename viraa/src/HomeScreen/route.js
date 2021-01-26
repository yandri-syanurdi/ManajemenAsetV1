import React, {Component} from 'react'
import { createStackNavigator } from "react-navigation";
import Index from './index'
import Scanbarcode from '../ScanBarcodeScreen/index'
import InputCode from '../InputCode/index'
import UpdateDataScreen from '../UpdateDataScreen/index'
import ListScreen from '../listScreen';

const Route= createStackNavigator({
    Index: Index,
    Scanbarcode: Scanbarcode,
    InputCode: InputCode,
    UpdateDataScreen : UpdateDataScreen,
    ListScreen : ListScreen,
})

export default Route;