import React, { Component } from 'react'
import { Alert, View, Text, TouchableOpacity, Image, StyleSheet, PermissionsAndroid, AsyncStorage } from 'react-native'
import { CameraKitCameraScreen, } from 'react-native-camera-kit';
import NetInfo from "@react-native-community/netinfo"
import { Icon } from 'native-base'

class HomeScreen extends Component{
    constructor(props){
        super(props)
        this.state = {
            email: '',
            token: null,
            QR_Code_Value : '',
            Start_Scanner : false,
            status        : true,
        }
    }

    static navigationOptions = {
      header: null
    }

    async componentDidMount(){
      var email= this.props.navigation.state.params.email
      const token = await AsyncStorage.getItem('token')
      this.setState({ email: email, token: token})
    
    if (Platform.OS === 'android') {
        async function requestCameraPermission() {
            try {
              const granted = await PermissionsAndroid.request(
                PermissionsAndroid.PERMISSIONS.CAMERA,
                {
                    // 'title': 'Camera App Permission',
                    // 'message': 'Camera App needs access to your camera '
                },
              );
              if (granted === PermissionsAndroid.RESULTS.GRANTED) {
                // console.log('You can use the camera');
              } else {
                // console.log('Camera permission denied');
              }
            } catch (err) {
              console.warn(err);
            }
          }
          requestCameraPermission();
          // console.log( requestCameraPermission())
        }
        NetInfo.isConnected.addEventListener('connectionChange', this.handleConnectionChange);
        NetInfo.isConnected.fetch().done(
          (isConnected) => { this.setState({ status: isConnected }); }
        );
    }

  componentWillUnmount() {
      // network info
      NetInfo.isConnected.removeEventListener('connectionChange', this.handleConnectionChange);
      // end network info
  }

  handleConnectionChange = (isConnected) => {
      this.setState({ status: isConnected });
  }

  connection = () => {
      if (!this.state.status) {
          return <MiniOfflineSign />;
          }
  }
    
  open_QR_Code_Scanner=()=> {
      this.props.navigation.navigate('Scanbarcode')
  }

  open_code=()=> {
    this.props.navigation.navigate('InputCode')
}

  logoutData= async ()=>{
    Alert.alert(
      '',
      'Do you want to logout ? ',
      [
        {text: 'CANCEL', onPress: () => console.log('Cancel Pressed')},
        {text: 'OK', onPress: async  () => {
          
          var token = await AsyncStorage.removeItem('token')
          var token_after = await  AsyncStorage.getItem('token')
          console.log(token_after);
          if(token_after == null){
            this.props.navigation.navigate('LoginScreen')
          }
        }},
      ],
      {cancelable: false},
    );
   
  }

    render(){
        return(
            <View style={styles.container}>
              {this.connection()}
              <View style={styles.viewLogout}>
                <TouchableOpacity style={styles.logout} onPress={this.logoutData.bind(this)}>
                  <Icon name='log-out' style={{ color: '#191970' }}   />
                </TouchableOpacity>
              </View>
              <View style={styles.viewContain}>
                <Image style={styles.image} source={require('../Assets/ui.png')} />
                <View style={styles.textBarcode}>
                  <Text style={styles.text}>QR | Barcode</Text>
                </View>
                <TouchableOpacity style={styles.buttonLogout} onPress={this.open_QR_Code_Scanner}>
                  <Text style={styles.textScan}>Start Scan</Text>
                </TouchableOpacity>
                <View style={{margin: 10}}></View>
                <TouchableOpacity style={styles.buttonLogout} onPress={this.open_code}>
                  <Text style={styles.textScan}>Input CODE</Text>
                </TouchableOpacity>
              </View>
            </View>
        )
    }
}
function MiniOfflineSign() {
  return (
    <View style={styles.viewConnection}>
      <Text style={styles.textConnection}>No Internet Connection</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: { 
    flex: 1, 
    backgroundColor: '#ADD8E6', 
    flexDirection: 'column' 
  },
  viewLogout: { 
    height: '10%', 
    flexDirection: 'row-reverse' 
  },
  logout: { 
    margin: 20, 
    padding: 20, 
    alignItems: 'center', 
    justifyContent: 'center' 
  },
  viewContain: { 
    height: '90%', 
    justifyContent: 'center', 
    alignItems: 'center' 
  },
  image: { 
    height: 150, 
    width: 150 
  },
  textBarcode: { 
    margin: 50 
  },
  text: { 
    color: '#191970', 
    textAlign: 'center' 
  },
  buttonLogout: { 
    padding: 20, 
    backgroundColor: '#FFFFFF', 
    borderRadius: 10,
  },
  textScan: { 
    fontWeight: 'bold', 
    color: '#191970', 
    textAlign: 'center' 
  },
  viewConnection: {
    backgroundColor: '#b52424', 
    height: 30, 
    justifyContent: 'center', 
    alignItems: 'center', 
    flexDirection: 'row', 
    width: '100%', 
    position: 'absolute',
  },
  textConnection: {
    color: '#fff' 
  }
})
export default HomeScreen