import React from 'react';

import GiphysIndexItem from './giphys_index_item';

const GiphysIndex = ({ giphys }) => {
  const images = giphys.map(giph => {
    return (
      <li key={giph.id}>
        <img src={giph.images.fixed_height.url} />
      </li>
    );
  });
  return (
    <ul>
      {images}
    </ul>
  );
};

export default GiphysIndex;
