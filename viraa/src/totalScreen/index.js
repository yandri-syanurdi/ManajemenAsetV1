import React, { Component } from 'react';
import {
  StyleSheet,
  View,
  Text,
} from 'react-native';

import {Icon, Container, Header, Content, Left} from 'native-base'


class TotalScreen extends Component {
  //---------------------------------------------------------------
  constructor() 
  {
        super();
        this.state = 
        {
          kondisi_good :null,
          kondisi_bad : null,
          kondisi_lost : null,
          kondisi_damaged : null,
          kondisi_total : null,
          loading: false,
        };
        
  }
  
  //---------------------------------------------------------------
  componentDidMount() 
  {
    this.loadMoreData();
  }
  //---------------------------------------------------------------
  loadMoreData = () => 
  {  
    fetch('http://192.168.1.2:8000/api/beranda')
    .then(response => response.json())      
    .then(responseJson => 
    {
      // alert(responseJson.success);
      if(responseJson.success == 'true')  
      { 
        // alert(responseJson.results.kondisi_good);
        this.setState({kondisi_good:responseJson.results.kondisi_good});
        this.setState({kondisi_bad:responseJson.results.kondisi_bad});
        this.setState({kondisi_damaged:responseJson.results.kondisi_damaged});
        this.setState({kondisi_lost:responseJson.results.kondisi_lost});
        this.setState({kondisi_total:responseJson.results.kondisi_total});

      }
      else
        alert("Server Error");
    })
    .catch(error => 
    {
      console.error(error);
    });  
  };

  render() {
      return (
          <Container style={styles.container}>
              <View style={styles.viewHeader}>
                    <View style={styles.viewTextHeader}>
                        <Text style={styles.textHeader}> Total Asset </Text>
                    </View>
                </View>
          <View>
          <Text style={styles.bigBlue}>Good = {this.state.kondisi_good}</Text>
          <Text style={styles.bigBlue}>Bad = {this.state.kondisi_bad}</Text>
          <Text style={styles.bigBlue}>Damage = {this.state.kondisi_damaged}</Text>
          <Text style={styles.bigBlue}>Lost = {this.state.kondisi_lost}</Text>
          <Text style={styles.bigBlue}>Total = {this.state.kondisi_total}</Text>
          </View>
        
        </Container>
      );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,     
    backgroundColor: '#ADD8E6', 
    flexDirection: 'column' 
        },
  bigBlue: {
    fontWeight: 'bold',
    fontSize: 23,
    // justifyContent: 'center'
    textAlign: 'center'
  },
  red: {
    color: 'red',
  },
  viewHeader: {
    height: '7.5%',
    flexDirection: 'row',
    backgroundColor: '#007ebd',
    justifyContent:'center'
},
viewTextHeader: {
    // width: '60%',
    justifyContent: 'center',
    // alignItems: 'center',
    textAlign:'center'
},
textHeader: {
    color: '#FFFFFF',
    textAlign: 'center',
    fontSize: 15,
    fontWeight: 'bold'
},
});
export default TotalScreen;


// export default class TotalScreen extends Component{
//     render(){
//         return(
//             <Container style={styles.container}>
//                 <Content>
//                     <Text>Total Screen</Text>
//                 </Content>
//             </Container>
//         )
//     }
// }

// const styles = StyleSheet.create({
//     container: { 
//       flex: 1, 
//       backgroundColor: '#ADD8E6', 
//       flexDirection: 'column' 
//     },
// })

