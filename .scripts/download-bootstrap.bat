@echo off
setlocal
echo.
@echo Download Bootstrap
@echo ==================
@echo https://www.jsdelivr.com/package/npm/bootstrap
@echo.

pushd "%~dp0" || exit /b 1

@echo Configuring Version and URLs
@echo ----------------------------
set VERSION=5.3.8
set URL_BASE=https://cdn.jsdelivr.net/npm/bootstrap@%VERSION%/dist

:: Bootstrap Icons
set ICONS_VERSION=1.13.2
set URL_BOOTSTRAP_ICONS_CSS=https://cdn.jsdelivr.net/npm/bootstrap-icons@%ICONS_VERSION%/font/bootstrap-icons.css
set URL_FONT_WOFF=https://cdn.jsdelivr.net/npm/bootstrap-icons@%ICONS_VERSION%/font/fonts/bootstrap-icons.woff
set URL_FONT_WOFF2=https://cdn.jsdelivr.net/npm/bootstrap-icons@%ICONS_VERSION%/font/fonts/bootstrap-icons.woff2

:: License
set URL_LICENSE=https://raw.githubusercontent.com/twbs/bootstrap/v%VERSION%/LICENSE
set URL_ICONS_LICENSE=https://raw.githubusercontent.com/twbs/icons/v%ICONS_VERSION%/LICENSE

@echo.
@echo Configuring Target Directories and Files
@echo ----------------------------------------
set TARGET_WWW_DIR=../wwwroot
set TARGET_CSS_DIR=%TARGET_WWW_DIR%/css
set TARGET_JS_DIR=%TARGET_WWW_DIR%/js
set TARGET_FONT_DIR=%TARGET_CSS_DIR%/fonts
set TARGET_LICENSE=%TARGET_WWW_DIR%/LICENSE-bootstrap.txt
set TARGET_ICONS_LICENSE=%TARGET_WWW_DIR%/LICENSE-bootstrap-icons.txt

@echo.
@echo Creating Directories
@echo --------------------
if not exist "%TARGET_CSS_DIR%" mkdir "%TARGET_CSS_DIR%" || goto :download_failed
if not exist "%TARGET_JS_DIR%" mkdir "%TARGET_JS_DIR%" || goto :download_failed
if not exist "%TARGET_FONT_DIR%" mkdir "%TARGET_FONT_DIR%" || goto :download_failed

@echo.
@echo Downloading Files
@echo -----------------

:: Download Bootstrap CSS
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap.min.css" "%URL_BASE%/css/bootstrap.min.css" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap.min.css.map" "%URL_BASE%/css/bootstrap.min.css.map" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap.rtl.min.css" "%URL_BASE%/css/bootstrap.rtl.min.css" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap.rtl.min.css.map" "%URL_BASE%/css/bootstrap.rtl.min.css.map" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap-grid.min.css" "%URL_BASE%/css/bootstrap-grid.min.css" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap-grid.min.css.map" "%URL_BASE%/css/bootstrap-grid.min.css.map" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap-grid.rtl.min.css" "%URL_BASE%/css/bootstrap-grid.rtl.min.css" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap-grid.rtl.min.css.map" "%URL_BASE%/css/bootstrap-grid.rtl.min.css.map" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap-reboot.min.css" "%URL_BASE%/css/bootstrap-reboot.min.css" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap-reboot.min.css.map" "%URL_BASE%/css/bootstrap-reboot.min.css.map" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap-reboot.rtl.min.css" "%URL_BASE%/css/bootstrap-reboot.rtl.min.css" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap-reboot.rtl.min.css.map" "%URL_BASE%/css/bootstrap-reboot.rtl.min.css.map" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap-utilities.min.css" "%URL_BASE%/css/bootstrap-utilities.min.css" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap-utilities.min.css.map" "%URL_BASE%/css/bootstrap-utilities.min.css.map" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap-utilities.rtl.min.css" "%URL_BASE%/css/bootstrap-utilities.rtl.min.css" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap-utilities.rtl.min.css.map" "%URL_BASE%/css/bootstrap-utilities.rtl.min.css.map" || goto :download_failed

:: Download Bootstrap JS
curl --fail --show-error --silent --location -o "%TARGET_JS_DIR%/bootstrap.min.js" "%URL_BASE%/js/bootstrap.min.js" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_JS_DIR%/bootstrap.min.js.map" "%URL_BASE%/js/bootstrap.min.js.map" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_JS_DIR%/bootstrap.bundle.min.js" "%URL_BASE%/js/bootstrap.bundle.min.js" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_JS_DIR%/bootstrap.bundle.min.js.map" "%URL_BASE%/js/bootstrap.bundle.min.js.map" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_JS_DIR%/bootstrap.esm.min.js" "%URL_BASE%/js/bootstrap.esm.min.js" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_JS_DIR%/bootstrap.esm.min.js.map" "%URL_BASE%/js/bootstrap.esm.min.js.map" || goto :download_failed

:: Download Bootstrap Icons
curl --fail --show-error --silent --location -o "%TARGET_CSS_DIR%/bootstrap-icons.css" "%URL_BOOTSTRAP_ICONS_CSS%" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_FONT_DIR%/bootstrap-icons.woff" "%URL_FONT_WOFF%" || goto :download_failed
curl --fail --show-error --silent --location -o "%TARGET_FONT_DIR%/bootstrap-icons.woff2" "%URL_FONT_WOFF2%" || goto :download_failed

:: Download License
curl --fail --show-error --silent --location -o "%TARGET_LICENSE%" "%URL_LICENSE%" || goto :download_failed

curl --fail --show-error --silent --location -o "%TARGET_ICONS_LICENSE%" "%URL_ICONS_LICENSE%" || goto :download_failed

popd

@echo.
@echo ===================================
@echo Finished downloading Bootstrap files
@echo.

endlocal
exit /b 0

:download_failed
echo Bootstrap download failed. 1>&2
popd
endlocal
exit /b 1
