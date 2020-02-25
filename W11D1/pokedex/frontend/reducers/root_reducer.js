import { combineReducers } from 'redux';
import pokemonReducer from './pokemonReducer';

const entititiesReducer = combineReducers({
  pokemon: pokemonReducer
});


export default rootReducer;