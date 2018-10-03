import React, { Component } from 'react';
// import 'typeface-roboto';
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

  async componentDidMount() {
    try {
      const response = await fetch('/api/bands/1');
      if (!response.ok) throw Error(response.statusText);
      const json = await response.json();
      this.setState({ data: json });
    } catch (error) {
      console.log(error);
    }
  }

  render() {
    if (this.state.data) {
      const { name, description, gigs, pieces, setLists } = this.state.data;

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
