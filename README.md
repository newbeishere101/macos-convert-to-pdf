# macOS Batch Office-to-PDF Quick Action

A lightweight macOS Finder Quick Action that converts selected PowerPoint (`.pptx`, `.ppt`) and Word (`.docx`, `.doc`) documents into individual PDFs directly in the same folder.

## Key Features

- **Batch Conversion**: Select multiple documents of mixed types (e.g. 3 Word docs + 2 PowerPoints); converts each into its own separate PDF without merging.
- **Silent & Headless**: Automatically uses LibreOffice headless mode (`soffice --headless`) when available so conversion runs completely invisibly in the background.
- **Zero Configuration Fallback**: If LibreOffice is not installed, it automatically falls back to Apple's built-in Keynote and Pages apps via AppleScript.
- **Same Directory**: Saves each output PDF alongside its original file (`Report.docx` -> `Report.pdf`).
- **macOS Native Notification**: Dispatches a brief macOS system notification upon completion.

---

## Prerequisites (Recommended)

For completely headless and fast background conversion, install LibreOffice via Homebrew:

```bash
brew install --cask libreoffice
```

*(If not installed, macOS will use Keynote/Pages automatically).*

---

## Installation

### Option 1: Automated Install via Terminal

Clone the repository and run `install.sh`:

```bash
git clone https://github.com/sadeghiartin/macos-convert-to-pdf.git
cd macos-convert-to-pdf
chmod +x install.sh
./install.sh
```

### Option 2: Manual Installation

1. Copy `Convert to PDF.workflow` into `~/Library/Services/`:
   ```bash
   cp -R "Convert to PDF.workflow" ~/Library/Services/
   ```
2. Restart Finder and reload services:
   ```bash
   /System/Library/CoreServices/pbs -update
   killall Finder
   ```

---

## Enable the Quick Action

1. In **Finder**, right-click any document or file.
2. Navigate to **Quick Actions** -> click **Customize...**.
3. Under the **Finder** extensions list, turn the toggle **ON** for **Convert to PDF**.

---

## Usage

1. Select one or more `.docx`, `.doc`, `.pptx`, or `.ppt` files in Finder.
2. Right-click and choose **Quick Actions** -> **Convert to PDF**.
3. A notification will announce when the files are converted.

---

## Uninstallation

Run the included uninstaller:

```bash
chmod +x uninstall.sh
./uninstall.sh
```

---

## License

MIT License. Free to use and modify.
