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

## 📝 Planejamento

### 📌 Planejamento `main`

\[x] prototipo inicial

### 📌 Planejamento `v0.0.1`

\[x] v0.0.1: primeira versão funcional.

---
*Atualizado em: 2025-05-02*
