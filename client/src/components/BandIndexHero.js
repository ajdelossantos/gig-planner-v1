import React from 'react';
import Card from '@material-ui/core/Card';
import CardHeader from '@material-ui/core/CardHeader';
import CardContent from '@material-ui/core/CardContent';
import Typography from '@material-ui/core/Typography';

const style = {
  padding: 10,
  margin: 10,
  marginTop: 0,
  paddingTop: 30
};

const BandIndexHero = props => (
  <div style={style}>
    <Card>
      <CardHeader
        component="h2"
        title={props.name}
        titleTypographyProps={{ variant: 'inherit' }}
      />

      <CardContent>
        <Typography component="h2">{props.description}</Typography>
      </CardContent>
    </Card>
  </div>
);

export default BandIndexHero;
