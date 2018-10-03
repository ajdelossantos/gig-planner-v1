import React, { Component } from 'react';
import 'typeface-roboto';
import CircularProgress from '@material-ui/core/CircularProgress';
import Header from './components/Header';
import { debugBorder } from './styles/debugBorder';

import GigIndex from './components/GigIndex';
import SetListIndex from './components/SetListIndex';
import PieceIndex from './components/PieceIndex';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  componentDidMount() {
    window
      .fetch('/api/bands/1')
      .then(response => response.json())
      .then(json => {
        console.log(json);
        this.setState(json);
      })
      .catch(error => console.log(error));
  }

  render() {
    if (this.state[1]) {
      console.log(this.state[1]);
      const { name, description, gigs, pieces, setLists } = this.state[1];
      return (
        <div>
          <Header />
          <div style={debugBorder}>
            <h2>{name}</h2>
            <p>{description}</p>
          </div>

          <GigIndex gigs={gigs} />

          <SetListIndex setLists={setLists} />

          <PieceIndex pieces={pieces} />
        </div>
      );
    } else {
      return <CircularProgress />;
    }
  }
}

export default App;
