import React, { Component } from 'react';
import GigIndexItem from './GigIndexItem';
import { debugBorder } from '../styles/debugBorder';

class GigIndex extends Component {
  render() {
    return (
      <div style={debugBorder}>
        <h3>Gig Index</h3>
        {this.props.gigs.map(gig => (
          <GigIndexItem gig={gig} key={`gigID-${gig.id}`} />
        ))}
      </div>
    );
  }
}

export default GigIndex;
