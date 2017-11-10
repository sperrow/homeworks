import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      result: 0,
      num1: '',
      num2: ''
    };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.clear = this.clear.bind(this);
    this.addition = this.addition.bind(this);
    this.subtraction = this.subtraction.bind(this);
    this.multiplication = this.multiplication.bind(this);
    this.division = this.division.bind(this);
  }


  setNum1(e) {
    e.preventDefault();
    this.setState(
      {num1: e.target.value ? parseInt(e.target.value) : ''}
    );
  }

  setNum2(e) {
    e.preventDefault();
    this.setState(
      {num2: e.target.value ? parseInt(e.target.value) : ''}
    );
  }

  clear(e) {
    e.preventDefault();
    this.setState({
      result: 0,
      num1: '',
      num2: ''
    });
  }

  addition(e) {
    e.preventDefault();
    let result = this.state.num1 + this.state.num2;
    if (result === '') result = 0;
    this.setState({ result });
  }

  subtraction(e) {
    e.preventDefault();
    let result = this.state.num1 - this.state.num2;
    this.setState({ result });
  }

  multiplication(e) {
    e.preventDefault();
    let result = this.state.num1 * this.state.num2;
    this.setState({ result });
  }

  division(e) {
    e.preventDefault();
    let result = this.state.num1 / this.state.num2;
    this.setState({ result });
  }

  render() {
    const {result, num1, num2} = this.state;
    return (
      <div>
        <h1>{result}</h1>
        <input
          type="text"
          value={num1}
          onChange={this.setNum1}>
        </input>
        <input
          type="text"
          value={num2}
          onChange={this.setNum2}>
        </input>
        <div>
          <button onClick={this.addition}>+</button>
          <button onClick={this.subtraction}>-</button>
          <button onClick={this.multiplication}>*</button>
          <button onClick={this.division}>/</button>
          <button onClick={this.clear}>Clear</button>
        </div>
      </div>
    );
  }
}

export default Calculator;
