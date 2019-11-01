<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
    <!DOCTYPE html>

    <#-- Attempt to reverse-engineer code for page’s current language, as Keycloak does not currently make this available -->
    <#assign LANG_CODE = "en">
    <#if .locale??>
        <#assign LANG_CODE = .locale>
    </#if>
    <#if locale??>
        <#list locale.supported>
            <#items as supportedLocale>
                <#if supportedLocale.label == locale.current>
                    <#if supportedLocale.url?contains("?kc_locale=")>
                        <#assign LANG_CODE = supportedLocale.url?keep_after("?kc_locale=")[0..1]>
                    </#if>
                    <#if supportedLocale.url?contains("&kc_locale=")>
                        <#assign LANG_CODE = supportedLocale.url?keep_after("&kc_locale=")[0..1]>
                    </#if>
                </#if>
            </#items>
        </#list>
    </#if>

    <!--[if lt IE 9]>
    <html class="lte-ie8 ${properties.kcHtmlClass!}" lang="${LANG_CODE}"><![endif]-->
    <!--[if gt IE 8]><!-->
    <html class="${properties.kcHtmlClass!}" lang="${LANG_CODE}"><!--<![endif]-->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="robots" content="noindex, nofollow">

        <#if properties.meta?has_content>
            <#list properties.meta?split(' ') as meta>
                <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}" />
            </#list>
        </#if>
        <title><#nested "title"> - ${realm.displayName!'Holisticon'}</title>

        <link rel="shortcut icon" href="${url.resourcesPath}/images/favicon.ico?.0.1.0" type="image/x-icon" />
        <link rel="apple-touch-icon-precomposed" sizes="152x152"
              href="${url.resourcesPath}/images/apple-touch-icon-152x152.png?.0.1.0">
        <link rel="apple-touch-icon-precomposed" sizes="120x120"
              href="${url.resourcesPath}/images/apple-touch-icon-120x120.png?.0.1.0">
        <link rel="apple-touch-icon-precomposed" sizes="76x76"
              href="${url.resourcesPath}/images/apple-touch-icon-76x76.png?.0.1.0">
        <link rel="apple-touch-icon-precomposed"
              href="${url.resourcesPath}/images/apple-touch-icon-60x60.png?.0.1.0">

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta property="og:image" content="${url.resourcesPath}/images/opengraph-image.png?.0.1.0">

        <#-- End Holisticon Template <head> content -->


        <#if properties.styles?has_content>
            <#list properties.styles?split(' ') as style>
                <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
            </#list>
        </#if>
        <#if properties.scripts?has_content>
            <#list properties.scripts?split(' ') as script>
                <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
            </#list>
        </#if>
        <#if scripts??>
            <#list scripts as script>
                <script src="${script}" type="text/javascript"></script>
            </#list>
        </#if>
       <!-- <script src="${url.resourcesPath}/js/bundle.js" type="text/javascript"></script>-->
    <style type="text/css">/*! Copyright 2019 */
/* open-sans-regular - latin */
@font-face {
  font-family: "Open Sans";
  font-style: normal;
  font-weight: 400;
  src: url("${url.resourcesPath}/fonts/open_sans/open-sans-v15-latin-regular.eot");
  /* IE9 Compat Modes */
  src: local("Open Sans Regular"), local("OpenSans-Regular"), url("${url.resourcesPath}/fonts/open_sans/open-sans-v15-latin-regular.eot?#iefix") format("embedded-opentype"), url("${url.resourcesPath}/fonts/open_sans/open-sans-v15-latin-regular.woff2") format("woff2"), url("${url.resourcesPath}/fonts/open_sans/open-sans-v15-latin-regular.woff") format("woff"), url("${url.resourcesPath}/fonts/open_sans/open-sans-v15-latin-regular.ttf") format("truetype"), url("${url.resourcesPath}/fonts/open_sans/open-sans-v15-latin-regular.svg#OpenSans") format("svg");
  /* Legacy iOS */ }

