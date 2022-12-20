// import logo from './logo.svg';
import './App.css';
import { useState, useEffect } from 'react';

function App() {
  const [mangas, setMangas] = useState([])
 useEffect(() => {
   fetch('/mangas')
    .then(res => res.json())
    .then(data => setMangas(data))  
 }, [])
 
  return (
    <div className="App">
      {mangas.map((manga) => <h4 key={manga.title}>{manga.title}</h4>)}
 
    </div>
  );
}

export default App;
