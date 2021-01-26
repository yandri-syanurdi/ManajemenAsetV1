
import React, { Component } from 'react';
import {
  StyleSheet,
  View,
  Text,
  TouchableOpacity
} from 'react-native';
import {Container, Header, Tab, Tabs, Icon} from 'native-base'
import Tab1 from '../totalScreen'
import Tab2 from '../listScreen'
import Tab3 from '../HomeScreen/route'


class DrawerScreen extends Component{
  render() {
    
    return (
      
      <Container>
        <View style={{flex: 1}}>
        
          <Tabs>
            <Tab heading="Total">
              <Tab1 />
            </Tab>
            <Tab heading="List">
              <Tab2 />
            </Tab>
            <Tab heading="Home">
              <Tab3 />
            </Tab>
          </Tabs>
        </View>
      </Container>
    );
  }
}


const styles = StyleSheet.create({
  wrapper: {
    flex: 1,
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'white',
    justifyContent: 'space-between',
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
 
  },
});

export default DrawerScreen;


