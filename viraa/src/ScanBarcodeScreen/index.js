import React, { Component } from 'react'
import { View, Text,  StyleSheet, Platform, TouchableOpacity, Linking, PermissionsAndroid, AsyncStorage, ActivityIndicator, StatusBar, Alert } from 'react-native'
import { CameraKitCameraScreen, } from 'react-native-camera-kit';
import Axios from 'axios' 

class ScanBarcodeScreen extends Component {
    constructor(props) {
        super(props)
        this.state = {
            QR_Code_Value: '',
            Start_Scanner: true,
            loading: false,
            getData: '',
            id: '',
            condition: '',
            description: '',
            history: []
        };
    }

    static navigationOptions = {
        header: null
    }


    _fetchItem = async (event) => {
        this.setState({ isLoading: true, QR_Code_Value: event });
        console.log('event', event)

        const token = await AsyncStorage.getItem('token')
        const myHeaders = new Headers({
            'Authorization': 'Bearer ' + token
        });
        const apiCall = await fetch('http://scb.asclar.tech/api/stock_condition_item_api/' + event, {
            method: 'GET',
            headers: myHeaders,
        })
        const getData = await apiCall.json();
        if (event != '') {
            this.setState({ isLoading: false, Start_Scanner: false })
            if (getData.data == 'No Data Found') {
                alert('No Data Found')
                this.props.navigation.goBack();
            } else {
                this.setState({
                    id: getData.data.id,
                    condition: getData.data.condition,
                    description: getData.data.description,
                    history: getData.history,
                    far: getData.far
                })
                
                this.Navigate()
            }
        }
    }

    Navigate = () => {
        this.props.navigation.navigate('UpdateDataScreen', {
            QR_Code_Value: this.state.QR_Code_Value,
            id: this.state.id,
            condition: this.state.condition,
            description: this.state.description,
            history: this.state.history,
            far: this.state.far
        })
    }

    handleInput = (kode) => {
        let kode_aset = kode
        console.log('KODE SCANE', kode_aset)
        Axios.get('http://192.168.1.2:8000/api/aset/' + kode_aset).then(result => {
            if (JSON.stringify(result.data) == '{}') return Alert.alert(
                'Message',
                'Data '+kode_aset+' tidak ditemukan',
                [
                    { text: 'OK', onPress: () => console.log('OK Pressed') },
                ],
                { cancelable: false },
            );
            this.props.navigation.navigate('UpdateDataScreen', result.data)
        }).catch(err => {
            console.log(err)
        })
    }

    render() {
        if (this.state.isLoading == true) {
            return (
                <View style={{ backgroundColor: '#00000099', position: 'absolute', top: 0, left: 0, right: 0, bottom: 0, justifyContent: 'center', alignItems: 'center' }}>
                    <View style={{ borderRadius: 10, backgroundColor: 'white', paddingTop: 15, paddingBottom: 15, paddingLeft: 20, paddingRight: 20 }}>
                        <Text style={{ fontSize: 16, fontFamily: 'Roboto-Regular', marginBottom: 5 }}>Loading</Text>
                        <ActivityIndicator size="large" />
                    </View>
                </View>
            )
        }
        return (
            <View style={{ flex: 1 }}>
                <CameraKitCameraScreen
                    showFrame={true}
                    scanBarcode={true}
                    laserColor={'#FF3D00'}
                    frameColor={'#00C853'}
                    colorForScannerFrame={'black'}
                    onReadCode={event => {
                            // this.setState({ QR_Code_Value: event })
                            // this._fetchItem(event.nativeEvent.codeStringValue)
                            // this._fetchItem(event.nativeEvent.codeStringValue)
                        this.handleInput(event.nativeEvent.codeStringValue)
                        }
    
                    }
                />
            </View>
        )
    }
}

export default ScanBarcodeScreen