
const express = require('express');
const cors = require('cors');
//o poll vem do pacote node PG qual esa sendo utilizado 
const { Pool } = require('pg');

const app = express();
const port = 5001;

app.use(express.json());
app.use(cors()); 

//Aki começa a conexão do banco de dados com o expresse com a senha do meu postgre,usuário,localhost e o banco 
const pool = new Pool({
  connectionString: "postgres://postgres:1402@localhost:5432/projeto",
});

// Rota para a raiz
app.get('/usuarios', (req, res) => {
  res.send('Servidor está funcionando! Acesse /usuarios para listar os usuários.');
});

// Rota para listar usuários
app.get('/', async (req, res) => {
  try {
      //O metodo query apresenta os dados do banco,ele executa comandos SQL no exemplo utilizei o * para listar todos os dados dos usuários
    const result = await pool.query('SELECT * FROM projeto_bancodedados');
    res.json(result.rows);
  } catch (error) {
    console.error('Erro ao buscar usuários:', error);
    res.status(500).json({ error: 'Erro ao buscar usuários' });
  }
});

// Inicia o servidor
app.listen(port, () => {
  console.log(`Servidor rodando em http://localhost:${port}`);
});
