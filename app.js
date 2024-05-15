const express = require('express');
const app = express();

app.get('/helloworld', (req, res) => {
    res.send("Hello World!!!!");
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Servidor en funcionamiento en el puerto ${PORT}`);
});