# HTML Share

Static HTML documents published through GitHub Pages.

## Fast publishing

1. Put the HTML document and its assets inside `site/`.
2. Use `site/index.html` for the main page. For another document, add a folder such as `site/report/index.html`.
3. In Terminal, run:

```bash
cd "/Users/joyrock/Documents/html-share"
./publish-html.sh "Publish report"
```

A push to `main` triggers the GitHub Pages workflow automatically. The public address is shown in the Actions deployment summary after the first successful deployment.

## Safety

This repository is public. Do not place personal, pastoral-care, financial, medical, account, or confidential material in `site/`.
