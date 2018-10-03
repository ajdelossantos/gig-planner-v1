import React from 'react';
import Card from '@material-ui/core/Card';
import CardHeader from '@material-ui/core/CardHeader';
import GigIndexItem from './GigIndexItem';
import cardSpacing from '../styles/cardSpacing';

const GigIndex = props => {
  const { gigs } = props;

  return (
    <div style={cardSpacing}>
      <Card>
        <CardHeader
          component="h2"
          title="Gig Index"
          titleTypographyProps={{ variant: 'inherit' }}
        />
        <ul>
          {gigs.map(gig => (
            <GigIndexItem gig={gig} key={`gigID-${gig.id}`} />
          ))}
        </ul>
      </Card>
    </div>
  );
};

export default GigIndex;
