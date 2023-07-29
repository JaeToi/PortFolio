import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
// src 폴더에 serviceWorker.js 파일을 넣어줍니다.
import * as serviceWorker from './serviceWorker';
import { BrowserRouter } from 'react-router-dom/cjs/react-router-dom.min';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <BrowserRouter>
    <App />
  </BrowserRouter>  
);


// 여기서는, serviceWorker.unregister(); 처리를 해줍니다.
// 이것은 리액트 앱 배포시 cache를 남기지 않도록 처리해 줍니다.
// 이렇게 해주는 이유는, index 파일이 cache를 남기게 된다면,
// static 자산의 파일명이 업데이트 되더라도
// index 파일에 링크된 파일명이 바뀌지 않기 때문에
// 새로운 배포가 적용되지 않을 수 있기 때문입니다.
serviceWorker.unregister();  
