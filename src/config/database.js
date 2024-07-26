const { Sequelize } = require('sequelize');

const sequelize = new Sequelize('usersdb', 'root', 'quetzal', {
  host: 'localhost',
  dialect: 'mysql',
});

module.exports = sequelize;

// async function testConnection() {
//   try {
//     await sequelize.authenticate();
//     console.log('Connection has been established successfully.');
//   } catch (error) {
//     console.error('Unable to connect to the database:', error);
//   } finally {
//     await sequelize.close();
//   }
// }
//
// testConnection();
