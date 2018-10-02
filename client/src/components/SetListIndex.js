import React from 'react';

import SetListIndexItem from './SetListIndexItem';
import { debugBorder } from '../styles/debugBorder';

const SetListIndex = props => {
  const setLists = props.setLists;
  return (
    <div style={debugBorder}>
      <h2>Set List Index</h2>

      <ul>
        {setLists.map(setList => (
          <SetListIndexItem setList={setList} key={`setID-${setList.id}`} />
        ))}
      </ul>
    </div>
  );
};

export default SetListIndex;
