
# ✅ Planejamento para v1.0.0 – Ecomov

## 🧩 Funcionalidades Essenciais

| Essencial | Complexidade | Tarefa                                                                 | Status |
|-----------|--------------|------------------------------------------------------------------------|--------|
| 🟢 Sim    | 🟢 Baixa      | Conectar app ao Firebase Authentication                                | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Implementar login com validação de email e senha                      | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Implementar cadastro com validação de campos                          | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Impedir acesso ao mapa sem autenticação (corrigir bypass)             | [ ]    |
| 🟢 Sim    | 🟠 Média      | Corrigir botão de "voltar" no menu lateral (deve voltar ao mapa)       | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Centralizar mapa com localização real do usuário via GPS              | [ ]    |
| 🟢 Sim    | 🟠 Média      | Tornar veículos clicáveis apenas com bateria > 20%                    | [ ]    |
| 🟢 Sim    | 🟠 Média      | Mostrar popup com dados do veículo (ID, tipo, bateria)                | [ ]    |
| 🟢 Sim    | 🔴 Alta       | Implementar leitura de QR Code para aluguel                           | [ ]    |
| 🟢 Sim    | 🟠 Média      | Iniciar sessão de aluguel após leitura do QR Code                     | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Criar lógica visual de "aluguel iniciado" (ex: status em tela)        | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Criar logout funcional com Firebase                                   | [ ]    |
| 🟢 Sim    | 🟠 Média      | Corrigir navegação do menu lateral                                    | [ ]    |

## 🔒 Funcionalidades de Segurança (Opcionais)

| Essencial | Complexidade | Tarefa                                                                 | Status |
|-----------|--------------|------------------------------------------------------------------------|--------|
| 🟡 Opcional | 🟠 Média    | Troca de senha funcional com Firebase                                 | [ ]    |
| 🟡 Opcional | 🟠 Média    | Habilitar biometria com `local_auth` (impressão digital/rosto)        | [ ]    |
| 🟡 Opcional | 🟠 Média    | Cadastro de pergunta de segurança                                     | [ ]    |
| 🟡 Opcional | 🟢 Baixa    | Criar tela "Gerenciar dispositivos" (simulada)                        | [ ]    |
| 🟡 Opcional | 🔴 Alta     | Logout de todos os dispositivos (revogação de sessões)                | [ ]    |

## 🎨 Ajustes de UX/UI e Preparação para o Release

| Essencial | Complexidade | Tarefa                                                                 | Status |
|-----------|--------------|------------------------------------------------------------------------|--------|
| 🟢 Sim    | 🟢 Baixa      | Adicionar Splash Screen                                               | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Adicionar ícone e nome do app                                         | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Adicionar mensagens de erro/validação (ex: login inválido)            | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Verificar permissões (GPS, câmera)                                   | [ ]    |
| 🟢 Sim    | 🟠 Média      | Testar app em pelo menos 2 dispositivos Android                       | [ ]    |
| 🟢 Sim    | 🟠 Média      | Publicar versão Beta (Firebase App Distribution ou Play Store Alpha)  | [ ]    |