/* open-sans-600 - latin */
@font-face {
  font-family: "Open Sans";
  font-style: normal;
  font-weight: 600;
  src: url("${url.resourcesPath}/fonts/open_sans/open-sans-v15-latin-600.eot");
  /* IE9 Compat Modes */
  src: local("Open Sans SemiBold"), local("OpenSans-SemiBold"), url("${url.resourcesPath}/fonts/open_sans/open-sans-v15-latin-600.eot?#iefix") format("embedded-opentype"), url("${url.resourcesPath}/fonts/open_sans/open-sans-v15-latin-600.woff2") format("woff2"), url("${url.resourcesPath}/fonts/open_sans/open-sans-v15-latin-600.woff") format("woff"), url("${url.resourcesPath}/fonts/open_sans/open-sans-v15-latin-600.ttf") format("truetype"), url("${url.resourcesPath}/fonts/open_sans/open-sans-v15-latin-600.svg#OpenSans") format("svg");
  /* Legacy iOS */ }

/* roboto-mono-regular - latin */
@font-face {
  font-family: "Roboto Mono";
  font-style: normal;
  font-weight: 400;
  src: url("${url.resourcesPath}/fonts/roboto_mono/roboto-mono-v6-latin-regular.eot");
  /* IE9 Compat Modes */
  src: local("Roboto Mono"), local("RobotoMono-Regular"), url("${url.resourcesPath}/fonts/roboto_mono/roboto-mono-v6-latin-regular.eot?#iefix") format("embedded-opentype"), url("${url.resourcesPath}/fonts/roboto_mono/roboto-mono-v6-latin-regular.woff2") format("woff2"), url("${url.resourcesPath}/fonts/roboto_mono/roboto-mono-v6-latin-regular.woff") format("woff"), url("${url.resourcesPath}/fonts/roboto_mono/roboto-mono-v6-latin-regular.ttf") format("truetype"), url("${url.resourcesPath}/fonts/roboto_mono/roboto-mono-v6-latin-regular.svg#RobotoMono") format("svg");
  /* Legacy iOS */ }

@font-face {
  font-family: "arrow-back";
  src: url("${url.resourcesPath}/fonts/arrow-back.ttf?b7nrmq") format("truetype"), url("${url.resourcesPath}/fonts/arrow-back.woff?b7nrmq") format("woff"), url("${url.resourcesPath}/fonts/arrow-back.svg?b7nrmq#arrow-back") format("svg");
  font-weight: normal;
  font-style: normal; }

[class^="holi-icon-"], [class*=" holi-icon-"] {
  /* use !important to prevent issues with browser extensions that change fonts */
  font-family: 'arrow-back' !important;
  speak: none;
  font-style: normal;
  font-weight: normal;
  font-variant: normal;
  text-transform: none;
  line-height: 1;
  /* Better Font Rendering =========== */
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale; }

.holi-icon-arrow_back:before {
  content: "\e900"; }

html,
body {
  min-height: 100vh;
  margin: 0;
  padding: 0;
  font-family: "Open Sans";
  font-size: 14px; }

body {
  background: #efeff4;
  justify-content: center;
  align-items: center; }

@media screen and (max-width: 414px) {
  body {
    background: #fff;
    align-items: flex-start; }
  .keycloak-window {
    width: 100%;
    border-radius: 0;
    box-shadow: none; } }

body {
  display: flex; }
  body.vendetta {
    background: url("${url.resourcesPath}/images/v.jpg") repeat; }

