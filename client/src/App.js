import React, { Component } from 'react';
// import 'typeface-roboto';
import CircularProgress from '@material-ui/core/CircularProgress';
import Header from './components/Header';

import BandIndex from './components/BandIndex';

const loadingStyle = {
  width: '100%',
  height: 900,
  display: 'flex',
  justifyContent: 'center',
  alignItems: 'center'
};

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  async componentDidMount() {
    try {
      const response = await fetch('/api/bands/1');
      if (!response.ok) throw Error(response.statusText);
      const json = await response.json();
      this.setState({ bandData: json });
    } catch (error) {
      console.log(error);
    }
  }

  render() {
    if (this.state.bandData) {
      return (
        <div>
          <Header />
          <BandIndex bandData={this.state.bandData} />
        </div>
      );
    } else {
      return (
        <div>
          <Header />
          <div style={loadingStyle}>
            <CircularProgress />
          </div>
        </div>
      );
    }
  }
}

export default App;
