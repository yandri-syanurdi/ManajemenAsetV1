import React, { Component } from 'react'
import { View, Text, TextInput, TouchableOpacity, StyleSheet, Alert, Picker, AsyncStorage, ActivityIndicator, FlatList, ScrollView, Image, PermissionsAndroid } from 'react-native'
import { Icon } from 'native-base'
import ImagePicker from 'react-native-image-picker';
import RNFBlob from 'rn-fetch-blob'


class UpdateDataScreen extends Component {
    constructor(props) {
        super(props)
        this.state = {
            editText: '',
            description: '',
            condition: 'good',
            // id: this.props.navigation.state.params.id,
            isLoading: false,
            history: [],
            uri: '',
            base64: '',
            imgPicker : {} ,
            source : { uri : '' }
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
        const { params } = this.props.navigation.state
        
try {
    const { kondisi_aset } = params
    const { deskripsi, kondisi } = kondisi_aset[kondisi_aset.length - 1]

    console.log({ deskripsi, kondisi })

    this.setState({
        description: deskripsi,
        condition: kondisi,
    })
} catch (error) {
    
}

        this.setState({
            id: this.props.navigation.state.params.id,
            // condition: this.props.navigation.state.params.condition,
            // description: this.props.navigation.state.params.description,
            // history: this.props.navigation.state.params.history,
            // far: this.props.navigation.state.params.far,
        })
    }

    takePhoto = () => {
        // More info on all the options is below in the API Reference... just some common use cases shown here
        const options = {
            // title: 'Select Avatar',
            // customButtons: [{ name: 'fb', title: 'Choose Photo from Facebook' }],
            takePhotoButtonTitle: "Open Camera",
            chooseFromLibraryButtonTitle: 'Select From Gallery',
            storageOptions: {
                skipBackup: true,
                path: 'images',
            },
        };

        /**
         * The first arg is the options object for customization (it can also be null or omitted for default options),
         * The second arg is the callback which sends object: response (more info in the API Reference)
         */
        ImagePicker.showImagePicker(options, (response) => {
            console.log('Response = ', response);
            if (response.didCancel) {
                console.log('User cancelled image picker');
            } else if (response.error) {
                console.log('ImagePicker Error: ', response.error);
            } else if (response.customButton) {
                console.log('User tapped custom button: ', response.customButton);
            } else {
                // console.log('response', response)
                this.setState({
                    uri: response.uri,
                    base64: response.data,
                    source: { uri: response.uri },
                    imgPicker: response,
                })

                this.handleSendData(response)
            }
        });
    }

    handleSendData = (imgPicker) =>{
        const data = this.props.navigation.state.params
        return RNFBlob.fetch('POST', 'http://192.168.1.2:8000/api/aset/' + data.kode_aset+'/kondisi-aset/tambah', {
            'Content-Type': 'multipart/form-data'
        }, [
            { name: 'gambar', filename: imgPicker.fileName, type: imgPicker.type, data: imgPicker.data },
            { name: 'jam_kondisi', data : '08:40' },
            { name: 'tanggal_kondisi', data: '2020-12-12' },
            { name: 'deskripsi', data: this.state.description },
            { name: 'kondisi', data: this.state.condition },
        ]).then(success => {
            Alert.alert(
                '',
                success.data,
                [
                    { text: 'OK', onPress: () => console.log('OK Pressed') },
                ],
                { cancelable: false },
            );
        }).catch(err => {
            console.log(err)
        })
    }

    launchCamera = () => {
        let options = {
            storageOptions: {
                skipBackup: true,
                path: 'images',
            },
        };
        ImagePicker.launchCamera(options, (response) => {
            if (response.didCancel) {
                console.log('User cancelled image picker');
            } else if (response.error) {
                console.log('ImagePicker Error: ', response.error);
            } else if (response.customButton) {
                console.log('User tapped custom button: ', response.customButton);
            } else {
                // console.log('response', response.uri)
                this.setState({
                    uri: response.uri,
                    base64: response.data,
                    source: { uri: response.uri },
                    imgPicker: response,
                })

                this.handleSendData(response)
            }
        });
    }


    updateData = async () => {
        const token = await AsyncStorage.getItem('token')
        if (this.state.condition == '') {
            alert('Condition not null');
            return false;
        }
        if (this.state.base64 == '') {
            alert('Image not null');
            return false;
        }
        this.setState({
            isLoading: true
        })
        await fetch('http://scb.asclar.tech/api/stock_condition_item_api/update_item', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + token
            },
            body: JSON.stringify({
                id: this.state.id,
                condition: this.state.condition,
                description: this.state.description,
                image: this.state.base64
            }),
        });
        this.setState({
            isLoading: false
        })
        Alert.alert(
            '',
            'Data update successful',
            [
                { text: 'OK', onPress: () => console.log('OK Pressed') },
            ],
            { cancelable: false },
        );
        this.props.navigation.navigate('HomeScreen')
    }


    onImagePress = (item) => {
        this.props.navigation.navigate('ImagePreviewScreen', { item: item })
    }
    render() {
        const { params } = this.props.navigation.state
        // const {kondisi_aset} = params
        // const { deskripsi, kondisi} = kondisi_aset[kondisi_aset.length - 1]

        // this.setState({
        //     description : deskripsi,
        //     condition : kondisi,
        // })

        // coba ulang lagi

        // console.log("dTA", params)
        if (this.state.isLoading == true) {
            return (
                <View style={styles.containerLoading}>
                    <View style={styles.viewLoading}>
                        <Text style={styles.textLoading}>Loading</Text>
                        <ActivityIndicator size="large" />
                    </View>
                </View>
            )
        }
        
        return (
            <View style={styles.container}>
                <View style={styles.viewHeader}>
                    <View style={styles.viewLogout} />
                    <View style={styles.viewTextHeader}>
                        <Text style={styles.textHeader}> Update Data </Text>
                    </View>
                    <View style={styles.viewLogout}>
                        <TouchableOpacity onPress={this.updateData.bind(this)}>
                            <Icon name='save' style={styles.colorWhite} />
                        </TouchableOpacity>
                    </View>
                </View>
                <ScrollView style={styles.contain}>
                    <Text style={styles.textItemName}> Item Code </Text>
                        <TextInput
                            style={styles.textInputItemName}
                            editable={false}
                            onChangeText={text => onChangeText(text)}
                            value={params.kode_aset}
                        />
                    {/* <Text> {params.kode_aset}</Text> */}

                    <Text style={styles.textItemName}> Item Name </Text>
                        <TextInput
                            style={styles.textInputItemName}
                            editable={false}
                            onChangeText={text => onChangeText(text)}
                            value={params.nama_aset}
                        />
                    {/* <Text> {params.nama_aset}</Text> */}
                    {/* <Text> {params.id_lokasi}</Text> */}
                    
                    <Text style={styles.textCondition}> Condition </Text>
                        <View style={styles.viewPicker}>
                            <Picker
                                selectedValue={this.state.condition}
                                style={styles.picker}
                                onValueChange={(itemValue, itemIndex) =>
                                    this.setState({ condition: itemValue })
                                }>
                                <Picker.Item label="Good" value="good" />
                                <Picker.Item label="Bad" value="bad" />
                                <Picker.Item label="Damage" value="damage" />
                                <Picker.Item label="Lost" value="lost" />

                                {/* <Picker.Item label="Unknown" value="unknown" /> */}
                            </Picker>
                        </View>
                            <Text style={styles.textCondition}> Description </Text>
                            <View style={styles.viewTextArea}>
                                <TextInput
                                    style={styles.colorWhite}
                                    multiline={true}
                                    onChangeText={description => this.setState({ description })}
                                    value={this.state.description}
                                    placeholder="Enter your description"
                                    />  
                        </View>

                        <View style={styles.viewList}>
                            <Text style={styles.textLastActivity}>Last Activity</Text>
                            <FlatList
                            data={this.state.kondisi_aset}
                            keyExtractor={item => item.id.toString()}
                            renderItem={({ item }) => (
                            <View style={styles.viewItem}>
                                <View style={styles.viewDesc}>
                                    <Text style={styles.textDesc}>{item.description}</Text>
                                    <Text style={styles.textCreated}>{item.created_at}</Text>
                                </View>
                            <View style={styles.viewImage}>
                                <TouchableOpacity onPress={this.onImagePress.bind(this, item)}>
                                   <Image style={styles.image} source={{ uri: item.properties, cache: 'only-if-cached', }} />
                                </TouchableOpacity>
                            </View>
                        </View>
                        )}/>

                    </View>
                        {params.kondisi_aset.map((item , index ) => {
                            return <View key={'data-kondisi-'+index} style={{
                                ...styles.viewItem,
                                flexDirection : 'column'
                            } }>
                                <Text >{item.kondisi} </Text>
                                <Text >{item.tanggal_kondisi} </Text>
                                <Text >{item.gambar} </Text>
                                <Text >{item.deskripsi} </Text>

                                <Image source={{ uri: 'http://192.168.1.2:8000/images/' + item.gambar }} style={{ width: 50, height: 50 }} />

                                {/* <TouchableOpacity onPress={this.onImagePress.bind(this, item)}>
                                    <Image  source={{ uri : 'http://192.168.1.2:8000/images/'+item.gambar }} style={{ width : 50, height : 50 }} />
                                </TouchableOpacity> */}
                                </View> })
                                }
                    <View style={{ margin: 20, borderRadius: 10, backgroundColor: '#E1E2E1' }}>
                        <TouchableOpacity onPress={this.takePhoto.bind(this)} style={{ margin: 20, height: 200, justifyContent: 'center', alignItems: 'center' }}>
                            {
                                this.state.uri == ''
                                    ?
                                    <Image source={require('../Assets/photo.png')} style={{ height: 50, resizeMode: 'contain', }} />
                                    :
                                    <Image style={{ width: 100, height: 150, resizeMode: 'contain', }} source={this.state.source} />
                            }
                            <Text>Take Photo</Text>
                        </TouchableOpacity>
                    </View>
                </ScrollView>
            </View>
        )
    }
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        flexDirection: 'column',
        backgroundColor: '#ADD8E6'
    },
    viewHeader: {
        height: '8%',
        flexDirection: 'row',
        backgroundColor: '#007ebd'
    },
    viewLogout: {
        width: '20%',
        justifyContent: 'center',
        alignItems: 'center',
    },
    viewTextHeader: {
        width: '60%',
        justifyContent: 'center',
        alignItems: 'center',
    },
    textHeader: {
        color: '#191970',
        textAlign: 'center',
        fontSize: 15,
        fontWeight: 'bold'
    },
    colorWhite: {
        color: '#191970'
    },
    contain: {
        height: '90%'
    },
    viewContain: {
        margin: 20
    },
    textItemName: {
        color: '#191970',
        marginBottom: 10,
        fontWeight: 'bold'
    },
    textInputItemName: {
        padding: 10,
        height: 40,
        borderColor: '#191970',
        borderRadius: 10,
        borderWidth: 1,
        color: '#191970',
        marginBottom: 10
    },
    textCondition: {
        color: '#191970',
        marginBottom: 10,
        marginTop: 10,
        fontWeight: 'bold'
    },
    viewPicker: {
        borderBottomWidth: 1,
        borderTopWidth: 1,
        borderLeftWidth: 1,
        borderRightWidth: 1,
        borderColor: '#191970',
        borderRadius: 10
    },
    picker: {
        padding: 10,
        color: '#191970'
    },
    viewTextArea: {
        height: 120,
        borderTopWidth: 1,
        borderRightWidth: 1,
        borderLeftWidth: 1,
        borderBottomWidth: 1,
        borderColor: '#191970',
        borderRadius: 10
    },
    containerLoading: {
        backgroundColor: '#00000099',
        position: 'absolute',
        top: 0,
        left: 0,
        right: 0,
        bottom: 0,
        justifyContent: 'center',
        alignItems: 'center'
    },
    viewLoading: {
        borderRadius: 10,
        backgroundColor: '#191970',
        paddingTop: 15,
        paddingBottom: 15,
        paddingLeft: 20,
        paddingRight: 20
    },
    textLoading: {
        fontSize: 16,
        fontFamily: 'Roboto-Regular',
        marginBottom: 5
    },
    viewList: {
        marginLeft: 20,
        marginRight: 20
    },
    textLastActivity: {
        fontSize: 14,
        color: '#191970',
        fontWeight: 'bold'
    },
    viewItem: {
        flexDirection: 'row',
        backgroundColor: 'transparent',
        marginTop: 10,
        padding: 10
    },
    viewDesc: {
        width: '80%'
    },
    viewImage: {
        width: '20%'
    },
    textDesc: {
        fontSize: 14,
        color: '#191970'
    },
    textCreated: {
        fontSize: 12,
        color: '#191970'
    },
    image: {
        width: 60,
        height: 50,
        resizeMode: 'contain'
    }
})

export default UpdateDataScreen