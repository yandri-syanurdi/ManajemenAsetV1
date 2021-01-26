import React, { Component } from 'react'
import { View, Text, Image } from 'react-native'

export default class ImagePreviewScreen extends Component {
    constructor(props){
        super(props)
    }

    static navigationOptions = {
        header: null
    }

    render(){
        return(
            <View style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>
                <Image
                    source={{
                        uri: this.props.navigation.state.params.item.properties,
                        cache: 'only-if-cached',
                    }}
                    style={{width: 400, height: 400, resizeMode: 'contain'}}
                    />
            </View>
        )
    }
}