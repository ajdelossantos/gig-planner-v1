import React, { Component } from 'react';
import './App.css';
import 'typeface-roboto';
import CircularProgress from '@material-ui/core/CircularProgress';

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
        <div className="App">
          <h2>{name}</h2>
          <p>{description}</p>

          <ul>
            {gigs.map(gig => (
              <li key={`gig-${gig.id}`}>{gig.name}</li>
            ))}
          </ul>

          <ul>
            {setLists.map(setList => (
              <li key={`setList-${setList.id}`}>{setList.name}</li>
            ))}
          </ul>

          <ul>
            {pieces.map(piece => (
              <li key={`piece-${piece.id}`}>{piece.title}</li>
            ))}
          </ul>
        </div>
      );
    } else {
      return <CircularProgress />;
    }
  }
}

export default App;