.keycloak-window {
  background: #ffffff;
  box-shadow: 2px 2px 4px 0 rgba(0, 0, 0, 0.25);
  border-radius: 6px;
  width: 300px;
  overflow: hidden; }
  .keycloak-window .keycloak-header {
    background: #b0b8b9;
    height: 80px;
    display: flex;
    justify-content: center;
    align-items: center; }
  .keycloak-window.error {
    position: relative;
    animation: 0.35s ease-out 0s 1 wrong-log; }
    .keycloak-window.error .keycloak-header {
      background-color: #ff2d55; }

@keyframes wrong-log {
  0%,
  100% {
    left: 0; }
  20%,
  60% {
    left: 10px; }
  40%,
  80% {
    left: -10px; } }
  .keycloak-window.error .keycloak-body, .keycloak-window.warning .keycloak-body, .keycloak-window.success .keycloak-body, .keycloak-window.info .keycloak-body {
    padding-top: 12.5px; }
  .keycloak-window .keycloak-body {
    padding: 25px; }
    .keycloak-window .keycloak-body .messages {
      text-align: center;
      margin-bottom: 12.5px; }
      .keycloak-window .keycloak-body .messages .error {
        color: #ff2d55; }

.keycloak-back a,
.keycloak-back a:visited,
.keycloak-footer a,
.keycloak-footer a:visited {
  padding: 6.25px;
  display: inline-block;
  color: #b0b8b9;
  font-size: 12px;
  transition: color ease-out 0.2s;
  text-decoration: none; }
  .keycloak-back a:focus, .keycloak-back a:hover,
  .keycloak-back a:visited:focus,
  .keycloak-back a:visited:hover,
  .keycloak-footer a:focus,
  .keycloak-footer a:hover,
  .keycloak-footer a:visited:focus,
  .keycloak-footer a:visited:hover {
    color: #95a0a1; }

.keycloak-footer {
  display: flex;
  justify-content: space-between;
  align-items: flex-start; }

.holi-input-field {
  height: 30px;
  line-height: 30px;
  margin-top: 12.5px;
  margin-bottom: 12.5px;
  border: none;
  background: none;
  border-bottom: 2px solid #dfdfe4;
  width: 100%;
  font-family: "Open Sans";
  font-size: 14px;
  transition: border-bottom-color ease-out 0.2s;
  -webkit-appearance: none;
  border-radius: 0; }
  .holi-input-field:focus {
    outline: none;
    border-bottom: 2px solid #ff2d55; }
  .holi-input-field:hover:not(:focus) {
    border-bottom-color: #b0b8b9; }
    .holi-input-field:hover:not(:focus)::placeholder {
      color: #b0b8b9; }
  .holi-input-field::placeholder {
    color: #dfdfe4;
    transition: color ease-out 0.2s; }

.holi-primary-btn {
  background: #4eb4f9;
  max-width: 250px;
  width: 100%;
  height: 50px;
  border: none;
  line-height: 50px;
  text-transform: uppercase;
  border-radius: 25px;
  color: #ffffff;
  font-size: 14px;
  margin-top: 40px;
  cursor: pointer;
  transition: background-color ease-out 0.2s;
  -webkit-appearance: none; }
  .holi-primary-btn:focus, .holi-primary-btn:hover {
    outline: none;
    background: #1d9ff7; }

.forgot-password-link {
  font-weight: 600; }

ol.login-config-totp {
  padding-inline-start: 17px; }
  ol.login-config-totp #kc-totp-secret-qr-code {
    position: relative;
    left: -20px; }
  ol.login-config-totp .code {
    font-family: "Roboto Mono"; }

</style></head>


    <body>
    <main>
        <#-- https://freemarker.apache.org/docs/dgui_template_exp.html -->
        <div class="keycloak-back">
            <#nested "back">
        </div>
        <div class="keycloak-window ${(message.type)!""}" style="${additionalWindowsContainerStyle!}">
            <div class="keycloak-header">
                <img src="${url.resourcesPath}/images/logo_final1.png"
                     srcset="${url.resourcesPath}/images/logo_final1.png 1x, ${url.resourcesPath}/images/logo_final1@2x.png 2x"
                     class="logo" />
            </div>
            <div class="keycloak-body">

                <#if displayMessage && message?has_content>
                    <div class="messages">
                        <#--types: error success warning info -->
                        <span class="${message.type}">${message.summary?no_esc}</span>
                    </div>
                </#if>

                <#nested "info">
                <#nested "form">
            </div>
        </div>
        <div class="keycloak-footer">
            <div class="left">
                <#nested "footer">
            </div>
            <div class="right">
                <a href="https://holisticon.de/impressum.html#data-protection">Privacy Policy</a>
            </div>
        </div>
    </main>

    <script type="text/javascript" src="${url.resourcesPath}/js/bundle.js"></script></body>


    <#--<body class="kl-body">-->

    <#--<div id="global-header-bar"></div>-->

    <#--&lt;#&ndash; End Holisticon Template header &ndash;&gt;-->

    <#--<div class="kl-logo-wrapper">-->
    <#--<h1 class="heading-large">-->
    <#--<a href="${properties.kcLogoLink!'#'}">-->
    <#--<div class="kl-logo"></div>-->
    <#--</a>-->
    <#--</h1>-->
    <#--</div>-->

    <#--<main id="content" class="kl-main-wrapper" role="main">-->

    <#--<div class="kl-back-wrapper"><#nested "back"></div>-->

    <#--<div class="grid-row">-->
    <#--<div class="column-two-thirds">-->
    <#--<div class="row kl-container-wrapper">-->
    <#--<div class="kl-container">-->

    <#--<!-- FIXME: Support l18n-->
    <#--<#if realm.internationalizationEnabled>-->
    <#--<div id="kl-locale" class="${properties.kcLocaleClass!}">-->
    <#--<div id="kl-locale-wrapper" class="${properties.kcLocaleWrapperClass!}">-->
    <#--<div class="kl-dropdown" id="kl-locale-dropdown">-->
    <#--<a href="#" id="kl-current-locale-link">${locale.current}</a>-->
    <#--<ul>-->
    <#--<#list locale.supported as l>-->
    <#--<li class="kl-dropdown-item"><a href="${l.url}">${l.label}</a></li>-->
    <#--</#list>-->
    <#--</ul>-->
    <#--</div>-->
    <#--</div>-->
    <#--</div>-->
    <#--</#if>-->
    <#--&ndash;&gt;-->
    <#--<div id="kl-content" class="${properties.kcContentClass!}">-->
    <#--<div id="kl-content-wrapper" class="${properties.kcContentWrapperClass!}">-->



    <#--<div id="kl-form" class="${properties.kcFormAreaClass!}">-->
    <#--<div id="kl-form-wrapper" class="${properties.kcFormAreaWrapperClass!}">-->
    <#--<#nested "form">-->
    <#--</div>-->
    <#--</div>-->

    <#--</div>-->
    <#--</div>-->
    <#--</div>-->
    <#--</div>-->
    <#--</div>-->

    <#--<div class="column-one-third">-->
    <#--<#if displayInfo>-->
    <#--<div id="kl-info" class="${properties.kcInfoAreaClass!}">-->
    <#--<div id="kl-info-wrapper" class="${properties.kcInfoAreaWrapperClass!}">-->
    <#--<#nested "info">-->
    <#--</div>-->
    <#--</div>-->
    <#--</#if>-->
    <#--</div>-->
    <#--</div>-->

    <#--<div class="kl-cookie-message">-->

    <#--<p>Wir nutzen Cookies.-->
    <#--<a target="_blank" href="${properties.kcPrivacyLink}">Finde mehr über die Verwendung von Cookies heraus.</a>-->
    <#--</p>-->

    <#--</div>-->
    <#--</main>-->

    <#--&lt;#&ndash; Start Holisticon Template footer &ndash;&gt;-->

    <#--<footer class="navbar-fixed-bottom js-footer" id="footer" role="contentinfo">-->

    <#--<div class="footer-wrapper">-->
    <#--<div class="footer-meta">-->
    <#--<div class="copyright">-->
    <#--&copy; 2018 Holisticon-->
    <#--<br>-->
    <#--Beste Beratung. Beste Software.-->
    <#--</div>-->
    <#--</div>-->
    <#--</div>-->
    <#--</footer>-->

    <#--<div id="global-app-error" class="app-error hidden"></div>-->
    <#--</body>-->
    </html>
</#macro>
