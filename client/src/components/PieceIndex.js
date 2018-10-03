import React from 'react';
import { debugBorder } from '../styles/debugBorder';
import PieceIndexItem from '../components/PieceIndexItem';

const PieceIndex = props => {
  const pieces = props.pieces;

  return (
    <div style={debugBorder}>
      <h2>Piece Library</h2>

      <ul>
        {pieces.map(piece => (
          <PieceIndexItem piece={piece} key={`piece-${piece.id}`} />
        ))}
      </ul>
    </div>
  );
};

export default PieceIndex;
