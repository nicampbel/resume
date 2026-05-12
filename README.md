# Resume-as-Code

Nicholas Campbell's CV, rendered automatically from `resume.yaml` using [RenderCV](https://rendercv.com) and GitHub Actions.

## Live site

<https://nicampbel.github.io/resume>

## How to update

To update the CV, edit `resume.yaml` and push to `main`. The PDF and live site will update automatically.

```bash
# make your edits, then:
git add resume.yaml
git commit -m "update cv"
git push
```

The GitHub Actions workflow will:

1. Render `resume.yaml` → PDF + HTML via RenderCV
2. Upload the PDF as a downloadable workflow artifact (retained 90 days)
3. Deploy the HTML to the `gh-pages` branch, which is served as the live site

## Local preview

```bash
python3 -m venv .venv
source .venv/bin/activate

pip install "rendercv[full]"

# Font Awesome 6 icons (rendercv v2.3 ships FA7 but the Typst package needs FA6)
mkdir -p fonts
curl -sL "https://github.com/FortAwesome/Font-Awesome/raw/6.x/webfonts/fa-regular-400.ttf" -o fonts/fa-regular-400.ttf
curl -sL "https://github.com/FortAwesome/Font-Awesome/raw/6.x/webfonts/fa-solid-900.ttf"   -o fonts/fa-solid-900.ttf
curl -sL "https://github.com/FortAwesome/Font-Awesome/raw/6.x/webfonts/fa-brands-400.ttf"  -o fonts/fa-brands-400.ttf

rendercv render resume.yaml
# output lands in rendercv_output/
```

## First-time GitHub Pages setup

After pushing for the first time, do **one manual step** in the GitHub UI:

1. **Settings → Actions → General → Workflow permissions**
   → select **Read and write permissions** → Save
2. **Settings → Pages → Source**
   → select branch `gh-pages`, folder `/` (root) → Save

The live site will be available at `https://<your-username>.github.io/<repo-name>` within a minute of the first successful deploy.
