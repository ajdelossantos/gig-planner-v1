import React from 'react';
import Card from '@material-ui/core/Card';
import CardHeader from '@material-ui/core/CardHeader';
import SetListIndexItem from './SetListIndexItem';
import cardSpacing from '../styles/cardSpacing';

const SetListIndex = props => {
  const setLists = props.setLists;
  return (
    <div style={cardSpacing}>
      <Card>
        <CardHeader
          component="h2"
          title="Set List Index"
          titleTypographyProps={{ variant: 'inherit' }}
        />
        <ul>
          {setLists.map(setList => (
            <SetListIndexItem setList={setList} key={`setID-${setList.id}`} />
          ))}
        </ul>
      </Card>
    </div>
  );
};

export default SetListIndex;
