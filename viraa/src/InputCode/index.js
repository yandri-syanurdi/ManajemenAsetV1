import React, { Component } from 'react';
import { Text, TextInput, StyleSheet, View, TouchableOpacity, Image, PermissionsAndroid, AsyncStorage, Alert} from 'react-native';
import Axios from 'axios'
class InputCode extends Component {
  constructor(props) {
    super(props);
    this.state = {code: '',
    loading: false,
    getData: '',
    id: '',
    condition: '',
    description: '',
    history: []};
  }

  static navigationOptions = {
    header: null
  }
  
inputData = async () =>{
    if(this.state.code == ''){
        Alert.alert(
        '',
            'Code not empty !',
            [
                {text: 'OK', onPress: () => console.log('OK Pressed')},
            ],
            {cancelable: false},
        );
        return
    }

    const token = await AsyncStorage.getItem('token')
    const myHeaders = new Headers({
        'Authorization': 'Bearer ' + token
    });
    const apiCall = await fetch('http://scb.asclar.tech/api/stock_condition_item_api/' + this.state.code, {
        method: 'GET',
        headers: myHeaders,
    })
    
    const getData = await apiCall.json();
    console.log(getData);
    if (this.state.code != '') {
      this.setState({ isLoading: false })
      if (getData.data == 'No Data Found') {
          alert('No Data Found')
      } else {
          this.setState({
              id: getData.data.id,
              condition: getData.data.condition,
              description: getData.data.description,
              history: getData.history,
              far: getData.far
          })
        //   this.Navigate()
        this.props.navigation.navigate('UpdateDataScreen', {
            QR_Code_Value: this.state.code,
            id: this.state.id,
            condition: this.state.condition,
            description: this.state.description,
            history: this.state.history,
            far: this.state.far
        })
      }
  }


Navigate = () => {

}

    // var data = new FormData();
    // data.append("code", this.state.code);
    
    
    // await fetch('http://scb.asclar.tech/api/auth/login', {
    // method: 'POST',
    // headers: {
    //     Accept: 'application/json',
    //     'Content-Type': 'multipart/form-data',
    // },
    // body:data,
    // })
    // .then((response) => response.json())
    // .then((responseJson) => {
    //     var access_token = responseJson.access_token;
    //     var bearer       = responseJson.bearer;
    //     var code       = responseJson.code;
    //     if(responseJson.access_token == null){
    //         Alert.alert(
    //             '',
    //             'Code not valid !',
    //             [
    //               {text: 'OK', onPress: () => console.log('OK Pressed')},
    //             ],
    //             {cancelable: false},
    //         ); 
    //     }else{
    //         AsyncStorage.setItem('token', responseJson.access_token);
    //         this.props.navigation.navigate('HomeScreen', { code: code })
    //     }
    // })
    // .catch((error) => {
    //     console.error(error);
    // });
}

  _fetchItem = async (event) => {
    const token = await AsyncStorage.getItem('token')
    const myHeaders = new Headers({
        'Authorization': 'Bearer ' + token
    });
    const apiCall = await fetch('http://scb.asclar.tech/api/stock_condition_item_api/' + event, {
        method: 'GET',
        headers: myHeaders,
    })
    const getData = await apiCall.json();
    console.log(getData);
    if (event != '') {
        this.setState({ isLoading: false, Start_Scanner: false })
        if (getData.data == 'No Data Found') {
            alert('No Data Found')
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

// "id": 11,
// "kode_aset": "LabP1-TI-kom-1001001",
// "nama_aset": "komputer",
// "id_lokasi": 1,
// "deskripsi": "-",
// "created_at": "2020-08-27",
// "id_kategori": 4

handleInput = () => {
  let kode_aset = this.state.code
  // console.log(JSON.stringify(this.state))
  Axios.get('http://192.168.1.2:8000/api/aset/'+kode_aset).then(result => {
    if (JSON.stringify(result.data) == '{}') return Alert.alert(
      'Opss..',
      "Data tidak ditemukan :(",
      [
        { text: 'OK', onPress: () => console.log('OK Pressed') },
      ],
      { cancelable: false },
    );
    this.props.navigation.navigate('UpdateDataScreen', result.data )
  }).catch(err => {
    console.log(err )
  })
  // Axios.post('url_apa?', { key1 : valData }).then(result => {
  //   console.log(result.data)
  // }).catch(err => {
  //   console.log(err)
  // })
}

  render() {
    return (
      <View style={styles.container}>
          <View style={styles.viewLogin}>
            <Text style={styles.textSignin}>Input CODE</Text>
        <TextInput
          style={styles.textInputEmail} 
          placeholder="Code"
          onChangeText={(code) => this.setState({code})}
          value={this.state.code}
          placeholderTextColor="#191970" 
        />

        <TouchableOpacity onPress={this.handleInput} style={styles.buttonLogin}>
            <Text style={styles.colorWhite}>INPUT</Text>
        </TouchableOpacity>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: { 
    flex: 1, 
    backgroundColor: '#ADD8E6', 
    flexDirection: 'column' 
  },
  viewImage: { 
      height: '40%', 
      justifyContent: 'center', 
      alignItems: 'center' 
  },
  image: { 
      height: 150, 
      width: 150 
  },
  viewLogin: { 
      height: '60%', 
      backgroundColor: '#ADD8E6', 
      borderTopLeftRadius: 100, 
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

export default InputCode