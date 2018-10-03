import React from 'react';
import Card from '@material-ui/core/Card';
import CardHeader from '@material-ui/core/CardHeader';
import PieceIndexItem from '../components/PieceIndexItem';
import cardSpacing from '../styles/cardSpacing';

const PieceIndex = props => {
  const pieces = props.pieces;

  return (
    <div style={cardSpacing}>
      <Card>
        <CardHeader
          component="h2"
          title="Piece Index"
          titleTypographyProps={{ variant: 'inherit' }}
        />
        <ul>
          {pieces.map(piece => (
            <PieceIndexItem piece={piece} key={`piece-${piece.id}`} />
          ))}
        </ul>
      </Card>
    </div>
  );
};

export default PieceIndex;
