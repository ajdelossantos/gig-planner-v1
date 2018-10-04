import React from 'react';
import PayloadTable from './PayloadTable';
import { debugBorder } from '../styles/debugBorder';
import AnnotationIndex from './AnnotationIndex';

const PieceIndexItem = props => {
  const { id, title, annotations, payload } = props.piece;

  return (
    <li style={debugBorder}>
      <h3>{title}</h3>
      <br />
      <PayloadTable payload={payload} foreignKeyID={id} />
      <br />
      <AnnotationIndex annotations={annotations} />
    </li>
  );
};

export default PieceIndexItem;
