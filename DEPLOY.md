# Deploying the Fetal Echo Calculators PWA to GitHub Pages

**Time required:** about 15 minutes, once only.

---

## What you have

```
pwa/
├── index.html          ← Hub landing page
├── coa.html            ← Coarctation Risk Tool
├── zscore.html         ← Z-Score & Function Calculator
├── manifest.json       ← PWA metadata (name, icons, theme)
├── sw.js               ← Service worker (offline caching)
└── icons/
    ├── icon-192.png
    ├── icon-512.png
    └── icon.svg
```

---

## Step 1 — Create a free GitHub account

Go to https://github.com and sign up (or sign in if you already have one).
Keep your username short and professional — it appears in the URL.

---

## Step 2 — Create a new repository

1. Click the **+** icon (top right) → **New repository**
2. Name it: `fetal-echo-calculators` (or any name you like)
3. Set to **Public** (required for free GitHub Pages)
4. Tick **Add a README file** → click **Create repository**

---

## Step 3 — Upload the files

1. Open your new repository
2. Click **Add file** → **Upload files**
3. Drag in the entire contents of the `pwa/` folder:
   - index.html, coa.html, zscore.html
   - manifest.json, sw.js
   - The `icons/` folder (with all three icon files inside)
4. Scroll down → click **Commit changes**

---

## Step 4 — Enable GitHub Pages

1. In your repository, click **Settings** (top menu)
2. In the left sidebar click **Pages**
3. Under **Branch**, select `main` → folder `/ (root)` → click **Save**
4. Wait 1–2 minutes. Refresh. A banner appears:
   > "Your site is live at https://yourusername.github.io/fetal-echo-calculators/"
5. Open that URL — your app is live.

---

## Step 5 — Test it

Open the URL on your phone's browser (Chrome on Android / Safari on iPhone).

**Android/Chrome:** three-dot menu → "Add to Home screen" → Install
**iPhone/Safari:** Share button → "Add to Home Screen"

The app installs and works fully offline from then on.

---

## Step 6 — Add to fetal-echo.org menu

1. Log in to WordPress.com
2. Go to **Appearance** → **Menus** (or **Customise** → **Menus**)
3. Click **Add items** → **Custom Links**
4. URL: `https://yourusername.github.io/fetal-echo-calculators/`
5. Link text: `Calculators`
6. Click **Add to menu** → drag it to the right place → **Save**

That's it. The link sits in your nav bar. Visitors can use it in-browser or install it as an app.

---

## Optional: Use your own subdomain (calculators.fetal-echo.org)

If you want a clean URL instead of github.io, and you control your domain's DNS:

1. In GitHub Pages settings → **Custom domain** → enter `calculators.fetal-echo.org` → Save
2. In your domain registrar (wherever you registered fetal-echo.org), add a CNAME record:
   - **Name:** `calculators`
   - **Value:** `yourusername.github.io`
3. Wait up to 24 hours for DNS to propagate. GitHub will provision HTTPS automatically.

Your app then lives at `https://calculators.fetal-echo.org/` — which you can link from WordPress and the landing page hero.

---

## Updating the calculators later

1. Edit the relevant HTML file(s) locally
2. Go to your GitHub repository → click the file → click the pencil (edit) icon → paste your changes → Commit
   OR drag-and-drop the new file over **Upload files** → Commit
3. GitHub Pages deploys automatically in ~1 minute
4. Users get the update the next time they load the app (the service worker picks up changes)

---

## Privacy note

No patient data is transmitted anywhere. All calculations run in the browser.
The only optional telemetry is the anonymous usage counter (risk band + date) in the CoA tool,
which is disabled by default — see the `LOG_ENDPOINT` variable in coa.html if you ever want to enable it.
