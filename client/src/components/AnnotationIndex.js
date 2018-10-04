import React from 'react';
import { debugBorder } from '../styles/debugBorder';
import PayloadTable from './PayloadTable';

const AnnotationIndex = props => {
  const annotations = props.annotations;

  if (annotations.length === 0) {
    return <div />;
  } else {
    return (
      <div style={debugBorder}>
        <p>Annotations</p>
        {annotations.map(annotation => {
          const { id, pieceID, payload } = annotation;
          return (
            <div key={`table-annotationID${id}`}>
              <PayloadTable payload={payload} foreignKeyID={pieceID} />
              <br />
            </div>
          );
        })}
      </div>
    );
  }
};

export default AnnotationIndex;
