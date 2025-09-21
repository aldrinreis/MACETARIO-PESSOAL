# 📘 Resumo – Introdução a DevOps, CI, CD e IaC

## 🔹 O que é DevOps?
- Conjunto de **práticas + ferramentas** para **entrega rápida de aplicações**.
- O ciclo de desenvolvimento é **alimentado pela experiência do usuário**.
- Não é só ferramenta → é **cultura + integração entre equipes**.

**Principais práticas:**
- Versionamento de código (VCS)
- Integração Contínua (CI)
- Entrega Contínua (CD)
- Infraestrutura como Código (IaC)
- Monitoramento contínuo

---

## ✅ Benefícios
- **Entrega rápida** de aplicações.
- **Qualidade** → testes + monitoramento constante.
- **Escalabilidade** → app em 1 ou vários servidores sem perda.
- **Confiabilidade** → mesmo com mudanças constantes, o processo é confiável.
- Pesquisas mostram:
  - Melhor desempenho organizacional.
  - Melhor gestão de produtos.
  - Menor nível de burnout.

---

## ⚠️ Desafios
- **Cultura** → mudanças culturais são o maior obstáculo.
- **Testes automatizados** → exigem disciplina e tempo.
- **Divergências em práticas** (ex: uso de branches no versionamento).
- **Capacitação** → tempo de aprendizado + especialização.
- **Tempo inicial maior**, mas traz segurança no longo prazo.

---

## 🔄 Integração Contínua (CI)
- Integra código + libs + testes → gera artefatos de deploy.
- Dá feedback rápido (erros antes do deploy).
- **Pipeline CI**:
  1. Versionamento de código (ex: Git + GitHub).
  2. Build (ex: Apache Maven).
  3. Testes unitários.
  4. Artefato de deploy.

---

## 🚀 Entrega Contínua (CD)
- Extensão do CI → leva o artefato até o servidor.
- Pode ser:
  - **Continuous Delivery** → implantação manual.
  - **Continuous Deployment** → implantação automatizada.
- Exemplo prático: AWS CodePipeline.

---

## 🏗️ Infraestrutura como Código (IaC)
- Infraestrutura descrita como **código versionado**.
- Permite:
  - Reprodutibilidade.
  - Compartilhamento em equipe.
  - CD da infraestrutura.
- Exemplo: AWS CloudFormation.

---

## 📊 Monitoramento
- Fecha o ciclo DevOps → garante evolução contínua.
- **Ferramentas**: Amazon CloudWatch.
- **Painéis** para CPU, rede, uso de recursos.
- **Alarmes** para métricas críticas (ex: custo, CPU).
- **Logs centralizados** → facilitam detectar erros e corrigir rapidamente.

---

## 🛠️ Ferramentas utilizadas no curso
- **Git / GitHub** → versionamento.
- **Apache Maven** → build.
- **JUnit** → testes unitários.
- **Docker** → conteinerização.
- **AWS CodePipeline** → integração de CI/CD.

---
📌 **Resumo final:** DevOps combina **cultura, práticas e ferramentas** para reduzir tempo de entrega, aumentar qualidade e confiabilidade, mas exige **mudança cultural e capacitação contínua**.
