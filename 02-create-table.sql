--1. Criação do ENUM do tipo de usuário
CREATE TYPE E_USER_TYPE AS ENUM ('ADMIN', 'EDITOR', 'VIEWER');

--2. Script de criação da tabela user
CREATE TABLE IF NOT EXISTS public.user(
    id SERIAL NOT NULL,
    full_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL UNIQUE,
    phone VARCHAR(20) NOT NULL,
    birth_date date NOT NULL,
    user_type E_USER_TYPE NOT NULL,
    CONSTRAINT pk_user PRIMARY KEY(id)
);

--3. Criação de index para se ter boa performace em consultas
CREATE INDEX IF NOT EXISTS idx_user_phone ON public.user(phone);
CREATE INDEX IF NOT EXISTS idx_user_type ON public.user(user_type);
