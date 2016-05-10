import React from 'react';
import ReactDOM from 'react-dom';
// import SomeComponent from './components/SomeComponent';
// import AnotherComponent from './components/AnotherComponent';

const components = {
  // Your components go here:
  // 'SomeComponent': SomeComponent,
  // 'AnotherComponent': AnotherComponent
}

const reactTargetDivs = document.getElementsByClassName('react-component-target');

let componentName, componentProps
Array.prototype.forEach.call(reactTargetDivs, function (targetDiv) {
  componentName = targetDiv.getAttribute('data-react-class')
  componentProps = JSON.parse(targetDiv.getAttribute('data-react-props'))
  ReactDOM.render(
    React.createElement(
       components[componentName],
       componentProps
     ),
    targetDiv
  )
});
