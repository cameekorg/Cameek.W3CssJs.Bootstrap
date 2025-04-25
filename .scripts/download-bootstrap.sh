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

# CSS Files
URL_CSS_BOOTSTRAP="${URL_BASE}/css/bootstrap.min.css"
URL_CSS_BOOTSTRAP_MAP="${URL_BASE}/css/bootstrap.min.css.map"
URL_CSS_BOOTSTRAP_RTL="${URL_BASE}/css/bootstrap.rtl.min.css"
URL_CSS_BOOTSTRAP_RTL_MAP="${URL_BASE}/css/bootstrap.rtl.min.css.map"
URL_CSS_GRID="${URL_BASE}/css/bootstrap-grid.min.css"
URL_CSS_GRID_MAP="${URL_BASE}/css/bootstrap-grid.min.css.map"
URL_CSS_GRID_RTL="${URL_BASE}/css/bootstrap-grid.rtl.min.css"
URL_CSS_GRID_RTL_MAP="${URL_BASE}/css/bootstrap-grid.rtl.min.css.map"
URL_CSS_REBOOT="${URL_BASE}/css/bootstrap-reboot.min.css"
URL_CSS_REBOOT_MAP="${URL_BASE}/css/bootstrap-reboot.min.css.map"
URL_CSS_REBOOT_RTL="${URL_BASE}/css/bootstrap-reboot.rtl.min.css"
URL_CSS_REBOOT_RTL_MAP="${URL_BASE}/css/bootstrap-reboot.rtl.min.css.map"
URL_CSS_UTILITIES="${URL_BASE}/css/bootstrap-utilities.min.css"
URL_CSS_UTILITIES_MAP="${URL_BASE}/css/bootstrap-utilities.min.css.map"
URL_CSS_UTILITIES_RTL="${URL_BASE}/css/bootstrap-utilities.rtl.min.css"
URL_CSS_UTILITIES_RTL_MAP="${URL_BASE}/css/bootstrap-utilities.rtl.min.css.map"

# JS Files
URL_JS_BOOTSTRAP="${URL_BASE}/js/bootstrap.min.js"
URL_JS_BOOTSTRAP_MAP="${URL_BASE}/js/bootstrap.min.js.map"
URL_JS_BUNDLE="${URL_BASE}/js/bootstrap.bundle.min.js"
URL_JS_BUNDLE_MAP="${URL_BASE}/js/bootstrap.bundle.min.js.map"
URL_JS_ESM="${URL_BASE}/js/bootstrap.esm.min.js"
URL_JS_ESM_MAP="${URL_BASE}/js/bootstrap.esm.min.js.map"

# License (manual link, Bootstrap doesn't put license file on CDN)
URL_LICENSE="https://raw.githubusercontent.com/twbs/bootstrap/main/LICENSE"

echo
echo "Configuring Target Directories and Files"
echo "----------------------------------------"
TARGET_WWW_DIR="../wwwroot"
TARGET_CSS_DIR="${TARGET_WWW_DIR}/css/bootstrap"
TARGET_JS_DIR="${TARGET_WWW_DIR}/js/bootstrap"

TARGET_LICENSE="${TARGET_WWW_DIR}/LICENSE-bootstrap.txt"

echo
echo "Creating Directories"
echo "--------------------"
mkdir -p "$TARGET_CSS_DIR"
mkdir -p "$TARGET_JS_DIR"

echo
echo "Downloading Files"
echo "-----------------"

# CSS
curl -o "${TARGET_CSS_DIR}/bootstrap.min.css" "$URL_CSS_BOOTSTRAP"
curl -o "${TARGET_CSS_DIR}/bootstrap.min.css.map" "$URL_CSS_BOOTSTRAP_MAP"
curl -o "${TARGET_CSS_DIR}/bootstrap.rtl.min.css" "$URL_CSS_BOOTSTRAP_RTL"
curl -o "${TARGET_CSS_DIR}/bootstrap.rtl.min.css.map" "$URL_CSS_BOOTSTRAP_RTL_MAP"
curl -o "${TARGET_CSS_DIR}/bootstrap-grid.min.css" "$URL_CSS_GRID"
curl -o "${TARGET_CSS_DIR}/bootstrap-grid.min.css.map" "$URL_CSS_GRID_MAP"
curl -o "${TARGET_CSS_DIR}/bootstrap-grid.rtl.min.css" "$URL_CSS_GRID_RTL"
curl -o "${TARGET_CSS_DIR}/bootstrap-grid.rtl.min.css.map" "$URL_CSS_GRID_RTL_MAP"
curl -o "${TARGET_CSS_DIR}/bootstrap-reboot.min.css" "$URL_CSS_REBOOT"
curl -o "${TARGET_CSS_DIR}/bootstrap-reboot.min.css.map" "$URL_CSS_REBOOT_MAP"
curl -o "${TARGET_CSS_DIR}/bootstrap-reboot.rtl.min.css" "$URL_CSS_REBOOT_RTL"
curl -o "${TARGET_CSS_DIR}/bootstrap-reboot.rtl.min.css.map" "$URL_CSS_REBOOT_RTL_MAP"
curl -o "${TARGET_CSS_DIR}/bootstrap-utilities.min.css" "$URL_CSS_UTILITIES"
curl -o "${TARGET_CSS_DIR}/bootstrap-utilities.min.css.map" "$URL_CSS_UTILITIES_MAP"
curl -o "${TARGET_CSS_DIR}/bootstrap-utilities.rtl.min.css" "$URL_CSS_UTILITIES_RTL"
curl -o "${TARGET_CSS_DIR}/bootstrap-utilities.rtl.min.css.map" "$URL_CSS_UTILITIES_RTL_MAP"

# JS
curl -o "${TARGET_JS_DIR}/bootstrap.min.js" "$URL_JS_BOOTSTRAP"
curl -o "${TARGET_JS_DIR}/bootstrap.min.js.map" "$URL_JS_BOOTSTRAP_MAP"
curl -o "${TARGET_JS_DIR}/bootstrap.bundle.min.js" "$URL_JS_BUNDLE"
curl -o "${TARGET_JS_DIR}/bootstrap.bundle.min.js.map" "$URL_JS_BUNDLE_MAP"
curl -o "${TARGET_JS_DIR}/bootstrap.esm.min.js" "$URL_JS_ESM"
curl -o "${TARGET_JS_DIR}/bootstrap.esm.min.js.map" "$URL_JS_ESM_MAP"

# License
curl -o "$TARGET_LICENSE" "$URL_LICENSE"

echo
echo "==================================="
echo "Finished downloading Bootstrap files"
echo
