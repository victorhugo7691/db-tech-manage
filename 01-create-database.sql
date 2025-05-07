-- 1. Script de criação do banco de dados
CREATE DATABASE db_tech_manage
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF8'
    LC_CTYPE = 'en_US.UTF8'
    CONNECTION LIMIT = -1;

-- 2. Criação de usuário para a aplicação
CREATE USER app_tech_manage WITH
    LOGIN
    PASSWORD 'X9t4KiunzxOBAPtZ8r634jyxuWnf2bh2';

-- 3. Permissões para o usuário da aplicação
GRANT ALL PRIVILEGES ON DATABASE db_tech_manage TO app_tech_manage;
