import React, { Component } from 'react';
import BandContext from './BandContext';

class BandProvider extends Component {
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
    return (
      <BandContext.Provider value={this.state}>
        {this.props.children}
      </BandContext.Provider>
    );
  }
}

export default BandProvider;
