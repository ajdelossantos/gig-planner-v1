import React from 'react';

import GigIndexItem from './GigIndexItem';
import { debugBorder } from '../styles/debugBorder';

const GigIndex = props => {
  const { gigs } = props;

  return (
    <div style={debugBorder}>
      <h2>Gig Index</h2>

      <ul>
        {gigs.map(gig => (
          <GigIndexItem gig={gig} key={`gigID-${gig.id}`} />
        ))}
      </ul>
    </div>
  );
};

export default GigIndex;
