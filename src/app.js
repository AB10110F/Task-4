const express = require('express');
const userRoutes = require('./routes/routes');
const sequelize = require('./config/database');

const app = express();

app.use(express.json());
app.use('/api', userRoutes);

sequelize.sync()
  .then(() => {
    console.log('Database synced');
  })
  .catch(err => {
    console.error('Error syncing database:', err);
  });

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

