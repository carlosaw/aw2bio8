Instalação
Você pode clonar este repositório OU baixar o .zip

Ao descompactar, é necessário rodar o composer pra instalar as dependências e gerar o autoload.

Vá até a pasta do projeto, pelo prompt/terminal e execute:

# composer install

Depois é só aguardar.

# Rodar projeto
## php artisan serve

# Browser
## 127.0.0.1:8000/carlos
## 127.0.0.1:8000/joaozinho

Configuração
Todos os arquivos de configuração e aplicação estão dentro da pasta src.

As configurações de Banco de Dados e URL estão no arquivo src/Config.php

É importante configurar corretamente a constante BASE_DIR:

const BASE_DIR = '/PastaDoProjeto/public';

Uso
Você deve acessar a pasta public do projeto.

O ideal é criar um alias específico no servidor que direcione diretamente para a pasta public.

Modelo de MODEL
<?php
namespace src\models;
use \core\Model;

class Usuario extends Model {

}
