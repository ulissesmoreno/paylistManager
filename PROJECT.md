# Projeto: Unified Vibe Player (UVP)
**Objetivo:** Player unificado (YouTube Embed + RSS + Local Files) com playlist única e persistente.

## Stack Técnica
- **Backend:** Java 21, Spring Boot 3.2+, Spring Security, JPA, PostgreSQL.
- **Frontend:** React (Vite), TypeScript, Tailwind CSS.
- **Infra:** Docker Compose (Postgres).

## Funcionalidades Core
1. **YouTube:** Renderização via IFrame API (URL Parsing via Regex). Sem API Keys.
2. **Local Media:** Streaming de arquivos do diretório `./media_files` com suporte a Seek (Byte-Range).
3. **RSS:** Agregador de mídias via feeds XML/RSS.
4. **Playlist:** Fila única com suporte a reordenamento (Drag & Drop), histórico de "assistido" e data de inclusão.
