import React, { useEffect, useState } from "react";

function App() {
  const [plants, setPlants] = useState([]);

  useEffect(() => {
    fetch("/api/plants")
      .then((res) => res.json())
      .then((data) => setPlants(data.plants));
  }, []);

  return (
    <div>
      <h1>My Balcony Garden</h1>
      <ul>
        {plants.map((p, i) => (
          <li key={i}>{p.name}</li>
        ))}
      </ul>
    </div>
  );
}

export default App;
