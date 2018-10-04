import React from 'react';
import PayloadTable from './PayloadTable';
import Card from '@material-ui/core/Card';
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
        {setLists.map(setList => {
          const [setName, setId] = setList;
          return (
            <li key={`gig${id}-setList${setList[0]}`}>
              {`${setId}`} <em>{`( set_id: ${setName})`}</em>
            </li>
          );
        })}
      </ul>
      <br />
      <PayloadTable payload={payload} foreignKeyID={id} />
    </li>
  );
};

export default GigIndexItem;
