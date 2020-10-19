// app/javascript/App.js
import React from 'react';
import {
  BrowserRouter as Router,
  Link
} from "react-router-dom";
import Routes from './Routes';

class App extends React.Component {
  render() {
    return (
      <Router>
        <Routes />
      </Router>
    );
  }
}

export default App;
