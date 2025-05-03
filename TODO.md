# ✅ Planejamento para v0.0.1 → v0.0.x – Ecomov

## 🧩 Funcionalidades Essenciais

| Essencial | Complexidade | Tarefa                                                                  | Status |
|-----------|--------------|-------------------------------------------------------------------------|--------|
| 🟢 Sim    | 🟢 Baixa      | Conectar o app ao Firebase Authentication                               | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Implementar login com validação de e-mail e senha                      | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Implementar cadastro com validação de campos                           | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Impedir acesso ao mapa sem autenticação (corrigir bypass)              | [ ]    |
| 🟢 Sim    | 🟠 Média      | Corrigir botão "voltar" no menu lateral (deve retornar ao mapa)         | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Centralizar o mapa com a localização real do usuário via GPS           | [ ]    |
| 🟢 Sim    | 🟠 Média      | Tornar veículos clicáveis apenas com bateria > 20%                     | [ ]    |
| 🟢 Sim    | 🟠 Média      | Mostrar pop-up com dados do veículo (ID, tipo, bateria)                | [ ]    |
| 🟢 Sim    | 🔴 Alta       | Implementar leitura de QR Code para aluguel                            | [ ]    |
| 🟢 Sim    | 🟠 Média      | Iniciar sessão de aluguel após leitura do QR Code                      | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Exibir status visual de "aluguel iniciado" na interface                | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Implementar logout funcional com Firebase                              | [ ]    |
| 🟢 Sim    | 🟠 Média      | Corrigir a navegação completa do menu lateral                          | [ ]    |

---

## 🚀 Versão v0.1.0 → v0.x.0 – MVP Funcional

---

### 🔒 Funcionalidades de Segurança (Opcionais)

| Essencial | Complexidade | Tarefa                                                                  | Status |
|-----------|--------------|--------------------------------------------------------------------------|--------|
| 🟡 Opcional | 🟠 Média    | Implementar troca de senha com Firebase                                 | [ ]    |
| 🟡 Opcional | 🟠 Média    | Habilitar biometria com `local_auth` (impressão digital/rosto)          | [ ]    |
| 🟡 Opcional | 🟠 Média    | Implementar cadastro de pergunta de segurança                          | [ ]    |
| 🟡 Opcional | 🟢 Baixa    | Criar tela simulada "Gerenciar dispositivos"                            | [ ]    |
| 🟡 Opcional | 🔴 Alta     | Implementar logout em todos os dispositivos (revogação de sessões)      | [ ]    |

---

### ⚙️ Backend e Sessões

| Essencial | Complexidade | Tarefa                                                                  | Status |
|-----------|--------------|--------------------------------------------------------------------------|--------|
| 🟢 Sim    | 🔴 Alta       | Criar backend para sessões de aluguel e estado dos veículos              | [ ]    |
| 🟢 Sim    | 🔴 Alta       | Integrar comunicação com hardware real (desbloqueio remoto - futuro)     | [ ]    |
| 🟢 Sim    | 🟠 Média      | Criar tela de histórico de corridas                                     | [ ]    |
| 🟢 Sim    | 🟠 Média      | Simular cobrança com base no tempo de uso                               | [ ]    |

---

### 🎨 UX/UI e Preparação para o Release

| Essencial | Complexidade | Tarefa                                                                  | Status |
|-----------|--------------|--------------------------------------------------------------------------|--------|
| 🟢 Sim    | 🟢 Baixa      | Adicionar tela de Splash Screen                                         | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Adicionar ícone e nome do app                                           | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Exibir mensagens de erro e validação (ex: login inválido)               | [ ]    |
| 🟢 Sim    | 🟢 Baixa      | Verificar permissões (GPS, câmera)                                     | [ ]    |
| 🟢 Sim    | 🟠 Média      | Testar app em pelo menos dois dispositivos Android                      | [ ]    |
| 🟢 Sim    | 🟠 Média      | Publicar versão beta (Firebase App Distribution ou Play Store Alpha)    | [ ]    |

---

## 🚀 Versão v1.0.0 – Release

Publicar na Play Store com todas as funcionalidades estáveis e testadas.
