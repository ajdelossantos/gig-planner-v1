import React from 'react';
import PayloadTable from './PayloadTable';

const GigIndexItem = props => {
  const { id, name, payload } = props.gig;

  return (
    <li key={`gig-data-${id}`}>
      <h3>{name}</h3>
      <PayloadTable payload={payload} gigID={id} />
    </li>
  );
};

export default GigIndexItem;
