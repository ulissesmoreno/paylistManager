# Arquitetura e Segurança (UVP)

## 1. Padrão Hexagonal (Backend)
- `domain`: Entidades (Track, Playlist) e Logica de Negócio pura.
- `application`: Casos de uso e Ports (Interfaces).
- `infrastructure`: Adapters (Controllers, Repositories, RSS/YouTube Parsers).

## 2. Metadados e Persistência
- **Entidade Track:** ID (UUID), Title, SourceType (Enum), SourceURL, Thumbnail, Watched (Boolean), Progress (Seconds), CreatedAt, OrderIndex.

## 3. Segurança & Resiliência
- **Sandbox:** O backend deve validar caminhos de arquivos locais contra Path Traversal.
- **Failover:** Se um link falhar, registrar log (SLF4J) e disparar evento para o Front pular para a próxima track.
- **CORS:** Configuração restritiva permitindo apenas o domínio do frontend.

## 4. Protocolo de Ataque (QA)
- Testar injeção de caracteres `../` no endpoint de stream local.
- Testar SQL Injection nos filtros de busca da playlist.
