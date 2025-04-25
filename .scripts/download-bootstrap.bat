@echo.
@echo Download Bootstrap
@echo ==================
@echo https://www.jsdelivr.com/package/npm/bootstrap
@echo.
@prompt $S
@pushd %~dp0
@echo Configuring Version and URLs
@echo ----------------------------
set VERSION=5.3.3
set URL_BASE=https://cdn.jsdelivr.net/npm/bootstrap@%VERSION%/dist

:: License
set URL_LICENSE=https://raw.githubusercontent.com/twbs/bootstrap/main/LICENSE

@echo.
@echo Configuring Target Directories and Files
@echo ----------------------------------------
set TARGET_WWW_DIR=../wwwroot
set TARGET_CSS_DIR=%TARGET_WWW_DIR%/css/bootstrap
set TARGET_JS_DIR=%TARGET_WWW_DIR%/js/bootstrap
set TARGET_LICENSE=%TARGET_WWW_DIR%/LICENSE-bootstrap.txt

@echo.
@echo Creating Directories
@echo --------------------
if not exist "%TARGET_CSS_DIR%" mkdir "%TARGET_CSS_DIR%"
if not exist "%TARGET_JS_DIR%" mkdir "%TARGET_JS_DIR%"

@echo.
@echo Downloading Files
@echo -----------------
curl -o %TARGET_CSS_DIR%/bootstrap.min.css %URL_BASE%/css/bootstrap.min.css
curl -o %TARGET_CSS_DIR%/bootstrap.min.css.map %URL_BASE%/css/bootstrap.min.css.map
curl -o %TARGET_CSS_DIR%/bootstrap.rtl.min.css %URL_BASE%/css/bootstrap.rtl.min.css
curl -o %TARGET_CSS_DIR%/bootstrap.rtl.min.css.map %URL_BASE%/css/bootstrap.rtl.min.css.map
curl -o %TARGET_CSS_DIR%/bootstrap-grid.min.css %URL_BASE%/css/bootstrap-grid.min.css
curl -o %TARGET_CSS_DIR%/bootstrap-grid.min.css.map %URL_BASE%/css/bootstrap-grid.min.css.map
curl -o %TARGET_CSS_DIR%/bootstrap-grid.rtl.min.css %URL_BASE%/css/bootstrap-grid.rtl.min.css
curl -o %TARGET_CSS_DIR%/bootstrap-grid.rtl.min.css.map %URL_BASE%/css/bootstrap-grid.rtl.min.css.map
curl -o %TARGET_CSS_DIR%/bootstrap-reboot.min.css %URL_BASE%/css/bootstrap-reboot.min.css
curl -o %TARGET_CSS_DIR%/bootstrap-reboot.min.css.map %URL_BASE%/css/bootstrap-reboot.min.css.map
curl -o %TARGET_CSS_DIR%/bootstrap-reboot.rtl.min.css %URL_BASE%/css/bootstrap-reboot.rtl.min.css
curl -o %TARGET_CSS_DIR%/bootstrap-reboot.rtl.min.css.map %URL_BASE%/css/bootstrap-reboot.rtl.min.css.map
curl -o %TARGET_CSS_DIR%/bootstrap-utilities.min.css %URL_BASE%/css/bootstrap-utilities.min.css
curl -o %TARGET_CSS_DIR%/bootstrap-utilities.min.css.map %URL_BASE%/css/bootstrap-utilities.min.css.map
curl -o %TARGET_CSS_DIR%/bootstrap-utilities.rtl.min.css %URL_BASE%/css/bootstrap-utilities.rtl.min.css
curl -o %TARGET_CSS_DIR%/bootstrap-utilities.rtl.min.css.map %URL_BASE%/css/bootstrap-utilities.rtl.min.css.map
curl -o %TARGET_JS_DIR%/bootstrap.min.js %URL_BASE%/js/bootstrap.min.js
curl -o %TARGET_JS_DIR%/bootstrap.min.js.map %URL_BASE%/js/bootstrap.min.js.map
curl -o %TARGET_JS_DIR%/bootstrap.bundle.min.js %URL_BASE%/js/bootstrap.bundle.min.js
curl -o %TARGET_JS_DIR%/bootstrap.bundle.min.js.map %URL_BASE%/js/bootstrap.bundle.min.js.map
curl -o %TARGET_JS_DIR%/bootstrap.esm.min.js %URL_BASE%/js/bootstrap.esm.min.js
curl -o %TARGET_JS_DIR%/bootstrap.esm.min.js.map %URL_BASE%/js/bootstrap.esm.min.js.map
curl -o %TARGET_LICENSE% %URL_LICENSE%

@popd
@prompt
@echo.
@echo ===================================
@echo Finished downloading Bootstrap files
@echo.
@pause