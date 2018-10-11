import React from 'react';
import BandIndexHero from './BandIndexHero';
import GigIndex from './GigIndex';
import SetListIndex from './SetListIndex';
import PieceIndex from './PieceIndex';

import BandContext from '../BandContext';

const BandIndex = props => {
  const { name, description, gigs, pieces, setLists } = props.bandData;
  console.log(props.bandData);
  return (
    <div style={{ backgroundColor: '#BADA5580' }}>
      <BandIndexHero name={name} description={description} />
      <GigIndex gigs={gigs} />
      <SetListIndex setLists={setLists} />
      <PieceIndex pieces={pieces} />
    </div>
  );
};

export default BandIndex;
