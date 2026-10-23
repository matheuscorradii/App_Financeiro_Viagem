-- Rode uma vez no Supabase: SQL Editor -> New query -> colar -> Run.
-- Cada viagem fica numa linha, identificada pelo código de compartilhamento.
create table if not exists viagens (
  cod text primary key,
  dados jsonb not null,
  atualizado timestamptz not null default now()
);
-- Sem políticas: ninguém lê a tabela direto (impede listar as viagens de outros).
alter table viagens enable row level security;

-- Só dá para ler ou gravar uma viagem sabendo o código dela.
create or replace function get_viagem(p_cod text) returns jsonb
language sql security definer set search_path = public as
$$ select dados from viagens where cod = p_cod $$;

create or replace function put_viagem(p_cod text, p_dados jsonb) returns void
language sql security definer set search_path = public as
$$ insert into viagens (cod, dados) values (p_cod, p_dados)
   on conflict (cod) do update set dados = excluded.dados, atualizado = now() $$;

grant execute on function get_viagem(text), put_viagem(text, jsonb) to anon;
