#!/bin/bash

echo
echo "Download Bootstrap"
echo "=================="
echo "https://www.jsdelivr.com/package/npm/bootstrap"
echo

# Change directory to the script's location
cd "$(dirname "$0")" || exit

echo "Configuring Version and URLs"
echo "----------------------------"
VERSION="5.3.3"
URL_BASE="https://cdn.jsdelivr.net/npm/bootstrap@${VERSION}/dist"

# Bootstrap Icons
ICONS_VERSION="1.11.3"
URL_BOOTSTRAP_ICONS_CSS="https://cdn.jsdelivr.net/npm/bootstrap-icons@${ICONS_VERSION}/font/bootstrap-icons.css"
URL_FONT_WOFF="https://cdn.jsdelivr.net/npm/bootstrap-icons@${ICONS_VERSION}/font/fonts/bootstrap-icons.woff"
URL_FONT_WOFF2="https://cdn.jsdelivr.net/npm/bootstrap-icons@${ICONS_VERSION}/font/fonts/bootstrap-icons.woff2"

# License
URL_LICENSE="https://raw.githubusercontent.com/twbs/bootstrap/main/LICENSE"

echo
echo "Configuring Target Directories and Files"
echo "----------------------------------------"
TARGET_WWW_DIR="../wwwroot"
TARGET_CSS_DIR="${TARGET_WWW_DIR}/css/bootstrap"
TARGET_JS_DIR="${TARGET_WWW_DIR}/js/bootstrap"
TARGET_FONT_DIR="${TARGET_CSS_DIR}/fonts"
TARGET_LICENSE="${TARGET_WWW_DIR}/LICENSE-bootstrap.txt"

echo
echo "Creating Directories"
echo "--------------------"
mkdir -p "$TARGET_CSS_DIR"
mkdir -p "$TARGET_JS_DIR"
mkdir -p "$TARGET_FONT_DIR"

echo
echo "Downloading Files"
echo "-----------------"

# CSS
CSS_FILES=(
  "bootstrap.min.css"
  "bootstrap.min.css.map"
  "bootstrap.rtl.min.css"
  "bootstrap.rtl.min.css.map"
  "bootstrap-grid.min.css"
  "bootstrap-grid.min.css.map"
  "bootstrap-grid.rtl.min.css"
  "bootstrap-grid.rtl.min.css.map"
  "bootstrap-reboot.min.css"
  "bootstrap-reboot.min.css.map"
  "bootstrap-reboot.rtl.min.css"
  "bootstrap-reboot.rtl.min.css.map"
  "bootstrap-utilities.min.css"
  "bootstrap-utilities.min.css.map"
  "bootstrap-utilities.rtl.min.css"
  "bootstrap-utilities.rtl.min.css.map"
)

for f in "${CSS_FILES[@]}"; do
  curl -o "${TARGET_CSS_DIR}/${f}" "${URL_BASE}/css/${f}"
done

# JS
JS_FILES=(
  "bootstrap.min.js"
  "bootstrap.min.js.map"
  "bootstrap.bundle.min.js"
  "bootstrap.bundle.min.js.map"
  "bootstrap.esm.min.js"
  "bootstrap.esm.min.js.map"
)

for f in "${JS_FILES[@]}"; do
  curl -o "${TARGET_JS_DIR}/${f}" "${URL_BASE}/js/${f}"
done

# Bootstrap Icons
curl -o "${TARGET_CSS_DIR}/bootstrap-icons.css" "$URL_BOOTSTRAP_ICONS_CSS"
curl -o "${TARGET_FONT_DIR}/bootstrap-icons.woff" "$URL_FONT_WOFF"
curl -o "${TARGET_FONT_DIR}/bootstrap-icons.woff2" "$URL_FONT_WOFF2"

# License
curl -o "$TARGET_LICENSE" "$URL_LICENSE"

echo
echo "==================================="
echo "Finished downloading Bootstrap files"
echo
