import React from 'react';

export default class GiphysIndexItem extends React.Component {
  render() {
    return (
      <li><img src={this.props.url} /></li>
    );
  }
}
