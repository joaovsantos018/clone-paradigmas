import unittest
from unittest.mock import patch
import io
import sys

# Importe a função que você deseja testar
from main import obter_dieta

class TestObterDieta(unittest.TestCase):

    @patch('builtins.input', return_value='2')  # Simula a entrada do usuário como '1'
    def test_obter_dieta_saudavel(self, mock_input):
        # Capture a saída padrão para verificar as mensagens impressas
        with patch('sys.stdout', new_callable=io.StringIO) as mock_stdout:
            # Execute a função obter_dieta com '1' como argumento
            obter_dieta(2)
            
            # Verifique se a saída contém a mensagem "Selecionando a dieta para emagrecer"
            self.assertIn("Selecionando a dieta para ganho de massa", mock_stdout.getvalue())

if __name__ == "__main__":
    unittest.main()
