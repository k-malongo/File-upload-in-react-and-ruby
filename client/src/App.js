import './App.css';
import React, { useState } from 'react';
function App() {
  const [data, setData] = useState([])
  // const [description, setDescription] = useState("")
  // const [image, setImage] = useState(null)
  function handleSubmit(e) {
    e.preventDefault();
    
    const formData = new FormData()
    formData.append("description", e.target.description.value )
    formData.append("location", "nairobi" )
    formData.append("video", "videolink")
    formData.append("user_id", 1)
    formData.append("status", "under investigation")
    formData.append("image", e.target.image.files[0] )
    submitToApi(formData)

   
    console.log(formData)
  }

  function submitToApi(formData) {
    fetch("/redflags", {
      method: "POST",
      body: formData
    })
      .then((r) => {
        if (r.ok) {
          r.json().then(data => console.log(data))

        } else {
          r.json().then((err) => console.log(err.errors));
        }
      });

  }

  return (
    <div className="App">
      <h1>Redflags</h1>
      <form onSubmit={(e) => handleSubmit(e)}>
        <label htmlFor='title'>Title</label>
        <br />
        <input type="text" name="description" id="decription"
         />
        <br />

        <input type="file" name="image" id="image" 
        />
        <label htmlFor='title'>Title</label>
        <br />
        <button type='submit'>Create Post</button>
      </form>
    </div>
  );
}

export default App;
