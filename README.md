# Rachaí

App simples para dividir os gastos de uma viagem em grupo, no estilo do Splitwise. Funciona no celular como um app instalado, inclusive offline.

**Acesse:** https://matheuscorradii.github.io/App_Financeiro_Viagem/

## O que ele faz

- **Pessoas:** cadastre quem está na viagem e busque pelo nome.
- **Gastos:** registre descrição, valor, data e quem pagou, e escolha entre quem dividir (todos ou só algumas pessoas). Dá para editar ou apagar qualquer gasto depois.
- **Quem deve a quem:** o app calcula o saldo de cada um e sugere o menor número de transferências para acertar as contas.
- **Acertos:** registre os pagamentos entre as pessoas, ou toque em "Pago" na sugestão.
- **Caixinha Pix:** controle à parte de um valor já pago (ex.: alimentação). Adicione valor, abata os gastos e veja o saldo. Ela não entra na divisão de contas.
- **Backup:** exporte e importe os dados em um arquivo `.json`.

## Instalar no Android

1. Abra o link acima no **Chrome**.
2. Toque em **⋮** → **Adicionar à tela inicial** (ou **Instalar app**).
3. Abra uma vez com internet. Depois ele funciona offline.

> Os dados ficam salvos **só no celular** em que o app é usado. Nada é enviado para a internet. Use **Exportar** de vez em quando para não perder nada.

## Arquivos

| Arquivo | Para que serve |
|---|---|
| `index.html` | O app inteiro (tela, estilo e lógica) |
| `manifest.json` | Nome, ícone e cores para instalar no celular |
| `sw.js` | Guarda o app em cache para abrir offline |
| `icon.svg` | Ícone do app |
