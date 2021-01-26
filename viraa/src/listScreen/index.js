import React, { Component } from 'react';
import { View, StyleSheet, Text, FlatList, ActivityIndicator, TouchableOpacity, ScrollView } from "react-native";
import { ListItem, SearchBar } from "react-native-elements";
import {Icon, Container, Header, Content, Left} from 'native-base'
import Axios from 'axios'



class ListScreen extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      loading: true,
      data: [],
      seed: 1,
      page: 1,
      error: null,
      refreshing:false,
      search: null,
      code: '',
      getData: '',
      id: '',
      condition: '',
      description: '',
      history: []};
  }

  componentDidMount() {
    this.makeRemoteRequest();
  }

  makeRemoteRequest = () => {
    const { page, seed } = this.state;
    const url = 'http://192.168.1.2:8000/' + 'api/aset';
    //this.setState({ loading: true });
    return fetch(url)
      .then(res => res.json())
      .then(res => {
        this.setState({
          data: page == 1 ? res.results : [...this.state.data, ...res.results],
          error: res.error || null,
          loading: false,
          refreshing: false
        });
        
      })
      .catch(error => {
        this.setState({ error, loading: false, refreshing: false});
      });
  };

  SearchFilterFunction(text) 
  {
    this.setState({ search:text});
    //alert(text);
  }
  handleRefresh = () => {  
   this.setState({  
    data: [],  
    loading : false,  
    refreshing : true,  
    seed : 1,  
    page : 1   
   })  
   this.makeRemoteRequest();
  }  
  handleLoadMore = () => {
    this.setState({
        refreshing:true,
        page: this.state.page + 1
      })
      this.makeRemoteRequest();
  }
  
  renderSeparator = () => {  
    return (  
     <View  
      style={{  
       height: 1,  
       width: '84%',  
       backgroundColor: '#CED0CE',  
       marginLeft: '14%',  
      }}  
     />  
    );  
   };  

  handleInput(data) {
    return () => {
      let kode_aset = data.kode_aset
      // this.state.code 
      // console.log(JSON.stringify(this.state))
      Axios.get('http://192.168.1.2:8000/api/aset/' + kode_aset).then(result => {
        this.props.navigation.navigate('UpdateDataScreen', result.data)
      }).catch(err => {
        console.log(err)
      })
    }
  }

//   renderHeader = () => {
//     return <SearchBar
//               onChangeText={text => this.SearchFilterFunction(text)}
//               onClear={text => this.SearchFilterFunction('')}
//               placeholder="Type Here..."
//               value={this.state.search}/>;
//   };

  render() {
    if(this.state.loading){  
      return(  
    //    <View style={{padding: 20, justifyContent: 'center'}}>  
        <ActivityIndicator/>  
    //    </View>  d
      )  
     }  
    return (
        <Container style={styles.container}>
        <View>
        <View style={styles.viewHeader}>
                    <View style={styles.viewTextHeader}>
                        <Text style={styles.textHeader}> List Data </Text>
                    </View>
                </View>
        <FlatList style={{backgroundColor: '#ADD8E6'}}
          data={this.state.data}
          renderItem={({ item }) => (
            <TouchableOpacity onPress={this.handleInput(item)} style={{backgroundColor: 'blue'}}>
              <ScrollView>
            <ListItem style={{backgroundColor: 'blue'}}
            roundAvatar  
            title={item.kode_aset}  
            subtitle={item.nama_aset}  
            // leftAvatar={{ rounded: true, source: { uri: item.picture.thumbnail } }}
            // containerStyle={{ borderBottomWidth: 0 }}  
            />
              </ScrollView>
            </TouchableOpacity>
          )}
          keyExtractor={item => item.email}
          ItemSeparatorComponent={this.renderSeparator}
          ListHeaderComponent={this.renderHeader}
          refreshing={this.state.refreshing}
          onRefresh={this.handleRefresh}
          onEndReached={this.handleLoadMore}  
        />
        </View> 
        </Container>
    );
  }

  detail(id)
  {
    alert(
      text,
      'My Alert Msg',
    );

    Actions.detail1({id : id ,val : 'kondisi'});
  }
}
export default ListScreen;

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

const styles = StyleSheet.create({
    container: { 
      flex: 1, 
      backgroundColor: '#ADD8E6', 
      flexDirection: 'column' 
    },
    viewHeader: {
        height: '10%',
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
})

