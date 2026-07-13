# Databao

Interactive demo prototype — landing page, scripted onboarding chat, and workbench. Everything is hardcoded in one HTML file. No build step, no backend, no API keys.

## What's in the repo

```
index.html   ← the app
serve.sh     ← local server helper
README.md    ← this file
```

## Run locally

**Option 1 — local server (recommended)**

From the project folder:

```bash
./serve.sh
```

Then open **http://localhost:5173** in your browser.

If `./serve.sh` isn't executable:

```bash
chmod +x serve.sh
./serve.sh
```

Or run Python directly:

```bash
python3 -m http.server 5173
```

**Option 2 — open the file**

Double-click `index.html` in Finder, or open it directly in your browser. The page includes fallback CSS, so it still renders if the Tailwind CDN is slow or blocked.

## Deploy to your server

Copy one file:

```bash
scp index.html user@your-server:/var/www/html/
```

Point your web server at that file (nginx, Apache, S3 static hosting, etc.).

## Troubleshooting

| Problem | Fix |
|---------|-----|
| Blank page at `localhost:8080` | Wrong port — use **http://localhost:5173** after running `./serve.sh` |
| `localhost` with no port | Nothing listens on port 80 by default — use **http://localhost:5173** |
| "Can't connect" / nothing loads | Start the server first: `./serve.sh` |
| Stuck on "Loading Databao…" | Hard refresh (Cmd+Shift+R) or check the browser console for errors |
| `./serve.sh: Permission denied` | Run `chmod +x serve.sh`, then try again |
