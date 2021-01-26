import React, { Component } from 'react';
import {Alert, StyleSheet, View, TouchableOpacity, Text, Image, TextInput, PermissionsAndroid, AsyncStorage} from 'react-native';

class loginScreen extends Component {
    constructor(props){
        super(props)
        this.state = {
            email : '',
            password : ''
        }
    }

    static navigationOptions = {
        header: null
      }

    componentDidMount() {
        if (Platform.OS === 'android') {
            async function requestCameraPermission() {
            try {
              const granted = await PermissionsAndroid.request(
                PermissionsAndroid.PERMISSIONS.WRITE_EXTERNAL_STORAGE,
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
        }
    }

    loginData = async () =>{
        if(this.state.email == ''){
            Alert.alert(
            '',
                'Email or username not empty !',
                [
                    {text: 'OK', onPress: () => console.log('OK Pressed')},
                ],
                {cancelable: false},
            );
            return
        }
        if(this.state.password == ''){
            Alert.alert(
            '',
                'Password not empty !',
                [
                    {text: 'OK', onPress: () => console.log('OK Pressed')},
                ],
                {cancelable: false},
            );
            return
        }
        var data = new FormData();
        data.append("email", this.state.email);
        data.append("password", this.state.password);
        
        await fetch('http://192.168.1.2:8000/' + 'api/login', {
        method: 'POST',
        body:data,
        })
        .then((response) => response.json())
        .then((responseJson) => {
            let data = responseJson;
            if(data.status == true)
            {
                // username atau password betul
                AsyncStorage.setItem('token', data.data.api_token);
                AsyncStorage.setItem('id', data.data.id);
                AsyncStorage.setItem('name', data.data.name);
                AsyncStorage.setItem('email', data.data.email);
                this.props.navigation.navigate('DrawerScreen', { email: data.data.email })
            }
            else
            {
                // username atau password salah
                Alert.alert(
                    '',
                    'Username and password not valid !',
                    [
                      {text: 'OK', onPress: () => console.log('OK Pressed')},
                    ],
                    {cancelable: false},
                ); 
            }
        })
        .catch((error) => {
            Alert.alert(
                'Error',
                'Terjadi kesalahan saat pengecekan login!' + error.toString(),
                [
                  {text: 'OK', onPress: () => console.log('OK Pressed')},
                ],
                {cancelable: false},
            ); 
            console.error(error);
        });
    }

    render(){
        return(
            <View style={styles.container}>
                <View style={styles.viewImage}>
                    <Image source={require('../../images/ti.png')} style={styles.image} />
                </View>
                <View style={styles.viewLogin}>
                    <Text style={styles.textSignin}>SIGN IN</Text>
                    <TextInput 
                        onChangeText={(email) => this.setState({ email })}
                        value = {this.state.email}
                        style={styles.textInputEmail} 
                        placeholderTextColor="#191970" 
                        placeholder="Email"
                    />
                    <TextInput 
                        onChangeText={(password) => this.setState({ password })}
                        value = {this.state.password}
                        secureTextEntry={true}
                        style={styles.textInputPassword} 
                        placeholderTextColor="#191970" 
                        placeholder="Password"
                    />
                    <TouchableOpacity onPress={this.loginData.bind(this)} style={styles.buttonLogin}>
                        <Text style={styles.colorWhite}>Login</Text>
                    </TouchableOpacity>
                </View>
            </View>
        );
    }
  }

  const styles = StyleSheet.create({
    container: { 
        flex: 1, 
        // backgroundColor: '#FFFFFF',
        // backgroundColor: '#ff9933',
        backgroundColor: '#ADD8E6',
        flexDirection: 'column', 
    },
    viewImage: { 
        height: '40%', 
        justifyContent: 'center', 
        alignItems: 'center' 
    },
    image: { 
        height: 175, 
        width: 120
    },
    viewLogin: { 
        height: '60%', 
        backgroundColor: '#ADD8E6', 
        // borderTopLeftRadius: 125, 
        borderTopRightRadius: 120,
        justifyContent: 'space-between', 
    },
    textSignin: { 
        textAlign: 'center', 
        marginTop: 20, 
        color: '#191970', 
        fontWeight: 'bold', 
        fontSize: 15 
    },
    textInputEmail: { 
        borderBottomWidth: 1,
        borderBottomColor: '#191970',
        marginRight: 20, marginLeft: 20,
        // marginTop: 20,
        color: '#191970'
    },
    textInputPassword: { 
        borderBottomWidth: 1,
        borderBottomColor: '#191970',
        marginRight: 20, 
        marginLeft: 20,
        // marginTop: 20,
        color: '#191970'
    },
    buttonLogin: { 
        margin: 30, 
        borderRadius: 10, 
        borderBottomWidth:1, 
        borderTopWidth: 1, 
        borderLeftWidth: 1, 
        borderRightWidth: 1, 
        borderColor: '#191970', 
        marginBottom: 50, 
        padding: 20, 
        marginLeft: 20, 
        marginRight: 20, 
        justifyContent: 'center', 
        alignItems: 'center' 
    },
    colorWhite: { 
        color: '#191970' 
    },
  })
  export default loginScreen

