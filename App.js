import React from 'react';
import { View, Text, Button } from 'react-native';
import { StackNavigator } from 'react-navigation';

const HomeScreen = ({ navigation }) => (
  <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
    <Text>Home Screen</Text>
    <Button
      onPress={() => navigation.navigate('Details')}
      title="Go to details"
    />
  </View>
);

const DetailsScreen = () => (
  <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
    <Text>Details Screen</Text>
    <Text>SALAUD</Text>
    <Text>Vas y!</Text>
  </View>
);

const RootNavigator = StackNavigator({
  Home : 
  { 
    screen : HomeScreen,
    navigationOptions : 
    {
      headerTitle : 'Home',
    },
  },
  Details : 
  { 
    screen : DetailsScreen,
    navigationOptions : 
    {
      headerTitle : 'Details',
    },
  },
});
export default RootNavigator;