import React from 'react';
import PayloadTable from './PayloadTable';
import { debugBorder } from '../styles/debugBorder';

const SetListIndexItem = props => {
  const { id, name, pieces, payload } = props.setList;
  return (
    <li style={debugBorder}>
      <h3>{name}</h3>

      <p>
        <em>Pieces:</em>
      </p>

      <ul>
        {pieces.map(piece => (
          <li key={`gig${id}-piece${piece[0]}`}>
            {`${piece[1]}`} <em>{` ( piece_id: ${piece[0]} )`}</em>
          </li>
        ))}
      </ul>
      <br />

      <PayloadTable payload={payload} foreignKeyID={id} />
    </li>
  );
};

export default SetListIndexItem;
