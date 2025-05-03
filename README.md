# 📘 Guia de Versionamento do Projeto

Este documento descreve a estratégia de versionamento e fluxo de trabalho adotado para este projeto.

---

## 🔀 Branches Principais

### `main`

Branch principal. Inicialmente estava com bugs, então foi substituída temporariamente pela `debug`.

### `debug`

* É a base "estável" temporária.
* Contém código funcional e validado.
* Nenhuma alteração direta é feita nesta branch.

---

## 🌱 Criação de Tarefas e Funcionalidades

### 1. Criar nova branch a partir de `debug`

```bash
git checkout debug
git checkout -b 0.0.2-rc1
```

### 2. Trabalhar na nova branch

* Realize as alterações necessárias para a tarefa.
* Commits pequenos e claros.

### 3. Finalizou?

* Teste tudo.
* Confirme que está funcional.

### 4. Fazer merge na `debug` e criar tag

```bash
git checkout debug
git merge 0.0.2-rc1

git tag v0.0.2

git push origin debug
git push origin v0.0.2
```

---

## 📦 Convenção de Tags

* `vX.Y.Z`: versões estáveis.
* `vX.Y.Z-rcN`: release candidates.

**Exemplos:**

* `v0.0.1`: primeira versão funcional.
* `v0.0.2-rc1`: primeiro release candidate da próxima versão.
* `v0.0.2`: nova versão funcional após merge.

---

## ✅ Exemplo de Planejamento

Crie um arquivo `TODO.md` com:

```markdown
# Planejamento v0.0.2

- [ ] Corrigir bug do botão voltar (issue #12)
- [ ] Substituir imagem de fundo do mapa
- [ ] Otimizar carregamento dos assets
- [ ] Marcar eco-pontos com cor diferente
```

---

## 🧼 Dicas adicionais

* Sempre rode `git pull` antes de iniciar.
* Faça `git push` após cada tarefa concluída.
* Use `git tag` para marcar marcos importantes.
* Use branches com nomes claros como `0.0.2-rc1`, `0.0.2-feature-x`, etc.

---

## 🔁 Evolução futura

Quando o projeto atingir estabilidade:

* Crie ou atualize a branch `main` com o conteúdo de `debug`.
* Use `dev` como nova base instável, se desejar adotar Git Flow completo.

---

*Atualizado em: 2025-05-02*
