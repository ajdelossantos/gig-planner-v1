import React from 'react';
import '../PayloadTableStyles.css';

const PayloadTable = props => {
  const { foreignKeyID, payload } = props;

  return (
    <div>
      <table>
        <tbody>
          <tr>
            <th colSpan="2">Details</th>
          </tr>
          {Object.keys(payload).map(key => (
            <tr key={`foreignKey${foreignKeyID}-row${key}`}>
              <td>{key}</td>
              <td>{payload[key]}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default PayloadTable;
