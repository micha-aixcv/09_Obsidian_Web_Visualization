# Local Obsidian vault preview

This Quartz checkout previews an excluded local mirror of the sibling `obsidian` vault. The mirror was used because Quartz did not traverse every note through the directory symlink and the vault has no root `index.md`; a mirror allows a Quartz-only home page without changing the original vault.

Start the local site:

```bash
cd quartz-site
./start-local.sh
```

Open <http://localhost:8080>. Stop the preview with `Ctrl+C`.

The helper invokes the locally installed Quartz CLI as `npm run quartz -- build --serve`.

Quartz ignores Obsidian workspace data, Git metadata, trash, caches, temporary files, databases, archives, and executables. It continues to process normal note attachments such as images, PDFs, and CSV files.
