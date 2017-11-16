import React from 'react';

import GiphysIndex from './giphys_index';

export default class GiphysSearch extends React.Component {
  constructor() {
    super();
    this.state = {
      searchTerm: ''
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(e) {
    this.setState({searchTerm: e.currentTarget.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.fetchSearchGiphys(this.state.searchTerm);
    this.setState({searchTerm: ''});
  }

  render() {
    let { giphys } = this.props;
    return (
      <div>
        <form onSubmit={this.handleSubmit}>
          <label>
            Search: <input type="text" onChange={this.handleChange} value={this.state.searchTerm} />
          </label>
          <p>
            <input type="submit" value="Submit" />
          </p>
        </form>
        <GiphysIndex giphys={giphys} />
      </div>
    );
  }
}
