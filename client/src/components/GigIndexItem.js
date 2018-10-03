import React from 'react';
import PayloadTable from './PayloadTable';
import { debugBorder } from '../styles/debugBorder';

const GigIndexItem = props => {
  const { id, name, payload, setLists } = props.gig;

  return (
    <li style={debugBorder}>
      <h3>{name}</h3>
      <p>
        <em>Sets:</em>
      </p>
      <ul>
        {setLists.map(setList => (
          <li key={`gig${id}-setList${setList[0]}`}>
            {`${setList[1]}`} <em>{`( set_id: ${setList[0]})`}</em>
          </li>
        ))}
      </ul>
      <br />
      <PayloadTable payload={payload} foreignKeyID={id} />
    </li>
  );
};

export default GigIndexItem;
