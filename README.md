# 💕 Retrospectiva — Lorrany & Lucas

Página de presente digital interativa, estilo Spotify Wrapped.

## Estrutura

```
/
├── index.html       → Página pública (o que a Lorrany vê)
├── admin.html       → Painel de edição (só você usa)
├── netlify.toml     → Config de deploy
└── README.md
```

## Como usar localmente

1. Abra uma pasta terminal dentro deste diretório
2. Rode um servidor local:
   ```bash
   # Python 3
   python -m http.server 3000
   
   # Node.js (se tiver o npx)
   npx serve .
   ```
3. Acesse:
   - Página: http://localhost:3000
   - Admin: http://localhost:3000/admin.html

## Como fazer deploy no Netlify

### Método 1 — Drag & Drop (mais fácil)
1. Acesse https://app.netlify.com
2. Crie uma conta gratuita
3. Na dashboard, arraste esta pasta inteira para a área de deploy
4. Pronto! Você receberá um link como `nome-aleatorio.netlify.app`

### Método 2 — Netlify CLI
```bash
npm install -g netlify-cli
netlify deploy --prod
```

## ⚠️ Importante sobre os dados

Os dados são salvos no `localStorage` do seu navegador.
Para garantir que a Lorrany veja tudo, use o botão:

**"⬇ Baixar index.html com dados"** no painel Admin → aba Deploy

Isso gera um `index.html` com os dados embutidos, pronto para fazer upload.

## Personalizar

Abra `admin.html` e edite:
- ✍️ Capa: nomes, frase, emoji
- 💕 Contador: data de início do namoro  
- 📍 Timeline: momentos especiais
- 📸 Galeria: suas fotos
- 💌 Carta: mensagem para ela
- 🎧 Música: nome da música no player
