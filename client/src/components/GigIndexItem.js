import React, { Component } from 'react';

class GigIndexItem extends Component {
  render() {
    const { id, name, payload } = this.props.gig;

    return (
      <ul>
        <li>{name}</li>
        {Object.keys(payload).map(key => (
          <li key={`gig-data-${id}`}>{`${key}: ${payload.key}`}</li>
        ))}
      </ul>
    );
  }
}

export default GigIndexItem;
