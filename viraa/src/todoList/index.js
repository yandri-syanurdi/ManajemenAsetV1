import React, {Component} from 'react' ;
import {Text, View, StyleSheet, Image, ScrollView, TextInput, TouchableOpacity} from 'react-native';



export default class todoList extends Component{
    render(){
        return(
          <View style={styles.container} >
              <View style={styles.header}>
                  <Text style={styles.textHeader}>-Note-</Text>
              </View>
              <ScrollView style={styles.scrollContainer}>

              </ScrollView>
              <View style={styles.footer}>
                <TextInput style={styles.TextInput} placeholder="Write Note Here" placeholderTextColor="white"></TextInput>
              </View>
              <TouchableOpacity style={[styles.addButton, {backgroundColor:'red'}]}>
                <Text style={styles.addButtonText}>+</Text>
              </TouchableOpacity>
          </View>
        );
    }
}

const styles = StyleSheet.create({
    container:{
        flex:1,
        backgroundColor:'white',
        alignItems:'center',
        justifyContent:'center'
    },
    header:{
        backgroundColor:'#E91E63',
        alignItems:'center',
        justifyContent:'center',
        borderBottomWidth:2,
        borderBottomColor:'#ddd',
        width:'100%'
    },
    textHeader:{
        color:'white',
        padding:10,
        fontSize:18
    },
    scrollContainer:{
        flex:1,
        // marginBottom:100
    },
    footer:{
        width:'100%'
    },
    TextInput:{
        alignSelf:'stretch',
        color: '#fff',
        padding:20,
        backgroundColor:'#252525',
        borderTopWidth:2,
        borderTopColor:'#ededed'
    },
    addButton:{
        position:'absolute',
        zIndex:11,
        right:10,
        bottom:90,
        // top:0,
        backgroundColor:'red',
        width:50,
        height:50,
        alignItems:'center',
        justifyContent:'center',
        fontWeight:'bold',
        borderRadius:50,
    },
    addButtonText:{
        color: 'white',
        fontWeight:'bold',
        fontSize:24
    }
});