import React from 'react'
import ReactDOM from 'react-dom'
import {login, logout, signup} from './util/session_api_util'

document.addEventListener('DOMContentLoaded',() => {
    const root = document.getElementById('root')
    // const store= configureStore()

    ReactDOM.render(<h1>Welcome to BenchBnB</h1>, root)
    // window.getState = store.getState;
    // window.dispatch = store.dispatch;
    window.login = login;
    window.logout = logout;
    window.signup = signup;
})