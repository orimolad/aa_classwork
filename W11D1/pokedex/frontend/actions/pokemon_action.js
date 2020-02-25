import * as PokemonsAPIUtil from '../util/api_utils'

export const RECEIVE_ALL_POKEMON = 'RECEIVE_ALL_POKEMON'



export const fetchAllPokemon = () => dispatch => {
  return PokemonsAPIUtil.receiveAllPokemon()
  .then(pokemon => dispatch(receiveAllPokemon(pokemon)))
}

export const receiveAllPokemon = pokemon => ({
  type: RECEIVE_ALL_POKEMON,
  pokemon
})