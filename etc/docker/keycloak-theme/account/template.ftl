<#macro mainLayout active bodyClass>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">

    <title>${msg("accountManagementTitle")}</title>


        <link rel="shortcut icon" href="${url.resourcesPath}/images/favicon.ico?.0.1.0" type="image/x-icon"/>
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



    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico">
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script type="text/javascript" src="${url.resourcesPath}/${script}"></script>
        </#list>
    </#if>
    <script src="${url.resourcesPath}/js/bundle.js" type="text/javascript"></script>
<style type="text/css">/*! Copyright 2019 */
@charset "UTF-8";
/* PatternFly */
@font-face {
  font-family: "Open Sans";
  font-style: normal;
  font-weight: 300;
  src: url("${url.resourcesPath}/fonts/OpenSans-Light-webfont.eot");
  /* IE9 Compat Modes */
  src: local("Open Sans Light"), local("OpenSans-Light"), url("${url.resourcesPath}/fonts/OpenSans-Light-webfont.eot?#iefix") format("embedded-opentype"), url("${url.resourcesPath}/fonts/OpenSans-Light-webfont.woff2") format("woff2"), url("${url.resourcesPath}/fonts/OpenSans-Light-webfont.woff") format("woff"), url("${url.resourcesPath}/fonts/OpenSans-Light-webfont.ttf") format("truetype"), url("${url.resourcesPath}/fonts/OpenSans-Light-webfont.svg#OpenSans") format("svg");
  /* Legacy iOS */ }

@font-face {
  font-family: "Open Sans";
  font-style: normal;
  font-weight: 400;
  src: url("${url.resourcesPath}/fonts/OpenSans-Regular-webfont.eot");
  /* IE9 Compat Modes */
  src: local("Open Sans"), local("OpenSans"), url("${url.resourcesPath}/fonts/OpenSans-Regular-webfont.eot?#iefix") format("embedded-opentype"), url("${url.resourcesPath}/fonts/OpenSans-Regular-webfont.woff2") format("woff2"), url("${url.resourcesPath}/fonts/OpenSans-Regular-webfont.woff") format("woff"), url("${url.resourcesPath}/fonts/OpenSans-Regular-webfont.ttf") format("truetype"), url("${url.resourcesPath}/fonts/OpenSans-Regular-webfont.svg#OpenSans") format("svg");
  /* Legacy iOS */ }

@font-face {
  font-family: "Open Sans";
  font-style: italic;
  font-weight: 300;
  src: url("${url.resourcesPath}/fonts/OpenSans-LightItalic-webfont.eot");
  /* IE9 Compat Modes */
  src: local("Open Sans Light Italic"), local("OpenSansLight-Italic"), url("${url.resourcesPath}/fonts/OpenSans-LightItalic-webfont.eot?#iefix") format("embedded-opentype"), url("${url.resourcesPath}/fonts/OpenSans-LightItalic-webfont.woff2") format("woff2"), url("${url.resourcesPath}/fonts/OpenSans-LightItalic-webfont.woff") format("woff"), url("${url.resourcesPath}/fonts/OpenSans-LightItalic-webfont.ttf") format("truetype"), url("${url.resourcesPath}/fonts/OpenSans-LightItalic-webfont.svg#OpenSans") format("svg");
  /* Legacy iOS */ }

@font-face {
  font-family: "Open Sans";
  font-style: italic;
  font-weight: 400;
  src: url("${url.resourcesPath}/fonts/OpenSans-Italic-webfont.eot");
  /* IE9 Compat Modes */
  src: local("Open Sans Italic"), local("OpenSans-Italic"), url("${url.resourcesPath}/fonts/OpenSans-Italic-webfont.eot?#iefix") format("embedded-opentype"), url("${url.resourcesPath}/fonts/OpenSans-Italic-webfont.woff2") format("woff2"), url("${url.resourcesPath}/fonts/OpenSans-Italic-webfont.woff") format("woff"), url("${url.resourcesPath}/fonts/OpenSans-Italic-webfont.ttf") format("truetype"), url("${url.resourcesPath}/fonts/OpenSans-Italic-webfont.svg#OpenSans") format("svg");
  /* Legacy iOS */ }

@font-face {
  font-family: "Open Sans";
  font-style: normal;
  font-weight: 600;
  src: url("${url.resourcesPath}/fonts/OpenSans-Semibold-webfont.eot");
  /* IE9 Compat Modes */
  src: local("Open Sans Semibold"), local("OpenSans-Semibold-webfont"), url("${url.resourcesPath}/fonts/OpenSans-Semibold-webfont.eot?#iefix") format("embedded-opentype"), url("${url.resourcesPath}/fonts/OpenSans-Semibold-webfont.woff2") format("woff2"), url("${url.resourcesPath}/fonts/OpenSans-Semibold-webfont.woff") format("woff"), url("${url.resourcesPath}/fonts/OpenSans-Semibold-webfont.ttf") format("truetype"), url("${url.resourcesPath}/fonts/OpenSans-Semibold-webfont.svg#OpenSans") format("svg");
  /* Legacy iOS */ }

@font-face {
  font-family: "Open Sans";
  font-style: italic;
  font-weight: 600;
  src: url("${url.resourcesPath}/fonts/OpenSans-SemiboldItalic-webfont.eot");
  /* IE9 Compat Modes */
  src: local("Open Sans Semibold Italic"), local("OpenSans-SemiboldItalic-webfont"), url("${url.resourcesPath}/fonts/OpenSans-SemiboldItalic-webfont.eot?#iefix") format("embedded-opentype"), url("${url.resourcesPath}/fonts/OpenSans-SemiboldItalic-webfont.woff2") format("woff2"), url("${url.resourcesPath}/fonts/OpenSans-SemiboldItalic-webfont.woff") format("woff"), url("${url.resourcesPath}/fonts/OpenSans-SemiboldItalic-webfont.ttf") format("truetype"), url("${url.resourcesPath}/fonts/OpenSans-SemiboldItalic-webfont.svg#OpenSans") format("svg");
  /* Legacy iOS */ }

@font-face {
  font-family: "Open Sans";
  font-style: normal;
  font-weight: 700;
  src: url("${url.resourcesPath}/fonts/OpenSans-Bold-webfont.eot");
  /* IE9 Compat Modes */
  src: local("Open Sans Bold"), local("OpenSans-Bold"), url("${url.resourcesPath}/fonts/OpenSans-Bold-webfont.eot?#iefix") format("embedded-opentype"), url("${url.resourcesPath}/fonts/OpenSans-Bold-webfont.woff2") format("woff2"), url("${url.resourcesPath}/fonts/OpenSans-Bold-webfont.woff") format("woff"), url("${url.resourcesPath}/fonts/OpenSans-Bold-webfont.ttf") format("truetype"), url("${url.resourcesPath}/fonts/OpenSans-Bold-webfont.svg#OpenSans") format("svg");
  /* Legacy iOS */ }

@font-face {
  font-family: "Open Sans";
  font-style: italic;
  font-weight: 700;
  src: url("${url.resourcesPath}/fonts/OpenSans-BoldItalic-webfont.eot");
  /* IE9 Compat Modes */
  src: local("Open Sans Bold Italic"), local("OpenSans-BoldItalic"), url("${url.resourcesPath}/fonts/OpenSans-BoldItalic-webfont.eot?#iefix") format("embedded-opentype"), url("${url.resourcesPath}/fonts/OpenSans-BoldItalic-webfont.woff2") format("woff2"), url("${url.resourcesPath}/fonts/OpenSans-BoldItalic-webfont.woff") format("woff"), url("${url.resourcesPath}/fonts/OpenSans-BoldItalic-webfont.ttf") format("truetype"), url("${url.resourcesPath}/fonts/OpenSans-BoldItalic-webfont.svg#OpenSans") format("svg");
  /* Legacy iOS */ }

@font-face {
  font-family: "Open Sans";
  font-style: italic;
  font-weight: 800;
  src: url("${url.resourcesPath}/fonts/OpenSans-ExtraBoldItalic-webfont.eot");
  /* IE9 Compat Modes */
  src: local("Open Sans Extrabold Italic"), local("OpenSans-ExtraboldItalic"), url("${url.resourcesPath}/fonts/OpenSans-ExtraBoldItalic-webfont.eot?#iefix") format("embedded-opentype"), url("${url.resourcesPath}/fonts/OpenSans-ExtraBoldItalic-webfont.woff2") format("woff2"), url("${url.resourcesPath}/fonts/OpenSans-ExtraBoldItalic-webfont.woff") format("woff"), url("${url.resourcesPath}/fonts/OpenSans-ExtraBoldItalic-webfont.ttf") format("truetype"), url("${url.resourcesPath}/fonts/OpenSans-ExtraBoldItalic-webfont.svg#OpenSans") format("svg");
  /* Legacy iOS */ }

@font-face {
  font-family: "Open Sans";
  font-style: normal;
  font-weight: 800;
  src: url("${url.resourcesPath}/fonts/OpenSans-ExtraBold-webfont.eot");
  /* IE9 Compat Modes */
  src: local("Open Sans Extrabold"), local("OpenSans-Extrabold"), url("${url.resourcesPath}/fonts/OpenSans-ExtraBold-webfont.eot?#iefix") format("embedded-opentype"), url("${url.resourcesPath}/fonts/OpenSans-ExtraBold-webfont.woff2") format("woff2"), url("${url.resourcesPath}/fonts/OpenSans-ExtraBold-webfont.woff") format("woff"), url("${url.resourcesPath}/fonts/OpenSans-ExtraBold-webfont.ttf") format("truetype"), url("${url.resourcesPath}/fonts/OpenSans-ExtraBold-webfont.svg#OpenSans") format("svg");
  /* Legacy iOS */ }

/*! normalize.css v3.0.3 | MIT License | github.com/necolas/normalize.css */
html {
  font-family: sans-serif;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%; }

body {
  margin: 0; }

article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
main,
menu,
nav,
section,
summary {
  display: block; }

audio,
canvas,
progress,
video {
  display: inline-block;
  vertical-align: baseline; }

audio:not([controls]) {
  display: none;
  height: 0; }

[hidden],
template {
  display: none; }

a {
  background-color: transparent; }

a:active,
a:hover {
  outline: 0; }

abbr[title] {
  border-bottom: none;
  text-decoration: underline;
  text-decoration: underline dotted; }

b,
strong {
  font-weight: bold; }

dfn {
  font-style: italic; }

h1 {
  font-size: 2em;
  margin: 0.67em 0; }

mark {
  background: #ff0;
  color: #000; }

small {
  font-size: 80%; }

sub,
sup {
  font-size: 75%;
  line-height: 0;
  position: relative;
  vertical-align: baseline; }

sup {
  top: -0.5em; }

sub {
  bottom: -0.25em; }

img {
  border: 0; }

svg:not(:root) {
  overflow: hidden; }

figure {
  margin: 1em 40px; }

hr {
  box-sizing: content-box;
  height: 0; }

pre {
  overflow: auto; }

code,
kbd,
pre,
samp {
  font-family: monospace, monospace;
  font-size: 1em; }

button,
input,
optgroup,
select,
textarea {
  color: inherit;
  font: inherit;
  margin: 0; }

button {
  overflow: visible; }

button,
select {
  text-transform: none; }

button,
html input[type="button"],
input[type="reset"],
input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer; }

button[disabled],
html input[disabled] {
  cursor: default; }

button::-moz-focus-inner,
input::-moz-focus-inner {
  border: 0;
  padding: 0; }

input {
  line-height: normal; }

input[type="checkbox"],
input[type="radio"] {
  box-sizing: border-box;
  padding: 0; }

input[type="number"]::-webkit-inner-spin-button,
input[type="number"]::-webkit-outer-spin-button {
  height: auto; }

input[type="search"] {
  -webkit-appearance: textfield;
  box-sizing: content-box; }

input[type="search"]::-webkit-search-cancel-button,
input[type="search"]::-webkit-search-decoration {
  -webkit-appearance: none; }

fieldset {
  border: 1px solid #c0c0c0;
  margin: 0 2px;
  padding: 0.35em 0.625em 0.75em; }

legend {
  border: 0;
  padding: 0; }

textarea {
  overflow: auto; }

optgroup {
  font-weight: bold; }

table {
  border-collapse: collapse;
  border-spacing: 0; }

td,
th {
  padding: 0; }

/*! Source: https://github.com/h5bp/html5-boilerplate/blob/master/src/css/main.css */
@media print {
  *,
  *:before,
  *:after {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    box-shadow: none !important; }
  a,
  a:visited {
    text-decoration: underline; }
  a[href]:after {
    content: " (" attr(href) ")"; }
  abbr[title]:after {
    content: " (" attr(title) ")"; }
  a[href^="#"]:after,
  a[href^="javascript:"]:after {
    content: ""; }
  pre,
  blockquote {
    border: 1px solid #999;
    page-break-inside: avoid; }
  thead {
    display: table-header-group; }
  tr,
  img {
    page-break-inside: avoid; }
  img {
    max-width: 100% !important; }
  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3; }
  h2,
  h3 {
    page-break-after: avoid; }
  .navbar {
    display: none; }
  .btn > .caret,
  .dropup > .btn > .caret {
    border-top-color: #000 !important; }
  .label {
    border: 1px solid #000; }
  .table {
    border-collapse: collapse !important; }
    .table td,
    .table th {
      background-color: #fff !important; }
  .table-bordered th,
  .table-bordered td {
    border: 1px solid #ddd !important; } }

@font-face {
  font-family: "Glyphicons Halflings";
  src: url("../fonts/glyphicons-halflings-regular.eot");
  src: url("../fonts/glyphicons-halflings-regular.eot?#iefix") format("embedded-opentype"), url("../fonts/glyphicons-halflings-regular.woff2") format("woff2"), url("../fonts/glyphicons-halflings-regular.woff") format("woff"), url("../fonts/glyphicons-halflings-regular.ttf") format("truetype"), url("../fonts/glyphicons-halflings-regular.svg#glyphicons_halflingsregular") format("svg"); }

.glyphicon {
  position: relative;
  top: 1px;
  display: inline-block;
  font-family: "Glyphicons Halflings";
  font-style: normal;
  font-weight: 400;
  line-height: 1;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale; }

.glyphicon-asterisk:before {
  content: "\002a"; }

.glyphicon-plus:before {
  content: "\002b"; }

.glyphicon-euro:before,
.glyphicon-eur:before {
  content: "\20ac"; }

.glyphicon-minus:before {
  content: "\2212"; }

.glyphicon-cloud:before {
  content: "\2601"; }

.glyphicon-envelope:before {
  content: "\2709"; }

.glyphicon-pencil:before {
  content: "\270f"; }

.glyphicon-glass:before {
  content: "\e001"; }

.glyphicon-music:before {
  content: "\e002"; }

.glyphicon-search:before {
  content: "\e003"; }

.glyphicon-heart:before {
  content: "\e005"; }

.glyphicon-star:before {
  content: "\e006"; }

.glyphicon-star-empty:before {
  content: "\e007"; }

.glyphicon-user:before {
  content: "\e008"; }

.glyphicon-film:before {
  content: "\e009"; }

.glyphicon-th-large:before {
  content: "\e010"; }

.glyphicon-th:before {
  content: "\e011"; }

.glyphicon-th-list:before {
  content: "\e012"; }

.glyphicon-ok:before {
  content: "\e013"; }

.glyphicon-remove:before {
  content: "\e014"; }

.glyphicon-zoom-in:before {
  content: "\e015"; }

.glyphicon-zoom-out:before {
  content: "\e016"; }

.glyphicon-off:before {
  content: "\e017"; }

.glyphicon-signal:before {
  content: "\e018"; }

.glyphicon-cog:before {
  content: "\e019"; }

.glyphicon-trash:before {
  content: "\e020"; }

.glyphicon-home:before {
  content: "\e021"; }

.glyphicon-file:before {
  content: "\e022"; }

.glyphicon-time:before {
  content: "\e023"; }

.glyphicon-road:before {
  content: "\e024"; }

.glyphicon-download-alt:before {
  content: "\e025"; }

.glyphicon-download:before {
  content: "\e026"; }

.glyphicon-upload:before {
  content: "\e027"; }

.glyphicon-inbox:before {
  content: "\e028"; }

.glyphicon-play-circle:before {
  content: "\e029"; }

.glyphicon-repeat:before {
  content: "\e030"; }

.glyphicon-refresh:before {
  content: "\e031"; }

.glyphicon-list-alt:before {
  content: "\e032"; }

.glyphicon-lock:before {
  content: "\e033"; }

.glyphicon-flag:before {
  content: "\e034"; }

.glyphicon-headphones:before {
  content: "\e035"; }

.glyphicon-volume-off:before {
  content: "\e036"; }

.glyphicon-volume-down:before {
  content: "\e037"; }

.glyphicon-volume-up:before {
  content: "\e038"; }

.glyphicon-qrcode:before {
  content: "\e039"; }

.glyphicon-barcode:before {
  content: "\e040"; }

.glyphicon-tag:before {
  content: "\e041"; }

.glyphicon-tags:before {
  content: "\e042"; }

.glyphicon-book:before {
  content: "\e043"; }

.glyphicon-bookmark:before {
  content: "\e044"; }

.glyphicon-print:before {
  content: "\e045"; }

.glyphicon-camera:before {
  content: "\e046"; }

.glyphicon-font:before {
  content: "\e047"; }

.glyphicon-bold:before {
  content: "\e048"; }

.glyphicon-italic:before {
  content: "\e049"; }

.glyphicon-text-height:before {
  content: "\e050"; }

.glyphicon-text-width:before {
  content: "\e051"; }

.glyphicon-align-left:before {
  content: "\e052"; }

.glyphicon-align-center:before {
  content: "\e053"; }

.glyphicon-align-right:before {
  content: "\e054"; }

.glyphicon-align-justify:before {
  content: "\e055"; }

.glyphicon-list:before {
  content: "\e056"; }

.glyphicon-indent-left:before {
  content: "\e057"; }

.glyphicon-indent-right:before {
  content: "\e058"; }

.glyphicon-facetime-video:before {
  content: "\e059"; }

.glyphicon-picture:before {
  content: "\e060"; }

.glyphicon-map-marker:before {
  content: "\e062"; }

.glyphicon-adjust:before {
  content: "\e063"; }

.glyphicon-tint:before {
  content: "\e064"; }

.glyphicon-edit:before {
  content: "\e065"; }

.glyphicon-share:before {
  content: "\e066"; }

.glyphicon-check:before {
  content: "\e067"; }

.glyphicon-move:before {
  content: "\e068"; }

.glyphicon-step-backward:before {
  content: "\e069"; }

.glyphicon-fast-backward:before {
  content: "\e070"; }

.glyphicon-backward:before {
  content: "\e071"; }

.glyphicon-play:before {
  content: "\e072"; }

.glyphicon-pause:before {
  content: "\e073"; }

.glyphicon-stop:before {
  content: "\e074"; }

.glyphicon-forward:before {
  content: "\e075"; }

.glyphicon-fast-forward:before {
  content: "\e076"; }

.glyphicon-step-forward:before {
  content: "\e077"; }

.glyphicon-eject:before {
  content: "\e078"; }

.glyphicon-chevron-left:before {
  content: "\e079"; }

.glyphicon-chevron-right:before {
  content: "\e080"; }

.glyphicon-plus-sign:before {
  content: "\e081"; }

.glyphicon-minus-sign:before {
  content: "\e082"; }

.glyphicon-remove-sign:before {
  content: "\e083"; }

.glyphicon-ok-sign:before {
  content: "\e084"; }

.glyphicon-question-sign:before {
  content: "\e085"; }

.glyphicon-info-sign:before {
  content: "\e086"; }

.glyphicon-screenshot:before {
  content: "\e087"; }

.glyphicon-remove-circle:before {
  content: "\e088"; }

.glyphicon-ok-circle:before {
  content: "\e089"; }

.glyphicon-ban-circle:before {
  content: "\e090"; }

.glyphicon-arrow-left:before {
  content: "\e091"; }

.glyphicon-arrow-right:before {
  content: "\e092"; }

.glyphicon-arrow-up:before {
  content: "\e093"; }

.glyphicon-arrow-down:before {
  content: "\e094"; }

.glyphicon-share-alt:before {
  content: "\e095"; }

.glyphicon-resize-full:before {
  content: "\e096"; }

.glyphicon-resize-small:before {
  content: "\e097"; }

.glyphicon-exclamation-sign:before {
  content: "\e101"; }

.glyphicon-gift:before {
  content: "\e102"; }

.glyphicon-leaf:before {
  content: "\e103"; }

.glyphicon-fire:before {
  content: "\e104"; }

.glyphicon-eye-open:before {
  content: "\e105"; }

.glyphicon-eye-close:before {
  content: "\e106"; }

.glyphicon-warning-sign:before {
  content: "\e107"; }

.glyphicon-plane:before {
  content: "\e108"; }

.glyphicon-calendar:before {
  content: "\e109"; }

.glyphicon-random:before {
  content: "\e110"; }

.glyphicon-comment:before {
  content: "\e111"; }

.glyphicon-magnet:before {
  content: "\e112"; }

.glyphicon-chevron-up:before {
  content: "\e113"; }

.glyphicon-chevron-down:before {
  content: "\e114"; }

.glyphicon-retweet:before {
  content: "\e115"; }

.glyphicon-shopping-cart:before {
  content: "\e116"; }

.glyphicon-folder-close:before {
  content: "\e117"; }

.glyphicon-folder-open:before {
  content: "\e118"; }

.glyphicon-resize-vertical:before {
  content: "\e119"; }

.glyphicon-resize-horizontal:before {
  content: "\e120"; }

.glyphicon-hdd:before {
  content: "\e121"; }

.glyphicon-bullhorn:before {
  content: "\e122"; }

.glyphicon-bell:before {
  content: "\e123"; }

.glyphicon-certificate:before {
  content: "\e124"; }

.glyphicon-thumbs-up:before {
  content: "\e125"; }

.glyphicon-thumbs-down:before {
  content: "\e126"; }

.glyphicon-hand-right:before {
  content: "\e127"; }

.glyphicon-hand-left:before {
  content: "\e128"; }

.glyphicon-hand-up:before {
  content: "\e129"; }

.glyphicon-hand-down:before {
  content: "\e130"; }

.glyphicon-circle-arrow-right:before {
  content: "\e131"; }

.glyphicon-circle-arrow-left:before {
  content: "\e132"; }

.glyphicon-circle-arrow-up:before {
  content: "\e133"; }

.glyphicon-circle-arrow-down:before {
  content: "\e134"; }

.glyphicon-globe:before {
  content: "\e135"; }

.glyphicon-wrench:before {
  content: "\e136"; }

.glyphicon-tasks:before {
  content: "\e137"; }

.glyphicon-filter:before {
  content: "\e138"; }

.glyphicon-briefcase:before {
  content: "\e139"; }

.glyphicon-fullscreen:before {
  content: "\e140"; }

.glyphicon-dashboard:before {
  content: "\e141"; }

.glyphicon-paperclip:before {
  content: "\e142"; }

.glyphicon-heart-empty:before {
  content: "\e143"; }

.glyphicon-link:before {
  content: "\e144"; }

.glyphicon-phone:before {
  content: "\e145"; }

.glyphicon-pushpin:before {
  content: "\e146"; }

.glyphicon-usd:before {
  content: "\e148"; }

.glyphicon-gbp:before {
  content: "\e149"; }

.glyphicon-sort:before {
  content: "\e150"; }

.glyphicon-sort-by-alphabet:before {
  content: "\e151"; }

.glyphicon-sort-by-alphabet-alt:before {
  content: "\e152"; }

.glyphicon-sort-by-order:before {
  content: "\e153"; }

.glyphicon-sort-by-order-alt:before {
  content: "\e154"; }

.glyphicon-sort-by-attributes:before {
  content: "\e155"; }

.glyphicon-sort-by-attributes-alt:before {
  content: "\e156"; }

.glyphicon-unchecked:before {
  content: "\e157"; }

.glyphicon-expand:before {
  content: "\e158"; }

.glyphicon-collapse-down:before {
  content: "\e159"; }

.glyphicon-collapse-up:before {
  content: "\e160"; }

.glyphicon-log-in:before {
  content: "\e161"; }

.glyphicon-flash:before {
  content: "\e162"; }

.glyphicon-log-out:before {
  content: "\e163"; }

.glyphicon-new-window:before {
  content: "\e164"; }

.glyphicon-record:before {
  content: "\e165"; }

.glyphicon-save:before {
  content: "\e166"; }

.glyphicon-open:before {
  content: "\e167"; }

.glyphicon-saved:before {
  content: "\e168"; }

.glyphicon-import:before {
  content: "\e169"; }

.glyphicon-export:before {
  content: "\e170"; }

.glyphicon-send:before {
  content: "\e171"; }

.glyphicon-floppy-disk:before {
  content: "\e172"; }

.glyphicon-floppy-saved:before {
  content: "\e173"; }

.glyphicon-floppy-remove:before {
  content: "\e174"; }

.glyphicon-floppy-save:before {
  content: "\e175"; }

.glyphicon-floppy-open:before {
  content: "\e176"; }

.glyphicon-credit-card:before {
  content: "\e177"; }

.glyphicon-transfer:before {
  content: "\e178"; }

.glyphicon-cutlery:before {
  content: "\e179"; }

.glyphicon-header:before {
  content: "\e180"; }

.glyphicon-compressed:before {
  content: "\e181"; }

.glyphicon-earphone:before {
  content: "\e182"; }

.glyphicon-phone-alt:before {
  content: "\e183"; }

.glyphicon-tower:before {
  content: "\e184"; }

.glyphicon-stats:before {
  content: "\e185"; }

.glyphicon-sd-video:before {
  content: "\e186"; }

.glyphicon-hd-video:before {
  content: "\e187"; }

.glyphicon-subtitles:before {
  content: "\e188"; }

.glyphicon-sound-stereo:before {
  content: "\e189"; }

.glyphicon-sound-dolby:before {
  content: "\e190"; }

.glyphicon-sound-5-1:before {
  content: "\e191"; }

.glyphicon-sound-6-1:before {
  content: "\e192"; }

.glyphicon-sound-7-1:before {
  content: "\e193"; }

.glyphicon-copyright-mark:before {
  content: "\e194"; }

.glyphicon-registration-mark:before {
  content: "\e195"; }

.glyphicon-cloud-download:before {
  content: "\e197"; }

.glyphicon-cloud-upload:before {
  content: "\e198"; }

.glyphicon-tree-conifer:before {
  content: "\e199"; }

.glyphicon-tree-deciduous:before {
  content: "\e200"; }

.glyphicon-cd:before {
  content: "\e201"; }

.glyphicon-save-file:before {
  content: "\e202"; }

.glyphicon-open-file:before {
  content: "\e203"; }

.glyphicon-level-up:before {
  content: "\e204"; }

.glyphicon-copy:before {
  content: "\e205"; }

.glyphicon-paste:before {
  content: "\e206"; }

.glyphicon-alert:before {
  content: "\e209"; }

.glyphicon-equalizer:before {
  content: "\e210"; }

.glyphicon-king:before {
  content: "\e211"; }

.glyphicon-queen:before {
  content: "\e212"; }

.glyphicon-pawn:before {
  content: "\e213"; }

.glyphicon-bishop:before {
  content: "\e214"; }

.glyphicon-knight:before {
  content: "\e215"; }

.glyphicon-baby-formula:before {
  content: "\e216"; }

.glyphicon-tent:before {
  content: "\26fa"; }

.glyphicon-blackboard:before {
  content: "\e218"; }

.glyphicon-bed:before {
  content: "\e219"; }

.glyphicon-apple:before {
  content: "\f8ff"; }

.glyphicon-erase:before {
  content: "\e221"; }

.glyphicon-hourglass:before {
  content: "\231b"; }

.glyphicon-lamp:before {
  content: "\e223"; }

.glyphicon-duplicate:before {
  content: "\e224"; }

.glyphicon-piggy-bank:before {
  content: "\e225"; }

.glyphicon-scissors:before {
  content: "\e226"; }

.glyphicon-bitcoin:before {
  content: "\e227"; }

.glyphicon-btc:before {
  content: "\e227"; }

.glyphicon-xbt:before {
  content: "\e227"; }

.glyphicon-yen:before {
  content: "\00a5"; }

.glyphicon-jpy:before {
  content: "\00a5"; }

.glyphicon-ruble:before {
  content: "\20bd"; }

.glyphicon-rub:before {
  content: "\20bd"; }

.glyphicon-scale:before {
  content: "\e230"; }

.glyphicon-ice-lolly:before {
  content: "\e231"; }

.glyphicon-ice-lolly-tasted:before {
  content: "\e232"; }

.glyphicon-education:before {
  content: "\e233"; }

.glyphicon-option-horizontal:before {
  content: "\e234"; }

.glyphicon-option-vertical:before {
  content: "\e235"; }

.glyphicon-menu-hamburger:before {
  content: "\e236"; }

.glyphicon-modal-window:before {
  content: "\e237"; }

.glyphicon-oil:before {
  content: "\e238"; }

.glyphicon-grain:before {
  content: "\e239"; }

.glyphicon-sunglasses:before {
  content: "\e240"; }

.glyphicon-text-size:before {
  content: "\e241"; }

.glyphicon-text-color:before {
  content: "\e242"; }

.glyphicon-text-background:before {
  content: "\e243"; }

.glyphicon-object-align-top:before {
  content: "\e244"; }

.glyphicon-object-align-bottom:before {
  content: "\e245"; }

.glyphicon-object-align-horizontal:before {
  content: "\e246"; }

.glyphicon-object-align-left:before {
  content: "\e247"; }

.glyphicon-object-align-vertical:before {
  content: "\e248"; }

.glyphicon-object-align-right:before {
  content: "\e249"; }

.glyphicon-triangle-right:before {
  content: "\e250"; }

.glyphicon-triangle-left:before {
  content: "\e251"; }

.glyphicon-triangle-bottom:before {
  content: "\e252"; }

.glyphicon-triangle-top:before {
  content: "\e253"; }

.glyphicon-console:before {
  content: "\e254"; }

.glyphicon-superscript:before {
  content: "\e255"; }

.glyphicon-subscript:before {
  content: "\e256"; }

.glyphicon-menu-left:before {
  content: "\e257"; }

.glyphicon-menu-right:before {
  content: "\e258"; }

.glyphicon-menu-down:before {
  content: "\e259"; }

.glyphicon-menu-up:before {
  content: "\e260"; }

* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box; }

*:before,
*:after {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box; }

html {
  font-size: 10px;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0); }

body {
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
  font-size: 12px;
  line-height: 1.66667;
  color: #363636;
  background-color: #fff; }

input,
button,
select,
textarea {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit; }

a {
  color: #0088ce;
  text-decoration: none; }
  a:hover, a:focus {
    color: #00659c;
    text-decoration: underline; }
  a:focus {
    outline: 5px auto -webkit-focus-ring-color;
    outline-offset: -2px; }

figure {
  margin: 0; }

img {
  vertical-align: middle; }

.img-responsive {
  display: block;
  max-width: 100%;
  height: auto; }

.img-rounded {
  border-radius: 1px; }

.img-thumbnail {
  padding: 4px;
  line-height: 1.66667;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 1px;
  -webkit-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
  display: inline-block;
  max-width: 100%;
  height: auto; }

.img-circle {
  border-radius: 50%; }

hr {
  margin-top: 20px;
  margin-bottom: 20px;
  border: 0;
  border-top: 1px solid #f1f1f1; }

.sr-only, .bootstrap-datetimepicker-widget .btn[data-action="incrementHours"]::after, .bootstrap-datetimepicker-widget .btn[data-action="incrementMinutes"]::after, .bootstrap-datetimepicker-widget .btn[data-action="decrementHours"]::after, .bootstrap-datetimepicker-widget .btn[data-action="decrementMinutes"]::after, .bootstrap-datetimepicker-widget .btn[data-action="showHours"]::after, .bootstrap-datetimepicker-widget .btn[data-action="showMinutes"]::after, .bootstrap-datetimepicker-widget .btn[data-action="togglePeriod"]::after, .bootstrap-datetimepicker-widget .btn[data-action="clear"]::after, .bootstrap-datetimepicker-widget .btn[data-action="today"]::after, .bootstrap-datetimepicker-widget .picker-switch::after, .bootstrap-datetimepicker-widget table th.prev::after, .bootstrap-datetimepicker-widget table th.next::after {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0; }

.sr-only-focusable:active, .sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto; }

[role="button"] {
  cursor: pointer; }

h1, h2, h3, h4, h5, h6,
.h1, .h2, .h3, .h4, .h5, .h6 {
  font-family: inherit;
  font-weight: 500;
  line-height: 1.1;
  color: inherit; }
  h1 small,
  h1 .small, h2 small,
  h2 .small, h3 small,
  h3 .small, h4 small,
  h4 .small, h5 small,
  h5 .small, h6 small,
  h6 .small,
  .h1 small,
  .h1 .small, .h2 small,
  .h2 .small, .h3 small,
  .h3 .small, .h4 small,
  .h4 .small, .h5 small,
  .h5 .small, .h6 small,
  .h6 .small {
    font-weight: 400;
    line-height: 1;
    color: #9c9c9c; }

h1, .h1,
h2, .h2,
h3, .h3 {
  margin-top: 20px;
  margin-bottom: 10px; }
  h1 small,
  h1 .small, .h1 small,
  .h1 .small,
  h2 small,
  h2 .small, .h2 small,
  .h2 .small,
  h3 small,
  h3 .small, .h3 small,
  .h3 .small {
    font-size: 65%; }

h4, .h4,
h5, .h5,
h6, .h6 {
  margin-top: 10px;
  margin-bottom: 10px; }
  h4 small,
  h4 .small, .h4 small,
  .h4 .small,
  h5 small,
  h5 .small, .h5 small,
  .h5 .small,
  h6 small,
  h6 .small, .h6 small,
  .h6 .small {
    font-size: 75%; }

h1, .h1 {
  font-size: 24px; }

h2, .h2 {
  font-size: 22px; }

h3, .h3 {
  font-size: 16px; }

h4, .h4 {
  font-size: 15px; }

h5, .h5 {
  font-size: 13px; }

h6, .h6 {
  font-size: 11px; }

p {
  margin: 0 0 10px; }

.lead {
  margin-bottom: 20px;
  font-size: 13px;
  font-weight: 300;
  line-height: 1.4; }
  @media (min-width: 768px) {
    .lead {
      font-size: 18px; } }

small,
.small {
  font-size: 91%; }

mark,
.mark {
  padding: .2em;
  background-color: #fcf8e3; }

.text-left {
  text-align: left; }

.text-right {
  text-align: right; }

.text-center {
  text-align: center; }

.text-justify {
  text-align: justify; }

.text-nowrap {
  white-space: nowrap; }

.text-lowercase {
  text-transform: lowercase; }

.text-uppercase, .initialism {
  text-transform: uppercase; }

.text-capitalize {
  text-transform: capitalize; }

.text-muted {
  color: #9c9c9c; }

.text-primary {
  color: #39a5dc; }

a.text-primary:hover,
a.text-primary:focus {
  color: #228bc0; }

.text-success {
  color: #3c763d; }

a.text-success:hover,
a.text-success:focus {
  color: #2b542c; }

.text-info {
  color: #31708f; }

a.text-info:hover,
a.text-info:focus {
  color: #245269; }

.text-warning {
  color: #ec7a08; }

a.text-warning:hover,
a.text-warning:focus {
  color: #bb6106; }

.text-danger {
  color: #cc0000; }

a.text-danger:hover,
a.text-danger:focus {
  color: #990000; }

.bg-primary {
  color: #fff; }

.bg-primary {
  background-color: #39a5dc; }

a.bg-primary:hover,
a.bg-primary:focus {
  background-color: #228bc0; }

.bg-success {
  background-color: #dff0d8; }

a.bg-success:hover,
a.bg-success:focus {
  background-color: #c1e2b3; }

.bg-info {
  background-color: #d9edf7; }

a.bg-info:hover,
a.bg-info:focus {
  background-color: #afd9ee; }

.bg-warning {
  background-color: #fcf8e3; }

a.bg-warning:hover,
a.bg-warning:focus {
  background-color: #f7ecb5; }

.bg-danger {
  background-color: #f2dede; }

a.bg-danger:hover,
a.bg-danger:focus {
  background-color: #e4b9b9; }

.page-header {
  padding-bottom: 9px;
  margin: 40px 0 20px;
  border-bottom: 1px solid #f1f1f1; }

ul,
ol {
  margin-top: 0;
  margin-bottom: 10px; }
  ul ul,
  ul ol,
  ol ul,
  ol ol {
    margin-bottom: 0; }

.list-unstyled {
  padding-left: 0;
  list-style: none; }

.list-inline {
  padding-left: 0;
  list-style: none;
  margin-left: -5px; }
  .list-inline > li {
    display: inline-block;
    padding-right: 5px;
    padding-left: 5px; }

dl {
  margin-top: 0;
  margin-bottom: 20px; }

dt,
dd {
  line-height: 1.66667; }

dt {
  font-weight: 700; }

dd {
  margin-left: 0; }

.dl-horizontal dd:before, .dl-horizontal dd:after {
  display: table;
  content: " "; }

.dl-horizontal dd:after {
  clear: both; }

@media (min-width: 768px) {
  .dl-horizontal dt {
    float: left;
    width: 160px;
    clear: left;
    text-align: right;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap; }
  .dl-horizontal dd {
    margin-left: 180px; } }

abbr[title],
abbr[data-original-title] {
  cursor: help; }

.initialism {
  font-size: 90%; }

blockquote {
  padding: 10px 20px;
  margin: 0 0 20px;
  font-size: 15px;
  border-left: 5px solid #f1f1f1; }
  blockquote p:last-child,
  blockquote ul:last-child,
  blockquote ol:last-child {
    margin-bottom: 0; }
  blockquote footer,
  blockquote small,
  blockquote .small {
    display: block;
    font-size: 80%;
    line-height: 1.66667;
    color: #9c9c9c; }
    blockquote footer:before,
    blockquote small:before,
    blockquote .small:before {
      content: "\2014 \00A0"; }

.blockquote-reverse,
blockquote.pull-right {
  padding-right: 15px;
  padding-left: 0;
  text-align: right;
  border-right: 5px solid #f1f1f1;
  border-left: 0; }
  .blockquote-reverse footer:before,
  .blockquote-reverse small:before,
  .blockquote-reverse .small:before,
  blockquote.pull-right footer:before,
  blockquote.pull-right small:before,
  blockquote.pull-right .small:before {
    content: ""; }
  .blockquote-reverse footer:after,
  .blockquote-reverse small:after,
  .blockquote-reverse .small:after,
  blockquote.pull-right footer:after,
  blockquote.pull-right small:after,
  blockquote.pull-right .small:after {
    content: "\00A0 \2014"; }

address {
  margin-bottom: 20px;
  font-style: normal;
  line-height: 1.66667; }

code,
kbd,
pre,
samp {
  font-family: Menlo, Monaco, Consolas, monospace; }

code {
  padding: 2px 4px;
  font-size: 90%;
  color: #004368;
  background-color: #def3ff;
  border-radius: 1px; }

kbd {
  padding: 2px 4px;
  font-size: 90%;
  color: #fff;
  background-color: #333;
  border-radius: 1px;
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.25); }
  kbd kbd {
    padding: 0;
    font-size: 100%;
    font-weight: 700;
    box-shadow: none; }

pre {
  display: block;
  padding: 9.5px;
  margin: 0 0 10px;
  font-size: 11px;
  line-height: 1.66667;
  color: #363636;
  word-break: break-all;
  word-wrap: break-word;
  background-color: #fafafa;
  border: 1px solid #ccc;
  border-radius: 1px; }
  pre code {
    padding: 0;
    font-size: inherit;
    color: inherit;
    white-space: pre-wrap;
    background-color: transparent;
    border-radius: 0; }

.pre-scrollable {
  max-height: 340px;
  overflow-y: scroll; }

.container {
  padding-right: 20px;
  padding-left: 20px;
  margin-right: auto;
  margin-left: auto; }
  .container:before, .container:after {
    display: table;
    content: " "; }
  .container:after {
    clear: both; }
  @media (min-width: 768px) {
    .container {
      width: 760px; } }
  @media (min-width: 992px) {
    .container {
      width: 980px; } }
  @media (min-width: 1200px) {
    .container {
      width: 1180px; } }

.container-fluid {
  padding-right: 20px;
  padding-left: 20px;
  margin-right: auto;
  margin-left: auto; }
  .container-fluid:before, .container-fluid:after {
    display: table;
    content: " "; }
  .container-fluid:after {
    clear: both; }

.row {
  margin-right: -20px;
  margin-left: -20px; }
  .row:before, .row:after {
    display: table;
    content: " "; }
  .row:after {
    clear: both; }

.row-no-gutters {
  margin-right: 0;
  margin-left: 0; }
  .row-no-gutters [class*="col-"] {
    padding-right: 0;
    padding-left: 0; }

.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
  position: relative;
  min-height: 1px;
  padding-right: 20px;
  padding-left: 20px; }

.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
  float: left; }

.col-xs-1 {
  width: 8.33333%; }

.col-xs-2 {
  width: 16.66667%; }

.col-xs-3 {
  width: 25%; }

.col-xs-4 {
  width: 33.33333%; }

.col-xs-5 {
  width: 41.66667%; }

.col-xs-6 {
  width: 50%; }

.col-xs-7 {
  width: 58.33333%; }

.col-xs-8 {
  width: 66.66667%; }

.col-xs-9 {
  width: 75%; }

.col-xs-10 {
  width: 83.33333%; }

.col-xs-11 {
  width: 91.66667%; }

.col-xs-12 {
  width: 100%; }

.col-xs-pull-0 {
  right: auto; }

.col-xs-pull-1 {
  right: 8.33333%; }

.col-xs-pull-2 {
  right: 16.66667%; }

.col-xs-pull-3 {
  right: 25%; }

.col-xs-pull-4 {
  right: 33.33333%; }

.col-xs-pull-5 {
  right: 41.66667%; }

.col-xs-pull-6 {
  right: 50%; }

.col-xs-pull-7 {
  right: 58.33333%; }

.col-xs-pull-8 {
  right: 66.66667%; }

.col-xs-pull-9 {
  right: 75%; }

.col-xs-pull-10 {
  right: 83.33333%; }

.col-xs-pull-11 {
  right: 91.66667%; }

.col-xs-pull-12 {
  right: 100%; }

.col-xs-push-0 {
  left: auto; }

.col-xs-push-1 {
  left: 8.33333%; }

.col-xs-push-2 {
  left: 16.66667%; }

.col-xs-push-3 {
  left: 25%; }

.col-xs-push-4 {
  left: 33.33333%; }

.col-xs-push-5 {
  left: 41.66667%; }

.col-xs-push-6 {
  left: 50%; }

.col-xs-push-7 {
  left: 58.33333%; }

.col-xs-push-8 {
  left: 66.66667%; }

.col-xs-push-9 {
  left: 75%; }

.col-xs-push-10 {
  left: 83.33333%; }

.col-xs-push-11 {
  left: 91.66667%; }

.col-xs-push-12 {
  left: 100%; }

.col-xs-offset-0 {
  margin-left: 0%; }

.col-xs-offset-1 {
  margin-left: 8.33333%; }

.col-xs-offset-2 {
  margin-left: 16.66667%; }

.col-xs-offset-3 {
  margin-left: 25%; }

.col-xs-offset-4 {
  margin-left: 33.33333%; }

.col-xs-offset-5 {
  margin-left: 41.66667%; }

.col-xs-offset-6 {
  margin-left: 50%; }

.col-xs-offset-7 {
  margin-left: 58.33333%; }

.col-xs-offset-8 {
  margin-left: 66.66667%; }

.col-xs-offset-9 {
  margin-left: 75%; }

.col-xs-offset-10 {
  margin-left: 83.33333%; }

.col-xs-offset-11 {
  margin-left: 91.66667%; }

.col-xs-offset-12 {
  margin-left: 100%; }

@media (min-width: 768px) {
  .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
    float: left; }
  .col-sm-1 {
    width: 8.33333%; }
  .col-sm-2 {
    width: 16.66667%; }
  .col-sm-3 {
    width: 25%; }
  .col-sm-4 {
    width: 33.33333%; }
  .col-sm-5 {
    width: 41.66667%; }
  .col-sm-6 {
    width: 50%; }
  .col-sm-7 {
    width: 58.33333%; }
  .col-sm-8 {
    width: 66.66667%; }
  .col-sm-9 {
    width: 75%; }
  .col-sm-10 {
    width: 83.33333%; }
  .col-sm-11 {
    width: 91.66667%; }
  .col-sm-12 {
    width: 100%; }
  .col-sm-pull-0 {
    right: auto; }
  .col-sm-pull-1 {
    right: 8.33333%; }
  .col-sm-pull-2 {
    right: 16.66667%; }
  .col-sm-pull-3 {
    right: 25%; }
  .col-sm-pull-4 {
    right: 33.33333%; }
  .col-sm-pull-5 {
    right: 41.66667%; }
  .col-sm-pull-6 {
    right: 50%; }
  .col-sm-pull-7 {
    right: 58.33333%; }
  .col-sm-pull-8 {
    right: 66.66667%; }
  .col-sm-pull-9 {
    right: 75%; }
  .col-sm-pull-10 {
    right: 83.33333%; }
  .col-sm-pull-11 {
    right: 91.66667%; }
  .col-sm-pull-12 {
    right: 100%; }
  .col-sm-push-0 {
    left: auto; }
  .col-sm-push-1 {
    left: 8.33333%; }
  .col-sm-push-2 {
    left: 16.66667%; }
  .col-sm-push-3 {
    left: 25%; }
  .col-sm-push-4 {
    left: 33.33333%; }
  .col-sm-push-5 {
    left: 41.66667%; }
  .col-sm-push-6 {
    left: 50%; }
  .col-sm-push-7 {
    left: 58.33333%; }
  .col-sm-push-8 {
    left: 66.66667%; }
  .col-sm-push-9 {
    left: 75%; }
  .col-sm-push-10 {
    left: 83.33333%; }
  .col-sm-push-11 {
    left: 91.66667%; }
  .col-sm-push-12 {
    left: 100%; }
  .col-sm-offset-0 {
    margin-left: 0%; }
  .col-sm-offset-1 {
    margin-left: 8.33333%; }
  .col-sm-offset-2 {
    margin-left: 16.66667%; }
  .col-sm-offset-3 {
    margin-left: 25%; }
  .col-sm-offset-4 {
    margin-left: 33.33333%; }
  .col-sm-offset-5 {
    margin-left: 41.66667%; }
  .col-sm-offset-6 {
    margin-left: 50%; }
  .col-sm-offset-7 {
    margin-left: 58.33333%; }
  .col-sm-offset-8 {
    margin-left: 66.66667%; }
  .col-sm-offset-9 {
    margin-left: 75%; }
  .col-sm-offset-10 {
    margin-left: 83.33333%; }
  .col-sm-offset-11 {
    margin-left: 91.66667%; }
  .col-sm-offset-12 {
    margin-left: 100%; } }

@media (min-width: 992px) {
  .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
    float: left; }
  .col-md-1 {
    width: 8.33333%; }
  .col-md-2 {
    width: 16.66667%; }
  .col-md-3 {
    width: 25%; }
  .col-md-4 {
    width: 33.33333%; }
  .col-md-5 {
    width: 41.66667%; }
  .col-md-6 {
    width: 50%; }
  .col-md-7 {
    width: 58.33333%; }
  .col-md-8 {
    width: 66.66667%; }
  .col-md-9 {
    width: 75%; }
  .col-md-10 {
    width: 83.33333%; }
  .col-md-11 {
    width: 91.66667%; }
  .col-md-12 {
    width: 100%; }
  .col-md-pull-0 {
    right: auto; }
  .col-md-pull-1 {
    right: 8.33333%; }
  .col-md-pull-2 {
    right: 16.66667%; }
  .col-md-pull-3 {
    right: 25%; }
  .col-md-pull-4 {
    right: 33.33333%; }
  .col-md-pull-5 {
    right: 41.66667%; }
  .col-md-pull-6 {
    right: 50%; }
  .col-md-pull-7 {
    right: 58.33333%; }
  .col-md-pull-8 {
    right: 66.66667%; }
  .col-md-pull-9 {
    right: 75%; }
  .col-md-pull-10 {
    right: 83.33333%; }
  .col-md-pull-11 {
    right: 91.66667%; }
  .col-md-pull-12 {
    right: 100%; }
  .col-md-push-0 {
    left: auto; }
  .col-md-push-1 {
    left: 8.33333%; }
  .col-md-push-2 {
    left: 16.66667%; }
  .col-md-push-3 {
    left: 25%; }
  .col-md-push-4 {
    left: 33.33333%; }
  .col-md-push-5 {
    left: 41.66667%; }
  .col-md-push-6 {
    left: 50%; }
  .col-md-push-7 {
    left: 58.33333%; }
  .col-md-push-8 {
    left: 66.66667%; }
  .col-md-push-9 {
    left: 75%; }
  .col-md-push-10 {
    left: 83.33333%; }
  .col-md-push-11 {
    left: 91.66667%; }
  .col-md-push-12 {
    left: 100%; }
  .col-md-offset-0 {
    margin-left: 0%; }
  .col-md-offset-1 {
    margin-left: 8.33333%; }
  .col-md-offset-2 {
    margin-left: 16.66667%; }
  .col-md-offset-3 {
    margin-left: 25%; }
  .col-md-offset-4 {
    margin-left: 33.33333%; }
  .col-md-offset-5 {
    margin-left: 41.66667%; }
  .col-md-offset-6 {
    margin-left: 50%; }
  .col-md-offset-7 {
    margin-left: 58.33333%; }
  .col-md-offset-8 {
    margin-left: 66.66667%; }
  .col-md-offset-9 {
    margin-left: 75%; }
  .col-md-offset-10 {
    margin-left: 83.33333%; }
  .col-md-offset-11 {
    margin-left: 91.66667%; }
  .col-md-offset-12 {
    margin-left: 100%; } }

@media (min-width: 1200px) {
  .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12 {
    float: left; }
  .col-lg-1 {
    width: 8.33333%; }
  .col-lg-2 {
    width: 16.66667%; }
  .col-lg-3 {
    width: 25%; }
  .col-lg-4 {
    width: 33.33333%; }
  .col-lg-5 {
    width: 41.66667%; }
  .col-lg-6 {
    width: 50%; }
  .col-lg-7 {
    width: 58.33333%; }
  .col-lg-8 {
    width: 66.66667%; }
  .col-lg-9 {
    width: 75%; }
  .col-lg-10 {
    width: 83.33333%; }
  .col-lg-11 {
    width: 91.66667%; }
  .col-lg-12 {
    width: 100%; }
  .col-lg-pull-0 {
    right: auto; }
  .col-lg-pull-1 {
    right: 8.33333%; }
  .col-lg-pull-2 {
    right: 16.66667%; }
  .col-lg-pull-3 {
    right: 25%; }
  .col-lg-pull-4 {
    right: 33.33333%; }
  .col-lg-pull-5 {
    right: 41.66667%; }
  .col-lg-pull-6 {
    right: 50%; }
  .col-lg-pull-7 {
    right: 58.33333%; }
  .col-lg-pull-8 {
    right: 66.66667%; }
  .col-lg-pull-9 {
    right: 75%; }
  .col-lg-pull-10 {
    right: 83.33333%; }
  .col-lg-pull-11 {
    right: 91.66667%; }
  .col-lg-pull-12 {
    right: 100%; }
  .col-lg-push-0 {
    left: auto; }
  .col-lg-push-1 {
    left: 8.33333%; }
  .col-lg-push-2 {
    left: 16.66667%; }
  .col-lg-push-3 {
    left: 25%; }
  .col-lg-push-4 {
    left: 33.33333%; }
  .col-lg-push-5 {
    left: 41.66667%; }
  .col-lg-push-6 {
    left: 50%; }
  .col-lg-push-7 {
    left: 58.33333%; }
  .col-lg-push-8 {
    left: 66.66667%; }
  .col-lg-push-9 {
    left: 75%; }
  .col-lg-push-10 {
    left: 83.33333%; }
  .col-lg-push-11 {
    left: 91.66667%; }
  .col-lg-push-12 {
    left: 100%; }
  .col-lg-offset-0 {
    margin-left: 0%; }
  .col-lg-offset-1 {
    margin-left: 8.33333%; }
  .col-lg-offset-2 {
    margin-left: 16.66667%; }
  .col-lg-offset-3 {
    margin-left: 25%; }
  .col-lg-offset-4 {
    margin-left: 33.33333%; }
  .col-lg-offset-5 {
    margin-left: 41.66667%; }
  .col-lg-offset-6 {
    margin-left: 50%; }
  .col-lg-offset-7 {
    margin-left: 58.33333%; }
  .col-lg-offset-8 {
    margin-left: 66.66667%; }
  .col-lg-offset-9 {
    margin-left: 75%; }
  .col-lg-offset-10 {
    margin-left: 83.33333%; }
  .col-lg-offset-11 {
    margin-left: 91.66667%; }
  .col-lg-offset-12 {
    margin-left: 100%; } }

table {
  background-color: transparent; }
  table col[class*="col-"] {
    position: static;
    display: table-column;
    float: none; }
  table td[class*="col-"],
  table th[class*="col-"] {
    position: static;
    display: table-cell;
    float: none; }

caption {
  padding-top: 10px;
  padding-bottom: 10px;
  color: #9c9c9c;
  text-align: left; }

th {
  text-align: left; }

.table {
  width: 100%;
  max-width: 100%;
  margin-bottom: 20px; }
  .table > thead > tr > th,
  .table > thead > tr > td,
  .table > tbody > tr > th,
  .table > tbody > tr > td,
  .table > tfoot > tr > th,
  .table > tfoot > tr > td {
    padding: 10px;
    line-height: 1.66667;
    vertical-align: top;
    border-top: 1px solid #d1d1d1; }
  .table > thead > tr > th {
    vertical-align: bottom;
    border-bottom: 2px solid #d1d1d1; }
  .table > caption + thead > tr:first-child > th,
  .table > caption + thead > tr:first-child > td,
  .table > colgroup + thead > tr:first-child > th,
  .table > colgroup + thead > tr:first-child > td,
  .table > thead:first-child > tr:first-child > th,
  .table > thead:first-child > tr:first-child > td {
    border-top: 0; }
  .table > tbody + tbody {
    border-top: 2px solid #d1d1d1; }
  .table .table {
    background-color: #fff; }

.table-condensed > thead > tr > th,
.table-condensed > thead > tr > td,
.table-condensed > tbody > tr > th,
.table-condensed > tbody > tr > td,
.table-condensed > tfoot > tr > th,
.table-condensed > tfoot > tr > td {
  padding: 5px; }

.table-bordered {
  border: 1px solid #d1d1d1; }
  .table-bordered > thead > tr > th,
  .table-bordered > thead > tr > td,
  .table-bordered > tbody > tr > th,
  .table-bordered > tbody > tr > td,
  .table-bordered > tfoot > tr > th,
  .table-bordered > tfoot > tr > td {
    border: 1px solid #d1d1d1; }
  .table-bordered > thead > tr > th,
  .table-bordered > thead > tr > td {
    border-bottom-width: 2px; }

.table-striped > tbody > tr:nth-of-type(odd) {
  background-color: #f5f5f5; }

.table-hover > tbody > tr:hover {
  background-color: #def3ff; }

.table > thead > tr > td.active,
.table > thead > tr > th.active,
.table > thead > tr.active > td,
.table > thead > tr.active > th,
.table > tbody > tr > td.active,
.table > tbody > tr > th.active,
.table > tbody > tr.active > td,
.table > tbody > tr.active > th,
.table > tfoot > tr > td.active,
.table > tfoot > tr > th.active,
.table > tfoot > tr.active > td,
.table > tfoot > tr.active > th {
  background-color: #def3ff; }

.table-hover > tbody > tr > td.active:hover,
.table-hover > tbody > tr > th.active:hover,
.table-hover > tbody > tr.active:hover > td,
.table-hover > tbody > tr:hover > .active,
.table-hover > tbody > tr.active:hover > th {
  background-color: #c5eaff; }

.table > thead > tr > td.success,
.table > thead > tr > th.success,
.table > thead > tr.success > td,
.table > thead > tr.success > th,
.table > tbody > tr > td.success,
.table > tbody > tr > th.success,
.table > tbody > tr.success > td,
.table > tbody > tr.success > th,
.table > tfoot > tr > td.success,
.table > tfoot > tr > th.success,
.table > tfoot > tr.success > td,
.table > tfoot > tr.success > th {
  background-color: #dff0d8; }

.table-hover > tbody > tr > td.success:hover,
.table-hover > tbody > tr > th.success:hover,
.table-hover > tbody > tr.success:hover > td,
.table-hover > tbody > tr:hover > .success,
.table-hover > tbody > tr.success:hover > th {
  background-color: #d0e9c6; }

.table > thead > tr > td.info,
.table > thead > tr > th.info,
.table > thead > tr.info > td,
.table > thead > tr.info > th,
.table > tbody > tr > td.info,
.table > tbody > tr > th.info,
.table > tbody > tr.info > td,
.table > tbody > tr.info > th,
.table > tfoot > tr > td.info,
.table > tfoot > tr > th.info,
.table > tfoot > tr.info > td,
.table > tfoot > tr.info > th {
  background-color: #d9edf7; }

.table-hover > tbody > tr > td.info:hover,
.table-hover > tbody > tr > th.info:hover,
.table-hover > tbody > tr.info:hover > td,
.table-hover > tbody > tr:hover > .info,
.table-hover > tbody > tr.info:hover > th {
  background-color: #c4e3f3; }

.table > thead > tr > td.warning,
.table > thead > tr > th.warning,
.table > thead > tr.warning > td,
.table > thead > tr.warning > th,
.table > tbody > tr > td.warning,
.table > tbody > tr > th.warning,
.table > tbody > tr.warning > td,
.table > tbody > tr.warning > th,
.table > tfoot > tr > td.warning,
.table > tfoot > tr > th.warning,
.table > tfoot > tr.warning > td,
.table > tfoot > tr.warning > th {
  background-color: #fcf8e3; }

.table-hover > tbody > tr > td.warning:hover,
.table-hover > tbody > tr > th.warning:hover,
.table-hover > tbody > tr.warning:hover > td,
.table-hover > tbody > tr:hover > .warning,
.table-hover > tbody > tr.warning:hover > th {
  background-color: #faf2cc; }

.table > thead > tr > td.danger,
.table > thead > tr > th.danger,
.table > thead > tr.danger > td,
.table > thead > tr.danger > th,
.table > tbody > tr > td.danger,
.table > tbody > tr > th.danger,
.table > tbody > tr.danger > td,
.table > tbody > tr.danger > th,
.table > tfoot > tr > td.danger,
.table > tfoot > tr > th.danger,
.table > tfoot > tr.danger > td,
.table > tfoot > tr.danger > th {
  background-color: #f2dede; }

.table-hover > tbody > tr > td.danger:hover,
.table-hover > tbody > tr > th.danger:hover,
.table-hover > tbody > tr.danger:hover > td,
.table-hover > tbody > tr:hover > .danger,
.table-hover > tbody > tr.danger:hover > th {
  background-color: #ebcccc; }

.table-responsive {
  min-height: .01%;
  overflow-x: auto; }
  @media screen and (max-width: 767px) {
    .table-responsive {
      width: 100%;
      margin-bottom: 15px;
      overflow-y: hidden;
      -ms-overflow-style: -ms-autohiding-scrollbar;
      border: 1px solid #d1d1d1; }
      .table-responsive > .table {
        margin-bottom: 0; }
        .table-responsive > .table > thead > tr > th,
        .table-responsive > .table > thead > tr > td,
        .table-responsive > .table > tbody > tr > th,
        .table-responsive > .table > tbody > tr > td,
        .table-responsive > .table > tfoot > tr > th,
        .table-responsive > .table > tfoot > tr > td {
          white-space: nowrap; }
      .table-responsive > .table-bordered {
        border: 0; }
        .table-responsive > .table-bordered > thead > tr > th:first-child,
        .table-responsive > .table-bordered > thead > tr > td:first-child,
        .table-responsive > .table-bordered > tbody > tr > th:first-child,
        .table-responsive > .table-bordered > tbody > tr > td:first-child,
        .table-responsive > .table-bordered > tfoot > tr > th:first-child,
        .table-responsive > .table-bordered > tfoot > tr > td:first-child {
          border-left: 0; }
        .table-responsive > .table-bordered > thead > tr > th:last-child,
        .table-responsive > .table-bordered > thead > tr > td:last-child,
        .table-responsive > .table-bordered > tbody > tr > th:last-child,
        .table-responsive > .table-bordered > tbody > tr > td:last-child,
        .table-responsive > .table-bordered > tfoot > tr > th:last-child,
        .table-responsive > .table-bordered > tfoot > tr > td:last-child {
          border-right: 0; }
        .table-responsive > .table-bordered > tbody > tr:last-child > th,
        .table-responsive > .table-bordered > tbody > tr:last-child > td,
        .table-responsive > .table-bordered > tfoot > tr:last-child > th,
        .table-responsive > .table-bordered > tfoot > tr:last-child > td {
          border-bottom: 0; } }

fieldset {
  min-width: 0;
  padding: 0;
  margin: 0;
  border: 0; }

legend {
  display: block;
  width: 100%;
  padding: 0;
  margin-bottom: 20px;
  font-size: 18px;
  line-height: inherit;
  color: #363636;
  border: 0;
  border-bottom: 1px solid #e5e5e5; }

label {
  display: inline-block;
  max-width: 100%;
  margin-bottom: 5px;
  font-weight: 700; }

input[type="search"] {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-appearance: none;
  appearance: none; }

input[type="radio"],
input[type="checkbox"] {
  margin: 4px 0 0;
  margin-top: 1px \9;
  line-height: normal; }
  input[type="radio"][disabled], input[type="radio"].disabled,
  fieldset[disabled] input[type="radio"],
  input[type="checkbox"][disabled],
  input[type="checkbox"].disabled,
  fieldset[disabled]
  input[type="checkbox"] {
    cursor: not-allowed; }

input[type="file"] {
  display: block; }

input[type="range"] {
  display: block;
  width: 100%; }

select[multiple],
select[size] {
  height: auto; }

input[type="file"]:focus,
input[type="radio"]:focus,
input[type="checkbox"]:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px; }

output {
  display: block;
  padding-top: 3px;
  font-size: 12px;
  line-height: 1.66667;
  color: #363636; }

.form-control {
  display: block;
  width: 100%;
  height: 26px;
  padding: 2px 6px;
  font-size: 12px;
  line-height: 1.66667;
  color: #363636;
  background-color: #fff;
  background-image: none;
  border: 1px solid #bbb;
  border-radius: 1px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
  -o-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
  transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s; }
  .form-control:focus {
    border-color: #0088ce;
    outline: 0;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(0, 136, 206, 0.6);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(0, 136, 206, 0.6); }
  .form-control:-moz-placeholder {
    color: #999;
    font-style: italic; }
  .form-control::-moz-placeholder {
    color: #999;
    font-style: italic;
    opacity: 1; }
  .form-control:-ms-input-placeholder {
    color: #999;
    font-style: italic; }
  .form-control::-webkit-input-placeholder {
    color: #999;
    font-style: italic; }
  .form-control::-ms-expand {
    background-color: transparent;
    border: 0; }
  .form-control[disabled], .form-control[readonly],
  fieldset[disabled] .form-control {
    background-color: #f5f5f5;
    opacity: 1; }
  .form-control[disabled],
  fieldset[disabled] .form-control {
    cursor: not-allowed; }

textarea.form-control {
  height: auto; }

@media screen and (-webkit-min-device-pixel-ratio: 0) {
  input[type="date"].form-control,
  input[type="time"].form-control,
  input[type="datetime-local"].form-control,
  input[type="month"].form-control {
    line-height: 26px; }
  input[type="date"].input-sm, .input-group-sm > input.form-control[type="date"],
  .input-group-sm > input.input-group-addon[type="date"],
  .input-group-sm > .input-group-btn > input.btn[type="date"],
  .input-group-sm input[type="date"],
  input[type="time"].input-sm,
  .input-group-sm > input.form-control[type="time"],
  .input-group-sm > input.input-group-addon[type="time"],
  .input-group-sm > .input-group-btn > input.btn[type="time"],
  .input-group-sm
  input[type="time"],
  input[type="datetime-local"].input-sm,
  .input-group-sm > input.form-control[type="datetime-local"],
  .input-group-sm > input.input-group-addon[type="datetime-local"],
  .input-group-sm > .input-group-btn > input.btn[type="datetime-local"],
  .input-group-sm
  input[type="datetime-local"],
  input[type="month"].input-sm,
  .input-group-sm > input.form-control[type="month"],
  .input-group-sm > input.input-group-addon[type="month"],
  .input-group-sm > .input-group-btn > input.btn[type="month"],
  .input-group-sm
  input[type="month"] {
    line-height: 22px; }
  input[type="date"].input-lg, .input-group-lg > input.form-control[type="date"],
  .input-group-lg > input.input-group-addon[type="date"],
  .input-group-lg > .input-group-btn > input.btn[type="date"],
  .input-group-lg input[type="date"],
  input[type="time"].input-lg,
  .input-group-lg > input.form-control[type="time"],
  .input-group-lg > input.input-group-addon[type="time"],
  .input-group-lg > .input-group-btn > input.btn[type="time"],
  .input-group-lg
  input[type="time"],
  input[type="datetime-local"].input-lg,
  .input-group-lg > input.form-control[type="datetime-local"],
  .input-group-lg > input.input-group-addon[type="datetime-local"],
  .input-group-lg > .input-group-btn > input.btn[type="datetime-local"],
  .input-group-lg
  input[type="datetime-local"],
  input[type="month"].input-lg,
  .input-group-lg > input.form-control[type="month"],
  .input-group-lg > input.input-group-addon[type="month"],
  .input-group-lg > .input-group-btn > input.btn[type="month"],
  .input-group-lg
  input[type="month"] {
    line-height: 33px; } }

.form-group {
  margin-bottom: 15px; }

.radio,
.checkbox {
  position: relative;
  display: block;
  margin-top: 10px;
  margin-bottom: 10px; }
  .radio.disabled label,
  fieldset[disabled] .radio label,
  .checkbox.disabled label,
  fieldset[disabled]
  .checkbox label {
    cursor: not-allowed; }
  .radio label,
  .checkbox label {
    min-height: 20px;
    padding-left: 20px;
    margin-bottom: 0;
    font-weight: 400;
    cursor: pointer; }

.radio input[type="radio"],
.radio-inline input[type="radio"],
.checkbox input[type="checkbox"],
.checkbox-inline input[type="checkbox"] {
  position: absolute;
  margin-top: 4px \9;
  margin-left: -20px; }

.radio + .radio,
.checkbox + .checkbox {
  margin-top: -5px; }

.radio-inline,
.checkbox-inline {
  position: relative;
  display: inline-block;
  padding-left: 20px;
  margin-bottom: 0;
  font-weight: 400;
  vertical-align: middle;
  cursor: pointer; }
  .radio-inline.disabled,
  fieldset[disabled] .radio-inline,
  .checkbox-inline.disabled,
  fieldset[disabled]
  .checkbox-inline {
    cursor: not-allowed; }

.radio-inline + .radio-inline,
.checkbox-inline + .checkbox-inline {
  margin-top: 0;
  margin-left: 10px; }

.form-control-static {
  min-height: 32px;
  padding-top: 3px;
  padding-bottom: 3px;
  margin-bottom: 0; }
  .form-control-static.input-lg, .input-group-lg > .form-control-static.form-control,
  .input-group-lg > .form-control-static.input-group-addon,
  .input-group-lg > .input-group-btn > .form-control-static.btn, .form-control-static.input-sm, .input-group-sm > .form-control-static.form-control,
  .input-group-sm > .form-control-static.input-group-addon,
  .input-group-sm > .input-group-btn > .form-control-static.btn {
    padding-right: 0;
    padding-left: 0; }

.input-sm, .input-group-sm > .form-control,
.input-group-sm > .input-group-addon,
.input-group-sm > .input-group-btn > .btn {
  height: 22px;
  padding: 2px 6px;
  font-size: 11px;
  line-height: 1.5;
  border-radius: 1px; }

select.input-sm, .input-group-sm > select.form-control,
.input-group-sm > select.input-group-addon,
.input-group-sm > .input-group-btn > select.btn {
  height: 22px;
  line-height: 22px; }

textarea.input-sm, .input-group-sm > textarea.form-control,
.input-group-sm > textarea.input-group-addon,
.input-group-sm > .input-group-btn > textarea.btn,
select[multiple].input-sm,
.input-group-sm > select.form-control[multiple],
.input-group-sm > select.input-group-addon[multiple],
.input-group-sm > .input-group-btn > select.btn[multiple] {
  height: auto; }

.form-group-sm .form-control {
  height: 22px;
  padding: 2px 6px;
  font-size: 11px;
  line-height: 1.5;
  border-radius: 1px; }

.form-group-sm select.form-control {
  height: 22px;
  line-height: 22px; }

.form-group-sm textarea.form-control,
.form-group-sm select[multiple].form-control {
  height: auto; }

.form-group-sm .form-control-static {
  height: 22px;
  min-height: 31px;
  padding: 3px 6px;
  font-size: 11px;
  line-height: 1.5; }

.input-lg, .input-group-lg > .form-control,
.input-group-lg > .input-group-addon,
.input-group-lg > .input-group-btn > .btn {
  height: 33px;
  padding: 6px 10px;
  font-size: 14px;
  line-height: 1.33333;
  border-radius: 1px; }

select.input-lg, .input-group-lg > select.form-control,
.input-group-lg > select.input-group-addon,
.input-group-lg > .input-group-btn > select.btn {
  height: 33px;
  line-height: 33px; }

textarea.input-lg, .input-group-lg > textarea.form-control,
.input-group-lg > textarea.input-group-addon,
.input-group-lg > .input-group-btn > textarea.btn,
select[multiple].input-lg,
.input-group-lg > select.form-control[multiple],
.input-group-lg > select.input-group-addon[multiple],
.input-group-lg > .input-group-btn > select.btn[multiple] {
  height: auto; }

.form-group-lg .form-control {
  height: 33px;
  padding: 6px 10px;
  font-size: 14px;
  line-height: 1.33333;
  border-radius: 1px; }

.form-group-lg select.form-control {
  height: 33px;
  line-height: 33px; }

.form-group-lg textarea.form-control,
.form-group-lg select[multiple].form-control {
  height: auto; }

.form-group-lg .form-control-static {
  height: 33px;
  min-height: 34px;
  padding: 7px 10px;
  font-size: 14px;
  line-height: 1.33333; }

.has-feedback {
  position: relative; }
  .has-feedback .form-control {
    padding-right: 32.5px; }

.form-control-feedback {
  position: absolute;
  top: 0;
  right: 0;
  z-index: 2;
  display: block;
  width: 26px;
  height: 26px;
  line-height: 26px;
  text-align: center;
  pointer-events: none; }

.input-lg + .form-control-feedback, .input-group-lg > .form-control + .form-control-feedback, .input-group-lg > .input-group-addon + .form-control-feedback, .input-group-lg > .input-group-btn > .btn + .form-control-feedback,
.input-group-lg + .form-control-feedback,
.form-group-lg .form-control + .form-control-feedback {
  width: 33px;
  height: 33px;
  line-height: 33px; }

.input-sm + .form-control-feedback, .input-group-sm > .form-control + .form-control-feedback, .input-group-sm > .input-group-addon + .form-control-feedback, .input-group-sm > .input-group-btn > .btn + .form-control-feedback,
.input-group-sm + .form-control-feedback,
.form-group-sm .form-control + .form-control-feedback {
  width: 22px;
  height: 22px;
  line-height: 22px; }

.has-success .help-block,
.has-success .control-label,
.has-success .radio,
.has-success .checkbox,
.has-success .radio-inline,
.has-success .checkbox-inline,
.has-success.radio label,
.has-success.checkbox label,
.has-success.radio-inline label,
.has-success.checkbox-inline label {
  color: #3c763d; }

.has-success .form-control {
  border-color: #3c763d;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075); }
  .has-success .form-control:focus {
    border-color: #2b542c;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #67b168;
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #67b168; }

.has-success .input-group-addon {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #3c763d; }

.has-success .form-control-feedback {
  color: #3c763d; }

.has-warning .help-block,
.has-warning .control-label,
.has-warning .radio,
.has-warning .checkbox,
.has-warning .radio-inline,
.has-warning .checkbox-inline,
.has-warning.radio label,
.has-warning.checkbox label,
.has-warning.radio-inline label,
.has-warning.checkbox-inline label {
  color: #ec7a08; }

.has-warning .form-control {
  border-color: #ec7a08;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075); }
  .has-warning .form-control:focus {
    border-color: #bb6106;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #faad60;
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #faad60; }

.has-warning .input-group-addon {
  color: #ec7a08;
  background-color: #fcf8e3;
  border-color: #ec7a08; }

.has-warning .form-control-feedback {
  color: #ec7a08; }

.has-error .help-block,
.has-error .control-label,
.has-error .radio,
.has-error .checkbox,
.has-error .radio-inline,
.has-error .checkbox-inline,
.has-error.radio label,
.has-error.checkbox label,
.has-error.radio-inline label,
.has-error.checkbox-inline label {
  color: #cc0000; }

.has-error .form-control {
  border-color: #cc0000;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075); }
  .has-error .form-control:focus {
    border-color: #990000;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #ff3333;
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #ff3333; }

.has-error .input-group-addon {
  color: #cc0000;
  background-color: #f2dede;
  border-color: #cc0000; }

.has-error .form-control-feedback {
  color: #cc0000; }

.has-feedback label ~ .form-control-feedback {
  top: 25px; }

.has-feedback label.sr-only ~ .form-control-feedback, .has-feedback .bootstrap-datetimepicker-widget label.btn[data-action="incrementHours"]::after ~ .form-control-feedback, .bootstrap-datetimepicker-widget .has-feedback label.btn[data-action="incrementHours"]::after ~ .form-control-feedback, .has-feedback .bootstrap-datetimepicker-widget label.btn[data-action="incrementMinutes"]::after ~ .form-control-feedback, .bootstrap-datetimepicker-widget .has-feedback label.btn[data-action="incrementMinutes"]::after ~ .form-control-feedback, .has-feedback .bootstrap-datetimepicker-widget label.btn[data-action="decrementHours"]::after ~ .form-control-feedback, .bootstrap-datetimepicker-widget .has-feedback label.btn[data-action="decrementHours"]::after ~ .form-control-feedback, .has-feedback .bootstrap-datetimepicker-widget label.btn[data-action="decrementMinutes"]::after ~ .form-control-feedback, .bootstrap-datetimepicker-widget .has-feedback label.btn[data-action="decrementMinutes"]::after ~ .form-control-feedback, .has-feedback .bootstrap-datetimepicker-widget label.btn[data-action="showHours"]::after ~ .form-control-feedback, .bootstrap-datetimepicker-widget .has-feedback label.btn[data-action="showHours"]::after ~ .form-control-feedback, .has-feedback .bootstrap-datetimepicker-widget label.btn[data-action="showMinutes"]::after ~ .form-control-feedback, .bootstrap-datetimepicker-widget .has-feedback label.btn[data-action="showMinutes"]::after ~ .form-control-feedback, .has-feedback .bootstrap-datetimepicker-widget label.btn[data-action="togglePeriod"]::after ~ .form-control-feedback, .bootstrap-datetimepicker-widget .has-feedback label.btn[data-action="togglePeriod"]::after ~ .form-control-feedback, .has-feedback .bootstrap-datetimepicker-widget label.btn[data-action="clear"]::after ~ .form-control-feedback, .bootstrap-datetimepicker-widget .has-feedback label.btn[data-action="clear"]::after ~ .form-control-feedback, .has-feedback .bootstrap-datetimepicker-widget label.btn[data-action="today"]::after ~ .form-control-feedback, .bootstrap-datetimepicker-widget .has-feedback label.btn[data-action="today"]::after ~ .form-control-feedback, .has-feedback .bootstrap-datetimepicker-widget label.picker-switch::after ~ .form-control-feedback, .bootstrap-datetimepicker-widget .has-feedback label.picker-switch::after ~ .form-control-feedback {
  top: 0; }

.help-block {
  display: block;
  margin-top: 5px;
  margin-bottom: 10px;
  color: #767676; }

@media (min-width: 768px) {
  .form-inline .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle; }
  .form-inline .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle; }
  .form-inline .form-control-static {
    display: inline-block; }
  .form-inline .input-group {
    display: inline-table;
    vertical-align: middle; }
    .form-inline .input-group .input-group-addon,
    .form-inline .input-group .input-group-btn,
    .form-inline .input-group .form-control {
      width: auto; }
  .form-inline .input-group > .form-control {
    width: 100%; }
  .form-inline .control-label {
    margin-bottom: 0;
    vertical-align: middle; }
  .form-inline .radio,
  .form-inline .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle; }
    .form-inline .radio label,
    .form-inline .checkbox label {
      padding-left: 0; }
  .form-inline .radio input[type="radio"],
  .form-inline .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0; }
  .form-inline .has-feedback .form-control-feedback {
    top: 0; } }

.form-horizontal .radio,
.form-horizontal .checkbox,
.form-horizontal .radio-inline,
.form-horizontal .checkbox-inline {
  padding-top: 3px;
  margin-top: 0;
  margin-bottom: 0; }

.form-horizontal .radio,
.form-horizontal .checkbox {
  min-height: 23px; }

.form-horizontal .form-group {
  margin-right: -20px;
  margin-left: -20px; }
  .form-horizontal .form-group:before, .form-horizontal .form-group:after {
    display: table;
    content: " "; }
  .form-horizontal .form-group:after {
    clear: both; }

@media (min-width: 768px) {
  .form-horizontal .control-label {
    padding-top: 3px;
    margin-bottom: 0;
    text-align: right; } }

.form-horizontal .has-feedback .form-control-feedback {
  right: 20px; }

@media (min-width: 768px) {
  .form-horizontal .form-group-lg .control-label {
    padding-top: 7px;
    font-size: 14px; } }

@media (min-width: 768px) {
  .form-horizontal .form-group-sm .control-label {
    padding-top: 3px;
    font-size: 11px; } }

.btn {
  display: inline-block;
  margin-bottom: 0;
  font-weight: 600;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  touch-action: manipulation;
  cursor: pointer;
  background-image: none;
  border: 1px solid transparent;
  padding: 2px 6px;
  font-size: 12px;
  line-height: 1.66667;
  border-radius: 1px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none; }
  .btn:focus, .btn.focus, .btn:active:focus, .btn:active.focus, .btn.active:focus, .btn.active.focus {
    outline: 5px auto -webkit-focus-ring-color;
    outline-offset: -2px; }
  .btn:hover, .btn:focus, .btn.focus {
    color: #4d5258;
    text-decoration: none; }
  .btn:active, .btn.active {
    background-image: none;
    outline: 0;
    -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
    box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125); }
  .btn.disabled, .btn[disabled],
  fieldset[disabled] .btn {
    cursor: not-allowed;
    filter: alpha(opacity=65);
    opacity: 0.65;
    -webkit-box-shadow: none;
    box-shadow: none; }

a.btn.disabled,
fieldset[disabled] a.btn {
  pointer-events: none; }

.btn-default {
  color: #4d5258;
  background-color: #f1f1f1;
  border-color: #bbb; }
  .btn-default:focus, .btn-default.focus {
    color: #4d5258;
    background-color: #d8d8d8;
    border-color: #7b7b7b; }
  .btn-default:hover {
    color: #4d5258;
    background-color: #d8d8d8;
    border-color: #9c9c9c; }
  .btn-default:active, .btn-default.active,
  .open > .btn-default.dropdown-toggle {
    color: #4d5258;
    background-color: #d8d8d8;
    background-image: none;
    border-color: #9c9c9c; }
    .btn-default:active:hover, .btn-default:active:focus, .btn-default:active.focus, .btn-default.active:hover, .btn-default.active:focus, .btn-default.active.focus,
    .open > .btn-default.dropdown-toggle:hover,
    .open > .btn-default.dropdown-toggle:focus,
    .open > .btn-default.dropdown-toggle.focus {
      color: #4d5258;
      background-color: #c6c6c6;
      border-color: #7b7b7b; }
  .btn-default.disabled:hover, .btn-default.disabled:focus, .btn-default.disabled.focus, .btn-default[disabled]:hover, .btn-default[disabled]:focus, .btn-default[disabled].focus,
  fieldset[disabled] .btn-default:hover,
  fieldset[disabled] .btn-default:focus,
  fieldset[disabled] .btn-default.focus {
    background-color: #f1f1f1;
    border-color: #bbb; }
  .btn-default .badge {
    color: #f1f1f1;
    background-color: #4d5258; }

.btn-primary {
  color: #fff;
  background-color: #0088ce;
  border-color: #00659c; }
  .btn-primary:focus, .btn-primary.focus {
    color: #fff;
    background-color: #00669b;
    border-color: #00121d; }
  .btn-primary:hover {
    color: #fff;
    background-color: #00669b;
    border-color: #003d5f; }
  .btn-primary:active, .btn-primary.active,
  .open > .btn-primary.dropdown-toggle {
    color: #fff;
    background-color: #00669b;
    background-image: none;
    border-color: #003d5f; }
    .btn-primary:active:hover, .btn-primary:active:focus, .btn-primary:active.focus, .btn-primary.active:hover, .btn-primary.active:focus, .btn-primary.active.focus,
    .open > .btn-primary.dropdown-toggle:hover,
    .open > .btn-primary.dropdown-toggle:focus,
    .open > .btn-primary.dropdown-toggle.focus {
      color: #fff;
      background-color: #004f77;
      border-color: #00121d; }
  .btn-primary.disabled:hover, .btn-primary.disabled:focus, .btn-primary.disabled.focus, .btn-primary[disabled]:hover, .btn-primary[disabled]:focus, .btn-primary[disabled].focus,
  fieldset[disabled] .btn-primary:hover,
  fieldset[disabled] .btn-primary:focus,
  fieldset[disabled] .btn-primary.focus {
    background-color: #0088ce;
    border-color: #00659c; }
  .btn-primary .badge {
    color: #0088ce;
    background-color: #fff; }

.btn-success {
  color: #fff;
  background-color: #3f9c35;
  border-color: #37892f; }
  .btn-success:focus, .btn-success.focus {
    color: #fff;
    background-color: #307628;
    border-color: #112a0e; }
  .btn-success:hover {
    color: #fff;
    background-color: #307628;
    border-color: #255b1f; }
  .btn-success:active, .btn-success.active,
  .open > .btn-success.dropdown-toggle {
    color: #fff;
    background-color: #307628;
    background-image: none;
    border-color: #255b1f; }
    .btn-success:active:hover, .btn-success:active:focus, .btn-success:active.focus, .btn-success.active:hover, .btn-success.active:focus, .btn-success.active.focus,
    .open > .btn-success.dropdown-toggle:hover,
    .open > .btn-success.dropdown-toggle:focus,
    .open > .btn-success.dropdown-toggle.focus {
      color: #fff;
      background-color: #255b1f;
      border-color: #112a0e; }
  .btn-success.disabled:hover, .btn-success.disabled:focus, .btn-success.disabled.focus, .btn-success[disabled]:hover, .btn-success[disabled]:focus, .btn-success[disabled].focus,
  fieldset[disabled] .btn-success:hover,
  fieldset[disabled] .btn-success:focus,
  fieldset[disabled] .btn-success.focus {
    background-color: #3f9c35;
    border-color: #37892f; }
  .btn-success .badge {
    color: #3f9c35;
    background-color: #fff; }

.btn-info {
  color: #fff;
  background-color: #00659c;
  border-color: #005483; }
  .btn-info:focus, .btn-info.focus {
    color: #fff;
    background-color: #004469;
    border-color: #000203; }
  .btn-info:hover {
    color: #fff;
    background-color: #004469;
    border-color: #002d45; }
  .btn-info:active, .btn-info.active,
  .open > .btn-info.dropdown-toggle {
    color: #fff;
    background-color: #004469;
    background-image: none;
    border-color: #002d45; }
    .btn-info:active:hover, .btn-info:active:focus, .btn-info:active.focus, .btn-info.active:hover, .btn-info.active:focus, .btn-info.active.focus,
    .open > .btn-info.dropdown-toggle:hover,
    .open > .btn-info.dropdown-toggle:focus,
    .open > .btn-info.dropdown-toggle.focus {
      color: #fff;
      background-color: #002d45;
      border-color: #000203; }
  .btn-info.disabled:hover, .btn-info.disabled:focus, .btn-info.disabled.focus, .btn-info[disabled]:hover, .btn-info[disabled]:focus, .btn-info[disabled].focus,
  fieldset[disabled] .btn-info:hover,
  fieldset[disabled] .btn-info:focus,
  fieldset[disabled] .btn-info.focus {
    background-color: #00659c;
    border-color: #005483; }
  .btn-info .badge {
    color: #00659c;
    background-color: #fff; }

.btn-warning {
  color: #fff;
  background-color: #ec7a08;
  border-color: #d36d07; }
  .btn-warning:focus, .btn-warning.focus {
    color: #fff;
    background-color: #bb6106;
    border-color: #582e03; }
  .btn-warning:hover {
    color: #fff;
    background-color: #bb6106;
    border-color: #984f05; }
  .btn-warning:active, .btn-warning.active,
  .open > .btn-warning.dropdown-toggle {
    color: #fff;
    background-color: #bb6106;
    background-image: none;
    border-color: #984f05; }
    .btn-warning:active:hover, .btn-warning:active:focus, .btn-warning:active.focus, .btn-warning.active:hover, .btn-warning.active:focus, .btn-warning.active.focus,
    .open > .btn-warning.dropdown-toggle:hover,
    .open > .btn-warning.dropdown-toggle:focus,
    .open > .btn-warning.dropdown-toggle.focus {
      color: #fff;
      background-color: #984f05;
      border-color: #582e03; }
  .btn-warning.disabled:hover, .btn-warning.disabled:focus, .btn-warning.disabled.focus, .btn-warning[disabled]:hover, .btn-warning[disabled]:focus, .btn-warning[disabled].focus,
  fieldset[disabled] .btn-warning:hover,
  fieldset[disabled] .btn-warning:focus,
  fieldset[disabled] .btn-warning.focus {
    background-color: #ec7a08;
    border-color: #d36d07; }
  .btn-warning .badge {
    color: #ec7a08;
    background-color: #fff; }

.btn-danger {
  color: #fff;
  background-color: #a30000;
  border-color: #8b0000; }
  .btn-danger:focus, .btn-danger.focus {
    color: #fff;
    background-color: #700000;
    border-color: #0c0000; }
  .btn-danger:hover {
    color: #fff;
    background-color: #700000;
    border-color: #4e0000; }
  .btn-danger:active, .btn-danger.active,
  .open > .btn-danger.dropdown-toggle {
    color: #fff;
    background-color: #700000;
    background-image: none;
    border-color: #4e0000; }
    .btn-danger:active:hover, .btn-danger:active:focus, .btn-danger:active.focus, .btn-danger.active:hover, .btn-danger.active:focus, .btn-danger.active.focus,
    .open > .btn-danger.dropdown-toggle:hover,
    .open > .btn-danger.dropdown-toggle:focus,
    .open > .btn-danger.dropdown-toggle.focus {
      color: #fff;
      background-color: #4c0000;
      border-color: #0c0000; }
  .btn-danger.disabled:hover, .btn-danger.disabled:focus, .btn-danger.disabled.focus, .btn-danger[disabled]:hover, .btn-danger[disabled]:focus, .btn-danger[disabled].focus,
  fieldset[disabled] .btn-danger:hover,
  fieldset[disabled] .btn-danger:focus,
  fieldset[disabled] .btn-danger.focus {
    background-color: #a30000;
    border-color: #8b0000; }
  .btn-danger .badge {
    color: #a30000;
    background-color: #fff; }

.btn-link {
  font-weight: 400;
  color: #0088ce;
  border-radius: 0; }
  .btn-link, .btn-link:active, .btn-link.active, .btn-link[disabled],
  fieldset[disabled] .btn-link {
    background-color: transparent;
    -webkit-box-shadow: none;
    box-shadow: none; }
  .btn-link, .btn-link:hover, .btn-link:focus, .btn-link:active {
    border-color: transparent; }
  .btn-link:hover, .btn-link:focus {
    color: #00659c;
    text-decoration: underline;
    background-color: transparent; }
  .btn-link[disabled]:hover, .btn-link[disabled]:focus,
  fieldset[disabled] .btn-link:hover,
  fieldset[disabled] .btn-link:focus {
    color: #9c9c9c;
    text-decoration: none; }

.btn-lg, .btn-group-lg > .btn {
  padding: 6px 10px;
  font-size: 14px;
  line-height: 1.33333;
  border-radius: 1px; }

.btn-sm, .btn-group-sm > .btn {
  padding: 2px 6px;
  font-size: 11px;
  line-height: 1.5;
  border-radius: 1px; }

.btn-xs, .btn-group-xs > .btn {
  padding: 1px 5px;
  font-size: 11px;
  line-height: 1.5;
  border-radius: 1px; }

.btn-block {
  display: block;
  width: 100%; }

.btn-block + .btn-block {
  margin-top: 5px; }

input[type="submit"].btn-block,
input[type="reset"].btn-block,
input[type="button"].btn-block {
  width: 100%; }

.fade {
  opacity: 0;
  -webkit-transition: opacity 0.15s linear;
  -o-transition: opacity 0.15s linear;
  transition: opacity 0.15s linear; }
  .fade.in {
    opacity: 1; }

.collapse {
  display: none; }
  .collapse.in {
    display: block; }

tr.collapse.in {
  display: table-row; }

tbody.collapse.in {
  display: table-row-group; }

.collapsing {
  position: relative;
  height: 0;
  overflow: hidden;
  -webkit-transition-property: height, visibility;
  transition-property: height, visibility;
  -webkit-transition-duration: 0.35s;
  transition-duration: 0.35s;
  -webkit-transition-timing-function: ease;
  transition-timing-function: ease; }

.caret {
  display: inline-block;
  width: 0;
  height: 0;
  margin-left: 2px;
  vertical-align: middle;
  border-top: 0 dashed;
  border-top: 0 solid \9;
  border-right: 0 solid transparent;
  border-left: 0 solid transparent; }

.dropup,
.dropdown {
  position: relative; }

.dropdown-toggle:focus {
  outline: 0; }

.dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 5px 0;
  margin: 2px 0 0;
  font-size: 12px;
  text-align: left;
  list-style: none;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #bbb;
  border: 1px solid #bbb;
  border-radius: 1px;
  -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175); }
  .dropdown-menu.pull-right {
    right: 0;
    left: auto; }
  .dropdown-menu .divider {
    background-color: #ededed;
    height: 1px;
    margin: 4px 1px;
    overflow: hidden; }
  .dropdown-menu > li > a {
    display: block;
    padding: 3px 20px;
    clear: both;
    font-weight: 400;
    line-height: 1.66667;
    color: #363636;
    white-space: nowrap; }
    .dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus {
      color: #4d5258;
      text-decoration: none;
      background-color: #def3ff; }

.dropdown-menu > .active > a, .dropdown-menu > .active > a:hover, .dropdown-menu > .active > a:focus {
  color: #fff;
  text-decoration: none;
  background-color: #0088ce;
  outline: 0; }

.dropdown-menu > .disabled > a, .dropdown-menu > .disabled > a:hover, .dropdown-menu > .disabled > a:focus {
  color: #9c9c9c; }

.dropdown-menu > .disabled > a:hover, .dropdown-menu > .disabled > a:focus {
  text-decoration: none;
  cursor: not-allowed;
  background-color: transparent;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false); }

.open > .dropdown-menu {
  display: block; }

.open > a {
  outline: 0; }

.dropdown-menu-right {
  right: 0;
  left: auto; }

.dropdown-menu-left {
  right: auto;
  left: 0; }

.dropdown-header {
  display: block;
  padding: 3px 20px;
  font-size: 11px;
  line-height: 1.66667;
  color: #9c9c9c;
  white-space: nowrap; }

.dropdown-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 990; }

.pull-right > .dropdown-menu {
  right: 0;
  left: auto; }

.dropup .caret,
.navbar-fixed-bottom .dropdown .caret {
  content: "";
  border-top: 0;
  border-bottom: 0 dashed;
  border-bottom: 0 solid \9; }

.dropup .dropdown-menu,
.navbar-fixed-bottom .dropdown .dropdown-menu {
  top: auto;
  bottom: 100%;
  margin-bottom: 2px; }

@media (min-width: 768px) {
  .navbar-right .dropdown-menu {
    right: 0;
    left: auto; }
  .navbar-right .dropdown-menu-left {
    left: 0;
    right: auto; } }

.btn-group,
.btn-group-vertical {
  position: relative;
  display: inline-block;
  vertical-align: middle; }
  .btn-group > .btn,
  .btn-group-vertical > .btn {
    position: relative;
    float: left; }
    .btn-group > .btn:hover, .btn-group > .btn:focus, .btn-group > .btn:active, .btn-group > .btn.active,
    .btn-group-vertical > .btn:hover,
    .btn-group-vertical > .btn:focus,
    .btn-group-vertical > .btn:active,
    .btn-group-vertical > .btn.active {
      z-index: 2; }

.btn-group .btn + .btn,
.btn-group .btn + .btn-group,
.btn-group .btn-group + .btn,
.btn-group .btn-group + .btn-group {
  margin-left: -1px; }

.btn-toolbar {
  margin-left: -5px; }
  .btn-toolbar:before, .btn-toolbar:after {
    display: table;
    content: " "; }
  .btn-toolbar:after {
    clear: both; }
  .btn-toolbar .btn,
  .btn-toolbar .btn-group,
  .btn-toolbar .input-group {
    float: left; }
  .btn-toolbar > .btn,
  .btn-toolbar > .btn-group,
  .btn-toolbar > .input-group {
    margin-left: 5px; }

.btn-group > .btn:not(:first-child):not(:last-child):not(.dropdown-toggle) {
  border-radius: 0; }

.btn-group > .btn:first-child {
  margin-left: 0; }
  .btn-group > .btn:first-child:not(:last-child):not(.dropdown-toggle) {
    border-top-right-radius: 0;
    border-bottom-right-radius: 0; }

.btn-group > .btn:last-child:not(:first-child),
.btn-group > .dropdown-toggle:not(:first-child) {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0; }

.btn-group > .btn-group {
  float: left; }

.btn-group > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0; }

.btn-group > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0; }

.btn-group > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0; }

.btn-group .dropdown-toggle:active,
.btn-group.open .dropdown-toggle {
  outline: 0; }

.btn-group > .btn + .dropdown-toggle {
  padding-right: 8px;
  padding-left: 8px; }

.btn-group > .btn-lg + .dropdown-toggle, .btn-group-lg.btn-group > .btn + .dropdown-toggle {
  padding-right: 12px;
  padding-left: 12px; }

.btn-group.open .dropdown-toggle {
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
  box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125); }
  .btn-group.open .dropdown-toggle.btn-link {
    -webkit-box-shadow: none;
    box-shadow: none; }

.btn .caret {
  margin-left: 0; }

.btn-lg .caret, .btn-group-lg > .btn .caret {
  border-width: 0 0 0;
  border-bottom-width: 0; }

.dropup .btn-lg .caret, .dropup .btn-group-lg > .btn .caret {
  border-width: 0 0 0; }

.btn-group-vertical > .btn,
.btn-group-vertical > .btn-group,
.btn-group-vertical > .btn-group > .btn {
  display: block;
  float: none;
  width: 100%;
  max-width: 100%; }

.btn-group-vertical > .btn-group:before, .btn-group-vertical > .btn-group:after {
  display: table;
  content: " "; }

.btn-group-vertical > .btn-group:after {
  clear: both; }

.btn-group-vertical > .btn-group > .btn {
  float: none; }

.btn-group-vertical > .btn + .btn,
.btn-group-vertical > .btn + .btn-group,
.btn-group-vertical > .btn-group + .btn,
.btn-group-vertical > .btn-group + .btn-group {
  margin-top: -1px;
  margin-left: 0; }

.btn-group-vertical > .btn:not(:first-child):not(:last-child) {
  border-radius: 0; }

.btn-group-vertical > .btn:first-child:not(:last-child) {
  border-top-left-radius: 1px;
  border-top-right-radius: 1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0; }

.btn-group-vertical > .btn:last-child:not(:first-child) {
  border-top-left-radius: 0;
  border-top-right-radius: 0;
  border-bottom-right-radius: 1px;
  border-bottom-left-radius: 1px; }

.btn-group-vertical > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0; }

.btn-group-vertical > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0; }

.btn-group-vertical > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-top-left-radius: 0;
  border-top-right-radius: 0; }

.btn-group-justified {
  display: table;
  width: 100%;
  table-layout: fixed;
  border-collapse: separate; }
  .btn-group-justified > .btn,
  .btn-group-justified > .btn-group {
    display: table-cell;
    float: none;
    width: 1%; }
  .btn-group-justified > .btn-group .btn {
    width: 100%; }
  .btn-group-justified > .btn-group .dropdown-menu {
    left: auto; }

[data-toggle="buttons"] > .btn input[type="radio"],
[data-toggle="buttons"] > .btn input[type="checkbox"],
[data-toggle="buttons"] > .btn-group > .btn input[type="radio"],
[data-toggle="buttons"] > .btn-group > .btn input[type="checkbox"] {
  position: absolute;
  clip: rect(0, 0, 0, 0);
  pointer-events: none; }

.input-group {
  position: relative;
  display: table;
  border-collapse: separate; }
  .input-group[class*="col-"] {
    float: none;
    padding-right: 0;
    padding-left: 0; }
  .input-group .form-control {
    position: relative;
    z-index: 2;
    float: left;
    width: 100%;
    margin-bottom: 0; }
    .input-group .form-control:focus {
      z-index: 3; }

.input-group-addon,
.input-group-btn,
.input-group .form-control {
  display: table-cell; }
  .input-group-addon:not(:first-child):not(:last-child),
  .input-group-btn:not(:first-child):not(:last-child),
  .input-group .form-control:not(:first-child):not(:last-child) {
    border-radius: 0; }

.input-group-addon,
.input-group-btn {
  width: 1%;
  white-space: nowrap;
  vertical-align: middle; }

.input-group-addon {
  padding: 2px 6px;
  font-size: 12px;
  font-weight: 400;
  line-height: 1;
  color: #363636;
  text-align: center;
  background-color: #f1f1f1;
  border: 1px solid #bbb;
  border-radius: 1px; }
  .input-group-addon.input-sm,
  .input-group-sm > .input-group-addon,
  .input-group-sm > .input-group-btn > .input-group-addon.btn {
    padding: 2px 6px;
    font-size: 11px;
    border-radius: 1px; }
  .input-group-addon.input-lg,
  .input-group-lg > .input-group-addon,
  .input-group-lg > .input-group-btn > .input-group-addon.btn {
    padding: 6px 10px;
    font-size: 14px;
    border-radius: 1px; }
  .input-group-addon input[type="radio"],
  .input-group-addon input[type="checkbox"] {
    margin-top: 0; }

.input-group .form-control:first-child,
.input-group-addon:first-child,
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group > .btn,
.input-group-btn:first-child > .dropdown-toggle,
.input-group-btn:last-child > .btn:not(:last-child):not(.dropdown-toggle),
.input-group-btn:last-child > .btn-group:not(:last-child) > .btn {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0; }

.input-group-addon:first-child {
  border-right: 0; }

.input-group .form-control:last-child,
.input-group-addon:last-child,
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group > .btn,
.input-group-btn:last-child > .dropdown-toggle,
.input-group-btn:first-child > .btn:not(:first-child),
.input-group-btn:first-child > .btn-group:not(:first-child) > .btn {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0; }

.input-group-addon:last-child {
  border-left: 0; }

.input-group-btn {
  position: relative;
  font-size: 0;
  white-space: nowrap; }
  .input-group-btn > .btn {
    position: relative; }
    .input-group-btn > .btn + .btn {
      margin-left: -1px; }
    .input-group-btn > .btn:hover, .input-group-btn > .btn:focus, .input-group-btn > .btn:active {
      z-index: 2; }
  .input-group-btn:first-child > .btn,
  .input-group-btn:first-child > .btn-group {
    margin-right: -1px; }
  .input-group-btn:last-child > .btn,
  .input-group-btn:last-child > .btn-group {
    z-index: 2;
    margin-left: -1px; }

.nav {
  padding-left: 0;
  margin-bottom: 0;
  list-style: none; }
  .nav:before, .nav:after {
    display: table;
    content: " "; }
  .nav:after {
    clear: both; }
  .nav > li {
    position: relative;
    display: block; }
    .nav > li > a {
      position: relative;
      display: block;
      padding: 10px 15px; }
      .nav > li > a:hover, .nav > li > a:focus {
        text-decoration: none;
        background-color: #f1f1f1; }
    .nav > li.disabled > a {
      color: #9c9c9c; }
      .nav > li.disabled > a:hover, .nav > li.disabled > a:focus {
        color: #9c9c9c;
        text-decoration: none;
        cursor: not-allowed;
        background-color: transparent; }
  .nav .open > a, .nav .open > a:hover, .nav .open > a:focus {
    background-color: #f1f1f1;
    border-color: #0088ce; }
  .nav .nav-divider {
    background-color: #ededed;
    height: 1px;
    margin: 4px 1px;
    overflow: hidden; }
  .nav > li > a > img {
    max-width: none; }

.nav-tabs {
  border-bottom: 1px solid #ededed; }
  .nav-tabs > li {
    float: left;
    margin-bottom: -1px; }
    .nav-tabs > li > a {
      margin-right: 2px;
      line-height: 1.66667;
      border: 1px solid transparent;
      border-radius: 1px 1px 0 0; }
      .nav-tabs > li > a:hover {
        border-color: transparent transparent #ededed; }
    .nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus {
      color: #0088ce;
      cursor: default;
      background-color: #fff;
      border: 1px solid #ddd;
      border-bottom-color: transparent; }

.nav-pills > li {
  float: left; }
  .nav-pills > li > a {
    border-radius: 1px; }
  .nav-pills > li + li {
    margin-left: 2px; }
  .nav-pills > li.active > a, .nav-pills > li.active > a:hover, .nav-pills > li.active > a:focus {
    color: #fff;
    background-color: #39a5dc; }

.nav-stacked > li {
  float: none; }
  .nav-stacked > li + li {
    margin-top: 2px;
    margin-left: 0; }

.nav-justified, .nav-tabs.nav-justified {
  width: 100%; }
  .nav-justified > li, .nav-tabs.nav-justified > li {
    float: none; }
    .nav-justified > li > a, .nav-tabs.nav-justified > li > a {
      margin-bottom: 5px;
      text-align: center; }
  .nav-justified > .dropdown .dropdown-menu {
    top: auto;
    left: auto; }
  @media (min-width: 768px) {
    .nav-justified > li, .nav-tabs.nav-justified > li {
      display: table-cell;
      width: 1%; }
      .nav-justified > li > a, .nav-tabs.nav-justified > li > a {
        margin-bottom: 0; } }

.nav-tabs-justified, .nav-tabs.nav-justified {
  border-bottom: 0; }
  .nav-tabs-justified > li > a, .nav-tabs.nav-justified > li > a {
    margin-right: 0;
    border-radius: 1px; }
  .nav-tabs-justified > .active > a, .nav-tabs.nav-justified > .active > a,
  .nav-tabs-justified > .active > a:hover,
  .nav-tabs.nav-justified > .active > a:hover,
  .nav-tabs-justified > .active > a:focus,
  .nav-tabs.nav-justified > .active > a:focus {
    border: 1px solid #ededed; }
  @media (min-width: 768px) {
    .nav-tabs-justified > li > a, .nav-tabs.nav-justified > li > a {
      border-bottom: 1px solid #ededed;
      border-radius: 1px 1px 0 0; }
    .nav-tabs-justified > .active > a, .nav-tabs.nav-justified > .active > a,
    .nav-tabs-justified > .active > a:hover,
    .nav-tabs.nav-justified > .active > a:hover,
    .nav-tabs-justified > .active > a:focus,
    .nav-tabs.nav-justified > .active > a:focus {
      border-bottom-color: #fff; } }

.tab-content > .tab-pane {
  display: none; }

.tab-content > .active {
  display: block; }

.nav-tabs .dropdown-menu {
  margin-top: -1px;
  border-top-left-radius: 0;
  border-top-right-radius: 0; }

.navbar {
  position: relative;
  min-height: 50px;
  margin-bottom: 20px;
  border: 1px solid transparent; }
  .navbar:before, .navbar:after {
    display: table;
    content: " "; }
  .navbar:after {
    clear: both; }
  @media (min-width: 768px) {
    .navbar {
      border-radius: 1px; } }

.navbar-header:before, .navbar-header:after {
  display: table;
  content: " "; }

.navbar-header:after {
  clear: both; }

@media (min-width: 768px) {
  .navbar-header {
    float: left; } }

.navbar-collapse {
  padding-right: 20px;
  padding-left: 20px;
  overflow-x: visible;
  border-top: 1px solid transparent;
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1);
  -webkit-overflow-scrolling: touch; }
  .navbar-collapse:before, .navbar-collapse:after {
    display: table;
    content: " "; }
  .navbar-collapse:after {
    clear: both; }
  .navbar-collapse.in {
    overflow-y: auto; }
  @media (min-width: 768px) {
    .navbar-collapse {
      width: auto;
      border-top: 0;
      box-shadow: none; }
      .navbar-collapse.collapse {
        display: block !important;
        height: auto !important;
        padding-bottom: 0;
        overflow: visible !important; }
      .navbar-collapse.in {
        overflow-y: visible; }
      .navbar-fixed-top .navbar-collapse,
      .navbar-static-top .navbar-collapse,
      .navbar-fixed-bottom .navbar-collapse {
        padding-right: 0;
        padding-left: 0; } }

.navbar-fixed-top,
.navbar-fixed-bottom {
  position: fixed;
  right: 0;
  left: 0;
  z-index: 1030; }
  .navbar-fixed-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    max-height: 340px; }
    @media (max-device-width: 480px) and (orientation: landscape) {
      .navbar-fixed-top .navbar-collapse,
      .navbar-fixed-bottom .navbar-collapse {
        max-height: 200px; } }
  @media (min-width: 768px) {
    .navbar-fixed-top,
    .navbar-fixed-bottom {
      border-radius: 0; } }

.navbar-fixed-top {
  top: 0;
  border-width: 0 0 1px; }

.navbar-fixed-bottom {
  bottom: 0;
  margin-bottom: 0;
  border-width: 1px 0 0; }

.container > .navbar-header,
.container > .navbar-collapse,
.container-fluid > .navbar-header,
.container-fluid > .navbar-collapse {
  margin-right: -20px;
  margin-left: -20px; }
  @media (min-width: 768px) {
    .container > .navbar-header,
    .container > .navbar-collapse,
    .container-fluid > .navbar-header,
    .container-fluid > .navbar-collapse {
      margin-right: 0;
      margin-left: 0; } }

.navbar-static-top {
  z-index: 1000;
  border-width: 0 0 1px; }
  @media (min-width: 768px) {
    .navbar-static-top {
      border-radius: 0; } }

.navbar-brand {
  float: left;
  height: 50px;
  padding: 15px 20px;
  font-size: 14px;
  line-height: 20px; }
  .navbar-brand:hover, .navbar-brand:focus {
    text-decoration: none; }
  .navbar-brand > img {
    display: block; }
  @media (min-width: 768px) {
    .navbar > .container .navbar-brand,
    .navbar > .container-fluid .navbar-brand {
      margin-left: -20px; } }

.navbar-toggle {
  position: relative;
  float: right;
  padding: 9px 10px;
  margin-right: 20px;
  margin-top: 8px;
  margin-bottom: 8px;
  background-color: transparent;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 1px; }
  .navbar-toggle:focus {
    outline: 0; }
  .navbar-toggle .icon-bar {
    display: block;
    width: 22px;
    height: 2px;
    border-radius: 1px; }
  .navbar-toggle .icon-bar + .icon-bar {
    margin-top: 4px; }
  @media (min-width: 768px) {
    .navbar-toggle {
      display: none; } }

.navbar-nav {
  margin: 7.5px -20px; }
  .navbar-nav > li > a {
    padding-top: 10px;
    padding-bottom: 10px;
    line-height: 20px; }
  @media (max-width: 767px) {
    .navbar-nav .open .dropdown-menu {
      position: static;
      float: none;
      width: auto;
      margin-top: 0;
      background-color: transparent;
      border: 0;
      box-shadow: none; }
      .navbar-nav .open .dropdown-menu > li > a,
      .navbar-nav .open .dropdown-menu .dropdown-header {
        padding: 5px 15px 5px 25px; }
      .navbar-nav .open .dropdown-menu > li > a {
        line-height: 20px; }
        .navbar-nav .open .dropdown-menu > li > a:hover, .navbar-nav .open .dropdown-menu > li > a:focus {
          background-image: none; } }
  @media (min-width: 768px) {
    .navbar-nav {
      float: left;
      margin: 0; }
      .navbar-nav > li {
        float: left; }
        .navbar-nav > li > a {
          padding-top: 15px;
          padding-bottom: 15px; } }

.navbar-form {
  padding: 10px 20px;
  margin-right: -20px;
  margin-left: -20px;
  border-top: 1px solid transparent;
  border-bottom: 1px solid transparent;
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.1);
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.1);
  margin-top: 12px;
  margin-bottom: 12px; }
  @media (min-width: 768px) {
    .navbar-form .form-group {
      display: inline-block;
      margin-bottom: 0;
      vertical-align: middle; }
    .navbar-form .form-control {
      display: inline-block;
      width: auto;
      vertical-align: middle; }
    .navbar-form .form-control-static {
      display: inline-block; }
    .navbar-form .input-group {
      display: inline-table;
      vertical-align: middle; }
      .navbar-form .input-group .input-group-addon,
      .navbar-form .input-group .input-group-btn,
      .navbar-form .input-group .form-control {
        width: auto; }
    .navbar-form .input-group > .form-control {
      width: 100%; }
    .navbar-form .control-label {
      margin-bottom: 0;
      vertical-align: middle; }
    .navbar-form .radio,
    .navbar-form .checkbox {
      display: inline-block;
      margin-top: 0;
      margin-bottom: 0;
      vertical-align: middle; }
      .navbar-form .radio label,
      .navbar-form .checkbox label {
        padding-left: 0; }
    .navbar-form .radio input[type="radio"],
    .navbar-form .checkbox input[type="checkbox"] {
      position: relative;
      margin-left: 0; }
    .navbar-form .has-feedback .form-control-feedback {
      top: 0; } }
  @media (max-width: 767px) {
    .navbar-form .form-group {
      margin-bottom: 5px; }
      .navbar-form .form-group:last-child {
        margin-bottom: 0; } }
  @media (min-width: 768px) {
    .navbar-form {
      width: auto;
      padding-top: 0;
      padding-bottom: 0;
      margin-right: 0;
      margin-left: 0;
      border: 0;
      -webkit-box-shadow: none;
      box-shadow: none; } }

.navbar-nav > li > .dropdown-menu {
  margin-top: 0;
  border-top-left-radius: 0;
  border-top-right-radius: 0; }

.navbar-fixed-bottom .navbar-nav > li > .dropdown-menu {
  margin-bottom: 0;
  border-top-left-radius: 1px;
  border-top-right-radius: 1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0; }

.navbar-btn {
  margin-top: 12px;
  margin-bottom: 12px; }
  .navbar-btn.btn-sm, .btn-group-sm > .navbar-btn.btn {
    margin-top: 14px;
    margin-bottom: 14px; }
  .navbar-btn.btn-xs, .btn-group-xs > .navbar-btn.btn {
    margin-top: 14px;
    margin-bottom: 14px; }

.navbar-text {
  margin-top: 15px;
  margin-bottom: 15px; }
  @media (min-width: 768px) {
    .navbar-text {
      float: left;
      margin-right: 20px;
      margin-left: 20px; } }

@media (min-width: 768px) {
  .navbar-left {
    float: left !important; }
  .navbar-right {
    float: right !important;
    margin-right: -20px; }
    .navbar-right ~ .navbar-right {
      margin-right: 0; } }

.navbar-default {
  background-color: #f8f8f8;
  border-color: #e7e7e7; }
  .navbar-default .navbar-brand {
    color: #777; }
    .navbar-default .navbar-brand:hover, .navbar-default .navbar-brand:focus {
      color: #5e5e5e;
      background-color: transparent; }
  .navbar-default .navbar-text {
    color: #777; }
  .navbar-default .navbar-nav > li > a {
    color: #777; }
    .navbar-default .navbar-nav > li > a:hover, .navbar-default .navbar-nav > li > a:focus {
      color: #333;
      background-color: transparent; }
  .navbar-default .navbar-nav > .active > a, .navbar-default .navbar-nav > .active > a:hover, .navbar-default .navbar-nav > .active > a:focus {
    color: #555;
    background-color: #e7e7e7; }
  .navbar-default .navbar-nav > .disabled > a, .navbar-default .navbar-nav > .disabled > a:hover, .navbar-default .navbar-nav > .disabled > a:focus {
    color: #ccc;
    background-color: transparent; }
  .navbar-default .navbar-nav > .open > a, .navbar-default .navbar-nav > .open > a:hover, .navbar-default .navbar-nav > .open > a:focus {
    color: #555;
    background-color: #e7e7e7; }
  @media (max-width: 767px) {
    .navbar-default .navbar-nav .open .dropdown-menu > li > a {
      color: #777; }
      .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover, .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
        color: #333;
        background-color: transparent; }
    .navbar-default .navbar-nav .open .dropdown-menu > .active > a, .navbar-default .navbar-nav .open .dropdown-menu > .active > a:hover, .navbar-default .navbar-nav .open .dropdown-menu > .active > a:focus {
      color: #555;
      background-color: #e7e7e7; }
    .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a, .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:hover, .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:focus {
      color: #ccc;
      background-color: transparent; } }
  .navbar-default .navbar-toggle {
    border-color: #ddd; }
    .navbar-default .navbar-toggle:hover, .navbar-default .navbar-toggle:focus {
      background-color: #ddd; }
    .navbar-default .navbar-toggle .icon-bar {
      background-color: #888; }
  .navbar-default .navbar-collapse,
  .navbar-default .navbar-form {
    border-color: #e7e7e7; }
  .navbar-default .navbar-link {
    color: #777; }
    .navbar-default .navbar-link:hover {
      color: #333; }
  .navbar-default .btn-link {
    color: #777; }
    .navbar-default .btn-link:hover, .navbar-default .btn-link:focus {
      color: #333; }
    .navbar-default .btn-link[disabled]:hover, .navbar-default .btn-link[disabled]:focus,
    fieldset[disabled] .navbar-default .btn-link:hover,
    fieldset[disabled] .navbar-default .btn-link:focus {
      color: #ccc; }

.navbar-inverse {
  background-color: #222;
  border-color: #090909; }
  .navbar-inverse .navbar-brand {
    color: #c2c2c2; }
    .navbar-inverse .navbar-brand:hover, .navbar-inverse .navbar-brand:focus {
      color: #fff;
      background-color: transparent; }
  .navbar-inverse .navbar-text {
    color: #c2c2c2; }
  .navbar-inverse .navbar-nav > li > a {
    color: #c2c2c2; }
    .navbar-inverse .navbar-nav > li > a:hover, .navbar-inverse .navbar-nav > li > a:focus {
      color: #fff;
      background-color: transparent; }
  .navbar-inverse .navbar-nav > .active > a, .navbar-inverse .navbar-nav > .active > a:hover, .navbar-inverse .navbar-nav > .active > a:focus {
    color: #fff;
    background-color: #090909; }
  .navbar-inverse .navbar-nav > .disabled > a, .navbar-inverse .navbar-nav > .disabled > a:hover, .navbar-inverse .navbar-nav > .disabled > a:focus {
    color: #444;
    background-color: transparent; }
  .navbar-inverse .navbar-nav > .open > a, .navbar-inverse .navbar-nav > .open > a:hover, .navbar-inverse .navbar-nav > .open > a:focus {
    color: #fff;
    background-color: #090909; }
  @media (max-width: 767px) {
    .navbar-inverse .navbar-nav .open .dropdown-menu > .dropdown-header {
      border-color: #090909; }
    .navbar-inverse .navbar-nav .open .dropdown-menu .divider {
      background-color: #090909; }
    .navbar-inverse .navbar-nav .open .dropdown-menu > li > a {
      color: #c2c2c2; }
      .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:hover, .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:focus {
        color: #fff;
        background-color: transparent; }
    .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a, .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:hover, .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:focus {
      color: #fff;
      background-color: #090909; }
    .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a, .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:hover, .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:focus {
      color: #444;
      background-color: transparent; } }
  .navbar-inverse .navbar-toggle {
    border-color: #333; }
    .navbar-inverse .navbar-toggle:hover, .navbar-inverse .navbar-toggle:focus {
      background-color: #333; }
    .navbar-inverse .navbar-toggle .icon-bar {
      background-color: #fff; }
  .navbar-inverse .navbar-collapse,
  .navbar-inverse .navbar-form {
    border-color: #101010; }
  .navbar-inverse .navbar-link {
    color: #c2c2c2; }
    .navbar-inverse .navbar-link:hover {
      color: #fff; }
  .navbar-inverse .btn-link {
    color: #c2c2c2; }
    .navbar-inverse .btn-link:hover, .navbar-inverse .btn-link:focus {
      color: #fff; }
    .navbar-inverse .btn-link[disabled]:hover, .navbar-inverse .btn-link[disabled]:focus,
    fieldset[disabled] .navbar-inverse .btn-link:hover,
    fieldset[disabled] .navbar-inverse .btn-link:focus {
      color: #444; }

.breadcrumb {
  padding: 8px 15px;
  margin-bottom: 20px;
  list-style: none;
  background-color: transparent;
  border-radius: 1px; }
  .breadcrumb > li {
    display: inline-block; }
    .breadcrumb > li + li:before {
      padding: 0 5px;
      color: #4d5258;
      content: " "; }
  .breadcrumb > .active {
    color: #4d5258; }

.pagination {
  display: inline-block;
  padding-left: 0;
  margin: 20px 0;
  border-radius: 1px; }
  .pagination > li {
    display: inline; }
    .pagination > li > a,
    .pagination > li > span {
      position: relative;
      float: left;
      padding: 2px 6px;
      margin-left: -1px;
      line-height: 1.66667;
      color: #0088ce;
      text-decoration: none;
      background-color: #f5f5f5;
      border: 1px solid #bbb; }
      .pagination > li > a:hover, .pagination > li > a:focus,
      .pagination > li > span:hover,
      .pagination > li > span:focus {
        z-index: 2;
        color: #00659c;
        background-color: #ededed;
        border-color: #ddd; }
    .pagination > li:first-child > a,
    .pagination > li:first-child > span {
      margin-left: 0;
      border-top-left-radius: 1px;
      border-bottom-left-radius: 1px; }
    .pagination > li:last-child > a,
    .pagination > li:last-child > span {
      border-top-right-radius: 1px;
      border-bottom-right-radius: 1px; }
  .pagination > .active > a, .pagination > .active > a:hover, .pagination > .active > a:focus,
  .pagination > .active > span,
  .pagination > .active > span:hover,
  .pagination > .active > span:focus {
    z-index: 3;
    color: #fff;
    cursor: default;
    background-color: #39a5dc;
    border-color: #39a5dc; }
  .pagination > .disabled > span,
  .pagination > .disabled > span:hover,
  .pagination > .disabled > span:focus,
  .pagination > .disabled > a,
  .pagination > .disabled > a:hover,
  .pagination > .disabled > a:focus {
    color: #9c9c9c;
    cursor: not-allowed;
    background-color: #fff;
    border-color: #ddd; }

.pagination-lg > li > a,
.pagination-lg > li > span {
  padding: 6px 10px;
  font-size: 14px;
  line-height: 1.33333; }

.pagination-lg > li:first-child > a,
.pagination-lg > li:first-child > span {
  border-top-left-radius: 1px;
  border-bottom-left-radius: 1px; }

.pagination-lg > li:last-child > a,
.pagination-lg > li:last-child > span {
  border-top-right-radius: 1px;
  border-bottom-right-radius: 1px; }

.pagination-sm > li > a,
.pagination-sm > li > span {
  padding: 2px 6px;
  font-size: 11px;
  line-height: 1.5; }

.pagination-sm > li:first-child > a,
.pagination-sm > li:first-child > span {
  border-top-left-radius: 1px;
  border-bottom-left-radius: 1px; }

.pagination-sm > li:last-child > a,
.pagination-sm > li:last-child > span {
  border-top-right-radius: 1px;
  border-bottom-right-radius: 1px; }

.pager {
  padding-left: 0;
  margin: 20px 0;
  text-align: center;
  list-style: none; }
  .pager:before, .pager:after {
    display: table;
    content: " "; }
  .pager:after {
    clear: both; }
  .pager li {
    display: inline; }
    .pager li > a,
    .pager li > span {
      display: inline-block;
      padding: 5px 14px;
      background-color: #f5f5f5;
      border: 1px solid #bbb;
      border-radius: 0; }
    .pager li > a:hover,
    .pager li > a:focus {
      text-decoration: none;
      background-color: #ededed; }
  .pager .next > a,
  .pager .next > span {
    float: right; }
  .pager .previous > a,
  .pager .previous > span {
    float: left; }
  .pager .disabled > a,
  .pager .disabled > a:hover,
  .pager .disabled > a:focus,
  .pager .disabled > span {
    color: #8b8d8f;
    cursor: not-allowed;
    background-color: #f5f5f5; }

.label {
  display: inline;
  padding: .2em .6em .3em;
  font-size: 75%;
  font-weight: 700;
  line-height: 1;
  color: #fff;
  text-align: center;
  white-space: nowrap;
  vertical-align: baseline;
  border-radius: .25em; }
  .label:empty {
    display: none; }
  .btn .label {
    position: relative;
    top: -1px; }

a.label:hover, a.label:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer; }

.label-default {
  background-color: #9c9c9c; }
  .label-default[href]:hover, .label-default[href]:focus {
    background-color: #838383; }

.label-primary {
  background-color: #39a5dc; }
  .label-primary[href]:hover, .label-primary[href]:focus {
    background-color: #228bc0; }

.label-success {
  background-color: #3f9c35; }
  .label-success[href]:hover, .label-success[href]:focus {
    background-color: #307628; }

.label-info {
  background-color: #00659c; }
  .label-info[href]:hover, .label-info[href]:focus {
    background-color: #004469; }

.label-warning {
  background-color: #ec7a08; }
  .label-warning[href]:hover, .label-warning[href]:focus {
    background-color: #bb6106; }

.label-danger {
  background-color: #cc0000; }
  .label-danger[href]:hover, .label-danger[href]:focus {
    background-color: #990000; }

.badge {
  display: inline-block;
  min-width: 10px;
  padding: 3px 7px;
  font-size: 11px;
  font-weight: bold;
  line-height: 1;
  color: #fff;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  background-color: #9c9c9c;
  border-radius: 1px; }
  .badge:empty {
    display: none; }
  .btn .badge {
    position: relative;
    top: -1px; }
  .btn-xs .badge, .btn-group-xs > .btn .badge,
  .btn-group-xs > .btn .badge {
    top: 0;
    padding: 1px 5px; }
  .list-group-item.active > .badge,
  .nav-pills > .active > a > .badge {
    color: #0088ce;
    background-color: #fff; }
  .list-group-item > .badge {
    float: right; }
  .list-group-item > .badge + .badge {
    margin-right: 5px; }
  .nav-pills > li > a > .badge {
    margin-left: 3px; }

a.badge:hover, a.badge:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer; }

.jumbotron {
  padding-top: 30px;
  padding-bottom: 30px;
  margin-bottom: 30px;
  color: inherit;
  background-color: #f1f1f1; }
  .jumbotron h1,
  .jumbotron .h1 {
    color: inherit; }
  .jumbotron p {
    margin-bottom: 15px;
    font-size: 18px;
    font-weight: 200; }
  .jumbotron > hr {
    border-top-color: #d8d8d8; }
  .container .jumbotron,
  .container-fluid .jumbotron {
    padding-right: 20px;
    padding-left: 20px;
    border-radius: 1px; }
  .jumbotron .container {
    max-width: 100%; }
  @media screen and (min-width: 768px) {
    .jumbotron {
      padding-top: 48px;
      padding-bottom: 48px; }
      .container .jumbotron,
      .container-fluid .jumbotron {
        padding-right: 60px;
        padding-left: 60px; }
      .jumbotron h1,
      .jumbotron .h1 {
        font-size: 54px; } }

.thumbnail {
  display: block;
  padding: 4px;
  margin-bottom: 20px;
  line-height: 1.66667;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 1px;
  -webkit-transition: border 0.2s ease-in-out;
  -o-transition: border 0.2s ease-in-out;
  transition: border 0.2s ease-in-out; }
  .thumbnail > img,
  .thumbnail a > img {
    display: block;
    max-width: 100%;
    height: auto;
    margin-right: auto;
    margin-left: auto; }
  .thumbnail .caption {
    padding: 9px;
    color: #363636; }

a.thumbnail:hover,
a.thumbnail:focus,
a.thumbnail.active {
  border-color: #0088ce; }

.alert {
  padding: 11px;
  margin-bottom: 20px;
  border: 1px solid transparent;
  border-radius: 1px; }
  .alert h4 {
    margin-top: 0;
    color: inherit; }
  .alert .alert-link {
    font-weight: 500; }
  .alert > p,
  .alert > ul {
    margin-bottom: 0; }
  .alert > p + p {
    margin-top: 5px; }

.alert-dismissable,
.alert-dismissible {
  padding-right: 31px; }
  .alert-dismissable .close,
  .alert-dismissible .close {
    position: relative;
    top: -2px;
    right: -21px;
    color: inherit; }

.alert-success {
  color: #363636;
  background-color: #e9f4e9;
  border-color: #3f9c35; }
  .alert-success hr {
    border-top-color: #37892f; }
  .alert-success .alert-link {
    color: #1d1d1d; }

.alert-info {
  color: #363636;
  background-color: #f5f5f5;
  border-color: #8b8d8f; }
  .alert-info hr {
    border-top-color: #7e8082; }
  .alert-info .alert-link {
    color: #1d1d1d; }

.alert-warning {
  color: #363636;
  background-color: #fdf2e5;
  border-color: #ec7a08; }
  .alert-warning hr {
    border-top-color: #d36d07; }
  .alert-warning .alert-link {
    color: #1d1d1d; }

.alert-danger {
  color: #363636;
  background-color: #ffe6e6;
  border-color: #cc0000; }
  .alert-danger hr {
    border-top-color: #b30000; }
  .alert-danger .alert-link {
    color: #1d1d1d; }

@-webkit-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0; }
  to {
    background-position: 0 0; } }

@keyframes progress-bar-stripes {
  from {
    background-position: 40px 0; }
  to {
    background-position: 0 0; } }

.progress {
  height: 20px;
  margin-bottom: 20px;
  overflow: hidden;
  background-color: #ededed;
  border-radius: 1px;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1); }

.progress-bar {
  float: left;
  width: 0%;
  height: 100%;
  font-size: 11px;
  line-height: 20px;
  color: #fff;
  text-align: center;
  background-color: #39a5dc;
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -webkit-transition: width 0.6s ease;
  -o-transition: width 0.6s ease;
  transition: width 0.6s ease; }

.progress-striped .progress-bar,
.progress-bar-striped {
  background-image: linear-gradient(-45deg, rgba(3, 3, 3, 0.15) 25%, rgba(3, 3, 3, 0.15) 26%, transparent 27%, transparent 49%, rgba(3, 3, 3, 0.15) 50%, rgba(3, 3, 3, 0.15) 51%, transparent 52%, transparent 74%, rgba(3, 3, 3, 0.15) 75%, rgba(3, 3, 3, 0.15) 76%, transparent 77%);
  background-size: 40px 40px; }

.progress.active .progress-bar,
.progress-bar.active {
  -webkit-animation: progress-bar-stripes 2s linear infinite;
  -o-animation: progress-bar-stripes 2s linear infinite;
  animation: progress-bar-stripes 2s linear infinite; }

.progress-bar-success {
  background-color: #3f9c35; }
  .progress-striped .progress-bar-success {
    background-image: linear-gradient(-45deg, rgba(3, 3, 3, 0.15) 25%, rgba(3, 3, 3, 0.15) 26%, transparent 27%, transparent 49%, rgba(3, 3, 3, 0.15) 50%, rgba(3, 3, 3, 0.15) 51%, transparent 52%, transparent 74%, rgba(3, 3, 3, 0.15) 75%, rgba(3, 3, 3, 0.15) 76%, transparent 77%); }

.progress-bar-info {
  background-color: #00659c; }
  .progress-striped .progress-bar-info {
    background-image: linear-gradient(-45deg, rgba(3, 3, 3, 0.15) 25%, rgba(3, 3, 3, 0.15) 26%, transparent 27%, transparent 49%, rgba(3, 3, 3, 0.15) 50%, rgba(3, 3, 3, 0.15) 51%, transparent 52%, transparent 74%, rgba(3, 3, 3, 0.15) 75%, rgba(3, 3, 3, 0.15) 76%, transparent 77%); }

.progress-bar-warning {
  background-color: #ec7a08; }
  .progress-striped .progress-bar-warning {
    background-image: linear-gradient(-45deg, rgba(3, 3, 3, 0.15) 25%, rgba(3, 3, 3, 0.15) 26%, transparent 27%, transparent 49%, rgba(3, 3, 3, 0.15) 50%, rgba(3, 3, 3, 0.15) 51%, transparent 52%, transparent 74%, rgba(3, 3, 3, 0.15) 75%, rgba(3, 3, 3, 0.15) 76%, transparent 77%); }

.progress-bar-danger {
  background-color: #cc0000; }
  .progress-striped .progress-bar-danger {
    background-image: linear-gradient(-45deg, rgba(3, 3, 3, 0.15) 25%, rgba(3, 3, 3, 0.15) 26%, transparent 27%, transparent 49%, rgba(3, 3, 3, 0.15) 50%, rgba(3, 3, 3, 0.15) 51%, transparent 52%, transparent 74%, rgba(3, 3, 3, 0.15) 75%, rgba(3, 3, 3, 0.15) 76%, transparent 77%); }

.media {
  margin-top: 15px; }
  .media:first-child {
    margin-top: 0; }

.media,
.media-body {
  overflow: hidden;
  zoom: 1; }

.media-body {
  width: 10000px; }

.media-object {
  display: block; }
  .media-object.img-thumbnail {
    max-width: none; }

.media-right,
.media > .pull-right {
  padding-left: 10px; }

.media-left,
.media > .pull-left {
  padding-right: 10px; }

.media-left,
.media-right,
.media-body {
  display: table-cell;
  vertical-align: top; }

.media-middle {
  vertical-align: middle; }

.media-bottom {
  vertical-align: bottom; }

.media-heading {
  margin-top: 0;
  margin-bottom: 5px; }

.media-list {
  padding-left: 0;
  list-style: none; }

.list-group {
  padding-left: 0;
  margin-bottom: 20px; }

.list-group-item {
  position: relative;
  display: block;
  padding: 10px 15px;
  margin-bottom: -1px;
  background-color: #fff;
  border: 1px solid #f5f5f5; }
  .list-group-item:first-child {
    border-top-left-radius: 0;
    border-top-right-radius: 0; }
  .list-group-item:last-child {
    margin-bottom: 0;
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0; }
  .list-group-item.disabled, .list-group-item.disabled:hover, .list-group-item.disabled:focus {
    color: #9c9c9c;
    cursor: not-allowed;
    background-color: #fafafa; }
    .list-group-item.disabled .list-group-item-heading, .list-group-item.disabled:hover .list-group-item-heading, .list-group-item.disabled:focus .list-group-item-heading {
      color: inherit; }
    .list-group-item.disabled .list-group-item-text, .list-group-item.disabled:hover .list-group-item-text, .list-group-item.disabled:focus .list-group-item-text {
      color: #9c9c9c; }
  .list-group-item.active, .list-group-item.active:hover, .list-group-item.active:focus {
    z-index: 2;
    color: #fff;
    background-color: #39a5dc;
    border-color: #39a5dc; }
    .list-group-item.active .list-group-item-heading,
    .list-group-item.active .list-group-item-heading > small,
    .list-group-item.active .list-group-item-heading > .small, .list-group-item.active:hover .list-group-item-heading,
    .list-group-item.active:hover .list-group-item-heading > small,
    .list-group-item.active:hover .list-group-item-heading > .small, .list-group-item.active:focus .list-group-item-heading,
    .list-group-item.active:focus .list-group-item-heading > small,
    .list-group-item.active:focus .list-group-item-heading > .small {
      color: inherit; }
    .list-group-item.active .list-group-item-text, .list-group-item.active:hover .list-group-item-text, .list-group-item.active:focus .list-group-item-text {
      color: #e6f4fb; }

a.list-group-item,
button.list-group-item {
  color: #555; }
  a.list-group-item .list-group-item-heading,
  button.list-group-item .list-group-item-heading {
    color: #333; }
  a.list-group-item:hover, a.list-group-item:focus,
  button.list-group-item:hover,
  button.list-group-item:focus {
    color: #555;
    text-decoration: none;
    background-color: #def3ff; }

button.list-group-item {
  width: 100%;
  text-align: left; }

.list-group-item-success {
  color: #3c763d;
  background-color: #dff0d8; }

a.list-group-item-success,
button.list-group-item-success {
  color: #3c763d; }
  a.list-group-item-success .list-group-item-heading,
  button.list-group-item-success .list-group-item-heading {
    color: inherit; }
  a.list-group-item-success:hover, a.list-group-item-success:focus,
  button.list-group-item-success:hover,
  button.list-group-item-success:focus {
    color: #3c763d;
    background-color: #d0e9c6; }
  a.list-group-item-success.active, a.list-group-item-success.active:hover, a.list-group-item-success.active:focus,
  button.list-group-item-success.active,
  button.list-group-item-success.active:hover,
  button.list-group-item-success.active:focus {
    color: #fff;
    background-color: #3c763d;
    border-color: #3c763d; }

.list-group-item-info {
  color: #31708f;
  background-color: #d9edf7; }

a.list-group-item-info,
button.list-group-item-info {
  color: #31708f; }
  a.list-group-item-info .list-group-item-heading,
  button.list-group-item-info .list-group-item-heading {
    color: inherit; }
  a.list-group-item-info:hover, a.list-group-item-info:focus,
  button.list-group-item-info:hover,
  button.list-group-item-info:focus {
    color: #31708f;
    background-color: #c4e3f3; }
  a.list-group-item-info.active, a.list-group-item-info.active:hover, a.list-group-item-info.active:focus,
  button.list-group-item-info.active,
  button.list-group-item-info.active:hover,
  button.list-group-item-info.active:focus {
    color: #fff;
    background-color: #31708f;
    border-color: #31708f; }

.list-group-item-warning {
  color: #ec7a08;
  background-color: #fcf8e3; }

a.list-group-item-warning,
button.list-group-item-warning {
  color: #ec7a08; }
  a.list-group-item-warning .list-group-item-heading,
  button.list-group-item-warning .list-group-item-heading {
    color: inherit; }
  a.list-group-item-warning:hover, a.list-group-item-warning:focus,
  button.list-group-item-warning:hover,
  button.list-group-item-warning:focus {
    color: #ec7a08;
    background-color: #faf2cc; }
  a.list-group-item-warning.active, a.list-group-item-warning.active:hover, a.list-group-item-warning.active:focus,
  button.list-group-item-warning.active,
  button.list-group-item-warning.active:hover,
  button.list-group-item-warning.active:focus {
    color: #fff;
    background-color: #ec7a08;
    border-color: #ec7a08; }

.list-group-item-danger {
  color: #cc0000;
  background-color: #f2dede; }

a.list-group-item-danger,
button.list-group-item-danger {
  color: #cc0000; }
  a.list-group-item-danger .list-group-item-heading,
  button.list-group-item-danger .list-group-item-heading {
    color: inherit; }
  a.list-group-item-danger:hover, a.list-group-item-danger:focus,
  button.list-group-item-danger:hover,
  button.list-group-item-danger:focus {
    color: #cc0000;
    background-color: #ebcccc; }
  a.list-group-item-danger.active, a.list-group-item-danger.active:hover, a.list-group-item-danger.active:focus,
  button.list-group-item-danger.active,
  button.list-group-item-danger.active:hover,
  button.list-group-item-danger.active:focus {
    color: #fff;
    background-color: #cc0000;
    border-color: #cc0000; }

.list-group-item-heading {
  margin-top: 0;
  margin-bottom: 5px; }

.list-group-item-text {
  margin-bottom: 0;
  line-height: 1.3; }

.panel {
  margin-bottom: 20px;
  background-color: #fff;
  border: 1px solid transparent;
  border-radius: 1px;
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05); }

.panel-body {
  padding: 15px; }
  .panel-body:before, .panel-body:after {
    display: table;
    content: " "; }
  .panel-body:after {
    clear: both; }

.panel-heading {
  padding: 10px 15px;
  border-bottom: 1px solid transparent;
  border-top-left-radius: 0px;
  border-top-right-radius: 0px; }
  .panel-heading > .dropdown .dropdown-toggle {
    color: inherit; }

.panel-title {
  margin-top: 0;
  margin-bottom: 0;
  font-size: 14px;
  color: inherit; }
  .panel-title > a,
  .panel-title > small,
  .panel-title > .small,
  .panel-title > small > a,
  .panel-title > .small > a {
    color: inherit; }

.panel-footer {
  padding: 10px 15px;
  background-color: #f5f5f5;
  border-top: 1px solid #d1d1d1;
  border-bottom-right-radius: 0px;
  border-bottom-left-radius: 0px; }

.panel > .list-group,
.panel > .panel-collapse > .list-group {
  margin-bottom: 0; }
  .panel > .list-group .list-group-item,
  .panel > .panel-collapse > .list-group .list-group-item {
    border-width: 1px 0;
    border-radius: 0; }
  .panel > .list-group:first-child .list-group-item:first-child,
  .panel > .panel-collapse > .list-group:first-child .list-group-item:first-child {
    border-top: 0;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px; }
  .panel > .list-group:last-child .list-group-item:last-child,
  .panel > .panel-collapse > .list-group:last-child .list-group-item:last-child {
    border-bottom: 0;
    border-bottom-right-radius: 0px;
    border-bottom-left-radius: 0px; }

.panel > .panel-heading + .panel-collapse > .list-group .list-group-item:first-child {
  border-top-left-radius: 0;
  border-top-right-radius: 0; }

.panel-heading + .list-group .list-group-item:first-child {
  border-top-width: 0; }

.list-group + .panel-footer {
  border-top-width: 0; }

.panel > .table,
.panel > .table-responsive > .table,
.panel > .panel-collapse > .table {
  margin-bottom: 0; }
  .panel > .table caption,
  .panel > .table-responsive > .table caption,
  .panel > .panel-collapse > .table caption {
    padding-right: 15px;
    padding-left: 15px; }

.panel > .table:first-child,
.panel > .table-responsive:first-child > .table:first-child {
  border-top-left-radius: 0px;
  border-top-right-radius: 0px; }
  .panel > .table:first-child > thead:first-child > tr:first-child,
  .panel > .table:first-child > tbody:first-child > tr:first-child,
  .panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child,
  .panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child {
    border-top-left-radius: 0px;
    border-top-right-radius: 0px; }
    .panel > .table:first-child > thead:first-child > tr:first-child td:first-child,
    .panel > .table:first-child > thead:first-child > tr:first-child th:first-child,
    .panel > .table:first-child > tbody:first-child > tr:first-child td:first-child,
    .panel > .table:first-child > tbody:first-child > tr:first-child th:first-child,
    .panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:first-child,
    .panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:first-child,
    .panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:first-child,
    .panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:first-child {
      border-top-left-radius: 0px; }
    .panel > .table:first-child > thead:first-child > tr:first-child td:last-child,
    .panel > .table:first-child > thead:first-child > tr:first-child th:last-child,
    .panel > .table:first-child > tbody:first-child > tr:first-child td:last-child,
    .panel > .table:first-child > tbody:first-child > tr:first-child th:last-child,
    .panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:last-child,
    .panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:last-child,
    .panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:last-child,
    .panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:last-child {
      border-top-right-radius: 0px; }

.panel > .table:last-child,
.panel > .table-responsive:last-child > .table:last-child {
  border-bottom-right-radius: 0px;
  border-bottom-left-radius: 0px; }
  .panel > .table:last-child > tbody:last-child > tr:last-child,
  .panel > .table:last-child > tfoot:last-child > tr:last-child,
  .panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child,
  .panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child {
    border-bottom-right-radius: 0px;
    border-bottom-left-radius: 0px; }
    .panel > .table:last-child > tbody:last-child > tr:last-child td:first-child,
    .panel > .table:last-child > tbody:last-child > tr:last-child th:first-child,
    .panel > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
    .panel > .table:last-child > tfoot:last-child > tr:last-child th:first-child,
    .panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:first-child,
    .panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:first-child,
    .panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
    .panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:first-child {
      border-bottom-left-radius: 0px; }
    .panel > .table:last-child > tbody:last-child > tr:last-child td:last-child,
    .panel > .table:last-child > tbody:last-child > tr:last-child th:last-child,
    .panel > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
    .panel > .table:last-child > tfoot:last-child > tr:last-child th:last-child,
    .panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:last-child,
    .panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:last-child,
    .panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
    .panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:last-child {
      border-bottom-right-radius: 0px; }

.panel > .panel-body + .table,
.panel > .panel-body + .table-responsive,
.panel > .table + .panel-body,
.panel > .table-responsive + .panel-body {
  border-top: 1px solid #d1d1d1; }

.panel > .table > tbody:first-child > tr:first-child th,
.panel > .table > tbody:first-child > tr:first-child td {
  border-top: 0; }

.panel > .table-bordered,
.panel > .table-responsive > .table-bordered {
  border: 0; }
  .panel > .table-bordered > thead > tr > th:first-child,
  .panel > .table-bordered > thead > tr > td:first-child,
  .panel > .table-bordered > tbody > tr > th:first-child,
  .panel > .table-bordered > tbody > tr > td:first-child,
  .panel > .table-bordered > tfoot > tr > th:first-child,
  .panel > .table-bordered > tfoot > tr > td:first-child,
  .panel > .table-responsive > .table-bordered > thead > tr > th:first-child,
  .panel > .table-responsive > .table-bordered > thead > tr > td:first-child,
  .panel > .table-responsive > .table-bordered > tbody > tr > th:first-child,
  .panel > .table-responsive > .table-bordered > tbody > tr > td:first-child,
  .panel > .table-responsive > .table-bordered > tfoot > tr > th:first-child,
  .panel > .table-responsive > .table-bordered > tfoot > tr > td:first-child {
    border-left: 0; }
  .panel > .table-bordered > thead > tr > th:last-child,
  .panel > .table-bordered > thead > tr > td:last-child,
  .panel > .table-bordered > tbody > tr > th:last-child,
  .panel > .table-bordered > tbody > tr > td:last-child,
  .panel > .table-bordered > tfoot > tr > th:last-child,
  .panel > .table-bordered > tfoot > tr > td:last-child,
  .panel > .table-responsive > .table-bordered > thead > tr > th:last-child,
  .panel > .table-responsive > .table-bordered > thead > tr > td:last-child,
  .panel > .table-responsive > .table-bordered > tbody > tr > th:last-child,
  .panel > .table-responsive > .table-bordered > tbody > tr > td:last-child,
  .panel > .table-responsive > .table-bordered > tfoot > tr > th:last-child,
  .panel > .table-responsive > .table-bordered > tfoot > tr > td:last-child {
    border-right: 0; }
  .panel > .table-bordered > thead > tr:first-child > td,
  .panel > .table-bordered > thead > tr:first-child > th,
  .panel > .table-bordered > tbody > tr:first-child > td,
  .panel > .table-bordered > tbody > tr:first-child > th,
  .panel > .table-responsive > .table-bordered > thead > tr:first-child > td,
  .panel > .table-responsive > .table-bordered > thead > tr:first-child > th,
  .panel > .table-responsive > .table-bordered > tbody > tr:first-child > td,
  .panel > .table-responsive > .table-bordered > tbody > tr:first-child > th {
    border-bottom: 0; }
  .panel > .table-bordered > tbody > tr:last-child > td,
  .panel > .table-bordered > tbody > tr:last-child > th,
  .panel > .table-bordered > tfoot > tr:last-child > td,
  .panel > .table-bordered > tfoot > tr:last-child > th,
  .panel > .table-responsive > .table-bordered > tbody > tr:last-child > td,
  .panel > .table-responsive > .table-bordered > tbody > tr:last-child > th,
  .panel > .table-responsive > .table-bordered > tfoot > tr:last-child > td,
  .panel > .table-responsive > .table-bordered > tfoot > tr:last-child > th {
    border-bottom: 0; }

.panel > .table-responsive {
  margin-bottom: 0;
  border: 0; }

.panel-group {
  margin-bottom: 20px; }
  .panel-group .panel {
    margin-bottom: 0;
    border-radius: 1px; }
    .panel-group .panel + .panel {
      margin-top: 5px; }
  .panel-group .panel-heading {
    border-bottom: 0; }
    .panel-group .panel-heading + .panel-collapse > .panel-body,
    .panel-group .panel-heading + .panel-collapse > .list-group {
      border-top: 1px solid #d1d1d1; }
  .panel-group .panel-footer {
    border-top: 0; }
    .panel-group .panel-footer + .panel-collapse .panel-body {
      border-bottom: 1px solid #d1d1d1; }

.panel-default {
  border-color: #ddd; }
  .panel-default > .panel-heading {
    color: #363636;
    background-color: #f5f5f5;
    border-color: #ddd; }
    .panel-default > .panel-heading + .panel-collapse > .panel-body {
      border-top-color: #ddd; }
    .panel-default > .panel-heading .badge {
      color: #f5f5f5;
      background-color: #363636; }
  .panel-default > .panel-footer + .panel-collapse > .panel-body {
    border-bottom-color: #ddd; }

.panel-primary {
  border-color: #39a5dc; }
  .panel-primary > .panel-heading {
    color: #fff;
    background-color: #39a5dc;
    border-color: #39a5dc; }
    .panel-primary > .panel-heading + .panel-collapse > .panel-body {
      border-top-color: #39a5dc; }
    .panel-primary > .panel-heading .badge {
      color: #39a5dc;
      background-color: #fff; }
  .panel-primary > .panel-footer + .panel-collapse > .panel-body {
    border-bottom-color: #39a5dc; }

.panel-success {
  border-color: #3f9c35; }
  .panel-success > .panel-heading {
    color: #fff;
    background-color: #3f9c35;
    border-color: #3f9c35; }
    .panel-success > .panel-heading + .panel-collapse > .panel-body {
      border-top-color: #3f9c35; }
    .panel-success > .panel-heading .badge {
      color: #3f9c35;
      background-color: #fff; }
  .panel-success > .panel-footer + .panel-collapse > .panel-body {
    border-bottom-color: #3f9c35; }

.panel-info {
  border-color: #00659c; }
  .panel-info > .panel-heading {
    color: #fff;
    background-color: #00659c;
    border-color: #00659c; }
    .panel-info > .panel-heading + .panel-collapse > .panel-body {
      border-top-color: #00659c; }
    .panel-info > .panel-heading .badge {
      color: #00659c;
      background-color: #fff; }
  .panel-info > .panel-footer + .panel-collapse > .panel-body {
    border-bottom-color: #00659c; }

.panel-warning {
  border-color: #ec7a08; }
  .panel-warning > .panel-heading {
    color: #fff;
    background-color: #ec7a08;
    border-color: #ec7a08; }
    .panel-warning > .panel-heading + .panel-collapse > .panel-body {
      border-top-color: #ec7a08; }
    .panel-warning > .panel-heading .badge {
      color: #ec7a08;
      background-color: #fff; }
  .panel-warning > .panel-footer + .panel-collapse > .panel-body {
    border-bottom-color: #ec7a08; }

.panel-danger {
  border-color: #cc0000; }
  .panel-danger > .panel-heading {
    color: #fff;
    background-color: #cc0000;
    border-color: #cc0000; }
    .panel-danger > .panel-heading + .panel-collapse > .panel-body {
      border-top-color: #cc0000; }
    .panel-danger > .panel-heading .badge {
      color: #cc0000;
      background-color: #fff; }
  .panel-danger > .panel-footer + .panel-collapse > .panel-body {
    border-bottom-color: #cc0000; }

.embed-responsive {
  position: relative;
  display: block;
  height: 0;
  padding: 0;
  overflow: hidden; }
  .embed-responsive .embed-responsive-item,
  .embed-responsive iframe,
  .embed-responsive embed,
  .embed-responsive object,
  .embed-responsive video {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: 0; }

.embed-responsive-16by9 {
  padding-bottom: 56.25%; }

.embed-responsive-4by3 {
  padding-bottom: 75%; }

.well {
  min-height: 20px;
  padding: 19px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border: 1px solid #e3e3e3;
  border-radius: 1px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05); }
  .well blockquote {
    border-color: #ddd;
    border-color: rgba(0, 0, 0, 0.15); }

.well-lg {
  padding: 24px;
  border-radius: 1px; }

.well-sm {
  padding: 9px;
  border-radius: 1px; }

.close {
  float: right;
  font-size: 18px;
  font-weight: bold;
  line-height: 1;
  color: #000;
  text-shadow: 0 1px 0 #fff;
  filter: alpha(opacity=20);
  opacity: 0.2; }
  .close:hover, .close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
    filter: alpha(opacity=50);
    opacity: 0.5; }

button.close {
  padding: 0;
  cursor: pointer;
  background: transparent;
  border: 0;
  -webkit-appearance: none;
  appearance: none; }

.modal-open {
  overflow: hidden; }

.modal {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1050;
  display: none;
  overflow: hidden;
  -webkit-overflow-scrolling: touch;
  outline: 0; }
  .modal.fade .modal-dialog {
    -webkit-transform: translate(0, -25%);
    -ms-transform: translate(0, -25%);
    -o-transform: translate(0, -25%);
    transform: translate(0, -25%);
    -webkit-transition: -webkit-transform 0.3s ease-out;
    -moz-transition: -moz-transform 0.3s ease-out;
    -o-transition: -o-transform 0.3s ease-out;
    transition: transform 0.3s ease-out; }
  .modal.in .modal-dialog {
    -webkit-transform: translate(0, 0);
    -ms-transform: translate(0, 0);
    -o-transform: translate(0, 0);
    transform: translate(0, 0); }

.modal-open .modal {
  overflow-x: hidden;
  overflow-y: auto; }

.modal-dialog {
  position: relative;
  width: auto;
  margin: 10px; }

.modal-content {
  position: relative;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #999;
  border: 1px solid rgba(0, 0, 0, 0.2);
  border-radius: 1px;
  -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
  box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
  outline: 0; }

.modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: #000; }
  .modal-backdrop.fade {
    filter: alpha(opacity=0);
    opacity: 0; }
  .modal-backdrop.in {
    filter: alpha(opacity=50);
    opacity: 0.5; }

.modal-header {
  padding: 15px;
  border-bottom: 1px solid #e5e5e5; }
  .modal-header:before, .modal-header:after {
    display: table;
    content: " "; }
  .modal-header:after {
    clear: both; }

.modal-header .close {
  margin-top: -2px; }

.modal-title {
  margin: 0;
  line-height: 1.66667; }

.modal-body {
  position: relative;
  padding: 15px; }

.modal-footer {
  padding: 15px;
  text-align: right;
  border-top: 1px solid #e5e5e5; }
  .modal-footer:before, .modal-footer:after {
    display: table;
    content: " "; }
  .modal-footer:after {
    clear: both; }
  .modal-footer .btn + .btn {
    margin-bottom: 0;
    margin-left: 5px; }
  .modal-footer .btn-group .btn + .btn {
    margin-left: -1px; }
  .modal-footer .btn-block + .btn-block {
    margin-left: 0; }

.modal-scrollbar-measure {
  position: absolute;
  top: -9999px;
  width: 50px;
  height: 50px;
  overflow: scroll; }

@media (min-width: 768px) {
  .modal-dialog {
    width: 600px;
    margin: 30px auto; }
  .modal-content {
    -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5); }
  .modal-sm {
    width: 300px; } }

@media (min-width: 992px) {
  .modal-lg {
    width: 900px; } }

.tooltip {
  position: absolute;
  z-index: 1070;
  display: block;
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
  font-style: normal;
  font-weight: 400;
  line-height: 1.66667;
  line-break: auto;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  letter-spacing: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  white-space: normal;
  font-size: 11px;
  filter: alpha(opacity=0);
  opacity: 0; }
  .tooltip.in {
    filter: alpha(opacity=90);
    opacity: 0.9; }
  .tooltip.top {
    padding: 8px 0;
    margin-top: -3px; }
  .tooltip.right {
    padding: 0 8px;
    margin-left: 3px; }
  .tooltip.bottom {
    padding: 8px 0;
    margin-top: 3px; }
  .tooltip.left {
    padding: 0 8px;
    margin-left: -3px; }
  .tooltip.top .tooltip-arrow {
    bottom: 0;
    left: 50%;
    margin-left: -8px;
    border-width: 8px 8px 0;
    border-top-color: #393f44; }
  .tooltip.top-left .tooltip-arrow {
    right: 8px;
    bottom: 0;
    margin-bottom: -8px;
    border-width: 8px 8px 0;
    border-top-color: #393f44; }
  .tooltip.top-right .tooltip-arrow {
    bottom: 0;
    left: 8px;
    margin-bottom: -8px;
    border-width: 8px 8px 0;
    border-top-color: #393f44; }
  .tooltip.right .tooltip-arrow {
    top: 50%;
    left: 0;
    margin-top: -8px;
    border-width: 8px 8px 8px 0;
    border-right-color: #393f44; }
  .tooltip.left .tooltip-arrow {
    top: 50%;
    right: 0;
    margin-top: -8px;
    border-width: 8px 0 8px 8px;
    border-left-color: #393f44; }
  .tooltip.bottom .tooltip-arrow {
    top: 0;
    left: 50%;
    margin-left: -8px;
    border-width: 0 8px 8px;
    border-bottom-color: #393f44; }
  .tooltip.bottom-left .tooltip-arrow {
    top: 0;
    right: 8px;
    margin-top: -8px;
    border-width: 0 8px 8px;
    border-bottom-color: #393f44; }
  .tooltip.bottom-right .tooltip-arrow {
    top: 0;
    left: 8px;
    margin-top: -8px;
    border-width: 0 8px 8px;
    border-bottom-color: #393f44; }

.tooltip-inner {
  max-width: 220px;
  padding: 3px 8px;
  color: #fff;
  text-align: center;
  background-color: #393f44;
  border-radius: 1px; }

.tooltip-arrow {
  position: absolute;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid; }

.popover {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1060;
  display: none;
  max-width: 220px;
  padding: 1px;
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
  font-style: normal;
  font-weight: 400;
  line-height: 1.66667;
  line-break: auto;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  letter-spacing: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  white-space: normal;
  font-size: 12px;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid #bbb;
  border-radius: 1px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2); }
  .popover.top {
    margin-top: -10px; }
  .popover.right {
    margin-left: 10px; }
  .popover.bottom {
    margin-top: 10px; }
  .popover.left {
    margin-left: -10px; }
  .popover > .arrow {
    border-width: 11px; }
    .popover > .arrow, .popover > .arrow:after {
      position: absolute;
      display: block;
      width: 0;
      height: 0;
      border-color: transparent;
      border-style: solid; }
    .popover > .arrow:after {
      content: "";
      border-width: 10px; }
  .popover.top > .arrow {
    bottom: -11px;
    left: 50%;
    margin-left: -11px;
    border-top-color: #999999;
    border-top-color: #bbb;
    border-bottom-width: 0; }
    .popover.top > .arrow:after {
      bottom: 1px;
      margin-left: -10px;
      content: " ";
      border-top-color: #fff;
      border-bottom-width: 0; }
  .popover.right > .arrow {
    top: 50%;
    left: -11px;
    margin-top: -11px;
    border-right-color: #999999;
    border-right-color: #bbb;
    border-left-width: 0; }
    .popover.right > .arrow:after {
      bottom: -10px;
      left: 1px;
      content: " ";
      border-right-color: #fff;
      border-left-width: 0; }
  .popover.bottom > .arrow {
    top: -11px;
    left: 50%;
    margin-left: -11px;
    border-top-width: 0;
    border-bottom-color: #999999;
    border-bottom-color: #bbb; }
    .popover.bottom > .arrow:after {
      top: 1px;
      margin-left: -10px;
      content: " ";
      border-top-width: 0;
      border-bottom-color: #fff; }
  .popover.left > .arrow {
    top: 50%;
    right: -11px;
    margin-top: -11px;
    border-right-width: 0;
    border-left-color: #999999;
    border-left-color: #bbb; }
    .popover.left > .arrow:after {
      right: 1px;
      bottom: -10px;
      content: " ";
      border-right-width: 0;
      border-left-color: #fff; }

.popover-title {
  padding: 8px 14px;
  margin: 0;
  font-size: 12px;
  background-color: #f5f5f5;
  border-bottom: 1px solid #e8e8e8;
  border-radius: 0px 0px 0 0; }

.popover-content {
  padding: 9px 14px; }

.carousel {
  position: relative; }

.carousel-inner {
  position: relative;
  width: 100%;
  overflow: hidden; }
  .carousel-inner > .item {
    position: relative;
    display: none;
    -webkit-transition: 0.6s ease-in-out left;
    -o-transition: 0.6s ease-in-out left;
    transition: 0.6s ease-in-out left; }
    .carousel-inner > .item > img,
    .carousel-inner > .item > a > img {
      display: block;
      max-width: 100%;
      height: auto;
      line-height: 1; }
    @media all and (transform-3d), (-webkit-transform-3d) {
      .carousel-inner > .item {
        -webkit-transition: -webkit-transform 0.6s ease-in-out;
        -moz-transition: -moz-transform 0.6s ease-in-out;
        -o-transition: -o-transform 0.6s ease-in-out;
        transition: transform 0.6s ease-in-out;
        -webkit-backface-visibility: hidden;
        -moz-backface-visibility: hidden;
        backface-visibility: hidden;
        -webkit-perspective: 1000px;
        -moz-perspective: 1000px;
        perspective: 1000px; }
        .carousel-inner > .item.next, .carousel-inner > .item.active.right {
          -webkit-transform: translate3d(100%, 0, 0);
          transform: translate3d(100%, 0, 0);
          left: 0; }
        .carousel-inner > .item.prev, .carousel-inner > .item.active.left {
          -webkit-transform: translate3d(-100%, 0, 0);
          transform: translate3d(-100%, 0, 0);
          left: 0; }
        .carousel-inner > .item.next.left, .carousel-inner > .item.prev.right, .carousel-inner > .item.active {
          -webkit-transform: translate3d(0, 0, 0);
          transform: translate3d(0, 0, 0);
          left: 0; } }
  .carousel-inner > .active,
  .carousel-inner > .next,
  .carousel-inner > .prev {
    display: block; }
  .carousel-inner > .active {
    left: 0; }
  .carousel-inner > .next,
  .carousel-inner > .prev {
    position: absolute;
    top: 0;
    width: 100%; }
  .carousel-inner > .next {
    left: 100%; }
  .carousel-inner > .prev {
    left: -100%; }
  .carousel-inner > .next.left,
  .carousel-inner > .prev.right {
    left: 0; }
  .carousel-inner > .active.left {
    left: -100%; }
  .carousel-inner > .active.right {
    left: 100%; }

.carousel-control {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  width: 15%;
  font-size: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
  background-color: rgba(0, 0, 0, 0);
  filter: alpha(opacity=50);
  opacity: 0.5; }
  .carousel-control.left {
    background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
    background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
    background-image: linear-gradient(to right, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#80000000', endColorstr='#00000000', GradientType=1);
    background-repeat: repeat-x; }
  .carousel-control.right {
    right: 0;
    left: auto;
    background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
    background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
    background-image: linear-gradient(to right, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000', endColorstr='#80000000', GradientType=1);
    background-repeat: repeat-x; }
  .carousel-control:hover, .carousel-control:focus {
    color: #fff;
    text-decoration: none;
    outline: 0;
    filter: alpha(opacity=90);
    opacity: 0.9; }
  .carousel-control .icon-prev,
  .carousel-control .icon-next,
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .glyphicon-chevron-right {
    position: absolute;
    top: 50%;
    z-index: 5;
    display: inline-block;
    margin-top: -10px; }
  .carousel-control .icon-prev,
  .carousel-control .glyphicon-chevron-left {
    left: 50%;
    margin-left: -10px; }
  .carousel-control .icon-next,
  .carousel-control .glyphicon-chevron-right {
    right: 50%;
    margin-right: -10px; }
  .carousel-control .icon-prev,
  .carousel-control .icon-next {
    width: 20px;
    height: 20px;
    font-family: serif;
    line-height: 1; }
  .carousel-control .icon-prev:before {
    content: "\2039"; }
  .carousel-control .icon-next:before {
    content: "\203a"; }

.carousel-indicators {
  position: absolute;
  bottom: 10px;
  left: 50%;
  z-index: 15;
  width: 60%;
  padding-left: 0;
  margin-left: -30%;
  text-align: center;
  list-style: none; }
  .carousel-indicators li {
    display: inline-block;
    width: 10px;
    height: 10px;
    margin: 1px;
    text-indent: -999px;
    cursor: pointer;
    background-color: #000 \9;
    background-color: rgba(0, 0, 0, 0);
    border: 1px solid #fff;
    border-radius: 10px; }
  .carousel-indicators .active {
    width: 12px;
    height: 12px;
    margin: 0;
    background-color: #fff; }

.carousel-caption {
  position: absolute;
  right: 15%;
  bottom: 20px;
  left: 15%;
  z-index: 10;
  padding-top: 20px;
  padding-bottom: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6); }
  .carousel-caption .btn {
    text-shadow: none; }

@media screen and (min-width: 768px) {
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-prev,
  .carousel-control .icon-next {
    width: 30px;
    height: 30px;
    margin-top: -10px;
    font-size: 30px; }
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .icon-prev {
    margin-left: -10px; }
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-next {
    margin-right: -10px; }
  .carousel-caption {
    right: 20%;
    left: 20%;
    padding-bottom: 30px; }
  .carousel-indicators {
    bottom: 20px; } }

.clearfix:before, .clearfix:after {
  display: table;
  content: " "; }

.clearfix:after {
  clear: both; }

.center-block {
  display: block;
  margin-right: auto;
  margin-left: auto; }

.pull-right {
  float: right !important; }

.pull-left {
  float: left !important; }

.hide {
  display: none !important; }

.show {
  display: block !important; }

.invisible {
  visibility: hidden; }

.text-hide {
  font: 0/0 a;
  color: transparent;
  text-shadow: none;
  background-color: transparent;
  border: 0; }

.hidden {
  display: none !important; }

.affix {
  position: fixed; }

@-ms-viewport {
  width: device-width; }

.visible-xs {
  display: none !important; }

.visible-sm {
  display: none !important; }

.visible-md {
  display: none !important; }

.visible-lg {
  display: none !important; }

.visible-xs-block,
.visible-xs-inline,
.visible-xs-inline-block,
.visible-sm-block,
.visible-sm-inline,
.visible-sm-inline-block,
.visible-md-block,
.visible-md-inline,
.visible-md-inline-block,
.visible-lg-block,
.visible-lg-inline,
.visible-lg-inline-block {
  display: none !important; }

@media (max-width: 767px) {
  .visible-xs {
    display: block !important; }
  table.visible-xs {
    display: table !important; }
  tr.visible-xs {
    display: table-row !important; }
  th.visible-xs,
  td.visible-xs {
    display: table-cell !important; } }

@media (max-width: 767px) {
  .visible-xs-block {
    display: block !important; } }

@media (max-width: 767px) {
  .visible-xs-inline {
    display: inline !important; } }

@media (max-width: 767px) {
  .visible-xs-inline-block {
    display: inline-block !important; } }

@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm {
    display: block !important; }
  table.visible-sm {
    display: table !important; }
  tr.visible-sm {
    display: table-row !important; }
  th.visible-sm,
  td.visible-sm {
    display: table-cell !important; } }

@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-block {
    display: block !important; } }

@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline {
    display: inline !important; } }

@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline-block {
    display: inline-block !important; } }

@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md {
    display: block !important; }
  table.visible-md {
    display: table !important; }
  tr.visible-md {
    display: table-row !important; }
  th.visible-md,
  td.visible-md {
    display: table-cell !important; } }

@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-block {
    display: block !important; } }

@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline {
    display: inline !important; } }

@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline-block {
    display: inline-block !important; } }

@media (min-width: 1200px) {
  .visible-lg {
    display: block !important; }
  table.visible-lg {
    display: table !important; }
  tr.visible-lg {
    display: table-row !important; }
  th.visible-lg,
  td.visible-lg {
    display: table-cell !important; } }

@media (min-width: 1200px) {
  .visible-lg-block {
    display: block !important; } }

@media (min-width: 1200px) {
  .visible-lg-inline {
    display: inline !important; } }

@media (min-width: 1200px) {
  .visible-lg-inline-block {
    display: inline-block !important; } }

@media (max-width: 767px) {
  .hidden-xs {
    display: none !important; } }

@media (min-width: 768px) and (max-width: 991px) {
  .hidden-sm {
    display: none !important; } }

@media (min-width: 992px) and (max-width: 1199px) {
  .hidden-md {
    display: none !important; } }

@media (min-width: 1200px) {
  .hidden-lg {
    display: none !important; } }

.visible-print {
  display: none !important; }

@media print {
  .visible-print {
    display: block !important; }
  table.visible-print {
    display: table !important; }
  tr.visible-print {
    display: table-row !important; }
  th.visible-print,
  td.visible-print {
    display: table-cell !important; } }

.visible-print-block {
  display: none !important; }
  @media print {
    .visible-print-block {
      display: block !important; } }

.visible-print-inline {
  display: none !important; }
  @media print {
    .visible-print-inline {
      display: inline !important; } }

.visible-print-inline-block {
  display: none !important; }
  @media print {
    .visible-print-inline-block {
      display: inline-block !important; } }

@media print {
  .hidden-print {
    display: none !important; } }

/*!
 *  Font Awesome 4.7.0 by @davegandy - http://fontawesome.io - @fontawesome
 *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)
 */
/* FONT PATH
 * -------------------------- */
@font-face {
  font-family: 'FontAwesome';
  src: url("${url.resourcesPath}/fonts/fontawesome-webfont.eot?v=4.7.0");
  src: url("${url.resourcesPath}/fonts/fontawesome-webfont.eot?v=4.7.0#iefix") format("embedded-opentype"), url("${url.resourcesPath}/fonts/fontawesome-webfont.woff2?v=4.7.0") format("woff2"), url("${url.resourcesPath}/fonts/fontawesome-webfont.woff?v=4.7.0") format("woff"), url("${url.resourcesPath}/fonts/fontawesome-webfont.ttf?v=4.7.0") format("truetype"), url("${url.resourcesPath}/fonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular") format("svg");
  font-weight: normal;
  font-style: normal; }

.fa {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale; }

/* makes the font 33% larger relative to the icon container */
.fa-lg {
  font-size: 1.33333em;
  line-height: 0.75em;
  vertical-align: -15%; }

.fa-2x {
  font-size: 2em; }

.fa-3x {
  font-size: 3em; }

.fa-4x {
  font-size: 4em; }

.fa-5x {
  font-size: 5em; }

.fa-fw {
  width: 1.28571em;
  text-align: center; }

.fa-ul {
  padding-left: 0;
  margin-left: 2.14286em;
  list-style-type: none; }
  .fa-ul > li {
    position: relative; }

.fa-li {
  position: absolute;
  left: -2.14286em;
  width: 2.14286em;
  top: 0.14286em;
  text-align: center; }
  .fa-li.fa-lg {
    left: -1.85714em; }

.fa-border {
  padding: .2em .25em .15em;
  border: solid 0.08em #eee;
  border-radius: .1em; }

.fa-pull-left {
  float: left; }

.fa-pull-right {
  float: right; }

.fa.fa-pull-left {
  margin-right: .3em; }

.fa.fa-pull-right {
  margin-left: .3em; }

/* Deprecated as of 4.4.0 */
.pull-right {
  float: right; }

.pull-left {
  float: left; }

.fa.pull-left {
  margin-right: .3em; }

.fa.pull-right {
  margin-left: .3em; }

.fa-spin {
  -webkit-animation: fa-spin 2s infinite linear;
  animation: fa-spin 2s infinite linear; }

.fa-pulse {
  -webkit-animation: fa-spin 1s infinite steps(8);
  animation: fa-spin 1s infinite steps(8); }

@-webkit-keyframes fa-spin {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg); }
  100% {
    -webkit-transform: rotate(359deg);
    transform: rotate(359deg); } }

@keyframes fa-spin {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg); }
  100% {
    -webkit-transform: rotate(359deg);
    transform: rotate(359deg); } }

.fa-rotate-90 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";
  -webkit-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg); }

.fa-rotate-180 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2)";
  -webkit-transform: rotate(180deg);
  -ms-transform: rotate(180deg);
  transform: rotate(180deg); }

.fa-rotate-270 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=3)";
  -webkit-transform: rotate(270deg);
  -ms-transform: rotate(270deg);
  transform: rotate(270deg); }

.fa-flip-horizontal {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)";
  -webkit-transform: scale(-1, 1);
  -ms-transform: scale(-1, 1);
  transform: scale(-1, 1); }

.fa-flip-vertical {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";
  -webkit-transform: scale(1, -1);
  -ms-transform: scale(1, -1);
  transform: scale(1, -1); }

:root .fa-rotate-90,
:root .fa-rotate-180,
:root .fa-rotate-270,
:root .fa-flip-horizontal,
:root .fa-flip-vertical {
  filter: none; }

.fa-stack {
  position: relative;
  display: inline-block;
  width: 2em;
  height: 2em;
  line-height: 2em;
  vertical-align: middle; }

.fa-stack-1x, .fa-stack-2x {
  position: absolute;
  left: 0;
  width: 100%;
  text-align: center; }

.fa-stack-1x {
  line-height: inherit; }

.fa-stack-2x {
  font-size: 2em; }

.fa-inverse {
  color: #fff; }

/* Font Awesome uses the Unicode Private Use Area (PUA) to ensure screen
   readers do not read off random characters that represent icons */
.fa-glass:before {
  content: ""; }

.fa-music:before {
  content: ""; }

.fa-search:before {
  content: ""; }

.fa-envelope-o:before {
  content: ""; }

.fa-heart:before {
  content: ""; }

.fa-star:before {
  content: ""; }

.fa-star-o:before {
  content: ""; }

.fa-user:before {
  content: ""; }

.fa-film:before {
  content: ""; }

.fa-th-large:before {
  content: ""; }

.fa-th:before {
  content: ""; }

.fa-th-list:before {
  content: ""; }

.fa-check:before {
  content: ""; }

.fa-remove:before,
.fa-close:before,
.fa-times:before {
  content: ""; }

.fa-search-plus:before {
  content: ""; }

.fa-search-minus:before {
  content: ""; }

.fa-power-off:before {
  content: ""; }

.fa-signal:before {
  content: ""; }

.fa-gear:before,
.fa-cog:before {
  content: ""; }

.fa-trash-o:before {
  content: ""; }

.fa-home:before {
  content: ""; }

.fa-file-o:before {
  content: ""; }

.fa-clock-o:before {
  content: ""; }

.fa-road:before {
  content: ""; }

.fa-download:before {
  content: ""; }

.fa-arrow-circle-o-down:before {
  content: ""; }

.fa-arrow-circle-o-up:before {
  content: ""; }

.fa-inbox:before {
  content: ""; }

.fa-play-circle-o:before {
  content: ""; }

.fa-rotate-right:before,
.fa-repeat:before {
  content: ""; }

.fa-refresh:before {
  content: ""; }

.fa-list-alt:before {
  content: ""; }

.fa-lock:before {
  content: ""; }

.fa-flag:before {
  content: ""; }

.fa-headphones:before {
  content: ""; }

.fa-volume-off:before {
  content: ""; }

.fa-volume-down:before {
  content: ""; }

.fa-volume-up:before {
  content: ""; }

.fa-qrcode:before {
  content: ""; }

.fa-barcode:before {
  content: ""; }

.fa-tag:before {
  content: ""; }

.fa-tags:before {
  content: ""; }

.fa-book:before {
  content: ""; }

.fa-bookmark:before {
  content: ""; }

.fa-print:before {
  content: ""; }

.fa-camera:before {
  content: ""; }

.fa-font:before {
  content: ""; }

.fa-bold:before {
  content: ""; }

.fa-italic:before {
  content: ""; }

.fa-text-height:before {
  content: ""; }

.fa-text-width:before {
  content: ""; }

.fa-align-left:before {
  content: ""; }

.fa-align-center:before {
  content: ""; }

.fa-align-right:before {
  content: ""; }

.fa-align-justify:before {
  content: ""; }

.fa-list:before {
  content: ""; }

.fa-dedent:before,
.fa-outdent:before {
  content: ""; }

.fa-indent:before {
  content: ""; }

.fa-video-camera:before {
  content: ""; }

.fa-photo:before,
.fa-image:before,
.fa-picture-o:before {
  content: ""; }

.fa-pencil:before {
  content: ""; }

.fa-map-marker:before {
  content: ""; }

.fa-adjust:before {
  content: ""; }

.fa-tint:before {
  content: ""; }

.fa-edit:before,
.fa-pencil-square-o:before {
  content: ""; }

.fa-share-square-o:before {
  content: ""; }

.fa-check-square-o:before {
  content: ""; }

.fa-arrows:before {
  content: ""; }

.fa-step-backward:before {
  content: ""; }

.fa-fast-backward:before {
  content: ""; }

.fa-backward:before {
  content: ""; }

.fa-play:before {
  content: ""; }

.fa-pause:before {
  content: ""; }

.fa-stop:before {
  content: ""; }

.fa-forward:before {
  content: ""; }

.fa-fast-forward:before {
  content: ""; }

.fa-step-forward:before {
  content: ""; }

.fa-eject:before {
  content: ""; }

.fa-chevron-left:before {
  content: ""; }

.fa-chevron-right:before {
  content: ""; }

.fa-plus-circle:before {
  content: ""; }

.fa-minus-circle:before {
  content: ""; }

.fa-times-circle:before {
  content: ""; }

.fa-check-circle:before {
  content: ""; }

.fa-question-circle:before {
  content: ""; }

.fa-info-circle:before {
  content: ""; }

.fa-crosshairs:before {
  content: ""; }

.fa-times-circle-o:before {
  content: ""; }

.fa-check-circle-o:before {
  content: ""; }

.fa-ban:before {
  content: ""; }

.fa-arrow-left:before {
  content: ""; }

.fa-arrow-right:before {
  content: ""; }

.fa-arrow-up:before {
  content: ""; }

.fa-arrow-down:before {
  content: ""; }

.fa-mail-forward:before,
.fa-share:before {
  content: ""; }

.fa-expand:before {
  content: ""; }

.fa-compress:before {
  content: ""; }

.fa-plus:before {
  content: ""; }

.fa-minus:before {
  content: ""; }

.fa-asterisk:before {
  content: ""; }

.fa-exclamation-circle:before {
  content: ""; }

.fa-gift:before {
  content: ""; }

.fa-leaf:before {
  content: ""; }

.fa-fire:before {
  content: ""; }

.fa-eye:before {
  content: ""; }

.fa-eye-slash:before {
  content: ""; }

.fa-warning:before,
.fa-exclamation-triangle:before {
  content: ""; }

.fa-plane:before {
  content: ""; }

.fa-calendar:before {
  content: ""; }

.fa-random:before {
  content: ""; }

.fa-comment:before {
  content: ""; }

.fa-magnet:before {
  content: ""; }

.fa-chevron-up:before {
  content: ""; }

.fa-chevron-down:before {
  content: ""; }

.fa-retweet:before {
  content: ""; }

.fa-shopping-cart:before {
  content: ""; }

.fa-folder:before {
  content: ""; }

.fa-folder-open:before {
  content: ""; }

.fa-arrows-v:before {
  content: ""; }

.fa-arrows-h:before {
  content: ""; }

.fa-bar-chart-o:before,
.fa-bar-chart:before {
  content: ""; }

.fa-twitter-square:before {
  content: ""; }

.fa-facebook-square:before {
  content: ""; }

.fa-camera-retro:before {
  content: ""; }

.fa-key:before {
  content: ""; }

.fa-gears:before,
.fa-cogs:before {
  content: ""; }

.fa-comments:before {
  content: ""; }

.fa-thumbs-o-up:before {
  content: ""; }

.fa-thumbs-o-down:before {
  content: ""; }

.fa-star-half:before {
  content: ""; }

.fa-heart-o:before {
  content: ""; }

.fa-sign-out:before {
  content: ""; }

.fa-linkedin-square:before {
  content: ""; }

.fa-thumb-tack:before {
  content: ""; }

.fa-external-link:before {
  content: ""; }

.fa-sign-in:before {
  content: ""; }

.fa-trophy:before {
  content: ""; }

.fa-github-square:before {
  content: ""; }

.fa-upload:before {
  content: ""; }

.fa-lemon-o:before {
  content: ""; }

.fa-phone:before {
  content: ""; }

.fa-square-o:before {
  content: ""; }

.fa-bookmark-o:before {
  content: ""; }

.fa-phone-square:before {
  content: ""; }

.fa-twitter:before {
  content: ""; }

.fa-facebook-f:before,
.fa-facebook:before {
  content: ""; }

.fa-github:before {
  content: ""; }

.fa-unlock:before {
  content: ""; }

.fa-credit-card:before {
  content: ""; }

.fa-feed:before,
.fa-rss:before {
  content: ""; }

.fa-hdd-o:before {
  content: ""; }

.fa-bullhorn:before {
  content: ""; }

.fa-bell:before {
  content: ""; }

.fa-certificate:before {
  content: ""; }

.fa-hand-o-right:before {
  content: ""; }

.fa-hand-o-left:before {
  content: ""; }

.fa-hand-o-up:before {
  content: ""; }

.fa-hand-o-down:before {
  content: ""; }

.fa-arrow-circle-left:before {
  content: ""; }

.fa-arrow-circle-right:before {
  content: ""; }

.fa-arrow-circle-up:before {
  content: ""; }

.fa-arrow-circle-down:before {
  content: ""; }

.fa-globe:before {
  content: ""; }

.fa-wrench:before {
  content: ""; }

.fa-tasks:before {
  content: ""; }

.fa-filter:before {
  content: ""; }

.fa-briefcase:before {
  content: ""; }

.fa-arrows-alt:before {
  content: ""; }

.fa-group:before,
.fa-users:before {
  content: ""; }

.fa-chain:before,
.fa-link:before {
  content: ""; }

.fa-cloud:before {
  content: ""; }

.fa-flask:before {
  content: ""; }

.fa-cut:before,
.fa-scissors:before {
  content: ""; }

.fa-copy:before,
.fa-files-o:before {
  content: ""; }

.fa-paperclip:before {
  content: ""; }

.fa-save:before,
.fa-floppy-o:before {
  content: ""; }

.fa-square:before {
  content: ""; }

.fa-navicon:before,
.fa-reorder:before,
.fa-bars:before {
  content: ""; }

.fa-list-ul:before {
  content: ""; }

.fa-list-ol:before {
  content: ""; }

.fa-strikethrough:before {
  content: ""; }

.fa-underline:before {
  content: ""; }

.fa-table:before {
  content: ""; }

.fa-magic:before {
  content: ""; }

.fa-truck:before {
  content: ""; }

.fa-pinterest:before {
  content: ""; }

.fa-pinterest-square:before {
  content: ""; }

.fa-google-plus-square:before {
  content: ""; }

.fa-google-plus:before {
  content: ""; }

.fa-money:before {
  content: ""; }

.fa-caret-down:before {
  content: ""; }

.fa-caret-up:before {
  content: ""; }

.fa-caret-left:before {
  content: ""; }

.fa-caret-right:before {
  content: ""; }

.fa-columns:before {
  content: ""; }

.fa-unsorted:before,
.fa-sort:before {
  content: ""; }

.fa-sort-down:before,
.fa-sort-desc:before {
  content: ""; }

.fa-sort-up:before,
.fa-sort-asc:before {
  content: ""; }

.fa-envelope:before {
  content: ""; }

.fa-linkedin:before {
  content: ""; }

.fa-rotate-left:before,
.fa-undo:before {
  content: ""; }

.fa-legal:before,
.fa-gavel:before {
  content: ""; }

.fa-dashboard:before,
.fa-tachometer:before {
  content: ""; }

.fa-comment-o:before {
  content: ""; }

.fa-comments-o:before {
  content: ""; }

.fa-flash:before,
.fa-bolt:before {
  content: ""; }

.fa-sitemap:before {
  content: ""; }

.fa-umbrella:before {
  content: ""; }

.fa-paste:before,
.fa-clipboard:before {
  content: ""; }

.fa-lightbulb-o:before {
  content: ""; }

.fa-exchange:before {
  content: ""; }

.fa-cloud-download:before {
  content: ""; }

.fa-cloud-upload:before {
  content: ""; }

.fa-user-md:before {
  content: ""; }

.fa-stethoscope:before {
  content: ""; }

.fa-suitcase:before {
  content: ""; }

.fa-bell-o:before {
  content: ""; }

.fa-coffee:before {
  content: ""; }

.fa-cutlery:before {
  content: ""; }

.fa-file-text-o:before {
  content: ""; }

.fa-building-o:before {
  content: ""; }

.fa-hospital-o:before {
  content: ""; }

.fa-ambulance:before {
  content: ""; }

.fa-medkit:before {
  content: ""; }

.fa-fighter-jet:before {
  content: ""; }

.fa-beer:before {
  content: ""; }

.fa-h-square:before {
  content: ""; }

.fa-plus-square:before {
  content: ""; }

.fa-angle-double-left:before {
  content: ""; }

.fa-angle-double-right:before {
  content: ""; }

.fa-angle-double-up:before {
  content: ""; }

.fa-angle-double-down:before {
  content: ""; }

.fa-angle-left:before {
  content: ""; }

.fa-angle-right:before {
  content: ""; }

.fa-angle-up:before {
  content: ""; }

.fa-angle-down:before {
  content: ""; }

.fa-desktop:before {
  content: ""; }

.fa-laptop:before {
  content: ""; }

.fa-tablet:before {
  content: ""; }

.fa-mobile-phone:before,
.fa-mobile:before {
  content: ""; }

.fa-circle-o:before {
  content: ""; }

.fa-quote-left:before {
  content: ""; }

.fa-quote-right:before {
  content: ""; }

.fa-spinner:before {
  content: ""; }

.fa-circle:before {
  content: ""; }

.fa-mail-reply:before,
.fa-reply:before {
  content: ""; }

.fa-github-alt:before {
  content: ""; }

.fa-folder-o:before {
  content: ""; }

.fa-folder-open-o:before {
  content: ""; }

.fa-smile-o:before {
  content: ""; }

.fa-frown-o:before {
  content: ""; }

.fa-meh-o:before {
  content: ""; }

.fa-gamepad:before {
  content: ""; }

.fa-keyboard-o:before {
  content: ""; }

.fa-flag-o:before {
  content: ""; }

.fa-flag-checkered:before {
  content: ""; }

.fa-terminal:before {
  content: ""; }

.fa-code:before {
  content: ""; }

.fa-mail-reply-all:before,
.fa-reply-all:before {
  content: ""; }

.fa-star-half-empty:before,
.fa-star-half-full:before,
.fa-star-half-o:before {
  content: ""; }

.fa-location-arrow:before {
  content: ""; }

.fa-crop:before {
  content: ""; }

.fa-code-fork:before {
  content: ""; }

.fa-unlink:before,
.fa-chain-broken:before {
  content: ""; }

.fa-question:before {
  content: ""; }

.fa-info:before {
  content: ""; }

.fa-exclamation:before {
  content: ""; }

.fa-superscript:before {
  content: ""; }

.fa-subscript:before {
  content: ""; }

.fa-eraser:before {
  content: ""; }

.fa-puzzle-piece:before {
  content: ""; }

.fa-microphone:before {
  content: ""; }

.fa-microphone-slash:before {
  content: ""; }

.fa-shield:before {
  content: ""; }

.fa-calendar-o:before {
  content: ""; }

.fa-fire-extinguisher:before {
  content: ""; }

.fa-rocket:before {
  content: ""; }

.fa-maxcdn:before {
  content: ""; }

.fa-chevron-circle-left:before {
  content: ""; }

.fa-chevron-circle-right:before {
  content: ""; }

.fa-chevron-circle-up:before {
  content: ""; }

.fa-chevron-circle-down:before {
  content: ""; }

.fa-html5:before {
  content: ""; }

.fa-css3:before {
  content: ""; }

.fa-anchor:before {
  content: ""; }

.fa-unlock-alt:before {
  content: ""; }

.fa-bullseye:before {
  content: ""; }

.fa-ellipsis-h:before {
  content: ""; }

.fa-ellipsis-v:before {
  content: ""; }

.fa-rss-square:before {
  content: ""; }

.fa-play-circle:before {
  content: ""; }

.fa-ticket:before {
  content: ""; }

.fa-minus-square:before {
  content: ""; }

.fa-minus-square-o:before {
  content: ""; }

.fa-level-up:before {
  content: ""; }

.fa-level-down:before {
  content: ""; }

.fa-check-square:before {
  content: ""; }

.fa-pencil-square:before {
  content: ""; }

.fa-external-link-square:before {
  content: ""; }

.fa-share-square:before {
  content: ""; }

.fa-compass:before {
  content: ""; }

.fa-toggle-down:before,
.fa-caret-square-o-down:before {
  content: ""; }

.fa-toggle-up:before,
.fa-caret-square-o-up:before {
  content: ""; }

.fa-toggle-right:before,
.fa-caret-square-o-right:before {
  content: ""; }

.fa-euro:before,
.fa-eur:before {
  content: ""; }

.fa-gbp:before {
  content: ""; }

.fa-dollar:before,
.fa-usd:before {
  content: ""; }

.fa-rupee:before,
.fa-inr:before {
  content: ""; }

.fa-cny:before,
.fa-rmb:before,
.fa-yen:before,
.fa-jpy:before {
  content: ""; }

.fa-ruble:before,
.fa-rouble:before,
.fa-rub:before {
  content: ""; }

.fa-won:before,
.fa-krw:before {
  content: ""; }

.fa-bitcoin:before,
.fa-btc:before {
  content: ""; }

.fa-file:before {
  content: ""; }

.fa-file-text:before {
  content: ""; }

.fa-sort-alpha-asc:before {
  content: ""; }

.fa-sort-alpha-desc:before {
  content: ""; }

.fa-sort-amount-asc:before {
  content: ""; }

.fa-sort-amount-desc:before {
  content: ""; }

.fa-sort-numeric-asc:before {
  content: ""; }

.fa-sort-numeric-desc:before {
  content: ""; }

.fa-thumbs-up:before {
  content: ""; }

.fa-thumbs-down:before {
  content: ""; }

.fa-youtube-square:before {
  content: ""; }

.fa-youtube:before {
  content: ""; }

.fa-xing:before {
  content: ""; }

.fa-xing-square:before {
  content: ""; }

.fa-youtube-play:before {
  content: ""; }

.fa-dropbox:before {
  content: ""; }

.fa-stack-overflow:before {
  content: ""; }

.fa-instagram:before {
  content: ""; }

.fa-flickr:before {
  content: ""; }

.fa-adn:before {
  content: ""; }

.fa-bitbucket:before {
  content: ""; }

.fa-bitbucket-square:before {
  content: ""; }

.fa-tumblr:before {
  content: ""; }

.fa-tumblr-square:before {
  content: ""; }

.fa-long-arrow-down:before {
  content: ""; }

.fa-long-arrow-up:before {
  content: ""; }

.fa-long-arrow-left:before {
  content: ""; }

.fa-long-arrow-right:before {
  content: ""; }

.fa-apple:before {
  content: ""; }

.fa-windows:before {
  content: ""; }

.fa-android:before {
  content: ""; }

.fa-linux:before {
  content: ""; }

.fa-dribbble:before {
  content: ""; }

.fa-skype:before {
  content: ""; }

.fa-foursquare:before {
  content: ""; }

.fa-trello:before {
  content: ""; }

.fa-female:before {
  content: ""; }

.fa-male:before {
  content: ""; }

.fa-gittip:before,
.fa-gratipay:before {
  content: ""; }

.fa-sun-o:before {
  content: ""; }

.fa-moon-o:before {
  content: ""; }

.fa-archive:before {
  content: ""; }

.fa-bug:before {
  content: ""; }

.fa-vk:before {
  content: ""; }

.fa-weibo:before {
  content: ""; }

.fa-renren:before {
  content: ""; }

.fa-pagelines:before {
  content: ""; }

.fa-stack-exchange:before {
  content: ""; }

.fa-arrow-circle-o-right:before {
  content: ""; }

.fa-arrow-circle-o-left:before {
  content: ""; }

.fa-toggle-left:before,
.fa-caret-square-o-left:before {
  content: ""; }

.fa-dot-circle-o:before {
  content: ""; }

.fa-wheelchair:before {
  content: ""; }

.fa-vimeo-square:before {
  content: ""; }

.fa-turkish-lira:before,
.fa-try:before {
  content: ""; }

.fa-plus-square-o:before {
  content: ""; }

.fa-space-shuttle:before {
  content: ""; }

.fa-slack:before {
  content: ""; }

.fa-envelope-square:before {
  content: ""; }

.fa-wordpress:before {
  content: ""; }

.fa-openid:before {
  content: ""; }

.fa-institution:before,
.fa-bank:before,
.fa-university:before {
  content: ""; }

.fa-mortar-board:before,
.fa-graduation-cap:before {
  content: ""; }

.fa-yahoo:before {
  content: ""; }

.fa-google:before {
  content: ""; }

.fa-reddit:before {
  content: ""; }

.fa-reddit-square:before {
  content: ""; }

.fa-stumbleupon-circle:before {
  content: ""; }

.fa-stumbleupon:before {
  content: ""; }

.fa-delicious:before {
  content: ""; }

.fa-digg:before {
  content: ""; }

.fa-pied-piper-pp:before {
  content: ""; }

.fa-pied-piper-alt:before {
  content: ""; }

.fa-drupal:before {
  content: ""; }

.fa-joomla:before {
  content: ""; }

.fa-language:before {
  content: ""; }

.fa-fax:before {
  content: ""; }

.fa-building:before {
  content: ""; }

.fa-child:before {
  content: ""; }

.fa-paw:before {
  content: ""; }

.fa-spoon:before {
  content: ""; }

.fa-cube:before {
  content: ""; }

.fa-cubes:before {
  content: ""; }

.fa-behance:before {
  content: ""; }

.fa-behance-square:before {
  content: ""; }

.fa-steam:before {
  content: ""; }

.fa-steam-square:before {
  content: ""; }

.fa-recycle:before {
  content: ""; }

.fa-automobile:before,
.fa-car:before {
  content: ""; }

.fa-cab:before,
.fa-taxi:before {
  content: ""; }

.fa-tree:before {
  content: ""; }

.fa-spotify:before {
  content: ""; }

.fa-deviantart:before {
  content: ""; }

.fa-soundcloud:before {
  content: ""; }

.fa-database:before {
  content: ""; }

.fa-file-pdf-o:before {
  content: ""; }

.fa-file-word-o:before {
  content: ""; }

.fa-file-excel-o:before {
  content: ""; }

.fa-file-powerpoint-o:before {
  content: ""; }

.fa-file-photo-o:before,
.fa-file-picture-o:before,
.fa-file-image-o:before {
  content: ""; }

.fa-file-zip-o:before,
.fa-file-archive-o:before {
  content: ""; }

.fa-file-sound-o:before,
.fa-file-audio-o:before {
  content: ""; }

.fa-file-movie-o:before,
.fa-file-video-o:before {
  content: ""; }

.fa-file-code-o:before {
  content: ""; }

.fa-vine:before {
  content: ""; }

.fa-codepen:before {
  content: ""; }

.fa-jsfiddle:before {
  content: ""; }

.fa-life-bouy:before,
.fa-life-buoy:before,
.fa-life-saver:before,
.fa-support:before,
.fa-life-ring:before {
  content: ""; }

.fa-circle-o-notch:before {
  content: ""; }

.fa-ra:before,
.fa-resistance:before,
.fa-rebel:before {
  content: ""; }

.fa-ge:before,
.fa-empire:before {
  content: ""; }

.fa-git-square:before {
  content: ""; }

.fa-git:before {
  content: ""; }

.fa-y-combinator-square:before,
.fa-yc-square:before,
.fa-hacker-news:before {
  content: ""; }

.fa-tencent-weibo:before {
  content: ""; }

.fa-qq:before {
  content: ""; }

.fa-wechat:before,
.fa-weixin:before {
  content: ""; }

.fa-send:before,
.fa-paper-plane:before {
  content: ""; }

.fa-send-o:before,
.fa-paper-plane-o:before {
  content: ""; }

.fa-history:before {
  content: ""; }

.fa-circle-thin:before {
  content: ""; }

.fa-header:before {
  content: ""; }

.fa-paragraph:before {
  content: ""; }

.fa-sliders:before {
  content: ""; }

.fa-share-alt:before {
  content: ""; }

.fa-share-alt-square:before {
  content: ""; }

.fa-bomb:before {
  content: ""; }

.fa-soccer-ball-o:before,
.fa-futbol-o:before {
  content: ""; }

.fa-tty:before {
  content: ""; }

.fa-binoculars:before {
  content: ""; }

.fa-plug:before {
  content: ""; }

.fa-slideshare:before {
  content: ""; }

.fa-twitch:before {
  content: ""; }

.fa-yelp:before {
  content: ""; }

.fa-newspaper-o:before {
  content: ""; }

.fa-wifi:before {
  content: ""; }

.fa-calculator:before {
  content: ""; }

.fa-paypal:before {
  content: ""; }

.fa-google-wallet:before {
  content: ""; }

.fa-cc-visa:before {
  content: ""; }

.fa-cc-mastercard:before {
  content: ""; }

.fa-cc-discover:before {
  content: ""; }

.fa-cc-amex:before {
  content: ""; }

.fa-cc-paypal:before {
  content: ""; }

.fa-cc-stripe:before {
  content: ""; }

.fa-bell-slash:before {
  content: ""; }

.fa-bell-slash-o:before {
  content: ""; }

.fa-trash:before {
  content: ""; }

.fa-copyright:before {
  content: ""; }

.fa-at:before {
  content: ""; }

.fa-eyedropper:before {
  content: ""; }

.fa-paint-brush:before {
  content: ""; }

.fa-birthday-cake:before {
  content: ""; }

.fa-area-chart:before {
  content: ""; }

.fa-pie-chart:before {
  content: ""; }

.fa-line-chart:before {
  content: ""; }

.fa-lastfm:before {
  content: ""; }

.fa-lastfm-square:before {
  content: ""; }

.fa-toggle-off:before {
  content: ""; }

.fa-toggle-on:before {
  content: ""; }

.fa-bicycle:before {
  content: ""; }

.fa-bus:before {
  content: ""; }

.fa-ioxhost:before {
  content: ""; }

.fa-angellist:before {
  content: ""; }

.fa-cc:before {
  content: ""; }

.fa-shekel:before,
.fa-sheqel:before,
.fa-ils:before {
  content: ""; }

.fa-meanpath:before {
  content: ""; }

.fa-buysellads:before {
  content: ""; }

.fa-connectdevelop:before {
  content: ""; }

.fa-dashcube:before {
  content: ""; }

.fa-forumbee:before {
  content: ""; }

.fa-leanpub:before {
  content: ""; }

.fa-sellsy:before {
  content: ""; }

.fa-shirtsinbulk:before {
  content: ""; }

.fa-simplybuilt:before {
  content: ""; }

.fa-skyatlas:before {
  content: ""; }

.fa-cart-plus:before {
  content: ""; }

.fa-cart-arrow-down:before {
  content: ""; }

.fa-diamond:before {
  content: ""; }

.fa-ship:before {
  content: ""; }

.fa-user-secret:before {
  content: ""; }

.fa-motorcycle:before {
  content: ""; }

.fa-street-view:before {
  content: ""; }

.fa-heartbeat:before {
  content: ""; }

.fa-venus:before {
  content: ""; }

.fa-mars:before {
  content: ""; }

.fa-mercury:before {
  content: ""; }

.fa-intersex:before,
.fa-transgender:before {
  content: ""; }

.fa-transgender-alt:before {
  content: ""; }

.fa-venus-double:before {
  content: ""; }

.fa-mars-double:before {
  content: ""; }

.fa-venus-mars:before {
  content: ""; }

.fa-mars-stroke:before {
  content: ""; }

.fa-mars-stroke-v:before {
  content: ""; }

.fa-mars-stroke-h:before {
  content: ""; }

.fa-neuter:before {
  content: ""; }

.fa-genderless:before {
  content: ""; }

.fa-facebook-official:before {
  content: ""; }

.fa-pinterest-p:before {
  content: ""; }

.fa-whatsapp:before {
  content: ""; }

.fa-server:before {
  content: ""; }

.fa-user-plus:before {
  content: ""; }

.fa-user-times:before {
  content: ""; }

.fa-hotel:before,
.fa-bed:before {
  content: ""; }

.fa-viacoin:before {
  content: ""; }

.fa-train:before {
  content: ""; }

.fa-subway:before {
  content: ""; }

.fa-medium:before {
  content: ""; }

.fa-yc:before,
.fa-y-combinator:before {
  content: ""; }

.fa-optin-monster:before {
  content: ""; }

.fa-opencart:before {
  content: ""; }

.fa-expeditedssl:before {
  content: ""; }

.fa-battery-4:before,
.fa-battery:before,
.fa-battery-full:before {
  content: ""; }

.fa-battery-3:before,
.fa-battery-three-quarters:before {
  content: ""; }

.fa-battery-2:before,
.fa-battery-half:before {
  content: ""; }

.fa-battery-1:before,
.fa-battery-quarter:before {
  content: ""; }

.fa-battery-0:before,
.fa-battery-empty:before {
  content: ""; }

.fa-mouse-pointer:before {
  content: ""; }

.fa-i-cursor:before {
  content: ""; }

.fa-object-group:before {
  content: ""; }

.fa-object-ungroup:before {
  content: ""; }

.fa-sticky-note:before {
  content: ""; }

.fa-sticky-note-o:before {
  content: ""; }

.fa-cc-jcb:before {
  content: ""; }

.fa-cc-diners-club:before {
  content: ""; }

.fa-clone:before {
  content: ""; }

.fa-balance-scale:before {
  content: ""; }

.fa-hourglass-o:before {
  content: ""; }

.fa-hourglass-1:before,
.fa-hourglass-start:before {
  content: ""; }

.fa-hourglass-2:before,
.fa-hourglass-half:before {
  content: ""; }

.fa-hourglass-3:before,
.fa-hourglass-end:before {
  content: ""; }

.fa-hourglass:before {
  content: ""; }

.fa-hand-grab-o:before,
.fa-hand-rock-o:before {
  content: ""; }

.fa-hand-stop-o:before,
.fa-hand-paper-o:before {
  content: ""; }

.fa-hand-scissors-o:before {
  content: ""; }

.fa-hand-lizard-o:before {
  content: ""; }

.fa-hand-spock-o:before {
  content: ""; }

.fa-hand-pointer-o:before {
  content: ""; }

.fa-hand-peace-o:before {
  content: ""; }

.fa-trademark:before {
  content: ""; }

.fa-registered:before {
  content: ""; }

.fa-creative-commons:before {
  content: ""; }

.fa-gg:before {
  content: ""; }

.fa-gg-circle:before {
  content: ""; }

.fa-tripadvisor:before {
  content: ""; }

.fa-odnoklassniki:before {
  content: ""; }

.fa-odnoklassniki-square:before {
  content: ""; }

.fa-get-pocket:before {
  content: ""; }

.fa-wikipedia-w:before {
  content: ""; }

.fa-safari:before {
  content: ""; }

.fa-chrome:before {
  content: ""; }

.fa-firefox:before {
  content: ""; }

.fa-opera:before {
  content: ""; }

.fa-internet-explorer:before {
  content: ""; }

.fa-tv:before,
.fa-television:before {
  content: ""; }

.fa-contao:before {
  content: ""; }

.fa-500px:before {
  content: ""; }

.fa-amazon:before {
  content: ""; }

.fa-calendar-plus-o:before {
  content: ""; }

.fa-calendar-minus-o:before {
  content: ""; }

.fa-calendar-times-o:before {
  content: ""; }

.fa-calendar-check-o:before {
  content: ""; }

.fa-industry:before {
  content: ""; }

.fa-map-pin:before {
  content: ""; }

.fa-map-signs:before {
  content: ""; }

.fa-map-o:before {
  content: ""; }

.fa-map:before {
  content: ""; }

.fa-commenting:before {
  content: ""; }

.fa-commenting-o:before {
  content: ""; }

.fa-houzz:before {
  content: ""; }

.fa-vimeo:before {
  content: ""; }

.fa-black-tie:before {
  content: ""; }

.fa-fonticons:before {
  content: ""; }

.fa-reddit-alien:before {
  content: ""; }

.fa-edge:before {
  content: ""; }

.fa-credit-card-alt:before {
  content: ""; }

.fa-codiepie:before {
  content: ""; }

.fa-modx:before {
  content: ""; }

.fa-fort-awesome:before {
  content: ""; }

.fa-usb:before {
  content: ""; }

.fa-product-hunt:before {
  content: ""; }

.fa-mixcloud:before {
  content: ""; }

.fa-scribd:before {
  content: ""; }

.fa-pause-circle:before {
  content: ""; }

.fa-pause-circle-o:before {
  content: ""; }

.fa-stop-circle:before {
  content: ""; }

.fa-stop-circle-o:before {
  content: ""; }

.fa-shopping-bag:before {
  content: ""; }

.fa-shopping-basket:before {
  content: ""; }

.fa-hashtag:before {
  content: ""; }

.fa-bluetooth:before {
  content: ""; }

.fa-bluetooth-b:before {
  content: ""; }

.fa-percent:before {
  content: ""; }

.fa-gitlab:before {
  content: ""; }

.fa-wpbeginner:before {
  content: ""; }

.fa-wpforms:before {
  content: ""; }

.fa-envira:before {
  content: ""; }

.fa-universal-access:before {
  content: ""; }

.fa-wheelchair-alt:before {
  content: ""; }

.fa-question-circle-o:before {
  content: ""; }

.fa-blind:before {
  content: ""; }

.fa-audio-description:before {
  content: ""; }

.fa-volume-control-phone:before {
  content: ""; }

.fa-braille:before {
  content: ""; }

.fa-assistive-listening-systems:before {
  content: ""; }

.fa-asl-interpreting:before,
.fa-american-sign-language-interpreting:before {
  content: ""; }

.fa-deafness:before,
.fa-hard-of-hearing:before,
.fa-deaf:before {
  content: ""; }

.fa-glide:before {
  content: ""; }

.fa-glide-g:before {
  content: ""; }

.fa-signing:before,
.fa-sign-language:before {
  content: ""; }

.fa-low-vision:before {
  content: ""; }

.fa-viadeo:before {
  content: ""; }

.fa-viadeo-square:before {
  content: ""; }

.fa-snapchat:before {
  content: ""; }

.fa-snapchat-ghost:before {
  content: ""; }

.fa-snapchat-square:before {
  content: ""; }

.fa-pied-piper:before {
  content: ""; }

.fa-first-order:before {
  content: ""; }

.fa-yoast:before {
  content: ""; }

.fa-themeisle:before {
  content: ""; }

.fa-google-plus-circle:before,
.fa-google-plus-official:before {
  content: ""; }

.fa-fa:before,
.fa-font-awesome:before {
  content: ""; }

.fa-handshake-o:before {
  content: ""; }

.fa-envelope-open:before {
  content: ""; }

.fa-envelope-open-o:before {
  content: ""; }

.fa-linode:before {
  content: ""; }

.fa-address-book:before {
  content: ""; }

.fa-address-book-o:before {
  content: ""; }

.fa-vcard:before,
.fa-address-card:before {
  content: ""; }

.fa-vcard-o:before,
.fa-address-card-o:before {
  content: ""; }

.fa-user-circle:before {
  content: ""; }

.fa-user-circle-o:before {
  content: ""; }

.fa-user-o:before {
  content: ""; }

.fa-id-badge:before {
  content: ""; }

.fa-drivers-license:before,
.fa-id-card:before {
  content: ""; }

.fa-drivers-license-o:before,
.fa-id-card-o:before {
  content: ""; }

.fa-quora:before {
  content: ""; }

.fa-free-code-camp:before {
  content: ""; }

.fa-telegram:before {
  content: ""; }

.fa-thermometer-4:before,
.fa-thermometer:before,
.fa-thermometer-full:before {
  content: ""; }

.fa-thermometer-3:before,
.fa-thermometer-three-quarters:before {
  content: ""; }

.fa-thermometer-2:before,
.fa-thermometer-half:before {
  content: ""; }

.fa-thermometer-1:before,
.fa-thermometer-quarter:before {
  content: ""; }

.fa-thermometer-0:before,
.fa-thermometer-empty:before {
  content: ""; }

.fa-shower:before {
  content: ""; }

.fa-bathtub:before,
.fa-s15:before,
.fa-bath:before {
  content: ""; }

.fa-podcast:before {
  content: ""; }

.fa-window-maximize:before {
  content: ""; }

.fa-window-minimize:before {
  content: ""; }

.fa-window-restore:before {
  content: ""; }

.fa-times-rectangle:before,
.fa-window-close:before {
  content: ""; }

.fa-times-rectangle-o:before,
.fa-window-close-o:before {
  content: ""; }

.fa-bandcamp:before {
  content: ""; }

.fa-grav:before {
  content: ""; }

.fa-etsy:before {
  content: ""; }

.fa-imdb:before {
  content: ""; }

.fa-ravelry:before {
  content: ""; }

.fa-eercast:before {
  content: ""; }

.fa-microchip:before {
  content: ""; }

.fa-snowflake-o:before {
  content: ""; }

.fa-superpowers:before {
  content: ""; }

.fa-wpexplorer:before {
  content: ""; }

.fa-meetup:before {
  content: ""; }

.sr-only, .bootstrap-datetimepicker-widget .btn[data-action="incrementHours"]::after, .bootstrap-datetimepicker-widget .btn[data-action="incrementMinutes"]::after, .bootstrap-datetimepicker-widget .btn[data-action="decrementHours"]::after, .bootstrap-datetimepicker-widget .btn[data-action="decrementMinutes"]::after, .bootstrap-datetimepicker-widget .btn[data-action="showHours"]::after, .bootstrap-datetimepicker-widget .btn[data-action="showMinutes"]::after, .bootstrap-datetimepicker-widget .btn[data-action="togglePeriod"]::after, .bootstrap-datetimepicker-widget .btn[data-action="clear"]::after, .bootstrap-datetimepicker-widget .btn[data-action="today"]::after, .bootstrap-datetimepicker-widget .picker-switch::after, .bootstrap-datetimepicker-widget table th.prev::after, .bootstrap-datetimepicker-widget table th.next::after {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0; }

.sr-only-focusable:active, .sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto; }

@media (min-width: 768px) {
  .form-search .combobox-container,
  .form-inline .combobox-container {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: top; }
    .form-search .combobox-container .input-group-addon,
    .form-inline .combobox-container .input-group-addon {
      width: auto; } }

.combobox-selected .caret {
  display: none; }

/* :not doesn't work in IE8 */
.combobox-container:not(.combobox-selected) .glyphicon-remove {
  display: none; }

.typeahead-long {
  max-height: 300px;
  overflow-y: auto; }

.control-group.error .combobox-container .add-on {
  color: #B94A48;
  border-color: #B94A48; }

.control-group.error .combobox-container .caret {
  border-top-color: #B94A48; }

.control-group.warning .combobox-container .add-on {
  color: #C09853;
  border-color: #C09853; }

.control-group.warning .combobox-container .caret {
  border-top-color: #C09853; }

.control-group.success .combobox-container .add-on {
  color: #468847;
  border-color: #468847; }

.control-group.success .combobox-container .caret {
  border-top-color: #468847; }

.datepicker {
  border-radius: 1px;
  direction: ltr; }
  .datepicker-inline {
    width: 220px; }
  .datepicker-rtl {
    direction: rtl; }
    .datepicker-rtl.dropdown-menu {
      left: auto; }
    .datepicker-rtl table tr td span {
      float: right; }
  .datepicker-dropdown {
    top: 0;
    left: 0;
    padding: 4px; }
    .datepicker-dropdown:before {
      content: '';
      display: inline-block;
      border-left: 7px solid transparent;
      border-right: 7px solid transparent;
      border-bottom: 7px solid #bbb;
      border-top: 0;
      border-bottom-color: rgba(0, 0, 0, 0.2);
      position: absolute; }
    .datepicker-dropdown:after {
      content: '';
      display: inline-block;
      border-left: 6px solid transparent;
      border-right: 6px solid transparent;
      border-bottom: 6px solid #fff;
      border-top: 0;
      position: absolute; }
    .datepicker-dropdown.datepicker-orient-left:before {
      left: 6px; }
    .datepicker-dropdown.datepicker-orient-left:after {
      left: 7px; }
    .datepicker-dropdown.datepicker-orient-right:before {
      right: 6px; }
    .datepicker-dropdown.datepicker-orient-right:after {
      right: 7px; }
    .datepicker-dropdown.datepicker-orient-bottom:before {
      top: -7px; }
    .datepicker-dropdown.datepicker-orient-bottom:after {
      top: -6px; }
    .datepicker-dropdown.datepicker-orient-top:before {
      bottom: -7px;
      border-bottom: 0;
      border-top: 7px solid #bbb; }
    .datepicker-dropdown.datepicker-orient-top:after {
      bottom: -6px;
      border-bottom: 0;
      border-top: 6px solid #fff; }
  .datepicker table {
    margin: 0;
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none; }
    .datepicker table tr td, .datepicker table tr th {
      text-align: center;
      width: 30px;
      height: 30px;
      border-radius: 4px;
      border: none; }
  .table-striped .datepicker table tr td, .table-striped .datepicker table tr th {
    background-color: transparent; }
  .datepicker table tr td.old, .datepicker table tr td.new {
    color: #9c9c9c; }
  .datepicker table tr td.day:hover, .datepicker table tr td.focused {
    background: #f1f1f1;
    cursor: pointer; }
  .datepicker table tr td.disabled, .datepicker table tr td.disabled:hover {
    background: none;
    color: #9c9c9c;
    cursor: default; }
  .datepicker table tr td.highlighted {
    color: #000;
    background-color: #d9edf7;
    border-color: #85c5e5;
    border-radius: 0; }
    .datepicker table tr td.highlighted:focus, .datepicker table tr td.highlighted.focus {
      color: #000;
      background-color: #afd9ee;
      border-color: #298fc2; }
    .datepicker table tr td.highlighted:hover {
      color: #000;
      background-color: #afd9ee;
      border-color: #52addb; }
    .datepicker table tr td.highlighted:active, .datepicker table tr td.highlighted.active,
    .open > .datepicker table tr td.highlighted.dropdown-toggle {
      color: #000;
      background-color: #afd9ee;
      background-image: none;
      border-color: #52addb; }
      .datepicker table tr td.highlighted:active:hover, .datepicker table tr td.highlighted:active:focus, .datepicker table tr td.highlighted:active.focus, .datepicker table tr td.highlighted.active:hover, .datepicker table tr td.highlighted.active:focus, .datepicker table tr td.highlighted.active.focus,
      .open > .datepicker table tr td.highlighted.dropdown-toggle:hover,
      .open > .datepicker table tr td.highlighted.dropdown-toggle:focus,
      .open > .datepicker table tr td.highlighted.dropdown-toggle.focus {
        color: #000;
        background-color: #91cbe8;
        border-color: #298fc2; }
    .datepicker table tr td.highlighted.disabled:hover, .datepicker table tr td.highlighted.disabled:focus, .datepicker table tr td.highlighted.disabled.focus, .datepicker table tr td.highlighted[disabled]:hover, .datepicker table tr td.highlighted[disabled]:focus, .datepicker table tr td.highlighted[disabled].focus,
    fieldset[disabled] .datepicker table tr td.highlighted:hover,
    fieldset[disabled] .datepicker table tr td.highlighted:focus,
    fieldset[disabled] .datepicker table tr td.highlighted.focus {
      background-color: #d9edf7;
      border-color: #85c5e5; }
    .datepicker table tr td.highlighted .badge {
      color: #d9edf7;
      background-color: #000; }
    .datepicker table tr td.highlighted.focused {
      background: #afd9ee; }
    .datepicker table tr td.highlighted.disabled, .datepicker table tr td.highlighted.disabled:active {
      background: #d9edf7;
      color: #9c9c9c; }
  .datepicker table tr td.today {
    color: #000;
    background-color: #ffdb99;
    border-color: #ffb733; }
    .datepicker table tr td.today:focus, .datepicker table tr td.today.focus {
      color: #000;
      background-color: #ffc966;
      border-color: #b37400; }
    .datepicker table tr td.today:hover {
      color: #000;
      background-color: #ffc966;
      border-color: #f59e00; }
    .datepicker table tr td.today:active, .datepicker table tr td.today.active,
    .open > .datepicker table tr td.today.dropdown-toggle {
      color: #000;
      background-color: #ffc966;
      background-image: none;
      border-color: #f59e00; }
      .datepicker table tr td.today:active:hover, .datepicker table tr td.today:active:focus, .datepicker table tr td.today:active.focus, .datepicker table tr td.today.active:hover, .datepicker table tr td.today.active:focus, .datepicker table tr td.today.active.focus,
      .open > .datepicker table tr td.today.dropdown-toggle:hover,
      .open > .datepicker table tr td.today.dropdown-toggle:focus,
      .open > .datepicker table tr td.today.dropdown-toggle.focus {
        color: #000;
        background-color: #ffbc42;
        border-color: #b37400; }
    .datepicker table tr td.today.disabled:hover, .datepicker table tr td.today.disabled:focus, .datepicker table tr td.today.disabled.focus, .datepicker table tr td.today[disabled]:hover, .datepicker table tr td.today[disabled]:focus, .datepicker table tr td.today[disabled].focus,
    fieldset[disabled] .datepicker table tr td.today:hover,
    fieldset[disabled] .datepicker table tr td.today:focus,
    fieldset[disabled] .datepicker table tr td.today.focus {
      background-color: #ffdb99;
      border-color: #ffb733; }
    .datepicker table tr td.today .badge {
      color: #ffdb99;
      background-color: #000; }
    .datepicker table tr td.today.focused {
      background: #ffc966; }
    .datepicker table tr td.today.disabled, .datepicker table tr td.today.disabled:active {
      background: #ffdb99;
      color: #9c9c9c; }
  .datepicker table tr td.range {
    color: #000;
    background-color: #f1f1f1;
    border-color: #bebebe;
    border-radius: 0; }
    .datepicker table tr td.range:focus, .datepicker table tr td.range.focus {
      color: #000;
      background-color: #d8d8d8;
      border-color: #7f7f7f; }
    .datepicker table tr td.range:hover {
      color: #000;
      background-color: #d8d8d8;
      border-color: #a0a0a0; }
    .datepicker table tr td.range:active, .datepicker table tr td.range.active,
    .open > .datepicker table tr td.range.dropdown-toggle {
      color: #000;
      background-color: #d8d8d8;
      background-image: none;
      border-color: #a0a0a0; }
      .datepicker table tr td.range:active:hover, .datepicker table tr td.range:active:focus, .datepicker table tr td.range:active.focus, .datepicker table tr td.range.active:hover, .datepicker table tr td.range.active:focus, .datepicker table tr td.range.active.focus,
      .open > .datepicker table tr td.range.dropdown-toggle:hover,
      .open > .datepicker table tr td.range.dropdown-toggle:focus,
      .open > .datepicker table tr td.range.dropdown-toggle.focus {
        color: #000;
        background-color: #c6c6c6;
        border-color: #7f7f7f; }
    .datepicker table tr td.range.disabled:hover, .datepicker table tr td.range.disabled:focus, .datepicker table tr td.range.disabled.focus, .datepicker table tr td.range[disabled]:hover, .datepicker table tr td.range[disabled]:focus, .datepicker table tr td.range[disabled].focus,
    fieldset[disabled] .datepicker table tr td.range:hover,
    fieldset[disabled] .datepicker table tr td.range:focus,
    fieldset[disabled] .datepicker table tr td.range.focus {
      background-color: #f1f1f1;
      border-color: #bebebe; }
    .datepicker table tr td.range .badge {
      color: #f1f1f1;
      background-color: #000; }
    .datepicker table tr td.range.focused {
      background: #d8d8d8; }
    .datepicker table tr td.range.disabled, .datepicker table tr td.range.disabled:active {
      background: #f1f1f1;
      color: #9c9c9c; }
  .datepicker table tr td.range.highlighted {
    color: #000;
    background-color: #e5eff4;
    border-color: #9dc3d6; }
    .datepicker table tr td.range.highlighted:focus, .datepicker table tr td.range.highlighted.focus {
      color: #000;
      background-color: #c1d9e5;
      border-color: #488aab; }
    .datepicker table tr td.range.highlighted:hover {
      color: #000;
      background-color: #c1d9e5;
      border-color: #72a8c3; }
    .datepicker table tr td.range.highlighted:active, .datepicker table tr td.range.highlighted.active,
    .open > .datepicker table tr td.range.highlighted.dropdown-toggle {
      color: #000;
      background-color: #c1d9e5;
      background-image: none;
      border-color: #72a8c3; }
      .datepicker table tr td.range.highlighted:active:hover, .datepicker table tr td.range.highlighted:active:focus, .datepicker table tr td.range.highlighted:active.focus, .datepicker table tr td.range.highlighted.active:hover, .datepicker table tr td.range.highlighted.active:focus, .datepicker table tr td.range.highlighted.active.focus,
      .open > .datepicker table tr td.range.highlighted.dropdown-toggle:hover,
      .open > .datepicker table tr td.range.highlighted.dropdown-toggle:focus,
      .open > .datepicker table tr td.range.highlighted.dropdown-toggle.focus {
        color: #000;
        background-color: #a8cada;
        border-color: #488aab; }
    .datepicker table tr td.range.highlighted.disabled:hover, .datepicker table tr td.range.highlighted.disabled:focus, .datepicker table tr td.range.highlighted.disabled.focus, .datepicker table tr td.range.highlighted[disabled]:hover, .datepicker table tr td.range.highlighted[disabled]:focus, .datepicker table tr td.range.highlighted[disabled].focus,
    fieldset[disabled] .datepicker table tr td.range.highlighted:hover,
    fieldset[disabled] .datepicker table tr td.range.highlighted:focus,
    fieldset[disabled] .datepicker table tr td.range.highlighted.focus {
      background-color: #e5eff4;
      border-color: #9dc3d6; }
    .datepicker table tr td.range.highlighted .badge {
      color: #e5eff4;
      background-color: #000; }
    .datepicker table tr td.range.highlighted.focused {
      background: #c1d9e5; }
    .datepicker table tr td.range.highlighted.disabled, .datepicker table tr td.range.highlighted.disabled:active {
      background: #e5eff4;
      color: #9c9c9c; }
  .datepicker table tr td.range.today {
    color: #000;
    background-color: #f8cb79;
    border-color: #f3a518; }
    .datepicker table tr td.range.today:focus, .datepicker table tr td.range.today.focus {
      color: #000;
      background-color: #f5b849;
      border-color: #855807; }
    .datepicker table tr td.range.today:hover {
      color: #000;
      background-color: #f5b849;
      border-color: #c4820a; }
    .datepicker table tr td.range.today:active, .datepicker table tr td.range.today.active,
    .open > .datepicker table tr td.range.today.dropdown-toggle {
      color: #000;
      background-color: #f5b849;
      background-image: none;
      border-color: #c4820a; }
      .datepicker table tr td.range.today:active:hover, .datepicker table tr td.range.today:active:focus, .datepicker table tr td.range.today:active.focus, .datepicker table tr td.range.today.active:hover, .datepicker table tr td.range.today.active:focus, .datepicker table tr td.range.today.active.focus,
      .open > .datepicker table tr td.range.today.dropdown-toggle:hover,
      .open > .datepicker table tr td.range.today.dropdown-toggle:focus,
      .open > .datepicker table tr td.range.today.dropdown-toggle.focus {
        color: #000;
        background-color: #f4ab27;
        border-color: #855807; }
    .datepicker table tr td.range.today.disabled:hover, .datepicker table tr td.range.today.disabled:focus, .datepicker table tr td.range.today.disabled.focus, .datepicker table tr td.range.today[disabled]:hover, .datepicker table tr td.range.today[disabled]:focus, .datepicker table tr td.range.today[disabled].focus,
    fieldset[disabled] .datepicker table tr td.range.today:hover,
    fieldset[disabled] .datepicker table tr td.range.today:focus,
    fieldset[disabled] .datepicker table tr td.range.today.focus {
      background-color: #f8cb79;
      border-color: #f3a518; }
    .datepicker table tr td.range.today .badge {
      color: #f8cb79;
      background-color: #000; }
    .datepicker table tr td.range.today.disabled, .datepicker table tr td.range.today.disabled:active {
      background: #f8cb79;
      color: #9c9c9c; }
  .datepicker table tr td.selected, .datepicker table tr td.selected.highlighted {
    color: #fff;
    background-color: #9c9c9c;
    border-color: #555555;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); }
    .datepicker table tr td.selected:focus, .datepicker table tr td.selected.focus, .datepicker table tr td.selected.highlighted:focus, .datepicker table tr td.selected.highlighted.focus {
      color: #fff;
      background-color: #838383;
      border-color: #161616; }
    .datepicker table tr td.selected:hover, .datepicker table tr td.selected.highlighted:hover {
      color: #fff;
      background-color: #838383;
      border-color: #373737; }
    .datepicker table tr td.selected:active, .datepicker table tr td.selected.active,
    .open > .datepicker table tr td.selected.dropdown-toggle, .datepicker table tr td.selected.highlighted:active, .datepicker table tr td.selected.highlighted.active,
    .open > .datepicker table tr td.selected.highlighted.dropdown-toggle {
      color: #fff;
      background-color: #838383;
      background-image: none;
      border-color: #373737; }
      .datepicker table tr td.selected:active:hover, .datepicker table tr td.selected:active:focus, .datepicker table tr td.selected:active.focus, .datepicker table tr td.selected.active:hover, .datepicker table tr td.selected.active:focus, .datepicker table tr td.selected.active.focus,
      .open > .datepicker table tr td.selected.dropdown-toggle:hover,
      .open > .datepicker table tr td.selected.dropdown-toggle:focus,
      .open > .datepicker table tr td.selected.dropdown-toggle.focus, .datepicker table tr td.selected.highlighted:active:hover, .datepicker table tr td.selected.highlighted:active:focus, .datepicker table tr td.selected.highlighted:active.focus, .datepicker table tr td.selected.highlighted.active:hover, .datepicker table tr td.selected.highlighted.active:focus, .datepicker table tr td.selected.highlighted.active.focus,
      .open > .datepicker table tr td.selected.highlighted.dropdown-toggle:hover,
      .open > .datepicker table tr td.selected.highlighted.dropdown-toggle:focus,
      .open > .datepicker table tr td.selected.highlighted.dropdown-toggle.focus {
        color: #fff;
        background-color: #717171;
        border-color: #161616; }
    .datepicker table tr td.selected.disabled:hover, .datepicker table tr td.selected.disabled:focus, .datepicker table tr td.selected.disabled.focus, .datepicker table tr td.selected[disabled]:hover, .datepicker table tr td.selected[disabled]:focus, .datepicker table tr td.selected[disabled].focus,
    fieldset[disabled] .datepicker table tr td.selected:hover,
    fieldset[disabled] .datepicker table tr td.selected:focus,
    fieldset[disabled] .datepicker table tr td.selected.focus, .datepicker table tr td.selected.highlighted.disabled:hover, .datepicker table tr td.selected.highlighted.disabled:focus, .datepicker table tr td.selected.highlighted.disabled.focus, .datepicker table tr td.selected.highlighted[disabled]:hover, .datepicker table tr td.selected.highlighted[disabled]:focus, .datepicker table tr td.selected.highlighted[disabled].focus,
    fieldset[disabled] .datepicker table tr td.selected.highlighted:hover,
    fieldset[disabled] .datepicker table tr td.selected.highlighted:focus,
    fieldset[disabled] .datepicker table tr td.selected.highlighted.focus {
      background-color: #9c9c9c;
      border-color: #555555; }
    .datepicker table tr td.selected .badge, .datepicker table tr td.selected.highlighted .badge {
      color: #9c9c9c;
      background-color: #fff; }
  .datepicker table tr td.active, .datepicker table tr td.active.highlighted {
    color: #fff;
    background-color: #0088ce;
    border-color: #00659c;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); }
    .datepicker table tr td.active:focus, .datepicker table tr td.active.focus, .datepicker table tr td.active.highlighted:focus, .datepicker table tr td.active.highlighted.focus {
      color: #fff;
      background-color: #00669b;
      border-color: #00121d; }
    .datepicker table tr td.active:hover, .datepicker table tr td.active.highlighted:hover {
      color: #fff;
      background-color: #00669b;
      border-color: #003d5f; }
    .datepicker table tr td.active:active, .datepicker table tr td.active.active,
    .open > .datepicker table tr td.active.dropdown-toggle, .datepicker table tr td.active.highlighted:active, .datepicker table tr td.active.highlighted.active,
    .open > .datepicker table tr td.active.highlighted.dropdown-toggle {
      color: #fff;
      background-color: #00669b;
      background-image: none;
      border-color: #003d5f; }
      .datepicker table tr td.active:active:hover, .datepicker table tr td.active:active:focus, .datepicker table tr td.active:active.focus, .datepicker table tr td.active.active:hover, .datepicker table tr td.active.active:focus, .datepicker table tr td.active.active.focus,
      .open > .datepicker table tr td.active.dropdown-toggle:hover,
      .open > .datepicker table tr td.active.dropdown-toggle:focus,
      .open > .datepicker table tr td.active.dropdown-toggle.focus, .datepicker table tr td.active.highlighted:active:hover, .datepicker table tr td.active.highlighted:active:focus, .datepicker table tr td.active.highlighted:active.focus, .datepicker table tr td.active.highlighted.active:hover, .datepicker table tr td.active.highlighted.active:focus, .datepicker table tr td.active.highlighted.active.focus,
      .open > .datepicker table tr td.active.highlighted.dropdown-toggle:hover,
      .open > .datepicker table tr td.active.highlighted.dropdown-toggle:focus,
      .open > .datepicker table tr td.active.highlighted.dropdown-toggle.focus {
        color: #fff;
        background-color: #004f77;
        border-color: #00121d; }
    .datepicker table tr td.active.disabled:hover, .datepicker table tr td.active.disabled:focus, .datepicker table tr td.active.disabled.focus, .datepicker table tr td.active[disabled]:hover, .datepicker table tr td.active[disabled]:focus, .datepicker table tr td.active[disabled].focus,
    fieldset[disabled] .datepicker table tr td.active:hover,
    fieldset[disabled] .datepicker table tr td.active:focus,
    fieldset[disabled] .datepicker table tr td.active.focus, .datepicker table tr td.active.highlighted.disabled:hover, .datepicker table tr td.active.highlighted.disabled:focus, .datepicker table tr td.active.highlighted.disabled.focus, .datepicker table tr td.active.highlighted[disabled]:hover, .datepicker table tr td.active.highlighted[disabled]:focus, .datepicker table tr td.active.highlighted[disabled].focus,
    fieldset[disabled] .datepicker table tr td.active.highlighted:hover,
    fieldset[disabled] .datepicker table tr td.active.highlighted:focus,
    fieldset[disabled] .datepicker table tr td.active.highlighted.focus {
      background-color: #0088ce;
      border-color: #00659c; }
    .datepicker table tr td.active .badge, .datepicker table tr td.active.highlighted .badge {
      color: #0088ce;
      background-color: #fff; }
  .datepicker table tr td span {
    display: block;
    width: 23%;
    height: 54px;
    line-height: 54px;
    float: left;
    margin: 1%;
    cursor: pointer;
    border-radius: 4px; }
    .datepicker table tr td span:hover, .datepicker table tr td span.focused {
      background: #f1f1f1; }
    .datepicker table tr td span.disabled, .datepicker table tr td span.disabled:hover {
      background: none;
      color: #9c9c9c;
      cursor: default; }
    .datepicker table tr td span.active, .datepicker table tr td span.active:hover, .datepicker table tr td span.active.disabled, .datepicker table tr td span.active.disabled:hover {
      color: #fff;
      background-color: #0088ce;
      border-color: #00659c;
      text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); }
      .datepicker table tr td span.active:focus, .datepicker table tr td span.active.focus, .datepicker table tr td span.active:hover:focus, .datepicker table tr td span.active:hover.focus, .datepicker table tr td span.active.disabled:focus, .datepicker table tr td span.active.disabled.focus, .datepicker table tr td span.active.disabled:hover:focus, .datepicker table tr td span.active.disabled:hover.focus {
        color: #fff;
        background-color: #00669b;
        border-color: #00121d; }
      .datepicker table tr td span.active:hover, .datepicker table tr td span.active:hover:hover, .datepicker table tr td span.active.disabled:hover, .datepicker table tr td span.active.disabled:hover:hover {
        color: #fff;
        background-color: #00669b;
        border-color: #003d5f; }
      .datepicker table tr td span.active:active, .datepicker table tr td span.active.active,
      .open > .datepicker table tr td span.active.dropdown-toggle, .datepicker table tr td span.active:hover:active, .datepicker table tr td span.active:hover.active,
      .open > .datepicker table tr td span.active:hover.dropdown-toggle, .datepicker table tr td span.active.disabled:active, .datepicker table tr td span.active.disabled.active,
      .open > .datepicker table tr td span.active.disabled.dropdown-toggle, .datepicker table tr td span.active.disabled:hover:active, .datepicker table tr td span.active.disabled:hover.active,
      .open > .datepicker table tr td span.active.disabled:hover.dropdown-toggle {
        color: #fff;
        background-color: #00669b;
        background-image: none;
        border-color: #003d5f; }
        .datepicker table tr td span.active:active:hover, .datepicker table tr td span.active:active:focus, .datepicker table tr td span.active:active.focus, .datepicker table tr td span.active.active:hover, .datepicker table tr td span.active.active:focus, .datepicker table tr td span.active.active.focus,
        .open > .datepicker table tr td span.active.dropdown-toggle:hover,
        .open > .datepicker table tr td span.active.dropdown-toggle:focus,
        .open > .datepicker table tr td span.active.dropdown-toggle.focus, .datepicker table tr td span.active:hover:active:hover, .datepicker table tr td span.active:hover:active:focus, .datepicker table tr td span.active:hover:active.focus, .datepicker table tr td span.active:hover.active:hover, .datepicker table tr td span.active:hover.active:focus, .datepicker table tr td span.active:hover.active.focus,
        .open > .datepicker table tr td span.active:hover.dropdown-toggle:hover,
        .open > .datepicker table tr td span.active:hover.dropdown-toggle:focus,
        .open > .datepicker table tr td span.active:hover.dropdown-toggle.focus, .datepicker table tr td span.active.disabled:active:hover, .datepicker table tr td span.active.disabled:active:focus, .datepicker table tr td span.active.disabled:active.focus, .datepicker table tr td span.active.disabled.active:hover, .datepicker table tr td span.active.disabled.active:focus, .datepicker table tr td span.active.disabled.active.focus,
        .open > .datepicker table tr td span.active.disabled.dropdown-toggle:hover,
        .open > .datepicker table tr td span.active.disabled.dropdown-toggle:focus,
        .open > .datepicker table tr td span.active.disabled.dropdown-toggle.focus, .datepicker table tr td span.active.disabled:hover:active:hover, .datepicker table tr td span.active.disabled:hover:active:focus, .datepicker table tr td span.active.disabled:hover:active.focus, .datepicker table tr td span.active.disabled:hover.active:hover, .datepicker table tr td span.active.disabled:hover.active:focus, .datepicker table tr td span.active.disabled:hover.active.focus,
        .open > .datepicker table tr td span.active.disabled:hover.dropdown-toggle:hover,
        .open > .datepicker table tr td span.active.disabled:hover.dropdown-toggle:focus,
        .open > .datepicker table tr td span.active.disabled:hover.dropdown-toggle.focus {
          color: #fff;
          background-color: #004f77;
          border-color: #00121d; }
      .datepicker table tr td span.active.disabled:hover, .datepicker table tr td span.active.disabled:focus, .datepicker table tr td span.active.disabled.focus, .datepicker table tr td span.active[disabled]:hover, .datepicker table tr td span.active[disabled]:focus, .datepicker table tr td span.active[disabled].focus,
      fieldset[disabled] .datepicker table tr td span.active:hover,
      fieldset[disabled] .datepicker table tr td span.active:focus,
      fieldset[disabled] .datepicker table tr td span.active.focus, .datepicker table tr td span.active:hover.disabled:hover, .datepicker table tr td span.active:hover.disabled:focus, .datepicker table tr td span.active:hover.disabled.focus, .datepicker table tr td span.active:hover[disabled]:hover, .datepicker table tr td span.active:hover[disabled]:focus, .datepicker table tr td span.active:hover[disabled].focus,
      fieldset[disabled] .datepicker table tr td span.active:hover:hover,
      fieldset[disabled] .datepicker table tr td span.active:hover:focus,
      fieldset[disabled] .datepicker table tr td span.active:hover.focus, .datepicker table tr td span.active.disabled.disabled:hover, .datepicker table tr td span.active.disabled.disabled:focus, .datepicker table tr td span.active.disabled.disabled.focus, .datepicker table tr td span.active.disabled[disabled]:hover, .datepicker table tr td span.active.disabled[disabled]:focus, .datepicker table tr td span.active.disabled[disabled].focus,
      fieldset[disabled] .datepicker table tr td span.active.disabled:hover,
      fieldset[disabled] .datepicker table tr td span.active.disabled:focus,
      fieldset[disabled] .datepicker table tr td span.active.disabled.focus, .datepicker table tr td span.active.disabled:hover.disabled:hover, .datepicker table tr td span.active.disabled:hover.disabled:focus, .datepicker table tr td span.active.disabled:hover.disabled.focus, .datepicker table tr td span.active.disabled:hover[disabled]:hover, .datepicker table tr td span.active.disabled:hover[disabled]:focus, .datepicker table tr td span.active.disabled:hover[disabled].focus,
      fieldset[disabled] .datepicker table tr td span.active.disabled:hover:hover,
      fieldset[disabled] .datepicker table tr td span.active.disabled:hover:focus,
      fieldset[disabled] .datepicker table tr td span.active.disabled:hover.focus {
        background-color: #0088ce;
        border-color: #00659c; }
      .datepicker table tr td span.active .badge, .datepicker table tr td span.active:hover .badge, .datepicker table tr td span.active.disabled .badge, .datepicker table tr td span.active.disabled:hover .badge {
        color: #0088ce;
        background-color: #fff; }
    .datepicker table tr td span.old, .datepicker table tr td span.new {
      color: #9c9c9c; }
  .datepicker .datepicker-switch {
    width: 145px; }
  .datepicker .datepicker-switch,
  .datepicker .prev,
  .datepicker .next,
  .datepicker tfoot tr th {
    cursor: pointer; }
    .datepicker .datepicker-switch:hover,
    .datepicker .prev:hover,
    .datepicker .next:hover,
    .datepicker tfoot tr th:hover {
      background: #f1f1f1; }
  .datepicker .prev.disabled, .datepicker .next.disabled {
    visibility: hidden; }
  .datepicker .cw {
    font-size: 10px;
    width: 12px;
    padding: 0 2px 0 5px;
    vertical-align: middle; }

.input-group.date .input-group-addon {
  cursor: pointer; }

.input-daterange {
  width: 100%; }
  .input-daterange input {
    text-align: center; }
  .input-daterange input:first-child {
    border-radius: 3px 0 0 3px; }
  .input-daterange input:last-child {
    border-radius: 0 3px 3px 0; }
  .input-daterange .input-group-addon {
    width: auto;
    min-width: 16px;
    padding: 4px 5px;
    line-height: 1.66667;
    border-width: 1px 0;
    margin-left: -5px;
    margin-right: -5px; }

select.bs-select-hidden,
select.selectpicker {
  display: none !important; }

.bootstrap-select {
  width: 220px \0;
  /*IE9 and below*/ }
  .bootstrap-select > .dropdown-toggle {
    width: 100%;
    padding-right: 25px;
    z-index: 1; }
    .bootstrap-select > .dropdown-toggle.bs-placeholder, .bootstrap-select > .dropdown-toggle.bs-placeholder:hover, .bootstrap-select > .dropdown-toggle.bs-placeholder:focus, .bootstrap-select > .dropdown-toggle.bs-placeholder:active {
      color: #999; }
  .bootstrap-select > select {
    position: absolute !important;
    bottom: 0;
    left: 50%;
    display: block !important;
    width: 0.5px !important;
    height: 100% !important;
    padding: 0 !important;
    opacity: 0 !important;
    border: none; }
    .bootstrap-select > select.mobile-device {
      top: 0;
      left: 0;
      display: block !important;
      width: 100% !important;
      z-index: 2; }
  .has-error .bootstrap-select .dropdown-toggle,
  .error .bootstrap-select .dropdown-toggle {
    border-color: #b94a48; }
  .bootstrap-select.fit-width {
    width: auto !important; }
  .bootstrap-select:not([class*="col-"]):not([class*="form-control"]):not(.input-group-btn) {
    width: 220px; }
  .bootstrap-select .dropdown-toggle:focus {
    outline: thin dotted #333333 !important;
    outline: 5px auto -webkit-focus-ring-color !important;
    outline-offset: -2px; }

.bootstrap-select.form-control {
  margin-bottom: 0;
  padding: 0;
  border: none; }
  .bootstrap-select.form-control:not([class*="col-"]) {
    width: 100%; }
  .bootstrap-select.form-control.input-group-btn {
    z-index: auto; }
    .bootstrap-select.form-control.input-group-btn:not(:first-child):not(:last-child) > .btn {
      border-radius: 0; }

.bootstrap-select.btn-group:not(.input-group-btn), .bootstrap-select.btn-group[class*="col-"] {
  float: none;
  display: inline-block;
  margin-left: 0; }

.bootstrap-select.btn-group.dropdown-menu-right, .bootstrap-select.btn-group[class*="col-"].dropdown-menu-right,
.row .bootstrap-select.btn-group[class*="col-"].dropdown-menu-right {
  float: right; }

.form-inline .bootstrap-select.btn-group,
.form-horizontal .bootstrap-select.btn-group,
.form-group .bootstrap-select.btn-group {
  margin-bottom: 0; }

.form-group-lg .bootstrap-select.btn-group.form-control,
.form-group-sm .bootstrap-select.btn-group.form-control {
  padding: 0; }
  .form-group-lg .bootstrap-select.btn-group.form-control .dropdown-toggle,
  .form-group-sm .bootstrap-select.btn-group.form-control .dropdown-toggle {
    height: 100%;
    font-size: inherit;
    line-height: inherit;
    border-radius: inherit; }

.form-inline .bootstrap-select.btn-group .form-control {
  width: 100%; }

.bootstrap-select.btn-group.disabled,
.bootstrap-select.btn-group > .disabled {
  cursor: not-allowed; }
  .bootstrap-select.btn-group.disabled:focus,
  .bootstrap-select.btn-group > .disabled:focus {
    outline: none !important; }

.bootstrap-select.btn-group.bs-container {
  position: absolute;
  height: 0 !important;
  padding: 0 !important; }
  .bootstrap-select.btn-group.bs-container .dropdown-menu {
    z-index: 1060; }

.bootstrap-select.btn-group .dropdown-toggle .filter-option {
  display: inline-block;
  overflow: hidden;
  width: 100%;
  text-align: left; }

.bootstrap-select.btn-group .dropdown-toggle .caret {
  position: absolute;
  top: 50%;
  right: 12px;
  margin-top: -2px;
  vertical-align: middle; }

.bootstrap-select.btn-group[class*="col-"] .dropdown-toggle {
  width: 100%; }

.bootstrap-select.btn-group .dropdown-menu {
  min-width: 100%;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box; }
  .bootstrap-select.btn-group .dropdown-menu.inner {
    position: static;
    float: none;
    border: 0;
    padding: 0;
    margin: 0;
    border-radius: 0;
    box-shadow: none; }
  .bootstrap-select.btn-group .dropdown-menu li {
    position: relative; }
    .bootstrap-select.btn-group .dropdown-menu li.active small {
      color: #fff; }
    .bootstrap-select.btn-group .dropdown-menu li.disabled a {
      cursor: not-allowed; }
    .bootstrap-select.btn-group .dropdown-menu li a {
      cursor: pointer;
      user-select: none; }
      .bootstrap-select.btn-group .dropdown-menu li a.opt {
        position: relative;
        padding-left: 2.25em; }
      .bootstrap-select.btn-group .dropdown-menu li a span.check-mark {
        display: none; }
      .bootstrap-select.btn-group .dropdown-menu li a span.text {
        display: inline-block; }
    .bootstrap-select.btn-group .dropdown-menu li small {
      padding-left: 0.5em; }
  .bootstrap-select.btn-group .dropdown-menu .notify {
    position: absolute;
    bottom: 5px;
    width: 96%;
    margin: 0 2%;
    min-height: 26px;
    padding: 3px 5px;
    background: whitesmoke;
    border: 1px solid #e3e3e3;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
    pointer-events: none;
    opacity: 0.9;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box; }

.bootstrap-select.btn-group .no-results {
  padding: 3px;
  background: #f5f5f5;
  margin: 0 5px;
  white-space: nowrap; }

.bootstrap-select.btn-group.fit-width .dropdown-toggle .filter-option {
  position: static; }

.bootstrap-select.btn-group.fit-width .dropdown-toggle .caret {
  position: static;
  top: auto;
  margin-top: -1px; }

.bootstrap-select.btn-group.show-tick .dropdown-menu li.selected a span.check-mark {
  position: absolute;
  display: inline-block;
  right: 15px;
  margin-top: 5px; }

.bootstrap-select.btn-group.show-tick .dropdown-menu li a span.text {
  margin-right: 34px; }

.bootstrap-select.show-menu-arrow.open > .dropdown-toggle {
  z-index: 1061; }

.bootstrap-select.show-menu-arrow .dropdown-toggle:before {
  content: '';
  border-left: 7px solid transparent;
  border-right: 7px solid transparent;
  border-bottom: 7px solid rgba(204, 204, 204, 0.2);
  position: absolute;
  bottom: -4px;
  left: 9px;
  display: none; }

.bootstrap-select.show-menu-arrow .dropdown-toggle:after {
  content: '';
  border-left: 6px solid transparent;
  border-right: 6px solid transparent;
  border-bottom: 6px solid white;
  position: absolute;
  bottom: -4px;
  left: 10px;
  display: none; }

.bootstrap-select.show-menu-arrow.dropup .dropdown-toggle:before {
  bottom: auto;
  top: -3px;
  border-top: 7px solid rgba(204, 204, 204, 0.2);
  border-bottom: 0; }

.bootstrap-select.show-menu-arrow.dropup .dropdown-toggle:after {
  bottom: auto;
  top: -3px;
  border-top: 6px solid white;
  border-bottom: 0; }

.bootstrap-select.show-menu-arrow.pull-right .dropdown-toggle:before {
  right: 12px;
  left: auto; }

.bootstrap-select.show-menu-arrow.pull-right .dropdown-toggle:after {
  right: 13px;
  left: auto; }

.bootstrap-select.show-menu-arrow.open > .dropdown-toggle:before, .bootstrap-select.show-menu-arrow.open > .dropdown-toggle:after {
  display: block; }

.bs-searchbox,
.bs-actionsbox,
.bs-donebutton {
  padding: 4px 8px; }

.bs-actionsbox {
  width: 100%;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box; }
  .bs-actionsbox .btn-group button {
    width: 50%; }

.bs-donebutton {
  float: left;
  width: 100%;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box; }
  .bs-donebutton .btn-group button {
    width: 100%; }

.bs-searchbox + .bs-actionsbox {
  padding: 0 8px 4px; }

.bs-searchbox .form-control {
  margin-bottom: 0;
  width: 100%;
  float: none; }

/*! =========================================================
 * bootstrap-slider.js
 *
 * Maintainers:
 *		Kyle Kemp
 *			- Twitter: @seiyria
 *			- Github:  seiyria
 *		Rohit Kalkur
 *			- Twitter: @Rovolutionary
 *			- Github:  rovolution
 *
 * =========================================================
 *
 * bootstrap-slider is released under the MIT License
 * Copyright (c) 2017 Kyle Kemp, Rohit Kalkur, and contributors
 * 
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 * 
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 *
 * ========================================================= */
.slider {
  display: inline-block;
  vertical-align: middle;
  position: relative; }
  .slider.slider-horizontal {
    width: 100%;
    height: 16px; }
    .slider.slider-horizontal .slider-track {
      height: 8px;
      width: 100%;
      margin-top: -4px;
      top: 50%;
      left: 0; }
    .slider.slider-horizontal .slider-selection, .slider.slider-horizontal .slider-track-low, .slider.slider-horizontal .slider-track-high {
      height: 100%;
      top: 0;
      bottom: 0; }
    .slider.slider-horizontal .slider-tick,
    .slider.slider-horizontal .slider-handle {
      margin-left: -8px; }
      .slider.slider-horizontal .slider-tick.triangle,
      .slider.slider-horizontal .slider-handle.triangle {
        position: relative;
        top: 50%;
        transform: translateY(-50%);
        border-width: 0 8px 8px 8px;
        width: 0;
        height: 0;
        border-bottom-color: #ededed;
        margin-top: 0; }
    .slider.slider-horizontal .slider-tick-container {
      white-space: nowrap;
      position: absolute;
      top: 0;
      left: 0;
      width: 100%; }
    .slider.slider-horizontal .slider-tick-label-container {
      white-space: nowrap;
      margin-top: 16px; }
      .slider.slider-horizontal .slider-tick-label-container .slider-tick-label {
        display: inline-block;
        padding-top: 19.2px;
        text-align: center; }
    .slider.slider-horizontal.slider-rtl .slider-track {
      left: initial;
      right: 0; }
    .slider.slider-horizontal.slider-rtl .slider-tick,
    .slider.slider-horizontal.slider-rtl .slider-handle {
      margin-left: initial;
      margin-right: -8px; }
    .slider.slider-horizontal.slider-rtl .slider-tick-container {
      left: initial;
      right: 0; }
  .slider.slider-vertical {
    height: 210px;
    width: 16px; }
    .slider.slider-vertical .slider-track {
      width: 8px;
      height: 100%;
      left: 25%;
      top: 0; }
    .slider.slider-vertical .slider-selection {
      width: 100%;
      left: 0;
      top: 0;
      bottom: 0; }
    .slider.slider-vertical .slider-track-low, .slider.slider-vertical .slider-track-high {
      width: 100%;
      left: 0;
      right: 0; }
    .slider.slider-vertical .slider-tick,
    .slider.slider-vertical .slider-handle {
      margin-top: -8px; }
      .slider.slider-vertical .slider-tick.triangle,
      .slider.slider-vertical .slider-handle.triangle {
        border-width: 8px 0 8px 8px;
        width: 1px;
        height: 1px;
        border-left-color: #ededed;
        margin-left: 0; }
    .slider.slider-vertical .slider-tick-label-container {
      white-space: nowrap; }
      .slider.slider-vertical .slider-tick-label-container .slider-tick-label {
        padding-left: 3.2px; }
    .slider.slider-vertical.slider-rtl .slider-track {
      left: initial;
      right: 25%; }
    .slider.slider-vertical.slider-rtl .slider-selection {
      left: initial;
      right: 0; }
    .slider.slider-vertical.slider-rtl .slider-tick.triangle,
    .slider.slider-vertical.slider-rtl .slider-handle.triangle {
      border-width: 8px 8px 8px 0; }
    .slider.slider-vertical.slider-rtl .slider-tick-label-container .slider-tick-label {
      padding-left: initial;
      padding-right: 3.2px; }
  .slider.slider-disabled .slider-handle {
    background-color: #cfcfcf;
    background-image: -moz-linear-gradient(top, #DFDFDF, #BEBEBE);
    background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#DFDFDF), to(#BEBEBE));
    background-image: -webkit-linear-gradient(top, #DFDFDF, #BEBEBE);
    background-image: -o-linear-gradient(top, #DFDFDF, #BEBEBE);
    background-image: linear-gradient(to bottom, #DFDFDF, #BEBEBE);
    background-repeat: repeat-x;
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#DFDFDF', endColorstr='#BEBEBE',GradientType=0); }
  .slider.slider-disabled .slider-track {
    background-color: #e7e7e7;
    background-image: -moz-linear-gradient(top, #E5E5E5, #E9E9E9);
    background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#E5E5E5), to(#E9E9E9));
    background-image: -webkit-linear-gradient(top, #E5E5E5, #E9E9E9);
    background-image: -o-linear-gradient(top, #E5E5E5, #E9E9E9);
    background-image: linear-gradient(to bottom, #E5E5E5, #E9E9E9);
    background-repeat: repeat-x;
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#E5E5E5', endColorstr='#E9E9E9',GradientType=0);
    cursor: not-allowed; }
  .slider input {
    display: none; }
  .slider .tooltip-inner {
    white-space: nowrap;
    max-width: none; }
  .slider .tooltip.top {
    margin-top: -36px; }
  .slider .tooltip-inner {
    white-space: nowrap;
    max-width: none; }
  .slider .hide {
    display: none; }

.slider-track {
  background-color: #f7f7f7;
  background-image: -moz-linear-gradient(top, #F5F5F5, #F9F9F9);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#F5F5F5), to(#F9F9F9));
  background-image: -webkit-linear-gradient(top, #F5F5F5, #F9F9F9);
  background-image: -o-linear-gradient(top, #F5F5F5, #F9F9F9);
  background-image: linear-gradient(to bottom, #F5F5F5, #F9F9F9);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#F5F5F5', endColorstr='#F9F9F9',GradientType=0);
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  -moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  position: absolute;
  cursor: pointer; }

.slider-selection {
  background-color: #f7f7f7;
  background-image: -moz-linear-gradient(top, #F9F9F9, #F5F5F5);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#F9F9F9), to(#F5F5F5));
  background-image: -webkit-linear-gradient(top, #F9F9F9, #F5F5F5);
  background-image: -o-linear-gradient(top, #F9F9F9, #F5F5F5);
  background-image: linear-gradient(to bottom, #F9F9F9, #F5F5F5);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#F9F9F9', endColorstr='#F5F5F5',GradientType=0);
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -moz-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  position: absolute; }

.slider-selection.tick-slider-selection {
  background-color: #1d97d5;
  background-image: -moz-linear-gradient(top, #0088ce, #39a5dc);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#0088ce), to(#39a5dc));
  background-image: -webkit-linear-gradient(top, #0088ce, #39a5dc);
  background-image: -o-linear-gradient(top, #0088ce, #39a5dc);
  background-image: linear-gradient(to bottom, #0088ce, #39a5dc);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#0088ce', endColorstr='#39a5dc',GradientType=0); }

.slider-track-low, .slider-track-high {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  position: absolute;
  background: transparent; }

.slider-handle {
  background-color: #f4f4f4;
  background-image: -moz-linear-gradient(top, #fafafa, #ededed);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fafafa), to(#ededed));
  background-image: -webkit-linear-gradient(top, #fafafa, #ededed);
  background-image: -o-linear-gradient(top, #fafafa, #ededed);
  background-image: linear-gradient(to bottom, #fafafa, #ededed);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fafafa', endColorstr='#ededed',GradientType=0);
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
  -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
  position: absolute;
  top: 0;
  width: 16px;
  height: 16px;
  background-color: #39a5dc;
  border: 0px solid transparent; }
  .slider-handle.round {
    -webkit-border-radius: 16px;
    -moz-border-radius: 16px;
    border-radius: 16px; }
  .slider-handle.triangle {
    background: transparent none; }
  .slider-handle.custom {
    background: transparent none; }
    .slider-handle.custom::before {
      line-height: 16px;
      font-size: 20px;
      content: '\2605';
      color: #726204; }

.slider-tick {
  background-color: #f7f7f7;
  background-image: -moz-linear-gradient(top, #F5F5F5, #F9F9F9);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#F5F5F5), to(#F9F9F9));
  background-image: -webkit-linear-gradient(top, #F5F5F5, #F9F9F9);
  background-image: -o-linear-gradient(top, #F5F5F5, #F9F9F9);
  background-image: linear-gradient(to bottom, #F5F5F5, #F9F9F9);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#F5F5F5', endColorstr='#F9F9F9',GradientType=0);
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -moz-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  position: absolute;
  width: 16px;
  height: 16px;
  filter: none;
  opacity: 0.8;
  border: 0px solid transparent; }
  .slider-tick.round {
    border-radius: 50%; }
  .slider-tick.triangle {
    background: transparent none; }
  .slider-tick.custom {
    background: transparent none; }
    .slider-tick.custom::before {
      line-height: 16px;
      font-size: 20px;
      content: '\2605';
      color: #726204; }
  .slider-tick.in-selection {
    background-color: #1d97d5;
    background-image: -moz-linear-gradient(top, #0088ce, #39a5dc);
    background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#0088ce), to(#39a5dc));
    background-image: -webkit-linear-gradient(top, #0088ce, #39a5dc);
    background-image: -o-linear-gradient(top, #0088ce, #39a5dc);
    background-image: linear-gradient(to bottom, #0088ce, #39a5dc);
    background-repeat: repeat-x;
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#0088ce', endColorstr='#39a5dc',GradientType=0);
    opacity: 1; }

.bootstrap-switch {
  display: inline-block;
  direction: ltr;
  cursor: pointer;
  border-radius: 1px;
  border: 1px solid;
  border-color: #bbb;
  position: relative;
  text-align: left;
  overflow: hidden;
  line-height: 8px;
  z-index: 0;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  vertical-align: middle;
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s; }
  .bootstrap-switch .bootstrap-switch-container {
    display: inline-block;
    top: 0;
    border-radius: 1px;
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0); }
  .bootstrap-switch .bootstrap-switch-handle-on,
  .bootstrap-switch .bootstrap-switch-handle-off,
  .bootstrap-switch .bootstrap-switch-label {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    cursor: pointer;
    display: table-cell;
    vertical-align: middle;
    padding: 2px 6px;
    font-size: 12px;
    line-height: 20px; }
  .bootstrap-switch .bootstrap-switch-handle-on,
  .bootstrap-switch .bootstrap-switch-handle-off {
    text-align: center;
    z-index: 1; }
    .bootstrap-switch .bootstrap-switch-handle-on.bootstrap-switch-primary,
    .bootstrap-switch .bootstrap-switch-handle-off.bootstrap-switch-primary {
      color: #fff;
      background: #0088ce; }
    .bootstrap-switch .bootstrap-switch-handle-on.bootstrap-switch-info,
    .bootstrap-switch .bootstrap-switch-handle-off.bootstrap-switch-info {
      color: #fff;
      background: #00659c; }
    .bootstrap-switch .bootstrap-switch-handle-on.bootstrap-switch-success,
    .bootstrap-switch .bootstrap-switch-handle-off.bootstrap-switch-success {
      color: #fff;
      background: #3f9c35; }
    .bootstrap-switch .bootstrap-switch-handle-on.bootstrap-switch-warning,
    .bootstrap-switch .bootstrap-switch-handle-off.bootstrap-switch-warning {
      background: #ec7a08;
      color: #fff; }
    .bootstrap-switch .bootstrap-switch-handle-on.bootstrap-switch-danger,
    .bootstrap-switch .bootstrap-switch-handle-off.bootstrap-switch-danger {
      color: #fff;
      background: #a30000; }
    .bootstrap-switch .bootstrap-switch-handle-on.bootstrap-switch-default,
    .bootstrap-switch .bootstrap-switch-handle-off.bootstrap-switch-default {
      color: #000;
      background: #f1f1f1; }
  .bootstrap-switch .bootstrap-switch-label {
    text-align: center;
    margin-top: -1px;
    margin-bottom: -1px;
    z-index: 100;
    color: #4d5258;
    background: #f1f1f1; }
  .bootstrap-switch span::before {
    content: "\200b"; }
  .bootstrap-switch .bootstrap-switch-handle-on {
    border-top-left-radius: 0px;
    border-bottom-left-radius: 0px; }
  .bootstrap-switch .bootstrap-switch-handle-off {
    border-top-right-radius: 0px;
    border-bottom-right-radius: 0px; }
  .bootstrap-switch input[type='radio'],
  .bootstrap-switch input[type='checkbox'] {
    position: absolute !important;
    top: 0;
    left: 0;
    margin: 0;
    z-index: -1;
    filter: alpha(opacity=0);
    opacity: 0;
    visibility: hidden; }
  .bootstrap-switch.bootstrap-switch-mini .bootstrap-switch-handle-on,
  .bootstrap-switch.bootstrap-switch-mini .bootstrap-switch-handle-off,
  .bootstrap-switch.bootstrap-switch-mini .bootstrap-switch-label {
    padding: 1px 5px;
    font-size: 11px;
    line-height: 1.5; }
  .bootstrap-switch.bootstrap-switch-small .bootstrap-switch-handle-on,
  .bootstrap-switch.bootstrap-switch-small .bootstrap-switch-handle-off,
  .bootstrap-switch.bootstrap-switch-small .bootstrap-switch-label {
    padding: 2px 6px;
    font-size: 11px;
    line-height: 1.5; }
  .bootstrap-switch.bootstrap-switch-large .bootstrap-switch-handle-on,
  .bootstrap-switch.bootstrap-switch-large .bootstrap-switch-handle-off,
  .bootstrap-switch.bootstrap-switch-large .bootstrap-switch-label {
    padding: 2px 10px;
    font-size: 14px;
    line-height: 1.33333; }
  .bootstrap-switch.bootstrap-switch-disabled, .bootstrap-switch.bootstrap-switch-readonly, .bootstrap-switch.bootstrap-switch-indeterminate {
    cursor: default !important; }
    .bootstrap-switch.bootstrap-switch-disabled .bootstrap-switch-handle-on,
    .bootstrap-switch.bootstrap-switch-disabled .bootstrap-switch-handle-off,
    .bootstrap-switch.bootstrap-switch-disabled .bootstrap-switch-label, .bootstrap-switch.bootstrap-switch-readonly .bootstrap-switch-handle-on,
    .bootstrap-switch.bootstrap-switch-readonly .bootstrap-switch-handle-off,
    .bootstrap-switch.bootstrap-switch-readonly .bootstrap-switch-label, .bootstrap-switch.bootstrap-switch-indeterminate .bootstrap-switch-handle-on,
    .bootstrap-switch.bootstrap-switch-indeterminate .bootstrap-switch-handle-off,
    .bootstrap-switch.bootstrap-switch-indeterminate .bootstrap-switch-label {
      filter: alpha(opacity=50);
      opacity: 0.5;
      cursor: default !important; }
  .bootstrap-switch.bootstrap-switch-animate .bootstrap-switch-container {
    -webkit-transition: margin-left 0.5s;
    -o-transition: margin-left 0.5s;
    transition: margin-left 0.5s; }
  .bootstrap-switch.bootstrap-switch-inverse .bootstrap-switch-handle-on {
    border-top-left-radius: 0;
    border-bottom-left-radius: 0;
    border-top-right-radius: 0px;
    border-bottom-right-radius: 0px; }
  .bootstrap-switch.bootstrap-switch-inverse .bootstrap-switch-handle-off {
    border-top-right-radius: 0;
    border-bottom-right-radius: 0;
    border-top-left-radius: 0px;
    border-bottom-left-radius: 0px; }
  .bootstrap-switch.bootstrap-switch-focused {
    border-color: #0088ce;
    outline: 0;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(0, 136, 206, 0.6);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(0, 136, 206, 0.6); }
  .bootstrap-switch.bootstrap-switch-on .bootstrap-switch-label, .bootstrap-switch.bootstrap-switch-inverse.bootstrap-switch-off .bootstrap-switch-label {
    border-top-right-radius: 0px;
    border-bottom-right-radius: 0px; }
  .bootstrap-switch.bootstrap-switch-off .bootstrap-switch-label, .bootstrap-switch.bootstrap-switch-inverse.bootstrap-switch-on .bootstrap-switch-label {
    border-top-left-radius: 0px;
    border-bottom-left-radius: 0px; }

/*
 *  Bootstrap TouchSpin - v3.1.1
 *  A mobile and touch friendly input spinner component for Bootstrap 3.
 *  http://www.virtuosoft.eu/code/bootstrap-touchspin/
 *
 *  Made by István Ujj-Mészáros
 *  Under Apache License v2.0 License
 */
.bootstrap-touchspin .input-group-btn-vertical {
  position: relative;
  white-space: nowrap;
  width: 1%;
  vertical-align: middle;
  display: table-cell; }

.bootstrap-touchspin .input-group-btn-vertical > .btn {
  display: block;
  float: none;
  width: 100%;
  max-width: 100%;
  padding: 8px 10px;
  margin-left: -1px;
  position: relative; }

.bootstrap-touchspin .input-group-btn-vertical .bootstrap-touchspin-up {
  border-radius: 0;
  border-top-right-radius: 4px; }

.bootstrap-touchspin .input-group-btn-vertical .bootstrap-touchspin-down {
  margin-top: -2px;
  border-radius: 0;
  border-bottom-right-radius: 4px; }

.bootstrap-touchspin .input-group-btn-vertical i {
  position: absolute;
  top: 3px;
  left: 5px;
  font-size: 9px;
  font-weight: normal; }

/*-- Chart --*/
.c3 svg {
  font: 10px sans-serif;
  -webkit-tap-highlight-color: transparent; }

.c3 path, .c3 line {
  fill: none;
  stroke: #000; }

.c3 text {
  -webkit-user-select: none;
  -moz-user-select: none;
  user-select: none; }

.c3-legend-item-tile,
.c3-xgrid-focus,
.c3-ygrid,
.c3-event-rect,
.c3-bars path {
  shape-rendering: crispEdges; }

.c3-chart-arc path {
  stroke: #fff; }

.c3-chart-arc rect {
  stroke: white;
  stroke-width: 1; }

.c3-chart-arc text {
  fill: #fff;
  font-size: 13px; }

/*-- Axis --*/
/*-- Grid --*/
.c3-grid line {
  stroke: #aaa; }

.c3-grid text {
  fill: #aaa; }

.c3-xgrid, .c3-ygrid {
  stroke-dasharray: 3 3; }

/*-- Text on Chart --*/
.c3-text.c3-empty {
  fill: #808080;
  font-size: 2em; }

/*-- Line --*/
.c3-line {
  stroke-width: 1px; }

/*-- Point --*/
.c3-circle._expanded_ {
  stroke-width: 1px;
  stroke: white; }

.c3-selected-circle {
  fill: white;
  stroke-width: 2px; }

/*-- Bar --*/
.c3-bar {
  stroke-width: 0; }

.c3-bar._expanded_ {
  fill-opacity: 1;
  fill-opacity: 0.75; }

/*-- Focus --*/
.c3-target.c3-focused {
  opacity: 1; }

.c3-target.c3-focused path.c3-line, .c3-target.c3-focused path.c3-step {
  stroke-width: 2px; }

.c3-target.c3-defocused {
  opacity: 0.3 !important; }

/*-- Region --*/
.c3-region {
  fill: steelblue;
  fill-opacity: .1; }

/*-- Brush --*/
.c3-brush .extent {
  fill-opacity: .1; }

/*-- Select - Drag --*/
/*-- Legend --*/
.c3-legend-item {
  font-size: 12px; }

.c3-legend-item-hidden {
  opacity: 0.15; }

.c3-legend-background {
  opacity: 0.75;
  fill: white;
  stroke: lightgray;
  stroke-width: 1; }

/*-- Title --*/
.c3-title {
  font: 14px sans-serif; }

/*-- Tooltip --*/
.c3-tooltip-container {
  z-index: 10; }

.c3-tooltip {
  border-collapse: collapse;
  border-spacing: 0;
  background-color: #fff;
  empty-cells: show;
  -webkit-box-shadow: 7px 7px 12px -9px #777777;
  -moz-box-shadow: 7px 7px 12px -9px #777777;
  box-shadow: 7px 7px 12px -9px #777777;
  opacity: 0.9; }

.c3-tooltip tr {
  border: 1px solid #CCC; }

.c3-tooltip th {
  background-color: #aaa;
  font-size: 14px;
  padding: 2px 5px;
  text-align: left;
  color: #FFF; }

.c3-tooltip td {
  font-size: 13px;
  padding: 3px 6px;
  background-color: #fff;
  border-left: 1px dotted #999; }

.c3-tooltip td > span {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin-right: 6px; }

.c3-tooltip td.value {
  text-align: right; }

/*-- Area --*/
.c3-area {
  stroke-width: 0;
  opacity: 0.2; }

/*-- Arc --*/
.c3-chart-arcs-title {
  dominant-baseline: middle;
  font-size: 1.3em; }

.c3-chart-arcs .c3-chart-arcs-background {
  fill: #e0e0e0;
  stroke: #FFF; }

.c3-chart-arcs .c3-chart-arcs-gauge-unit {
  fill: #000;
  font-size: 16px; }

.c3-chart-arcs .c3-chart-arcs-gauge-max {
  fill: #777; }

.c3-chart-arcs .c3-chart-arcs-gauge-min {
  fill: #777; }

.c3-chart-arc .c3-gauge-value {
  fill: #000;
  /*  font-size: 28px !important;*/ }

.c3-chart-arc.c3-target g path {
  opacity: 1; }

.c3-chart-arc.c3-target.c3-focused g path {
  opacity: 1; }

.sr-only, .bootstrap-datetimepicker-widget .btn[data-action="incrementHours"]::after, .bootstrap-datetimepicker-widget .btn[data-action="incrementMinutes"]::after, .bootstrap-datetimepicker-widget .btn[data-action="decrementHours"]::after, .bootstrap-datetimepicker-widget .btn[data-action="decrementMinutes"]::after, .bootstrap-datetimepicker-widget .btn[data-action="showHours"]::after, .bootstrap-datetimepicker-widget .btn[data-action="showMinutes"]::after, .bootstrap-datetimepicker-widget .btn[data-action="togglePeriod"]::after, .bootstrap-datetimepicker-widget .btn[data-action="clear"]::after, .bootstrap-datetimepicker-widget .btn[data-action="today"]::after, .bootstrap-datetimepicker-widget .picker-switch::after, .bootstrap-datetimepicker-widget table th.prev::after, .bootstrap-datetimepicker-widget table th.next::after {
  position: absolute;
  width: 1px;
  height: 1px;
  margin: -1px;
  padding: 0;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0; }

/*!
 * Datetimepicker for Bootstrap 3
 * ! version : 4.7.14
 * https://github.com/Eonasdan/bootstrap-datetimepicker/
 */
.bootstrap-datetimepicker-widget {
  list-style: none; }
  .bootstrap-datetimepicker-widget.dropdown-menu {
    margin: 2px 0;
    padding: 4px;
    width: 19em; }
    @media (min-width: 768px) {
      .bootstrap-datetimepicker-widget.dropdown-menu.timepicker-sbs {
        width: 38em; } }
    @media (min-width: 992px) {
      .bootstrap-datetimepicker-widget.dropdown-menu.timepicker-sbs {
        width: 38em; } }
    @media (min-width: 1200px) {
      .bootstrap-datetimepicker-widget.dropdown-menu.timepicker-sbs {
        width: 38em; } }
    .bootstrap-datetimepicker-widget.dropdown-menu:before, .bootstrap-datetimepicker-widget.dropdown-menu:after {
      content: '';
      display: inline-block;
      position: absolute; }
    .bootstrap-datetimepicker-widget.dropdown-menu.bottom:before {
      border-left: 7px solid transparent;
      border-right: 7px solid transparent;
      border-bottom: 7px solid #ccc;
      border-bottom-color: rgba(0, 0, 0, 0.2);
      top: -7px;
      left: 7px; }
    .bootstrap-datetimepicker-widget.dropdown-menu.bottom:after {
      border-left: 6px solid transparent;
      border-right: 6px solid transparent;
      border-bottom: 6px solid white;
      top: -6px;
      left: 8px; }
    .bootstrap-datetimepicker-widget.dropdown-menu.top:before {
      border-left: 7px solid transparent;
      border-right: 7px solid transparent;
      border-top: 7px solid #ccc;
      border-top-color: rgba(0, 0, 0, 0.2);
      bottom: -7px;
      left: 6px; }
    .bootstrap-datetimepicker-widget.dropdown-menu.top:after {
      border-left: 6px solid transparent;
      border-right: 6px solid transparent;
      border-top: 6px solid white;
      bottom: -6px;
      left: 7px; }
    .bootstrap-datetimepicker-widget.dropdown-menu.pull-right:before {
      left: auto;
      right: 6px; }
    .bootstrap-datetimepicker-widget.dropdown-menu.pull-right:after {
      left: auto;
      right: 7px; }
  .bootstrap-datetimepicker-widget .list-unstyled {
    margin: 0; }
  .bootstrap-datetimepicker-widget a[data-action] {
    padding: 6px 0; }
  .bootstrap-datetimepicker-widget a[data-action]:active {
    box-shadow: none; }
  .bootstrap-datetimepicker-widget .timepicker-hour, .bootstrap-datetimepicker-widget .timepicker-minute, .bootstrap-datetimepicker-widget .timepicker-second {
    width: 54px;
    font-weight: bold;
    font-size: 1em;
    margin: 0; }
  .bootstrap-datetimepicker-widget button[data-action] {
    padding: 6px; }
  .bootstrap-datetimepicker-widget .btn[data-action="incrementHours"]::after {
    content: "Increment Hours"; }
  .bootstrap-datetimepicker-widget .btn[data-action="incrementMinutes"]::after {
    content: "Increment Minutes"; }
  .bootstrap-datetimepicker-widget .btn[data-action="decrementHours"]::after {
    content: "Decrement Hours"; }
  .bootstrap-datetimepicker-widget .btn[data-action="decrementMinutes"]::after {
    content: "Decrement Minutes"; }
  .bootstrap-datetimepicker-widget .btn[data-action="showHours"]::after {
    content: "Show Hours"; }
  .bootstrap-datetimepicker-widget .btn[data-action="showMinutes"]::after {
    content: "Show Minutes"; }
  .bootstrap-datetimepicker-widget .btn[data-action="togglePeriod"]::after {
    content: "Toggle AM/PM"; }
  .bootstrap-datetimepicker-widget .btn[data-action="clear"]::after {
    content: "Clear the picker"; }
  .bootstrap-datetimepicker-widget .btn[data-action="today"]::after {
    content: "Set the date to today"; }
  .bootstrap-datetimepicker-widget .picker-switch {
    text-align: center; }
    .bootstrap-datetimepicker-widget .picker-switch::after {
      content: "Toggle Date and Time Screens"; }
    .bootstrap-datetimepicker-widget .picker-switch td {
      padding: 0;
      margin: 0;
      height: auto;
      width: auto;
      line-height: inherit; }
      .bootstrap-datetimepicker-widget .picker-switch td span {
        line-height: 2.5;
        height: 2.5em;
        width: 100%; }
  .bootstrap-datetimepicker-widget table {
    width: 100%;
    margin: 0; }
    .bootstrap-datetimepicker-widget table td,
    .bootstrap-datetimepicker-widget table th {
      text-align: center;
      border-radius: 1px; }
    .bootstrap-datetimepicker-widget table th {
      height: 20px;
      line-height: 20px;
      width: 20px; }
      .bootstrap-datetimepicker-widget table th.picker-switch {
        width: 145px; }
      .bootstrap-datetimepicker-widget table th.disabled, .bootstrap-datetimepicker-widget table th.disabled:hover {
        background: none;
        color: #9c9c9c;
        cursor: not-allowed; }
      .bootstrap-datetimepicker-widget table th.prev::after {
        content: "Previous Month"; }
      .bootstrap-datetimepicker-widget table th.next::after {
        content: "Next Month"; }
    .bootstrap-datetimepicker-widget table thead tr:first-child th {
      cursor: pointer; }
      .bootstrap-datetimepicker-widget table thead tr:first-child th:hover {
        background: transparent; }
    .bootstrap-datetimepicker-widget table td {
      height: 54px;
      line-height: 54px;
      width: 54px; }
      .bootstrap-datetimepicker-widget table td.cw {
        font-size: .8em;
        height: 20px;
        line-height: 20px;
        color: #9c9c9c; }
      .bootstrap-datetimepicker-widget table td.day {
        height: 20px;
        line-height: 20px;
        width: 20px; }
      .bootstrap-datetimepicker-widget table td.day:hover, .bootstrap-datetimepicker-widget table td.hour:hover, .bootstrap-datetimepicker-widget table td.minute:hover, .bootstrap-datetimepicker-widget table td.second:hover {
        background: transparent;
        cursor: pointer; }
      .bootstrap-datetimepicker-widget table td.old, .bootstrap-datetimepicker-widget table td.new {
        color: #9c9c9c; }
      .bootstrap-datetimepicker-widget table td.today {
        position: relative; }
        .bootstrap-datetimepicker-widget table td.today:before {
          content: '';
          display: inline-block;
          border: solid transparent;
          border-width: 0 0 7px 7px;
          border-bottom-color: #0088ce;
          border-top-color: rgba(0, 0, 0, 0.2);
          position: absolute;
          bottom: 4px;
          right: 4px; }
      .bootstrap-datetimepicker-widget table td.active, .bootstrap-datetimepicker-widget table td.active:hover {
        background-color: #0088ce;
        color: #fff;
        text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); }
      .bootstrap-datetimepicker-widget table td.active.today:before {
        border-bottom-color: #fff; }
      .bootstrap-datetimepicker-widget table td.disabled, .bootstrap-datetimepicker-widget table td.disabled:hover {
        background: none;
        color: #9c9c9c;
        cursor: not-allowed; }
      .bootstrap-datetimepicker-widget table td span {
        display: inline-block;
        width: 54px;
        height: 54px;
        line-height: 54px;
        margin: 2px 1.5px;
        cursor: pointer;
        border-radius: 1px; }
        .bootstrap-datetimepicker-widget table td span:hover {
          background: transparent; }
        .bootstrap-datetimepicker-widget table td span.active {
          background-color: #0088ce;
          color: #fff;
          text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); }
        .bootstrap-datetimepicker-widget table td span.old {
          color: #9c9c9c; }
        .bootstrap-datetimepicker-widget table td span.disabled, .bootstrap-datetimepicker-widget table td span.disabled:hover {
          background: none;
          color: #9c9c9c;
          cursor: not-allowed; }
  .bootstrap-datetimepicker-widget.usetwentyfour td.hour {
    height: 27px;
    line-height: 27px; }

.input-group.date .input-group-addon {
  cursor: pointer; }

.text-overflow-pf {
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  word-wrap: normal; }

.fixed-height-accordion-pf {
  display: flex;
  flex-direction: column; }
  .fixed-height-accordion-pf .panel {
    display: flex;
    flex-direction: column; }
    .fixed-height-accordion-pf .panel.panel-open {
      flex: 1; }
    .fixed-height-accordion-pf .panel .collapse.in {
      flex: 1;
      overflow-y: auto; }

.alert {
  border-width: 1px;
  padding-left: 47px;
  padding-right: 14px;
  position: relative;
  word-wrap: break-word; }
  .alert .alert-link {
    color: #0088ce; }
    .alert .alert-link:hover {
      color: #00659c; }
  .alert > .btn.pull-right {
    margin-top: -3px; }
  .alert > .pficon {
    font-size: 22px;
    position: absolute;
    left: 13px;
    top: 10px; }
  .alert .close {
    filter: alpha(opacity=85);
    opacity: 0.85; }
    .alert .close:hover, .alert .close:focus {
      filter: alpha(opacity=100);
      opacity: 1; }
  .alert .pficon-info {
    color: #4d5258; }

.alert-dismissable {
  padding-right: 28px; }
  .alert-dismissable .close {
    right: -13px;
    top: 1px; }

.badge {
  margin-left: 6px; }

.nav-pills > li > a > .badge {
  margin-left: 6px; }

.breadcrumb {
  padding-left: 0; }
  .breadcrumb > .active strong {
    font-weight: 600; }
  .breadcrumb > li {
    display: inline;
    /* IE8 */ }
    .breadcrumb > li + li:before {
      color: #9c9c9c;
      content: "";
      font-family: "FontAwesome";
      font-size: 11px;
      padding: 0 9px 0 7px; }

.btn {
  -webkit-box-shadow: 0 2px 3px rgba(3, 3, 3, 0.1);
  box-shadow: 0 2px 3px rgba(3, 3, 3, 0.1); }
  .btn:active {
    -webkit-box-shadow: inset 0 2px 8px rgba(3, 3, 3, 0.2);
    box-shadow: inset 0 2px 8px rgba(3, 3, 3, 0.2); }
  .btn.disabled, .btn[disabled],
  fieldset[disabled] .btn {
    background-color: #fafafa !important;
    background-image: none !important;
    border-color: #d1d1d1 !important;
    color: #8b8d8f !important;
    opacity: 1; }
    .btn.disabled:active, .btn[disabled]:active,
    fieldset[disabled] .btn:active {
      -webkit-box-shadow: none;
      box-shadow: none; }
    .btn.disabled.btn-link, .btn[disabled].btn-link,
    fieldset[disabled] .btn.btn-link {
      background-color: transparent !important;
      border: 0; }

.btn-danger {
  background-color: #a30000;
  background-image: -webkit-linear-gradient(top, #cc0000 0%, #a30000 100%);
  background-image: -o-linear-gradient(top, #cc0000 0%, #a30000 100%);
  background-image: linear-gradient(to bottom, #cc0000 0%, #a30000 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFCC0000', endColorstr='#FFA30000', GradientType=0);
  background-repeat: repeat-x;
  border-color: #8b0000;
  color: #fff; }
  .btn-danger:hover, .btn-danger:focus, .btn-danger:active, .btn-danger.active,
  .btn-danger .open .dropdown-toggle.btn-danger {
    background-color: #a30000;
    background-image: none;
    border-color: #8b0000;
    color: #fff; }
  .btn-danger:active, .btn-danger.active,
  .btn-danger .open .dropdown-toggle.btn-danger {
    background-image: none; }
    .btn-danger:active:hover, .btn-danger:active:focus, .btn-danger:active.focus, .btn-danger.active:hover, .btn-danger.active:focus, .btn-danger.active.focus,
    .btn-danger .open .dropdown-toggle.btn-danger:hover,
    .btn-danger .open .dropdown-toggle.btn-danger:focus,
    .btn-danger .open .dropdown-toggle.btn-danger.focus {
      background-color: #8a0000;
      border-color: #670000; }
  .btn-danger.disabled, .btn-danger.disabled:hover, .btn-danger.disabled:focus, .btn-danger.disabled:active, .btn-danger.disabled.active, .btn-danger[disabled], .btn-danger[disabled]:hover, .btn-danger[disabled]:focus, .btn-danger[disabled]:active, .btn-danger[disabled].active,
  fieldset[disabled] .btn-danger,
  fieldset[disabled] .btn-danger:hover,
  fieldset[disabled] .btn-danger:focus,
  fieldset[disabled] .btn-danger:active,
  fieldset[disabled] .btn-danger.active {
    background-color: #a30000;
    border-color: #8b0000; }

.btn-default {
  background-color: #f1f1f1;
  background-image: -webkit-linear-gradient(top, #fafafa 0%, #ededed 100%);
  background-image: -o-linear-gradient(top, #fafafa 0%, #ededed 100%);
  background-image: linear-gradient(to bottom, #fafafa 0%, #ededed 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFFAFAFA', endColorstr='#FFEDEDED', GradientType=0);
  background-repeat: repeat-x;
  border-color: #bbb;
  color: #4d5258; }
  .btn-default:hover, .btn-default:focus, .btn-default:active, .btn-default.active,
  .btn-default .open .dropdown-toggle.btn-default {
    background-color: #f1f1f1;
    background-image: none;
    border-color: #bbb;
    color: #4d5258; }
  .btn-default:active, .btn-default.active,
  .btn-default .open .dropdown-toggle.btn-default {
    background-image: none; }
    .btn-default:active:hover, .btn-default:active:focus, .btn-default:active.focus, .btn-default.active:hover, .btn-default.active:focus, .btn-default.active.focus,
    .btn-default .open .dropdown-toggle.btn-default:hover,
    .btn-default .open .dropdown-toggle.btn-default:focus,
    .btn-default .open .dropdown-toggle.btn-default.focus {
      background-color: #e5e5e5;
      border-color: darkgray; }
  .btn-default.disabled, .btn-default.disabled:hover, .btn-default.disabled:focus, .btn-default.disabled:active, .btn-default.disabled.active, .btn-default[disabled], .btn-default[disabled]:hover, .btn-default[disabled]:focus, .btn-default[disabled]:active, .btn-default[disabled].active,
  fieldset[disabled] .btn-default,
  fieldset[disabled] .btn-default:hover,
  fieldset[disabled] .btn-default:focus,
  fieldset[disabled] .btn-default:active,
  fieldset[disabled] .btn-default.active {
    background-color: #f1f1f1;
    border-color: #bbb; }

.btn-link, .btn-link:active {
  -webkit-box-shadow: none;
  box-shadow: none; }

.btn-primary {
  background-color: #0088ce;
  background-image: -webkit-linear-gradient(top, #39a5dc 0%, #0088ce 100%);
  background-image: -o-linear-gradient(top, #39a5dc 0%, #0088ce 100%);
  background-image: linear-gradient(to bottom, #39a5dc 0%, #0088ce 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FF39A5DC', endColorstr='#FF0088CE', GradientType=0);
  background-repeat: repeat-x;
  border-color: #00659c;
  color: #fff; }
  .btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary.active,
  .btn-primary .open .dropdown-toggle.btn-primary {
    background-color: #0088ce;
    background-image: none;
    border-color: #00659c;
    color: #fff; }
  .btn-primary:active, .btn-primary.active,
  .btn-primary .open .dropdown-toggle.btn-primary {
    background-image: none; }
    .btn-primary:active:hover, .btn-primary:active:focus, .btn-primary:active.focus, .btn-primary.active:hover, .btn-primary.active:focus, .btn-primary.active.focus,
    .btn-primary .open .dropdown-toggle.btn-primary:hover,
    .btn-primary .open .dropdown-toggle.btn-primary:focus,
    .btn-primary .open .dropdown-toggle.btn-primary.focus {
      background-color: #0077b5;
      border-color: #004e78; }
  .btn-primary.disabled, .btn-primary.disabled:hover, .btn-primary.disabled:focus, .btn-primary.disabled:active, .btn-primary.disabled.active, .btn-primary[disabled], .btn-primary[disabled]:hover, .btn-primary[disabled]:focus, .btn-primary[disabled]:active, .btn-primary[disabled].active,
  fieldset[disabled] .btn-primary,
  fieldset[disabled] .btn-primary:hover,
  fieldset[disabled] .btn-primary:focus,
  fieldset[disabled] .btn-primary:active,
  fieldset[disabled] .btn-primary.active {
    background-color: #0088ce;
    border-color: #00659c; }

.btn-xs, .btn-group-xs > .btn,
.btn-group-xs .btn {
  font-weight: 400; }

.caret {
  font-family: "FontAwesome";
  font-weight: normal;
  height: 9px;
  position: relative;
  vertical-align: baseline;
  width: 12px; }
  .caret:before {
    bottom: 0;
    content: "";
    left: 0;
    line-height: 12px;
    position: absolute;
    text-align: center;
    top: -1px;
    right: 0; }
  .dropup .caret:before {
    content: ""; }

.dropdown-toggle:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px; }

.dropdown-menu .divider {
  background-color: #ededed;
  height: 1px;
  margin: 4px 1px;
  overflow: hidden; }

.dropdown-menu > li > a {
  border-color: transparent;
  border-style: solid;
  border-width: 1px 0;
  padding: 1px 10px; }

.dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus {
  border-color: #bee1f4;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false); }

.dropdown-menu > li > a:active {
  background-color: #0088ce;
  border-color: #0088ce;
  color: #fff !important;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false); }

.dropdown-menu > .active > a, .dropdown-menu > .active > a:hover, .dropdown-menu > .active > a:focus {
  background-color: #0088ce !important;
  border-color: #0088ce !important;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false); }

.dropdown-menu > .disabled > a, .dropdown-menu > .disabled > a:hover, .dropdown-menu > .disabled > a:focus {
  border-color: transparent; }

.dropdown-menu > .selected > a {
  background-color: #0088ce;
  border-color: #0088ce;
  color: #fff; }
  .dropdown-menu > .selected > a small {
    color: rgba(255, 255, 255, 0.5); }

.dropdown-menu > .disabled > a:hover, .dropdown-menu > .disabled > a:focus {
  border-color: transparent; }

.dropdown-header {
  padding-left: 10px;
  padding-right: 10px;
  text-transform: uppercase; }

.btn-group > .dropdown-menu,
.dropdown > .dropdown-menu,
.input-group-btn > .dropdown-menu {
  margin-top: -1px; }

.dropup .dropdown-menu {
  margin-bottom: -1px; }

.dropdown-submenu {
  position: relative; }
  .dropdown-submenu:hover > a {
    background-color: #def3ff;
    border-color: #bee1f4; }
  .dropdown-submenu:hover > .dropdown-menu {
    display: block; }
  .dropdown-submenu.pull-left {
    float: none !important; }
    .dropdown-submenu.pull-left > .dropdown-menu {
      left: auto;
      margin-left: 10px;
      right: 100%; }
  .dropdown-submenu > a {
    padding-right: 20px !important; }
    .dropdown-submenu > a:after {
      content: "";
      font-family: "FontAwesome";
      display: block;
      position: absolute;
      right: 10px;
      top: 2px; }
  .dropdown-submenu > .dropdown-menu {
    left: 100%;
    margin-top: 0;
    top: -6px; }
  .dropup .dropdown-submenu > .dropdown-menu {
    bottom: -5px;
    top: auto; }
  .open .dropdown-submenu.active > .dropdown-menu {
    display: block; }

.dropdown-kebab-pf.btn-group > .btn:first-child,
.dropdown-kebab-pf .btn-link {
  color: #252525;
  font-size: 16px;
  line-height: 1;
  padding: 4px 10px;
  margin-left: -10px;
  margin-right: -10px; }
  .dropdown-kebab-pf.btn-group > .btn:first-child:active, .dropdown-kebab-pf.btn-group > .btn:first-child:focus, .dropdown-kebab-pf.btn-group > .btn:first-child:hover,
  .dropdown-kebab-pf .btn-link:active,
  .dropdown-kebab-pf .btn-link:focus,
  .dropdown-kebab-pf .btn-link:hover {
    color: #0088ce; }

.dropdown-kebab-pf.btn-group {
  margin-left: 10px; }

.dropdown-kebab-pf .dropdown-menu {
  left: -15px;
  margin-top: 11px; }
  .dropdown-kebab-pf .dropdown-menu.dropdown-menu-right {
    left: auto;
    right: -15px; }
    .dropdown-kebab-pf .dropdown-menu.dropdown-menu-right:after, .dropdown-kebab-pf .dropdown-menu.dropdown-menu-right:before {
      left: auto;
      right: 6px; }
  .dropdown-kebab-pf .dropdown-menu:after, .dropdown-kebab-pf .dropdown-menu:before {
    border-bottom-color: #bbb;
    border-bottom-style: solid;
    border-bottom-width: 10px;
    border-left: 10px solid transparent;
    border-right: 10px solid transparent;
    content: "";
    display: inline-block;
    left: 6px;
    position: absolute;
    top: -11px; }
  .dropdown-kebab-pf .dropdown-menu:after {
    border-bottom-color: #fff;
    top: -10px; }

.dropdown-kebab-pf.dropup .dropdown-menu {
  margin-bottom: 11px;
  margin-top: 0; }
  .dropdown-kebab-pf.dropup .dropdown-menu:after, .dropdown-kebab-pf.dropup .dropdown-menu:before {
    border-bottom: none;
    border-top-color: #bbb;
    border-top-style: solid;
    border-top-width: 10px;
    bottom: -11px;
    top: auto; }
  .dropdown-kebab-pf.dropup .dropdown-menu:after {
    border-top-color: #fff;
    bottom: -10px; }

.form-horizontal-pf-align-left .control-label {
  text-align: left; }

@media (min-width: 768px) {
  .form-horizontal-pf-align-left.required-pf .control-label:not(.required-pf) {
    padding-left: 30px; } }

.chars-remaining-pf span {
  font-weight: 600;
  padding-right: 5px; }

.chars-warn-remaining-pf {
  color: #cc0000; }

.fields-status-pf {
  color: #8b8d8f;
  margin-bottom: 15px; }

.form-control[disabled], .form-control[readonly],
fieldset[disabled] .form-control {
  -webkit-box-shadow: none;
  box-shadow: none;
  color: #8b8d8f; }
  .form-control[disabled]:hover, .form-control[readonly]:hover,
  fieldset[disabled] .form-control:hover {
    border-color: #bbb; }

.form-control:hover {
  border-color: #7dc3e8; }
  .has-error .form-control:hover {
    border-color: #990000; }
  .has-success .form-control:hover {
    border-color: #2b542c; }
  .has-warning .form-control:hover {
    border-color: #bb6106; }

.has-error .checkbox,
.has-error .checkbox-inline,
.has-error .control-label,
.has-error .radio,
.has-error .radio-inline,
.has-error.checkbox label,
.has-error.checkbox-inline label,
.has-error.radio label,
.has-error.radio-inline label, .has-success .checkbox,
.has-success .checkbox-inline,
.has-success .control-label,
.has-success .radio,
.has-success .radio-inline,
.has-success.checkbox label,
.has-success.checkbox-inline label,
.has-success.radio label,
.has-success.radio-inline label, .has-warning .checkbox,
.has-warning .checkbox-inline,
.has-warning .control-label,
.has-warning .radio,
.has-warning .radio-inline,
.has-warning.checkbox label,
.has-warning.checkbox-inline label,
.has-warning.radio label,
.has-warning.radio-inline label {
  color: #363636; }

.help-block {
  margin-bottom: 0px; }

.input-group .input-group-btn .btn {
  -webkit-box-shadow: none;
  box-shadow: none; }

label {
  font-weight: 600; }
  label.required-pf:before {
    color: #cc0000;
    content: "*";
    margin-right: 3px; }

span.required-pf {
  color: #cc0000; }

.fields-section-pf {
  border-color: #ededed;
  border-style: solid;
  border-width: 1px 0 0;
  margin-top: 25px;
  padding: 15px 0 0; }

.fields-section-header-pf {
  border: none;
  font-size: 12px;
  margin: 0;
  padding-right: 10px;
  width: auto; }
  .fields-section-header-pf .fa-angle-right {
    cursor: pointer;
    font-size: 14px;
    width: 14px; }

.form-control-pf-editable {
  display: flex; }
  .form-control-pf-editable.form-control-pf-full-width {
    display: block; }
    .form-control-pf-editable.form-control-pf-full-width > .form-control-pf-value {
      text-align: left; }
    .form-control-pf-editable.form-control-pf-full-width .action-buttons {
      float: right; }
  .form-control-pf-editable.form-control-pf-edit > .form-control-pf-value {
    display: none; }
  .form-control-pf-editable.form-control-pf-edit > :not(.form-control-pf-value):not(.spinner),
  .form-control-pf-editable.form-control-pf-edit > .bootstrap-select.btn-group:not(.input-group-btn) {
    display: inline-block; }
  .form-control-pf-editable.form-control-pf-updating > .spinner {
    display: inline-block; }
  .form-control-pf-editable.form-control-pf-updating > :not(.spinner) {
    display: none; }
  .form-control-pf-editable > .form-control-pf-value {
    background: none;
    border: 1px solid transparent;
    display: inline-block;
    padding: 2px 6px; }
    .form-control-pf-editable > .form-control-pf-value:focus {
      border-color: #bbb; }
    .form-control-pf-editable > .form-control-pf-value:hover {
      border-color: #bbb;
      cursor: pointer; }
    .form-control-pf-editable > .form-control-pf-value + :not(textarea) {
      flex: 1; }
    .form-control-pf-editable > .form-control-pf-value i {
      margin-left: 6px; }
  .form-control-pf-editable > :not(.form-control-pf-value) {
    display: none; }
  .form-control-pf-editable > .form-control-pf-textbox {
    position: relative; }
    .form-control-pf-editable > .form-control-pf-textbox input {
      padding-right: 26px; }
    .form-control-pf-editable > .form-control-pf-textbox .form-control-pf-empty {
      background: none;
      border: none;
      color: #bbb;
      height: 100%;
      position: absolute;
      right: 0;
      top: 0; }
  .form-control-pf-editable > .btn {
    margin-left: 3px; }
  .form-control-pf-editable > .spinner {
    margin: 4px 0; }
  .form-control-pf-editable > .bootstrap-select.btn-group:not(.input-group-btn) {
    display: none; }
  .form-control-pf-editable > textarea {
    display: block;
    min-height: 84px;
    resize: vertical; }

.label {
  border-radius: 0;
  font-size: 100%;
  font-weight: 600; }
  h1 .label,
  h2 .label,
  h3 .label,
  h4 .label,
  h5 .label,
  h6 .label {
    font-size: 75%; }

.list-group {
  border-top: 1px solid #ededed; }
  .list-group .list-group-item:first-child {
    border-top: 0; }

.list-group-item {
  border-left: 0;
  border-right: 0; }
  .list-group-item.disabled, .list-group-item.disabled:hover, .list-group-item.disabled:focus {
    background-color: #fafafa; }

.list-group-item-heading {
  font-weight: 600; }

.modal-header {
  background-color: #f5f5f5;
  border-bottom: none;
  padding: 10px 18px; }

.modal-header .close {
  margin-top: 2px; }

.modal-title {
  font-size: 13px;
  font-weight: 700; }

.modal-footer {
  border-top: none;
  margin-top: 15px;
  padding: 14px 15px 15px; }
  .modal-footer > .btn {
    padding-left: 10px;
    padding-right: 10px; }
    .modal-footer > .btn > .fa-angle-left {
      margin-right: 5px; }
    .modal-footer > .btn > .fa-angle-right {
      margin-left: 5px; }

.message-dialog-pf .modal-body {
  display: flex; }
  .message-dialog-pf .modal-body .fa, .message-dialog-pf .modal-body .fas, .message-dialog-pf .modal-body .far, .message-dialog-pf .modal-body .fab, .message-dialog-pf .modal-body .fal,
  .message-dialog-pf .modal-body .pficon {
    font-size: 30px;
    margin-right: 15px; }

.pager li > a,
.pager li > span {
  background-color: #f1f1f1;
  background-image: -webkit-linear-gradient(top, #fafafa 0%, #ededed 100%);
  background-image: -o-linear-gradient(top, #fafafa 0%, #ededed 100%);
  background-image: linear-gradient(to bottom, #fafafa 0%, #ededed 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFFAFAFA', endColorstr='#FFEDEDED', GradientType=0);
  background-repeat: repeat-x;
  border-color: #bbb;
  color: #4d5258;
  color: #4d5258;
  font-weight: 600;
  line-height: 22px;
  padding: 2px 14px; }
  .pager li > a:hover, .pager li > a:focus, .pager li > a:active, .pager li > a.active,
  .pager li > a .open .dropdown-toggle.pager li > a, .pager li > a .pager li > span,
  .pager li > span:hover,
  .pager li > span:focus,
  .pager li > span:active,
  .pager li > span.active,
  .pager li > span .open .dropdown-toggle.pager li > a,
  .pager li > span .pager li > span {
    background-color: #f1f1f1;
    background-image: none;
    border-color: #bbb;
    color: #4d5258; }
  .pager li > a:active, .pager li > a.active,
  .pager li > a .open .dropdown-toggle.pager li > a, .pager li > a .pager li > span,
  .pager li > span:active,
  .pager li > span.active,
  .pager li > span .open .dropdown-toggle.pager li > a,
  .pager li > span .pager li > span {
    background-image: none; }
    .pager li > a:active:hover, .pager li > a:active:focus, .pager li > a:active.focus, .pager li > a.active:hover, .pager li > a.active:focus, .pager li > a.active.focus,
    .pager li > a .open .dropdown-toggle.pager li > a:hover,
    .pager li > a .open .dropdown-toggle.pager li > a:focus,
    .pager li > a .open .dropdown-toggle.pager li > a.focus, .pager li > a .pager li > span:hover, .pager li > a .pager li > span:focus, .pager li > a .pager li > span.focus,
    .pager li > span:active:hover,
    .pager li > span:active:focus,
    .pager li > span:active.focus,
    .pager li > span.active:hover,
    .pager li > span.active:focus,
    .pager li > span.active.focus,
    .pager li > span .open .dropdown-toggle.pager li > a:hover,
    .pager li > span .open .dropdown-toggle.pager li > a:focus,
    .pager li > span .open .dropdown-toggle.pager li > a.focus,
    .pager li > span .pager li > span:hover,
    .pager li > span .pager li > span:focus,
    .pager li > span .pager li > span.focus {
      background-color: #e5e5e5;
      border-color: darkgray; }
  .pager li > a.disabled, .pager li > a.disabled:hover, .pager li > a.disabled:focus, .pager li > a.disabled:active, .pager li > a.disabled.active, .pager li > a[disabled], .pager li > a[disabled]:hover, .pager li > a[disabled]:focus, .pager li > a[disabled]:active, .pager li > a[disabled].active,
  fieldset[disabled] .pager li > a,
  fieldset[disabled] .pager li > a:hover,
  fieldset[disabled] .pager li > a:focus,
  fieldset[disabled] .pager li > a:active,
  fieldset[disabled] .pager li > a.active,
  .pager li > span.disabled,
  .pager li > span.disabled:hover,
  .pager li > span.disabled:focus,
  .pager li > span.disabled:active,
  .pager li > span.disabled.active,
  .pager li > span[disabled],
  .pager li > span[disabled]:hover,
  .pager li > span[disabled]:focus,
  .pager li > span[disabled]:active,
  .pager li > span[disabled].active,
  fieldset[disabled]
  .pager li > span,
  fieldset[disabled]
  .pager li > span:hover,
  fieldset[disabled]
  .pager li > span:focus,
  fieldset[disabled]
  .pager li > span:active,
  fieldset[disabled]
  .pager li > span.active {
    background-color: #f1f1f1;
    border-color: #bbb; }
  .pager li > a > .i,
  .pager li > span > .i {
    font-size: 18px;
    vertical-align: top;
    margin: 2px 0; }

.pager li a:active {
  background-image: none;
  -webkit-box-shadow: inset 0 3px 5px rgba(3, 3, 3, 0.125);
  box-shadow: inset 0 3px 5px rgba(3, 3, 3, 0.125);
  outline: 0; }

.pager .disabled > a,
.pager .disabled > a:hover,
.pager .disabled > a:focus,
.pager .disabled > a:active,
.pager .disabled > span {
  background: #f5f5f5;
  -webkit-box-shadow: none;
  box-shadow: none;
  color: #8b8d8f;
  cursor: not-allowed; }

.pager .next > a > .i,
.pager .next > span > .i {
  margin-left: 5px; }

.pager .previous > a > .i,
.pager .previous > span > .i {
  margin-right: 5px; }

.pager-sm li > a,
.pager-sm li > span {
  font-weight: 400;
  line-height: 16px;
  padding: 1px 10px; }
  .pager-sm li > a > .i,
  .pager-sm li > span > .i {
    font-size: 12px; }

.pagination > li > a,
.pagination > li > span {
  background-color: #f1f1f1;
  background-image: -webkit-linear-gradient(top, #fafafa 0%, #ededed 100%);
  background-image: -o-linear-gradient(top, #fafafa 0%, #ededed 100%);
  background-image: linear-gradient(to bottom, #fafafa 0%, #ededed 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFFAFAFA', endColorstr='#FFEDEDED', GradientType=0);
  background-repeat: repeat-x;
  border-color: #bbb;
  color: #4d5258;
  cursor: default;
  font-weight: 600;
  padding: 2px 10px; }
  .pagination > li > a:hover, .pagination > li > a:focus, .pagination > li > a:active, .pagination > li > a.active,
  .pagination > li > a .open .dropdown-toggle.pagination > li > a, .pagination > li > a .pagination > li > span,
  .pagination > li > span:hover,
  .pagination > li > span:focus,
  .pagination > li > span:active,
  .pagination > li > span.active,
  .pagination > li > span .open .dropdown-toggle.pagination > li > a,
  .pagination > li > span .pagination > li > span {
    background-color: #f1f1f1;
    background-image: none;
    border-color: #bbb;
    color: #4d5258; }
  .pagination > li > a:active, .pagination > li > a.active,
  .pagination > li > a .open .dropdown-toggle.pagination > li > a, .pagination > li > a .pagination > li > span,
  .pagination > li > span:active,
  .pagination > li > span.active,
  .pagination > li > span .open .dropdown-toggle.pagination > li > a,
  .pagination > li > span .pagination > li > span {
    background-image: none; }
    .pagination > li > a:active:hover, .pagination > li > a:active:focus, .pagination > li > a:active.focus, .pagination > li > a.active:hover, .pagination > li > a.active:focus, .pagination > li > a.active.focus,
    .pagination > li > a .open .dropdown-toggle.pagination > li > a:hover,
    .pagination > li > a .open .dropdown-toggle.pagination > li > a:focus,
    .pagination > li > a .open .dropdown-toggle.pagination > li > a.focus, .pagination > li > a .pagination > li > span:hover, .pagination > li > a .pagination > li > span:focus, .pagination > li > a .pagination > li > span.focus,
    .pagination > li > span:active:hover,
    .pagination > li > span:active:focus,
    .pagination > li > span:active.focus,
    .pagination > li > span.active:hover,
    .pagination > li > span.active:focus,
    .pagination > li > span.active.focus,
    .pagination > li > span .open .dropdown-toggle.pagination > li > a:hover,
    .pagination > li > span .open .dropdown-toggle.pagination > li > a:focus,
    .pagination > li > span .open .dropdown-toggle.pagination > li > a.focus,
    .pagination > li > span .pagination > li > span:hover,
    .pagination > li > span .pagination > li > span:focus,
    .pagination > li > span .pagination > li > span.focus {
      background-color: #e5e5e5;
      border-color: darkgray; }
  .pagination > li > a.disabled, .pagination > li > a.disabled:hover, .pagination > li > a.disabled:focus, .pagination > li > a.disabled:active, .pagination > li > a.disabled.active, .pagination > li > a[disabled], .pagination > li > a[disabled]:hover, .pagination > li > a[disabled]:focus, .pagination > li > a[disabled]:active, .pagination > li > a[disabled].active,
  fieldset[disabled] .pagination > li > a,
  fieldset[disabled] .pagination > li > a:hover,
  fieldset[disabled] .pagination > li > a:focus,
  fieldset[disabled] .pagination > li > a:active,
  fieldset[disabled] .pagination > li > a.active,
  .pagination > li > span.disabled,
  .pagination > li > span.disabled:hover,
  .pagination > li > span.disabled:focus,
  .pagination > li > span.disabled:active,
  .pagination > li > span.disabled.active,
  .pagination > li > span[disabled],
  .pagination > li > span[disabled]:hover,
  .pagination > li > span[disabled]:focus,
  .pagination > li > span[disabled]:active,
  .pagination > li > span[disabled].active,
  fieldset[disabled]
  .pagination > li > span,
  fieldset[disabled]
  .pagination > li > span:hover,
  fieldset[disabled]
  .pagination > li > span:focus,
  fieldset[disabled]
  .pagination > li > span:active,
  fieldset[disabled]
  .pagination > li > span.active {
    background-color: #f1f1f1;
    border-color: #bbb; }
  .pagination > li > a > .i,
  .pagination > li > span > .i {
    font-size: 15px;
    vertical-align: top;
    margin: 2px 0; }

.pagination > li > a:active,
.pagination > li > span:active {
  -webkit-box-shadow: inset 0 2px 8px rgba(3, 3, 3, 0.2);
  box-shadow: inset 0 2px 8px rgba(3, 3, 3, 0.2); }

.pagination > .active > a, .pagination > .active > a:hover, .pagination > .active > a:focus,
.pagination > .active > span,
.pagination > .active > span:hover,
.pagination > .active > span:focus {
  background-color: #f1f1f1;
  border-color: #bbb;
  -webkit-box-shadow: inset 0 2px 8px rgba(3, 3, 3, 0.2);
  box-shadow: inset 0 2px 8px rgba(3, 3, 3, 0.2);
  color: #4d5258;
  background-image: -webkit-linear-gradient(top, #fafafa 0%, #ededed 100%);
  background-image: -o-linear-gradient(top, #fafafa 0%, #ededed 100%);
  background-image: linear-gradient(to bottom, #fafafa 0%, #ededed 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFFAFAFA', endColorstr='#FFEDEDED', GradientType=0);
  background-repeat: repeat-x; }

.pagination > .disabled > span,
.pagination > .disabled > span:hover,
.pagination > .disabled > span:focus,
.pagination > .disabled > a,
.pagination > .disabled > a:hover,
.pagination > .disabled > a:focus {
  -webkit-box-shadow: none;
  box-shadow: none;
  cursor: not-allowed;
  background-image: -webkit-linear-gradient(top, #fafafa 0%, #ededed 100%);
  background-image: -o-linear-gradient(top, #fafafa 0%, #ededed 100%);
  background-image: linear-gradient(to bottom, #fafafa 0%, #ededed 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFFAFAFA', endColorstr='#FFEDEDED', GradientType=0);
  background-repeat: repeat-x; }

.pagination-sm > li > a,
.pagination-sm > li > span {
  padding: 2px 6px;
  font-size: 11px;
  line-height: 1.5; }

.pagination-sm > li:first-child > a,
.pagination-sm > li:first-child > span {
  border-top-left-radius: 1px;
  border-bottom-left-radius: 1px; }

.pagination-sm > li:last-child > a,
.pagination-sm > li:last-child > span {
  border-top-right-radius: 1px;
  border-bottom-right-radius: 1px; }

.pagination-sm > li > a,
.pagination-sm > li > span {
  font-weight: 400; }
  .pagination-sm > li > a > .i,
  .pagination-sm > li > span > .i {
    font-size: 12px;
    margin-top: 2px; }

.content-view-pf-pagination {
  background-color: #f5f5f5;
  border: 1px solid #d1d1d1;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between; }
  .content-view-pf-pagination.table-view-pf-pagination {
    border-top: none; }
  .content-view-pf-pagination .form-group {
    align-items: baseline;
    display: flex;
    flex-grow: 1;
    float: left;
    margin: 5px; }
    @supports (display: flex) {
      .content-view-pf-pagination .form-group {
        float: none; } }
    .content-view-pf-pagination .form-group:last-child {
      justify-content: flex-end;
      float: right; }
      @supports (display: flex) {
        .content-view-pf-pagination .form-group:last-child {
          float: none; } }
    .content-view-pf-pagination .form-group .pagination-pf-pagesize.bootstrap-select.btn-group,
    .content-view-pf-pagination .form-group .pagination-pf-pagesize.btn-group {
      display: flex;
      float: none;
      margin-bottom: 0;
      margin-left: 0;
      margin-right: 5px;
      width: auto; }
    .content-view-pf-pagination .form-group .dropdown-menu {
      min-width: auto; }
  .content-view-pf-pagination .pagination-pf-page {
    margin-left: 10px;
    margin-right: 5px;
    padding: 0 2px 2px;
    text-align: right;
    width: 2.5em; }
  .content-view-pf-pagination .pagination {
    display: flex;
    margin: 0 0 0 10px; }
    .content-view-pf-pagination .pagination a {
      float: none; }
      @supports (display: flex) {
        .content-view-pf-pagination .pagination a {
          display: block; } }

.panel-title {
  font-weight: 700; }

.panel-group .panel {
  color: #4d5258; }
  .panel-group .panel + .panel {
    margin-top: -1px; }

.panel-group .panel-default {
  border-color: #bbb;
  border-top-color: #bbb; }
  .panel-group .panel-default .panel-heading {
    background-image: -webkit-linear-gradient(top, #fafafa 0%, #ededed 100%);
    background-image: -o-linear-gradient(top, #fafafa 0%, #ededed 100%);
    background-image: linear-gradient(to bottom, #fafafa 0%, #ededed 100%);
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFFAFAFA', endColorstr='#FFEDEDED', GradientType=0);
    background-repeat: repeat-x; }
    .panel-group .panel-default .panel-heading + .panel-collapse .panel-body {
      border-top: 1px solid #d1d1d1; }

.panel-group .panel-info {
  border-color: #00659c; }
  .panel-group .panel-info .panel-heading {
    background-color: #dae5f4; }
  .panel-group .panel-info + .panel-default {
    border-top-color: #00659c; }

.panel-group .panel-primary {
  border-color: #39a5dc; }
  .panel-group .panel-primary .panel-heading {
    background-color: #def0f9; }
  .panel-group .panel-primary + .panel-default {
    border-top-color: #39a5dc; }
  .panel-group .panel-primary + .panel-info {
    border-top-color: #39a5dc; }

.panel-group .panel-success {
  border-color: #3f9c35; }
  .panel-group .panel-success .panel-heading {
    background-color: #e9f4e9; }
  .panel-group .panel-success + .panel-default {
    border-top-color: #3f9c35; }
  .panel-group .panel-success + .panel-info {
    border-top-color: #3f9c35; }
  .panel-group .panel-success + .panel-primary {
    border-top-color: #3f9c35; }

.panel-group .panel-warning {
  border-color: #ec7a08; }
  .panel-group .panel-warning .panel-heading {
    background-color: #fdf2e5; }
  .panel-group .panel-warning + .panel-default {
    border-top-color: #ec7a08; }
  .panel-group .panel-warning + .panel-info {
    border-top-color: #ec7a08; }
  .panel-group .panel-warning + .panel-primary {
    border-top-color: #ec7a08; }
  .panel-group .panel-warning + .panel-success {
    border-top-color: #ec7a08; }

.panel-group .panel-danger {
  border-color: #cc0000; }
  .panel-group .panel-danger .panel-heading {
    background-color: #ffe6e6; }
  .panel-group .panel-danger + .panel-default {
    border-top-color: #cc0000; }
  .panel-group .panel-danger + .panel-info {
    border-top-color: #cc0000; }
  .panel-group .panel-danger + .panel-primary {
    border-top-color: #cc0000; }
  .panel-group .panel-danger + .panel-success {
    border-top-color: #cc0000; }
  .panel-group .panel-danger + .panel-warning {
    border-top-color: #cc0000; }

.panel-group .panel-title {
  font-weight: 500;
  line-height: 1; }
  .panel-group .panel-title > a {
    color: #4d5258;
    font-weight: 600; }
    .panel-group .panel-title > a:before {
      content: "\f107";
      display: inline-block;
      font-family: "FontAwesome";
      font-size: 13px;
      margin-right: 5px;
      text-align: center;
      vertical-align: 0;
      width: 8px; }
    .panel-group .panel-title > a:focus {
      outline: none;
      text-decoration: none; }
    .panel-group .panel-title > a:hover {
      text-decoration: none; }
    .panel-group .panel-title > a.collapsed:before {
      content: "\f105"; }

.popover {
  -webkit-box-shadow: 0 2px 2px rgba(3, 3, 3, 0.08);
  box-shadow: 0 2px 2px rgba(3, 3, 3, 0.08);
  padding: 0; }
  .popover.bottom .popover-title:before {
    content: "";
    position: absolute;
    top: -20px;
    left: 50%;
    transform: translateX(-50%);
    border-top-width: 0;
    border-width: 10px;
    border-color: transparent;
    border-bottom-color: #f5f5f5;
    border-style: solid; }

.popover-content {
  color: #4d5258;
  line-height: 18px;
  padding: 10px 14px; }

.popover-title {
  border-bottom: none;
  border-radius: 0;
  color: #4d5258;
  font-size: 13px;
  font-weight: 700;
  min-height: 34px; }
  .popover-title .close {
    height: 22px;
    position: absolute;
    right: 8px;
    top: 6px; }
  .popover-title.closable {
    padding-right: 30px; }

.popover-pf-info {
  color: #292e34; }
  .popover-pf-info:hover, .popover-pf-info:active {
    color: #00659c; }

@keyframes progress-bar-stripes {
  from {
    background-position: 0 0; }
  to {
    background-position: 40px 0; } }

.progress {
  -webkit-box-shadow: inset 0 0 1px rgba(3, 3, 3, 0.25);
  box-shadow: inset 0 0 1px rgba(3, 3, 3, 0.25); }
  .progress.progress-label-left, .progress.progress-label-top-right {
    overflow: visible;
    position: relative; }
  .progress.progress-label-left {
    margin-left: 40px; }
  .progress.progress-sm {
    height: 14px;
    margin-bottom: 14px; }
  .progress.progress-xs {
    height: 6px;
    margin-bottom: 6px; }
  td > .progress:first-child:last-child {
    margin-bottom: 0;
    margin-top: 3px; }

.progress-bar {
  box-shadow: none; }
  .progress-label-left .progress-bar span,
  .progress-label-right .progress-bar span,
  .progress-label-top-right .progress-bar span {
    color: #363636;
    position: absolute;
    text-align: right; }
  .progress-label-left .progress-bar span {
    font-size: 14px;
    left: -40px;
    top: 0;
    width: 35px; }
  .progress-label-right .progress-bar span,
  .progress-label-top-right .progress-bar span {
    font-size: 11px;
    overflow: hidden;
    right: 0;
    text-overflow: ellipsis;
    white-space: nowrap; }
    .progress-label-right .progress-bar span strong,
    .progress-label-top-right .progress-bar span strong {
      font-weight: 600; }
  .progress-label-right .progress-bar span {
    max-width: 85px;
    top: 0; }
  .progress-label-top-right .progress-bar span {
    max-width: 47%;
    top: -30px; }
  .progress-label-left.progress-sm .progress-bar span,
  .progress-label-top-right.progress-sm .progress-bar span {
    font-size: 12px; }
  .progress-sm .progress-bar {
    line-height: 14px; }
  .progress-xs .progress-bar {
    line-height: 6px; }

.progress-bar-remaining {
  background: transparent; }

.progress-container {
  position: relative; }
  .progress-container.progress-description-left {
    padding-left: 90px; }
  .progress-container.progress-label-right {
    padding-right: 90px; }

.progress-description {
  margin-bottom: 10px;
  max-width: 52%;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap; }
  .progress-description .count {
    font-size: 20.004px;
    font-weight: 300;
    line-height: 1;
    margin-right: 5px; }
  .progress-description .fa, .progress-description .fas, .progress-description .far, .progress-description .fab, .progress-description .fal,
  .progress-description .pficon {
    font-size: 14px;
    margin-right: 3px; }
  .progress-description-left .progress-description {
    left: 0;
    margin-bottom: 0;
    max-width: 85px;
    position: absolute;
    top: 0; }
  .progress-description .tooltip {
    white-space: normal; }

.table > thead > tr > th,
.table > thead > tr > td,
.table > tbody > tr > th,
.table > tbody > tr > td,
.table > tfoot > tr > th,
.table > tfoot > tr > td {
  padding: 2px 10px 3px; }
  .table > thead > tr > th > a:hover,
  .table > thead > tr > td > a:hover,
  .table > tbody > tr > th > a:hover,
  .table > tbody > tr > td > a:hover,
  .table > tfoot > tr > th > a:hover,
  .table > tfoot > tr > td > a:hover {
    text-decoration: none; }

.table > thead > tr > th,
.table > tbody > tr > th,
.table > tfoot > tr > th {
  font-family: "Open Sans";
  font-style: normal;
  font-weight: 600; }

.table > thead {
  background-clip: padding-box;
  background-color: #f5f5f5;
  background-image: -webkit-linear-gradient(top, #fafafa 0%, #ededed 100%);
  background-image: -o-linear-gradient(top, #fafafa 0%, #ededed 100%);
  background-image: linear-gradient(to bottom, #fafafa 0%, #ededed 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFFAFAFA', endColorstr='#FFEDEDED', GradientType=0);
  background-repeat: repeat-x; }

.table-bordered {
  border: 1px solid #d1d1d1; }
  .table-bordered > thead > tr > th,
  .table-bordered > thead > tr > td,
  .table-bordered > tbody > tr > th,
  .table-bordered > tbody > tr > td,
  .table-bordered > tfoot > tr > th,
  .table-bordered > tfoot > tr > td {
    border: 1px solid #d1d1d1; }
  .table-bordered > thead > tr > th,
  .table-bordered > thead > tr > td {
    border-bottom-width: 1px; }

.table-striped > tbody > tr:nth-of-type(even) {
  background-color: #f5f5f5; }

.table-striped > tbody > tr:nth-of-type(odd) {
  background-color: transparent; }

.table-hover > tbody > tr:hover > td,
.table-hover > tbody > tr:hover > th {
  background-color: #def3ff;
  border-bottom-color: #7dc3e8; }

.table-treegrid span.indent {
  margin-left: 10px;
  margin-right: 10px; }

.table-treegrid span.icon {
  display: inline-block;
  font-size: 13px;
  margin-right: 5px;
  min-width: 10px;
  text-align: center; }

.table-treegrid span.expand-icon, .table-treegrid span.collapse-icon {
  cursor: pointer; }

.table-treegrid > tbody > tr.odd {
  background-color: #f5f5f5; }

.nav-tabs {
  font-size: 14px; }
  .nav-tabs > li > a {
    color: #4d5258;
    margin-right: -1px;
    padding-bottom: 5px;
    padding-top: 5px; }
    .nav-tabs > li > a:active, .nav-tabs > li > a:focus, .nav-tabs > li > a:hover {
      background: transparent;
      border-color: #ededed;
      color: #252525; }
  .nav-tabs > li > .dropdown-menu {
    border-top: 0;
    border-color: #ededed; }
    .nav-tabs > li > .dropdown-menu.pull-right {
      right: -1px; }
  .nav-tabs + .nav-tabs-pf, .nav-tabs.nav-tabs-pf-secondary {
    font-size: 12px; }
    .nav-tabs + .nav-tabs-pf > li:first-child > a, .nav-tabs.nav-tabs-pf-secondary > li:first-child > a {
      padding-left: 15px; }
      .nav-tabs + .nav-tabs-pf > li:first-child > a:before, .nav-tabs.nav-tabs-pf-secondary > li:first-child > a:before {
        left: 15px !important; }
  .nav-tabs .open > a, .nav-tabs .open > a:hover, .nav-tabs .open > a:focus {
    background-color: transparent;
    border-color: #ededed; }

@media (min-width: 768px) {
  .nav-tabs-pf.nav-justified {
    border-bottom: 1px solid #ededed; } }

.nav-tabs-pf.nav-justified > li:first-child > a {
  padding-left: 15px; }

.nav-tabs-pf.nav-justified > li > a {
  border-bottom: 0; }
  .nav-tabs-pf.nav-justified > li > a:before {
    left: 0 !important;
    right: 0 !important; }

.nav-tabs-pf > li {
  margin-bottom: 0; }
  .nav-tabs-pf > li.active > a:before {
    background: #0088ce;
    bottom: -1px;
    content: "";
    display: block;
    height: 2px;
    left: 15px;
    position: absolute;
    right: 15px; }
  .nav-tabs-pf > li.active > a, .nav-tabs-pf > li.active > a:active, .nav-tabs-pf > li.active > a:focus, .nav-tabs-pf > li.active > a:hover {
    background-color: transparent;
    border: 0 !important;
    color: #0088ce; }
    .nav-tabs-pf > li.active > a:before, .nav-tabs-pf > li.active > a:active:before, .nav-tabs-pf > li.active > a:focus:before, .nav-tabs-pf > li.active > a:hover:before {
      background: #0088ce; }
  .nav-tabs-pf > li:first-child > a {
    padding-left: 0; }
    .nav-tabs-pf > li:first-child > a:before {
      left: 0 !important; }
  .nav-tabs-pf > li > a {
    border: 0;
    line-height: 1;
    margin-right: 0;
    padding-bottom: 10px;
    padding-top: 10px; }
    .nav-tabs-pf > li > a:active:before, .nav-tabs-pf > li > a:focus:before, .nav-tabs-pf > li > a:hover:before {
      background: #bbb;
      bottom: -1px;
      content: "";
      display: block;
      height: 2px;
      left: 15px;
      position: absolute;
      right: 15px; }
  .nav-tabs-pf > li > .dropdown-menu {
    left: 15px;
    margin-top: 1px; }
    .nav-tabs-pf > li > .dropdown-menu.pull-right {
      left: auto;
      right: 15px; }

.nav-tabs-pf .open > a, .nav-tabs-pf .open > a:hover, .nav-tabs-pf .open > a:focus {
  background-color: transparent; }

.tooltip {
  font-size: 12px;
  line-height: 1.4; }

.tooltip-inner {
  padding: 7px 12px;
  text-align: left; }

h1,
.h1,
h2,
.h2 {
  font-weight: 300; }

.page-header .actions {
  margin-top: 8px; }
  .page-header .actions a > .pficon {
    margin-right: 4px; }

@media (min-width: 767px) {
  .page-header-bleed-left {
    margin-left: -20px; }
  .page-header-bleed-right {
    margin-right: -20px; }
    .page-header-bleed-right .actions {
      margin-right: 20px; } }

.about-modal-pf {
  background-color: #292e34;
  background-image: url("${url.resourcesPath}/images/bg-modal-about-pf.png");
  background-position: right bottom;
  background-repeat: no-repeat;
  background-size: 216px auto; }
  @media (min-width: 768px) {
    .about-modal-pf {
      background-size: auto; } }
  .about-modal-pf .modal-body {
    color: #fff;
    padding-bottom: 16px;
    padding-left: 40px;
    padding-right: 40px; }
    @media (min-width: 768px) {
      .about-modal-pf .modal-body {
        padding-left: 80px;
        padding-right: 80px; } }
  .about-modal-pf .modal-header {
    background-color: transparent; }
  .about-modal-pf .pficon-close {
    color: #fff; }

.product-versions-pf {
  margin-bottom: 30px;
  margin-top: 30px; }
  .product-versions-pf li strong {
    margin-right: 10px; }

.trademark-pf {
  font-size: 11px; }

.applauncher-pf {
  display: inline-block;
  overflow: visible; }
  .applauncher-pf .applauncher-pf-title {
    position: absolute;
    width: 1px;
    height: 1px;
    margin: -1px;
    padding: 0;
    overflow: hidden;
    clip: rect(0, 0, 0, 0);
    border: 0; }
  .applauncher-pf .dropdown-toggle.disabled {
    cursor: not-allowed; }
  .applauncher-pf.open > .dropdown-menu {
    display: flex;
    flex-wrap: wrap; }
  .applauncher-pf .applauncher-pf-item {
    width: 100%; }
  .applauncher-pf .applauncher-pf-link {
    display: flex;
    white-space: initial;
    align-items: center; }
  @media (min-width: 768px) {
    .applauncher-pf-block-list .applauncher-pf-item {
      flex: 0 0 50%; } }
  .applauncher-pf-block-list .applauncher-pf-link {
    flex-wrap: wrap; }
    @media (min-width: 768px) {
      .applauncher-pf-block-list .applauncher-pf-link {
        flex-direction: column;
        text-align: center;
        padding: 15px 0; } }
  .applauncher-pf-block-list .applauncher-pf-link-icon {
    padding: 0; }
  @media (min-width: 768px) {
    .applauncher-pf:not(.applauncher-pf-block-list) .applauncher-pf-link {
      padding: 9px; }
      .applauncher-pf:not(.applauncher-pf-block-list) .applauncher-pf-link-icon {
        flex: 1 0 0;
        text-align: left; }
      .applauncher-pf:not(.applauncher-pf-block-list) .applauncher-pf-link-title {
        flex: 3; } }
  .applauncher-pf .dropdown-menu {
    padding: 9px;
    min-width: 220px; }
  .applauncher-pf .applauncher-pf-link {
    border-style: solid;
    border-width: 1px;
    border-color: transparent; }
    .applauncher-pf .applauncher-pf-link:hover {
      background-color: #f5f5f5;
      border-color: #bbb;
      color: #0088ce;
      text-decoration: none;
      -webkit-box-shadow: 0 0 2px 0 #d1d1d1;
      box-shadow: 0 0 2px 0 #d1d1d1; }
  .applauncher-pf .applauncher-pf-link-icon {
    font-size: 1.2em;
    text-align: center;
    width: 1.28571em; }
    @media (min-width: 768px) {
      .applauncher-pf .applauncher-pf-link-icon {
        font-size: 2em; } }

.navbar-utility .applauncher-pf .dropdown-menu {
  border-width: 1px !important; }
  @media (min-width: 768px) {
    .navbar-utility .applauncher-pf .dropdown-menu {
      margin-top: 3px;
      right: 0; } }

.navbar-pf .navbar-utility .applauncher-pf.open > a,
.navbar-pf .navbar-utility .applauncher-pf.open > a:focus, .navbar-pf .applauncher-pf.open > a,
.navbar-pf .applauncher-pf.open > a:focus, .navbar-pf-alt .navbar-utility .applauncher-pf.open > a,
.navbar-pf-alt .navbar-utility .applauncher-pf.open > a:focus, .navbar-pf-alt .applauncher-pf.open > a,
.navbar-pf-alt .applauncher-pf.open > a:focus {
  background-color: #232323;
  color: #f5f5f5; }
  @media (min-width: 768px) {
    .navbar-pf .navbar-utility .applauncher-pf.open > a,
    .navbar-pf .navbar-utility .applauncher-pf.open > a:focus, .navbar-pf .applauncher-pf.open > a,
    .navbar-pf .applauncher-pf.open > a:focus, .navbar-pf-alt .navbar-utility .applauncher-pf.open > a,
    .navbar-pf-alt .navbar-utility .applauncher-pf.open > a:focus, .navbar-pf-alt .applauncher-pf.open > a,
    .navbar-pf-alt .applauncher-pf.open > a:focus {
      background-color: #363636;
      border-color: #2b2b2b;
      color: #d1d1d1; } }

@media (max-width: 767px) {
  .navbar-pf .navbar-utility .applauncher-pf.open .dropdown-menu > li > a, .navbar-pf .applauncher-pf.open .dropdown-menu > li > a, .navbar-pf-alt .navbar-utility .applauncher-pf.open .dropdown-menu > li > a, .navbar-pf-alt .applauncher-pf.open .dropdown-menu > li > a {
    padding-left: 20px; }
    .navbar-pf .navbar-utility .applauncher-pf.open .dropdown-menu > li > a .applauncher-pf-link-icon, .navbar-pf .applauncher-pf.open .dropdown-menu > li > a .applauncher-pf-link-icon, .navbar-pf-alt .navbar-utility .applauncher-pf.open .dropdown-menu > li > a .applauncher-pf-link-icon, .navbar-pf-alt .applauncher-pf.open .dropdown-menu > li > a .applauncher-pf-link-icon {
      padding-right: 20px; } }

.navbar-pf .navbar-utility .applauncher-pf.dropdown > .dropdown-toggle,
.navbar-pf .navbar-utility .applauncher-pf .dropdown-toggle, .navbar-pf .applauncher-pf.dropdown > .dropdown-toggle,
.navbar-pf .applauncher-pf .dropdown-toggle, .navbar-pf-alt .navbar-utility .applauncher-pf.dropdown > .dropdown-toggle,
.navbar-pf-alt .navbar-utility .applauncher-pf .dropdown-toggle, .navbar-pf-alt .applauncher-pf.dropdown > .dropdown-toggle,
.navbar-pf-alt .applauncher-pf .dropdown-toggle {
  background-color: inherit;
  color: #d1d1d1;
  text-align: left;
  text-decoration: none;
  border-width: 0;
  display: block;
  padding-left: 20px; }
  .navbar-pf .navbar-utility .applauncher-pf.dropdown > .dropdown-toggle.disabled,
  .navbar-pf .navbar-utility .applauncher-pf .dropdown-toggle.disabled, .navbar-pf .applauncher-pf.dropdown > .dropdown-toggle.disabled,
  .navbar-pf .applauncher-pf .dropdown-toggle.disabled, .navbar-pf-alt .navbar-utility .applauncher-pf.dropdown > .dropdown-toggle.disabled,
  .navbar-pf-alt .navbar-utility .applauncher-pf .dropdown-toggle.disabled, .navbar-pf-alt .applauncher-pf.dropdown > .dropdown-toggle.disabled,
  .navbar-pf-alt .applauncher-pf .dropdown-toggle.disabled {
    color: #8b8d8f !important; }
  @media (min-width: 768px) {
    .navbar-pf .navbar-utility .applauncher-pf.dropdown > .dropdown-toggle,
    .navbar-pf .navbar-utility .applauncher-pf .dropdown-toggle, .navbar-pf .applauncher-pf.dropdown > .dropdown-toggle,
    .navbar-pf .applauncher-pf .dropdown-toggle, .navbar-pf-alt .navbar-utility .applauncher-pf.dropdown > .dropdown-toggle,
    .navbar-pf-alt .navbar-utility .applauncher-pf .dropdown-toggle, .navbar-pf-alt .applauncher-pf.dropdown > .dropdown-toggle,
    .navbar-pf-alt .applauncher-pf .dropdown-toggle {
      border-left: 1px solid #2b2b2b;
      padding: 7px 10px;
      line-height: 1; } }

.navbar-pf .navbar-utility .applauncher-pf .applauncher-pf-icon, .navbar-pf .applauncher-pf .applauncher-pf-icon, .navbar-pf-alt .navbar-utility .applauncher-pf .applauncher-pf-icon, .navbar-pf-alt .applauncher-pf .applauncher-pf-icon {
  padding-right: 4px; }
  @media (min-width: 768px) {
    .navbar-pf .navbar-utility .applauncher-pf .applauncher-pf-icon, .navbar-pf .applauncher-pf .applauncher-pf-icon, .navbar-pf-alt .navbar-utility .applauncher-pf .applauncher-pf-icon, .navbar-pf-alt .applauncher-pf .applauncher-pf-icon {
      padding: 0; } }

.navbar-pf .navbar-utility .applauncher-pf .applauncher-pf-title, .navbar-pf .applauncher-pf .applauncher-pf-title, .navbar-pf-alt .navbar-utility .applauncher-pf .applauncher-pf-title, .navbar-pf-alt .applauncher-pf .applauncher-pf-title {
  display: inline;
  position: relative; }

.navbar-pf .navbar-utility .applauncher-pf .applauncher-pf-link, .navbar-pf .applauncher-pf .applauncher-pf-link, .navbar-pf-alt .navbar-utility .applauncher-pf .applauncher-pf-link, .navbar-pf-alt .applauncher-pf .applauncher-pf-link {
  overflow: hidden;
  width: 100%; }
  .navbar-pf .navbar-utility .applauncher-pf .applauncher-pf-link:hover, .navbar-pf .applauncher-pf .applauncher-pf-link:hover, .navbar-pf-alt .navbar-utility .applauncher-pf .applauncher-pf-link:hover, .navbar-pf-alt .applauncher-pf .applauncher-pf-link:hover {
    background-color: transparent;
    border-color: transparent;
    -webkit-box-shadow: none;
    box-shadow: none; }

.navbar-pf .navbar-utility .applauncher-pf .applauncher-pf-link-title, .navbar-pf .applauncher-pf .applauncher-pf-link-title, .navbar-pf-alt .navbar-utility .applauncher-pf .applauncher-pf-link-title, .navbar-pf-alt .applauncher-pf .applauncher-pf-link-title {
  overflow: hidden; }

@media (min-width: 768px) {
  .navbar-pf .navbar-utility .applauncher-pf, .navbar-pf .applauncher-pf, .navbar-pf-alt .navbar-utility .applauncher-pf, .navbar-pf-alt .applauncher-pf {
    display: inline-block;
    overflow: visible; }
    .navbar-pf .navbar-utility .applauncher-pf .applauncher-pf-title, .navbar-pf .applauncher-pf .applauncher-pf-title, .navbar-pf-alt .navbar-utility .applauncher-pf .applauncher-pf-title, .navbar-pf-alt .applauncher-pf .applauncher-pf-title {
      position: absolute;
      width: 1px;
      height: 1px;
      margin: -1px;
      padding: 0;
      overflow: hidden;
      clip: rect(0, 0, 0, 0);
      border: 0; }
    .navbar-pf .navbar-utility .applauncher-pf .dropdown-toggle.disabled, .navbar-pf .applauncher-pf .dropdown-toggle.disabled, .navbar-pf-alt .navbar-utility .applauncher-pf .dropdown-toggle.disabled, .navbar-pf-alt .applauncher-pf .dropdown-toggle.disabled {
      cursor: not-allowed; }
    .navbar-pf .navbar-utility .applauncher-pf.open > .dropdown-menu, .navbar-pf .applauncher-pf.open > .dropdown-menu, .navbar-pf-alt .navbar-utility .applauncher-pf.open > .dropdown-menu, .navbar-pf-alt .applauncher-pf.open > .dropdown-menu {
      display: flex;
      flex-wrap: wrap; }
    .navbar-pf .navbar-utility .applauncher-pf .applauncher-pf-item, .navbar-pf .applauncher-pf .applauncher-pf-item, .navbar-pf-alt .navbar-utility .applauncher-pf .applauncher-pf-item, .navbar-pf-alt .applauncher-pf .applauncher-pf-item {
      width: 100%; }
    .navbar-pf .navbar-utility .applauncher-pf .applauncher-pf-link, .navbar-pf .applauncher-pf .applauncher-pf-link, .navbar-pf-alt .navbar-utility .applauncher-pf .applauncher-pf-link, .navbar-pf-alt .applauncher-pf .applauncher-pf-link {
      display: flex;
      white-space: initial;
      align-items: center; } }
  @media (min-width: 768px) and (min-width: 768px) {
    .navbar-pf .navbar-utility .applauncher-pf-block-list .applauncher-pf-item, .navbar-pf .applauncher-pf-block-list .applauncher-pf-item, .navbar-pf-alt .navbar-utility .applauncher-pf-block-list .applauncher-pf-item, .navbar-pf-alt .applauncher-pf-block-list .applauncher-pf-item {
      flex: 0 0 50%; } }

@media (min-width: 768px) {
    .navbar-pf .navbar-utility .applauncher-pf-block-list .applauncher-pf-link, .navbar-pf .applauncher-pf-block-list .applauncher-pf-link, .navbar-pf-alt .navbar-utility .applauncher-pf-block-list .applauncher-pf-link, .navbar-pf-alt .applauncher-pf-block-list .applauncher-pf-link {
      flex-wrap: wrap; } }
    @media (min-width: 768px) and (min-width: 768px) {
      .navbar-pf .navbar-utility .applauncher-pf-block-list .applauncher-pf-link, .navbar-pf .applauncher-pf-block-list .applauncher-pf-link, .navbar-pf-alt .navbar-utility .applauncher-pf-block-list .applauncher-pf-link, .navbar-pf-alt .applauncher-pf-block-list .applauncher-pf-link {
        flex-direction: column;
        text-align: center;
        padding: 15px 0; } }

@media (min-width: 768px) {
    .navbar-pf .navbar-utility .applauncher-pf-block-list .applauncher-pf-link-icon, .navbar-pf .applauncher-pf-block-list .applauncher-pf-link-icon, .navbar-pf-alt .navbar-utility .applauncher-pf-block-list .applauncher-pf-link-icon, .navbar-pf-alt .applauncher-pf-block-list .applauncher-pf-link-icon {
      padding: 0; } }
  @media (min-width: 768px) and (min-width: 768px) {
    .navbar-pf .navbar-utility .applauncher-pf:not(.applauncher-pf-block-list) .applauncher-pf-link, .navbar-pf .applauncher-pf:not(.applauncher-pf-block-list) .applauncher-pf-link, .navbar-pf-alt .navbar-utility .applauncher-pf:not(.applauncher-pf-block-list) .applauncher-pf-link, .navbar-pf-alt .applauncher-pf:not(.applauncher-pf-block-list) .applauncher-pf-link {
      padding: 9px; }
      .navbar-pf .navbar-utility .applauncher-pf:not(.applauncher-pf-block-list) .applauncher-pf-link-icon, .navbar-pf .applauncher-pf:not(.applauncher-pf-block-list) .applauncher-pf-link-icon, .navbar-pf-alt .navbar-utility .applauncher-pf:not(.applauncher-pf-block-list) .applauncher-pf-link-icon, .navbar-pf-alt .applauncher-pf:not(.applauncher-pf-block-list) .applauncher-pf-link-icon {
        flex: 1 0 0;
        text-align: left; }
      .navbar-pf .navbar-utility .applauncher-pf:not(.applauncher-pf-block-list) .applauncher-pf-link-title, .navbar-pf .applauncher-pf:not(.applauncher-pf-block-list) .applauncher-pf-link-title, .navbar-pf-alt .navbar-utility .applauncher-pf:not(.applauncher-pf-block-list) .applauncher-pf-link-title, .navbar-pf-alt .applauncher-pf:not(.applauncher-pf-block-list) .applauncher-pf-link-title {
        flex: 3; } }

@media (min-width: 768px) {
    .navbar-pf .navbar-utility .applauncher-pf .dropdown-menu, .navbar-pf .applauncher-pf .dropdown-menu, .navbar-pf-alt .navbar-utility .applauncher-pf .dropdown-menu, .navbar-pf-alt .applauncher-pf .dropdown-menu {
      padding: 9px;
      min-width: 220px; }
    .navbar-pf .navbar-utility .applauncher-pf .applauncher-pf-link, .navbar-pf .applauncher-pf .applauncher-pf-link, .navbar-pf-alt .navbar-utility .applauncher-pf .applauncher-pf-link, .navbar-pf-alt .applauncher-pf .applauncher-pf-link {
      border-style: solid;
      border-width: 1px;
      border-color: transparent; }
      .navbar-pf .navbar-utility .applauncher-pf .applauncher-pf-link:hover, .navbar-pf .applauncher-pf .applauncher-pf-link:hover, .navbar-pf-alt .navbar-utility .applauncher-pf .applauncher-pf-link:hover, .navbar-pf-alt .applauncher-pf .applauncher-pf-link:hover {
        background-color: #f5f5f5;
        border-color: #bbb;
        color: #0088ce;
        text-decoration: none;
        -webkit-box-shadow: 0 0 2px 0 #d1d1d1;
        box-shadow: 0 0 2px 0 #d1d1d1; }
    .navbar-pf .navbar-utility .applauncher-pf .applauncher-pf-link-icon, .navbar-pf .applauncher-pf .applauncher-pf-link-icon, .navbar-pf-alt .navbar-utility .applauncher-pf .applauncher-pf-link-icon, .navbar-pf-alt .applauncher-pf .applauncher-pf-link-icon {
      font-size: 1.2em;
      text-align: center;
      width: 1.28571em; } }
    @media (min-width: 768px) and (min-width: 768px) {
      .navbar-pf .navbar-utility .applauncher-pf .applauncher-pf-link-icon, .navbar-pf .applauncher-pf .applauncher-pf-link-icon, .navbar-pf-alt .navbar-utility .applauncher-pf .applauncher-pf-link-icon, .navbar-pf-alt .applauncher-pf .applauncher-pf-link-icon {
        font-size: 2em; } }

@media (min-width: 768px) {
  .navbar-iconic .navbar-utility .applauncher-pf.dropdown > .dropdown-toggle,
  .navbar-iconic .navbar-utility .applauncher-pf .dropdown-toggle,
  .navbar-iconic .applauncher-pf.dropdown > .dropdown-toggle,
  .navbar-iconic .applauncher-pf .dropdown-toggle {
    padding: 22px 10px;
    line-height: inherit; } }

.blank-slate-pf {
  background-color: #f5f5f5;
  border: 1px solid #e3e3e3;
  border-radius: 1px;
  margin-bottom: 20px;
  padding: 30px;
  text-align: center; }
  @media (min-width: 768px) {
    .blank-slate-pf {
      padding: 60px 60px; } }
  @media (min-width: 992px) {
    .blank-slate-pf {
      padding: 90px 120px; } }
  .blank-slate-pf .blank-slate-pf-icon {
    color: #9c9c9c;
    font-size: 57.6px;
    line-height: 57.6px; }
  .blank-slate-pf .blank-slate-pf-main-action {
    margin-top: 20px; }
  .blank-slate-pf .blank-slate-pf-secondary-action {
    margin-top: 20px; }
    .blank-slate-pf .blank-slate-pf-secondary-action a {
      display: inline-block;
      padding: 5px 15px; }
      .blank-slate-pf .blank-slate-pf-secondary-action a + a:before {
        background-color: #8b8d8f;
        content: "";
        display: inline-block;
        height: 10px;
        left: calc(-15px - 2px);
        position: relative;
        width: 1px; }
  .blank-slate-pf button {
    margin-bottom: 5px; }
  .blank-slate-pf.blank-slate-content-pf {
    background: transparent;
    border: 0;
    padding: 0;
    margin: 20px; }

.combobox-container.combobox-selected .glyphicon-remove {
  display: inline-block; }

.combobox-container .caret {
  margin-left: 0; }

.combobox-container .combobox::-ms-clear {
  display: none; }

.combobox-container .dropdown-menu {
  margin-top: -1px;
  width: 100%; }

.combobox-container .glyphicon-remove {
  display: none;
  top: auto;
  width: 12px; }
  .combobox-container .glyphicon-remove:before {
    content: "\e60b";
    font-family: "PatternFlyIcons-webfont"; }

.combobox-container .input-group-addon {
  background-color: #f1f1f1;
  background-image: -webkit-linear-gradient(top, #fafafa 0%, #ededed 100%);
  background-image: -o-linear-gradient(top, #fafafa 0%, #ededed 100%);
  background-image: linear-gradient(to bottom, #fafafa 0%, #ededed 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFFAFAFA', endColorstr='#FFEDEDED', GradientType=0);
  background-repeat: repeat-x;
  border-color: #bbb;
  color: #4d5258;
  position: relative; }
  .combobox-container .input-group-addon:hover, .combobox-container .input-group-addon:focus, .combobox-container .input-group-addon:active, .combobox-container .input-group-addon.active,
  .combobox-container .input-group-addon .open .dropdown-toggle.combobox-container .input-group-addon {
    background-color: #f1f1f1;
    background-image: none;
    border-color: #bbb;
    color: #4d5258; }
  .combobox-container .input-group-addon:active, .combobox-container .input-group-addon.active,
  .combobox-container .input-group-addon .open .dropdown-toggle.combobox-container .input-group-addon {
    background-image: none; }
    .combobox-container .input-group-addon:active:hover, .combobox-container .input-group-addon:active:focus, .combobox-container .input-group-addon:active.focus, .combobox-container .input-group-addon.active:hover, .combobox-container .input-group-addon.active:focus, .combobox-container .input-group-addon.active.focus,
    .combobox-container .input-group-addon .open .dropdown-toggle.combobox-container .input-group-addon:hover,
    .combobox-container .input-group-addon .open .dropdown-toggle.combobox-container .input-group-addon:focus,
    .combobox-container .input-group-addon .open .dropdown-toggle.combobox-container .input-group-addon.focus {
      background-color: #e5e5e5;
      border-color: darkgray; }
  .combobox-container .input-group-addon.disabled, .combobox-container .input-group-addon.disabled:hover, .combobox-container .input-group-addon.disabled:focus, .combobox-container .input-group-addon.disabled:active, .combobox-container .input-group-addon.disabled.active, .combobox-container .input-group-addon[disabled], .combobox-container .input-group-addon[disabled]:hover, .combobox-container .input-group-addon[disabled]:focus, .combobox-container .input-group-addon[disabled]:active, .combobox-container .input-group-addon[disabled].active,
  fieldset[disabled] .combobox-container .input-group-addon,
  fieldset[disabled] .combobox-container .input-group-addon:hover,
  fieldset[disabled] .combobox-container .input-group-addon:focus,
  fieldset[disabled] .combobox-container .input-group-addon:active,
  fieldset[disabled] .combobox-container .input-group-addon.active {
    background-color: #f1f1f1;
    border-color: #bbb; }
  .combobox-container .input-group-addon:active {
    -webkit-box-shadow: inset 0 2px 8px rgba(3, 3, 3, 0.2);
    box-shadow: inset 0 2px 8px rgba(3, 3, 3, 0.2); }

.bootstrap-datepicker.form-control[readonly] {
  background-color: #fff;
  border-color: #bbb !important;
  color: #363636;
  -webkit-box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075);
  box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075); }
  .bootstrap-datepicker.form-control[readonly]:focus {
    border-color: #0088ce;
    outline: 0 !important;
    -webkit-box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075), 0 0 8px rgba(0, 136, 206, 0.6);
    box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075), 0 0 8px rgba(0, 136, 206, 0.6); }
  .bootstrap-datepicker.form-control[readonly]:focus {
    border-color: #0088ce !important; }
    .has-error .bootstrap-datepicker.form-control[readonly]:focus {
      border-color: #990000;
      -webkit-box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075), 0 0 6px #ff3333;
      box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075), 0 0 6px #ff3333; }
    .has-success .bootstrap-datepicker.form-control[readonly]:focus {
      border-color: #2b542c;
      -webkit-box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075), 0 0 6px #67b168;
      box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075), 0 0 6px #67b168; }
    .has-warning .bootstrap-datepicker.form-control[readonly]:focus {
      border-color: #bb6106;
      -webkit-box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075), 0 0 6px #faad60;
      box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075), 0 0 6px #faad60; }
  .bootstrap-datepicker.form-control[readonly]:hover {
    border-color: #7dc3e8 !important; }
    .has-error .bootstrap-datepicker.form-control[readonly]:hover {
      border-color: #990000 !important; }
    .has-success .bootstrap-datepicker.form-control[readonly]:hover {
      border-color: #2b542c !important; }
    .has-warning .bootstrap-datepicker.form-control[readonly]:hover {
      border-color: #bb6106 !important; }
  .has-error .bootstrap-datepicker.form-control[readonly] {
    border-color: #cc0000 !important; }
  .has-success .bootstrap-datepicker.form-control[readonly] {
    border-color: #3c763d !important; }
  .has-warning .bootstrap-datepicker.form-control[readonly] {
    border-color: #ec7a08 !important; }

.datepicker {
  border-radius: 1px; }
  .datepicker .datepicker-switch,
  .datepicker tfoot .clear,
  .datepicker tfoot .today {
    font-size: 14px;
    font-weight: 500; }
  .datepicker .next,
  .datepicker .prev {
    font-weight: 500; }
  .datepicker table tr td, .datepicker table tr th {
    border-radius: 1px; }
  .datepicker table tr td.active, .datepicker table tr td.active:hover, .datepicker table tr td.active.disabled, .datepicker table tr td.active.disabled:hover {
    background: #0088ce !important;
    color: #fff !important;
    text-shadow: none; }
  .datepicker table tr td.day:hover, .datepicker table tr td.day.focused {
    background: #def3ff; }
  .datepicker table tr td.selected, .datepicker table tr td.selected:hover, .datepicker table tr td.selected.disabled, .datepicker table tr td.selected.disabled:hover {
    text-shadow: none; }
  .datepicker table tr td span {
    border-radius: 1px; }
    .datepicker table tr td span.active, .datepicker table tr td span.active:hover, .datepicker table tr td span.active.disabled, .datepicker table tr td span.active.disabled:hover {
      background: #0088ce;
      text-shadow: none; }
    .datepicker table tr td span:hover {
      background: #def3ff; }
  .datepicker thead tr:first-child th:hover,
  .datepicker tfoot tr th:hover {
    background: #def3ff; }

.input-daterange input:first-child {
  border-radius: 1px 0 0 1px; }

.input-daterange input:last-child {
  border-radius: 0 1px 1px 0; }

.input-daterange .input-group-addon {
  background-color: #f1f1f1;
  border-color: #bbb;
  line-height: 1.66667;
  padding: 2px 6px; }

.bootstrap-select.btn-group.form-control {
  margin-bottom: 0; }

.bootstrap-select.btn-group .btn {
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s; }
  .bootstrap-select.btn-group .btn:hover {
    border-color: #7dc3e8; }
  .bootstrap-select.btn-group .btn .caret {
    margin-top: -4px; }
  .bootstrap-select.btn-group .btn:focus {
    border-color: #0088ce;
    outline: 0 !important;
    -webkit-box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075), 0 0 8px rgba(0, 136, 206, 0.6);
    box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075), 0 0 8px rgba(0, 136, 206, 0.6); }
  .has-error .bootstrap-select.btn-group .btn {
    border-color: #cc0000; }
    .has-error .bootstrap-select.btn-group .btn:focus {
      border-color: #990000;
      -webkit-box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075), 0 0 6px #ff3333;
      box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075), 0 0 6px #ff3333; }
  .has-success .bootstrap-select.btn-group .btn {
    border-color: #3c763d; }
    .has-success .bootstrap-select.btn-group .btn:focus {
      border-color: #2b542c;
      -webkit-box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075), 0 0 6px #67b168;
      box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075), 0 0 6px #67b168; }
  .has-warning .bootstrap-select.btn-group .btn {
    border-color: #ec7a08; }
    .has-warning .bootstrap-select.btn-group .btn:focus {
      border-color: #bb6106;
      -webkit-box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075), 0 0 6px #faad60;
      box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075), 0 0 6px #faad60; }

.bootstrap-select.btn-group .dropdown-menu > .active > a, .bootstrap-select.btn-group .dropdown-menu > .active > a:active {
  background-color: #def3ff !important;
  border-color: #bee1f4 !important;
  color: #363636 !important; }
  .bootstrap-select.btn-group .dropdown-menu > .active > a small, .bootstrap-select.btn-group .dropdown-menu > .active > a:active small {
    color: #9c9c9c !important; }

.bootstrap-select.btn-group .dropdown-menu > .disabled > a {
  color: #9c9c9c !important; }

.bootstrap-select.btn-group .dropdown-menu > .selected > a {
  background-color: #0088ce !important;
  border-color: #0088ce !important;
  color: #fff !important; }
  .bootstrap-select.btn-group .dropdown-menu > .selected > a small {
    color: rgba(255, 255, 255, 0.5) !important; }

.bootstrap-select.btn-group .dropdown-menu .divider {
  background: #ededed !important;
  margin: 4px 1px !important; }

.bootstrap-select.btn-group .dropdown-menu dt {
  color: #8b8d8f;
  font-weight: normal;
  padding: 1px 10px; }

.bootstrap-select.btn-group .dropdown-menu li > a.opt {
  padding: 1px 10px; }

.bootstrap-select.btn-group .dropdown-menu li a:active small {
  color: rgba(255, 255, 255, 0.5) !important; }

.bootstrap-select.btn-group .dropdown-menu li a:hover small, .bootstrap-select.btn-group .dropdown-menu li a:focus small {
  color: #9c9c9c; }

.bootstrap-select.btn-group .dropdown-menu li:not(.disabled) a:hover small,
.bootstrap-select.btn-group .dropdown-menu li:not(.disabled) a:focus small {
  color: #9c9c9c; }

.slider-tick-label-container {
  display: flex;
  justify-content: space-between;
  margin-left: 0 !important; }

.slider-tick-label {
  width: auto !important; }

.slider .tooltip {
  top: -10px; }

.slider-track {
  background-color: #ededed;
  box-shadow: inset 0 2px 3px rgba(0, 0, 0, 0.1), 0 0px 2px #ededed;
  border: 1px solid #bbb; }

.slider-selection {
  background-image: -webkit-linear-gradient(top, #0088ce 0%, #39a5dc 100%);
  background-image: -o-linear-gradient(top, #0088ce 0%, #39a5dc 100%);
  background-image: linear-gradient(to bottom, #0088ce 0%, #39a5dc 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FF0088CE', endColorstr='#FF39A5DC', GradientType=0);
  background-repeat: repeat-x; }

.slider-handle {
  width: 16px;
  height: 16px;
  border: 1px solid #bbb; }

.slider-tick {
  background-color: transparent !important;
  background-image: radial-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3) 2px, transparent 2px) !important;
  -webkit-box-shadow: none;
  box-shadow: none; }

.slider-pf {
  display: flex;
  align-items: center; }
  .slider-pf * {
    margin-right: 10px; }
    .slider-pf *:last-child {
      margin: 0; }
  .slider-pf .slider {
    width: auto;
    flex: 1 1 100%; }

.bootstrap-switch .bootstrap-switch-handle-off.bootstrap-switch-default,
.bootstrap-switch .bootstrap-switch-handle-on.bootstrap-switch-default {
  background: #fafafa; }

.bootstrap-switch .bootstrap-switch-label {
  background: #f1f1f1;
  box-shadow: 0 0 2px rgba(3, 3, 3, 0.4);
  background-image: -webkit-linear-gradient(top, #fafafa 0%, #ededed 100%);
  background-image: -o-linear-gradient(top, #fafafa 0%, #ededed 100%);
  background-image: linear-gradient(to bottom, #fafafa 0%, #ededed 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFFAFAFA', endColorstr='#FFEDEDED', GradientType=0);
  background-repeat: repeat-x;
  position: relative;
  z-index: 9; }

.bootstrap-touchspin .input-group-btn-vertical > .btn {
  padding-bottom: 6px;
  padding-top: 6px; }

.bootstrap-touchspin .input-group-btn-vertical .bootstrap-touchspin-down {
  border-bottom-right-radius: 1px; }

.bootstrap-touchspin .input-group-btn-vertical .bootstrap-touchspin-up {
  border-top-right-radius: 1px; }

.bootstrap-touchspin .input-group-btn-vertical i {
  font-size: 8px;
  left: 6px;
  top: 2px; }
  .bootstrap-touchspin .input-group-btn-vertical i.fa-angle-down, .bootstrap-touchspin .input-group-btn-vertical i.fa-angle-up {
    font-size: 12px;
    line-height: 12px;
    top: 0; }
  .bootstrap-touchspin .input-group-btn-vertical i.fa-angle-down, .bootstrap-touchspin .input-group-btn-vertical i.fa-angle-up {
    left: 7px; }

.treeview .list-group {
  border-top: 0; }

.treeview .list-group-item {
  background: transparent;
  border-bottom: 1px solid transparent !important;
  border-top: 1px solid transparent !important;
  cursor: default !important;
  margin-bottom: 0;
  overflow: hidden;
  padding: 0 10px;
  text-overflow: ellipsis;
  white-space: nowrap; }
  .treeview .list-group-item:hover {
    background: none !important; }
  .treeview .list-group-item.node-selected {
    background: none !important;
    border-color: transparent !important;
    color: inherit !important; }
  .treeview .list-group-item.node-check-changed span.node-icon,
  .treeview .list-group-item.node-check-changed span.text {
    color: #39a5dc; }

.treeview span.icon {
  display: inline-block;
  font-size: 13px;
  min-width: 10px;
  text-align: center; }
  .treeview span.icon > [class*="fa-angle"] {
    font-size: 15px; }
  .treeview span.icon.check-icon {
    margin-right: 10px; }
  .treeview span.icon.expand-icon {
    cursor: pointer !important; }

.treeview span.image {
  background-repeat: no-repeat;
  background-size: contain;
  display: inline-block;
  height: 1.19em;
  line-height: 1em;
  margin-right: 5px;
  vertical-align: middle;
  width: 12px; }

.treeview span.indent {
  margin-right: 5px; }

.treeview .node-disabled {
  color: #d1d1d1;
  cursor: not-allowed; }
  .treeview .node-disabled span.expand-icon {
    cursor: default !important; }

.treeview .node-hidden {
  display: none; }

.treeview-pf-hover .list-group-item {
  cursor: pointer !important; }
  .treeview-pf-hover .list-group-item:hover {
    background-color: #def3ff !important;
    border-color: #bee1f4 !important; }

.treeview-pf-select .list-group-item {
  cursor: pointer !important; }
  .treeview-pf-select .list-group-item.node-selected {
    background: #0088ce !important;
    border-color: #0088ce !important;
    color: #fff !important; }

.card-pf-view {
  border: 2px solid transparent; }
  .card-pf-view .card-pf-heading-kebab .dropdown-kebab-pf {
    margin-top: -3px; }
  .card-pf-view .card-pf-heading-kebab + .progress-pf-legend p {
    margin-bottom: 0; }
  .card-pf-view .card-pf-heading-kebab + .progress-pf-legend .progress {
    margin-bottom: 7px;
    margin-top: 16px; }
  .card-pf-view .card-pf-info {
    margin-top: 15px; }
    .card-pf-view .card-pf-info strong {
      font-size: 13px;
      margin-right: 10px; }
  .card-pf-view .card-pf-item {
    display: inline-block;
    font-size: 16px;
    padding: 0 13px 0 15px; }
    .card-pf-view .card-pf-item:first-child {
      padding-left: 0; }
    .card-pf-view .card-pf-item:last-child {
      padding-right: 0; }
    .card-pf-view .card-pf-item + .card-pf-item {
      border-left: 1px solid #d1d1d1; }
    .card-pf-view .card-pf-item .fa-check {
      color: #3f9c35; }
    .card-pf-view .card-pf-item .fa + .card-pf-item-text, .card-pf-view .card-pf-item .fas + .card-pf-item-text, .card-pf-view .card-pf-item .far + .card-pf-item-text, .card-pf-view .card-pf-item .fab + .card-pf-item-text, .card-pf-view .card-pf-item .fal + .card-pf-item-text,
    .card-pf-view .card-pf-item .pficon + .card-pf-item-text {
      margin-left: 10px; }
  .card-pf-view .card-pf-items {
    margin-top: 15px; }
  .card-pf-view .card-pf-title {
    font-size: 20px;
    font-weight: 300;
    margin-bottom: 0;
    margin-top: 15px; }
    .card-pf-view .card-pf-title .fa, .card-pf-view .card-pf-title .fas, .card-pf-view .card-pf-title .far, .card-pf-view .card-pf-title .fab, .card-pf-view .card-pf-title .fal,
    .card-pf-view .card-pf-title .pficon {
      font-size: 18px;
      margin-right: 2px; }
    .col-lg-2 .card-pf-view .card-pf-title {
      font-size: 16px; }
  .card-pf-view .card-pf-top-element .card-pf-icon-circle {
    border: 2px solid #39a5dc;
    border-radius: 50%;
    display: block;
    font-size: 46px;
    height: 106px;
    line-height: 102px;
    margin: 0 auto;
    text-align: center;
    width: 106px; }
    .col-lg-2 .card-pf-view .card-pf-top-element .card-pf-icon-circle {
      font-size: 23px;
      height: 54px;
      line-height: 50px;
      width: 54px; }
  .card-pf-view .card-pf-view-checkbox {
    position: absolute;
    top: 11px;
    left: 15px; }
    .card-pf-view .card-pf-view-checkbox input[type=checkbox] {
      display: none; }
  .card-pf-view.card-pf-view-multi-select .card-pf-view-checkbox input[type=checkbox] {
    display: block; }
    @media (min-width: 768px) {
      .card-pf-view.card-pf-view-multi-select .card-pf-view-checkbox input[type=checkbox] {
        visibility: hidden; }
        .card-pf-view.card-pf-view-multi-select .card-pf-view-checkbox input[type=checkbox]:checked {
          visibility: visible; } }
  .card-pf-view.card-pf-view-multi-select:hover .card-pf-view-checkbox input[type=checkbox] {
    visibility: visible; }
  .card-pf-view.card-pf-view-select {
    position: relative; }
    .card-pf-view.card-pf-view-select:hover {
      -webkit-box-shadow: 0 1px 6px rgba(3, 3, 3, 0.35);
      box-shadow: 0 1px 6px rgba(3, 3, 3, 0.35); }
    .card-pf-view.card-pf-view-select.active {
      border: 2px solid #39a5dc; }
  .card-pf-view.card-pf-view-single-select {
    cursor: pointer; }
  .card-pf-view.card-pf-view-xs .card-pf-title {
    font-size: 16px;
    font-weight: normal;
    margin-bottom: 10px; }
    .card-pf-view.card-pf-view-xs .card-pf-title .fa, .card-pf-view.card-pf-view-xs .card-pf-title .fas, .card-pf-view.card-pf-view-xs .card-pf-title .far, .card-pf-view.card-pf-view-xs .card-pf-title .fab, .card-pf-view.card-pf-view-xs .card-pf-title .fal,
    .card-pf-view.card-pf-view-xs .card-pf-title .pficon {
      font-size: 14px;
      margin-right: 5px; }

.card-pf {
  background: #fff;
  border-top: 2px solid transparent;
  -webkit-box-shadow: 0 1px 1px rgba(3, 3, 3, 0.175);
  box-shadow: 0 1px 1px rgba(3, 3, 3, 0.175);
  margin: 0 -10px 20px;
  padding: 0 20px; }
  .card-pf.card-pf-accented {
    border-top-color: #39a5dc; }
  .card-pf.card-pf-aggregate-status .card-pf-aggregate-status-notifications a,
  .card-pf.card-pf-aggregate-status .card-pf-title a {
    color: #363636; }
    .card-pf.card-pf-aggregate-status .card-pf-aggregate-status-notifications a.add,
    .card-pf.card-pf-aggregate-status .card-pf-title a.add {
      color: #0088ce; }
      .card-pf.card-pf-aggregate-status .card-pf-aggregate-status-notifications a.add:hover,
      .card-pf.card-pf-aggregate-status .card-pf-title a.add:hover {
        color: #00659c; }
    .card-pf.card-pf-aggregate-status .card-pf-aggregate-status-notifications a:hover,
    .card-pf.card-pf-aggregate-status .card-pf-title a:hover {
      color: #00659c; }
  .card-pf.card-pf-aggregate-status {
    padding: 0 10px;
    text-align: center; }
  .card-pf.card-pf-aggregate-status-mini {
    padding-bottom: 10px;
    position: relative; }
  @media (min-width: 768px) {
    .card-pf.card-pf-bleed-left {
      margin-left: -20px; }
    .card-pf.card-pf-bleed-right {
      border-right: 1px solid #d1d1d1;
      margin-right: -20px; } }

.card-pf-aggregate-status-notifications {
  font-size: 24px;
  font-weight: 300; }
  .card-pf-aggregate-status-mini .card-pf-aggregate-status-notifications {
    line-height: 1; }
  .card-pf-aggregate-status-notifications .card-pf-aggregate-status-notification + .card-pf-aggregate-status-notification {
    border-left: 1px solid #d1d1d1;
    margin-left: 3px;
    padding-left: 10px; }
  .card-pf-aggregate-status-notifications .fa, .card-pf-aggregate-status-notifications .fas, .card-pf-aggregate-status-notifications .far, .card-pf-aggregate-status-notifications .fab, .card-pf-aggregate-status-notifications .fal, .card-pf-aggregate-status-notifications .pficon {
    font-size: 18px;
    margin-right: 7px; }

.card-pf-body {
  margin: 20px 0 0;
  padding: 0 0 20px; }
  .card-pf-aggregate-status .card-pf-body {
    margin-top: 10px;
    padding-bottom: 10px; }
  .card-pf-aggregate-status-mini .card-pf-body {
    margin-bottom: 0;
    margin-top: 0;
    padding-bottom: 0;
    position: absolute;
    right: 20px;
    top: 15px; }
  .card-pf-utilization .card-pf-title + .card-pf-body {
    margin-top: -8px; }
  .card-pf-body > *:last-child {
    margin-bottom: 0; }

.card-pf-footer {
  background-color: #fafafa;
  border-top: 1px solid #d1d1d1;
  margin: 0 -20px !important;
  padding: 20px 20px 10px; }
  .card-pf-footer a > .fa, .card-pf-footer a > .fas, .card-pf-footer a > .far, .card-pf-footer a > .fab, .card-pf-footer a > .fal,
  .card-pf-footer a > .pficon {
    margin-right: 5px; }
  .card-pf-footer .card-pf-time-frame-filter {
    margin-top: -2px; }

.card-pf-link-with-icon {
  padding-left: 21px;
  position: relative; }
  .card-pf-link-with-icon .fa, .card-pf-link-with-icon .fas, .card-pf-link-with-icon .far, .card-pf-link-with-icon .fab, .card-pf-link-with-icon .fal,
  .card-pf-link-with-icon .pficon {
    font-size: 16px;
    left: 0;
    position: absolute;
    top: 0; }

.card-pf-heading .card-pf-time-frame-filter,
.card-pf-footer .card-pf-time-frame-filter {
  float: right;
  margin-left: 20px; }

.card-pf-heading {
  border-bottom: 1px solid #d1d1d1;
  margin: 0 -20px 20px;
  padding: 0 20px 0; }
  .card-pf-heading .card-pf-time-frame-filter {
    margin-top: -5px; }

.card-pf-heading-details {
  float: right;
  font-size: 10px; }

.card-pf-subtitle {
  font-size: 16px;
  margin-top: 20px;
  margin-bottom: 10px; }
  [class^="col"] .card-pf-subtitle {
    margin-top: 0; }
  @media (max-width: 767px) {
    .card-pf-body [class^="col"] + [class^="col"] > .card-pf-subtitle {
      margin-top: 40px; } }

.card-pf-title {
  font-size: 16px;
  font-weight: 400;
  margin: 20px 0;
  padding: 0; }
  .card-pf-aggregate-status .card-pf-title {
    font-size: 14px;
    margin: 10px 0 0; }
    .card-pf-aggregate-status .card-pf-title .fa, .card-pf-aggregate-status .card-pf-title .fas, .card-pf-aggregate-status .card-pf-title .far, .card-pf-aggregate-status .card-pf-title .fab, .card-pf-aggregate-status .card-pf-title .fal,
    .card-pf-aggregate-status .card-pf-title .pficon {
      color: #292e34;
      font-size: 16px;
      margin-right: 7px; }
  .card-pf-title .card-pf-aggregate-status-count {
    font-size: 16px; }
    .card-pf-aggregate-status-mini .card-pf-title .card-pf-aggregate-status-count {
      display: block;
      font-size: 24px;
      font-weight: 300;
      margin-bottom: 3px; }
  .card-pf-aggregate-status-mini .card-pf-title {
    font-size: 12px;
    margin-top: 5px; }
    .card-pf-aggregate-status-mini .card-pf-title a {
      display: inline-block; }
    .card-pf-aggregate-status-mini .card-pf-title .fa, .card-pf-aggregate-status-mini .card-pf-title .fas, .card-pf-aggregate-status-mini .card-pf-title .far, .card-pf-aggregate-status-mini .card-pf-title .fab, .card-pf-aggregate-status-mini .card-pf-title .fal,
    .card-pf-aggregate-status-mini .card-pf-title .pficon {
      font-size: 26px;
      margin-right: 0;
      min-width: 26px;
      position: absolute;
      left: 20px;
      text-align: center;
      top: 15px; }

.card-pf-utilization-details {
  border-bottom: 1px solid #d1d1d1;
  display: table;
  margin: 12px 0 15px;
  padding: 0 0 15px;
  width: 100%; }
  .card-pf-utilization-details .card-pf-utilization-card-details-count,
  .card-pf-utilization-details .card-pf-utilization-card-details-description {
    float: left;
    line-height: 1; }
  .card-pf-utilization-details .card-pf-utilization-card-details-count {
    font-size: 26px;
    font-weight: 300;
    margin-right: 10px; }
  .card-pf-utilization-details .card-pf-utilization-card-details-line-1,
  .card-pf-utilization-details .card-pf-utilization-card-details-line-2 {
    display: block; }
  .card-pf-utilization-details .card-pf-utilization-card-details-line-1 {
    font-size: 10px;
    margin-bottom: 2px; }

.cards-pf {
  background: #f5f5f5; }
  .cards-pf .row-cards-pf {
    padding: 0 20px; }
    .cards-pf .row-cards-pf:first-child {
      padding-top: 20px; }

.container-cards-pf {
  margin-top: 20px; }

.row-cards-pf {
  margin-left: -10px;
  margin-right: -10px; }

.bullet-chart-pf {
  display: flex;
  flex-direction: column; }
  .bullet-chart-pf.bullet-chart-pf-vertical {
    height: 100%;
    flex-direction: row; }

.bullet-chart-pf-chart {
  display: flex;
  flex: 1;
  flex-direction: row;
  width: 100%; }
  .bullet-chart-pf-vertical .bullet-chart-pf-chart {
    flex: initial;
    flex-direction: column-reverse;
    height: 100%;
    width: initial; }

.bullet-chart-pf-title-container {
  display: flex;
  flex-direction: column;
  justify-content: center;
  margin: 10px 0 25px;
  padding-right: 10px;
  text-align: right; }
  .bullet-chart-pf-vertical .bullet-chart-pf-title-container {
    margin-bottom: 0;
    padding-right: 0;
    text-align: center; }

.bullet-chart-pf-title {
  font-size: 14px; }

.bullet-chart-pf-details {
  color: #9c9c9c;
  font-size: 12px;
  line-height: 9px; }

.bullet-chart-pf-container {
  display: flex;
  flex-direction: column;
  flex: 5; }
  .bullet-chart-pf-vertical .bullet-chart-pf-container {
    flex-direction: row-reverse;
    flex: initial; }
    .bullet-chart-pf-vertical .bullet-chart-pf-container.show-axis {
      margin-left: -25px; }

.bullet-chart-pf-data-container {
  flex: 1;
  position: relative; }
  .bullet-chart-pf-vertical .bullet-chart-pf-data-container {
    height: initial; }

.bullet-chart-pf-vertical-data-container {
  display: flex;
  flex: 5;
  flex-direction: row;
  justify-content: center; }
  .bullet-chart-pf-vertical-data-container .bullet-chart-pf-data-container {
    flex: initial; }

.bullet-chart-pf-values-container {
  height: 20px;
  margin: 20px 0;
  position: relative; }
  .bullet-chart-pf-vertical .bullet-chart-pf-values-container {
    height: 100%;
    margin: 0 20px;
    width: 20px; }

.bullet-chart-pf-value-bar {
  height: 100%;
  position: absolute;
  transition: left 600ms ease; }
  .bullet-chart-pf-vertical .bullet-chart-pf-value-bar {
    bottom: 0;
    height: initial;
    top: initial;
    width: 100%; }

.bullet-chart-pf-value-dot {
  border-radius: 50%;
  border-style: solid;
  border-width: 0;
  height: 20px;
  transform: translateX(-50%);
  position: absolute;
  transition: left 600ms ease;
  width: 20px; }
  .bullet-chart-pf-vertical .bullet-chart-pf-value-dot {
    top: initial;
    transform: translateY(50%); }

.bullet-chart-pf-threshold-indicator {
  border: 0 solid #72767b;
  border-left-width: 1px;
  height: 100%;
  position: absolute;
  top: 0;
  z-index: 400; }
  .bullet-chart-pf-vertical .bullet-chart-pf-threshold-indicator {
    border-left-width: 0;
    border-top-width: 1px;
    height: 1px;
    left: 0;
    top: initial;
    width: 100%; }
  .bullet-chart-pf-threshold-indicator.error {
    border-color: #cc0000; }
  .bullet-chart-pf-threshold-indicator.warning {
    border-color: #ec7a08; }

.bullet-chart-pf-range-bar {
  height: 100%;
  left: 0;
  position: absolute;
  top: 0; }
  .bullet-chart-pf-vertical .bullet-chart-pf-range-bar {
    bottom: 0;
    height: initial;
    top: initial;
    width: 100%; }
  .bullet-chart-pf-range-bar.range-1 {
    background-color: #f5f5f5; }
  .bullet-chart-pf-range-bar.range-2 {
    background-color: #ededed; }
  .bullet-chart-pf-range-bar.range-3 {
    background-color: #dbdbdb; }

.bullet-chart-pf-axis {
  border-top: 1px solid #72767b;
  height: 25px;
  position: relative; }
  .bullet-chart-pf-vertical .bullet-chart-pf-axis {
    height: initial;
    width: 25px;
    border-right: 1px solid #72767b;
    border-top: 0; }
  .bullet-chart-pf-title-container .bullet-chart-pf-axis {
    border-top: 0; }

.bullet-chart-pf-axis-tic {
  padding-top: 5px;
  position: absolute;
  text-align: center;
  width: 30px; }
  .bullet-chart-pf-vertical .bullet-chart-pf-axis-tic {
    padding-top: 0;
    padding-right: 5px;
    width: 100%;
    text-align: right;
    line-height: 21px; }
  .bullet-chart-pf-axis-tic:before {
    border-left: 1px solid #72767b;
    content: "";
    height: 3px;
    left: 50%;
    position: absolute;
    top: -1px; }
    .bullet-chart-pf-vertical .bullet-chart-pf-axis-tic:before {
      border-left: 0;
      border-top: 1px solid #72767b;
      height: initial;
      left: initial;
      right: -1px;
      top: calc(50% - 1px);
      width: 3px; }

.bullet-chart-pf-overflow {
  flex: 1; }

.bullet-chart-pf-legend {
  margin-top: 7px;
  text-align: center;
  display: flex;
  flex-wrap: wrap;
  justify-content: center; }
  .bullet-chart-pf-vertical .bullet-chart-pf-legend {
    flex-direction: column;
    margin-left: 10px;
    margin-top: 0;
    text-align: left; }

.bullet-chart-pf-legend-item {
  display: inline-block;
  margin-right: 10px; }
  .bullet-chart-pf-vertical .bullet-chart-pf-legend-item {
    margin-right: 0;
    margin-top: 10px; }

.bullet-chart-pf-legend-item-box {
  display: inline-block;
  height: 13px;
  margin-right: 3px;
  width: 13px; }
  .bullet-chart-pf-legend-item-box.range-1 {
    background-color: #f5f5f5; }
  .bullet-chart-pf-legend-item-box.range-2 {
    background-color: #ededed; }
  .bullet-chart-pf-legend-item-box.range-3 {
    background-color: #dbdbdb; }

.bullet-chart-pf-legend-item-text {
  display: inline-block;
  line-height: 14px;
  max-width: 150px;
  overflow: hidden;
  position: relative;
  text-overflow: ellipsis;
  top: 1px;
  white-space: nowrap;
  word-wrap: normal; }

.c3 path {
  stroke: #d1d1d1; }

.c3 svg {
  font-family: "Open Sans", Helvetica, Arial, sans-serif; }

.c3-axis-x .tick line {
  stroke: #d1d1d1; }

.c3-axis-y .tick line {
  display: none; }

.c3-chart-arc path {
  stroke: #fff; }

.c3-grid line {
  stroke: #d1d1d1; }

.c3-line {
  stroke-width: 2px; }

.c3-tooltip {
  background: #393f44;
  -webkit-box-shadow: none;
  box-shadow: none;
  filter: alpha(opacity=90);
  opacity: 0.9; }
  .c3-tooltip td {
    background: transparent;
    border: 0;
    color: #fff;
    font-size: 12px;
    padding: 5px 10px; }
  .c3-tooltip th {
    background: transparent;
    font-size: 12px;
    padding: 5px 10px 0;
    border-bottom: solid 2px #030303; }
  .c3-tooltip tr {
    border: 0; }
    .c3-tooltip tr + tr > td {
      padding-top: 0; }

.c3-tooltip-sparkline,
.donut-tooltip-pf {
  background: #393f44;
  color: #fff;
  filter: alpha(opacity=90);
  opacity: 0.9;
  padding: 2px 6px; }

.c3-xgrid, .c3-ygrid {
  stroke-dasharray: 0 0; }

.chart-pf-sparkline {
  margin-left: -5px;
  margin-right: -5px; }

.donut-title-big-pf {
  font-size: 30px;
  font-weight: 300; }

.donut-title-small-pf {
  font-size: 12px;
  font-weight: 400; }

.line-chart-pf .c3-zoom-rect {
  opacity: 1 !important;
  fill: #fafafa;
  stroke: #d1d1d1;
  stroke-width: 1px; }

.pct-donut-chart-pf .pct-donut-chart-pf-label {
  display: block; }

.pct-donut-chart-pf.pct-donut-chart-pf-left, .pct-donut-chart-pf.pct-donut-chart-pf-right,
.pct-donut-chart-pf .pct-donut-chart-pf-left,
.pct-donut-chart-pf .pct-donut-chart-pf-right {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center; }

.pct-donut-chart-pf.pct-donut-chart-pf-left, .pct-donut-chart-pf.pct-donut-chart-pf-right {
  display: inline-flex; }

.pct-donut-chart-pf.pct-donut-chart-pf-left,
.pct-donut-chart-pf .pct-donut-chart-pf-left {
  flex-direction: row-reverse; }

.close {
  text-shadow: none;
  z-index: 1;
  position: relative;
  filter: alpha(opacity=60);
  opacity: 0.6; }
  .close:hover, .close:focus {
    filter: alpha(opacity=90);
    opacity: 0.9; }

.ColVis_Button:active:focus {
  outline: none; }

.ColVis_catcher {
  position: absolute;
  z-index: 999; }

.ColVis_collection {
  background-color: #fff;
  border: 1px solid #bbb;
  border-radius: 1px;
  -webkit-box-shadow: 0 6px 12px rgba(3, 3, 3, 0.175);
  box-shadow: 0 6px 12px rgba(3, 3, 3, 0.175);
  background-clip: padding-box;
  list-style: none;
  margin: -1px 0 0 0;
  padding: 5px 10px;
  width: 150px;
  z-index: 1000; }
  .ColVis_collection label {
    font-weight: normal;
    margin-bottom: 5px;
    margin-top: 5px;
    padding-left: 20px; }

.ColVis_collectionBackground {
  background-color: #fff;
  height: 100%;
  left: 0;
  position: fixed;
  top: 0;
  width: 100%;
  z-index: 998; }

.dataTables_header {
  background-color: #f5f5f5;
  border: 1px solid #d1d1d1;
  border-bottom: none;
  padding: 5px;
  position: relative;
  text-align: center; }
  .dataTables_header .btn {
    -webkit-box-shadow: none;
    box-shadow: none; }
  .dataTables_header .ColVis {
    position: absolute;
    right: 5px;
    text-align: left;
    top: 5px; }
    .dataTables_header .ColVis + .dataTables_info {
      padding-right: 30px; }
  .dataTables_header .dataTables_filter {
    position: absolute; }
    .dataTables_header .dataTables_filter input {
      border: 1px solid #bbb;
      height: 24px; }
      @media (max-width: 767px) {
        .dataTables_header .dataTables_filter input {
          width: 100px; } }
  .dataTables_header .dataTables_info {
    padding: 2px 0; }
    @media (max-width: 480px) {
      .dataTables_header .dataTables_info {
        text-align: right; } }
    .dataTables_header .dataTables_info b {
      font-weight: bold; }

.dataTables_footer {
  background-color: #fff;
  border: 1px solid #d1d1d1;
  border-top: none;
  overflow: hidden; }

.dataTables_paginate {
  background: #fafafa;
  float: right;
  margin: 0; }
  .dataTables_paginate .pagination {
    float: left;
    margin: 0; }
    .dataTables_paginate .pagination > li > span {
      border-color: #fff #d1d1d1 #f5f5f5;
      border-width: 0 1px;
      font-size: 16px;
      font-weight: normal;
      padding: 0;
      text-align: center;
      width: 31px; }
      .dataTables_paginate .pagination > li > span:hover, .dataTables_paginate .pagination > li > span:focus {
        filter: progid:DXImageTransform.Microsoft.gradient(enabled = false); }
    .dataTables_paginate .pagination > li.last > span {
      border-right: none; }
    .dataTables_paginate .pagination > li.disabled > span {
      background: #f5f5f5;
      border-left-color: #ededed;
      border-right-color: #ededed;
      filter: progid:DXImageTransform.Microsoft.gradient(enabled = false); }
  .dataTables_paginate .pagination-input {
    float: left;
    font-size: 12px;
    line-height: 1em;
    padding: 4px 15px 0;
    text-align: right; }
    .dataTables_paginate .pagination-input .paginate_input {
      border: 1px solid #d1d1d1;
      -webkit-box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075);
      box-shadow: inset 0 1px 1px rgba(3, 3, 3, 0.075);
      font-size: 12px;
      font-weight: 600;
      height: 19px;
      margin-right: 8px;
      padding-right: 3px;
      text-align: right;
      width: 30px; }
    .dataTables_paginate .pagination-input .paginate_of {
      position: relative; }
      .dataTables_paginate .pagination-input .paginate_of b {
        margin-left: 3px; }

.dataTables_empty {
  background: #f5f5f5; }

/* Might need this for pagination?
.dataTables_wrapper {
  margin: $line-height-computed 0;
  @media (max-width: $screen-xs-max) {
    .table-responsive {
      margin-bottom: 0;
    }
  }
}
*/
.DTCR_clonedTable {
  background-color: rgba(255, 255, 255, 0.7);
  z-index: 202; }

.DTCR_pointer {
  background-color: #0088ce;
  width: 1px;
  z-index: 201; }

.experimental-pf > * {
  border: 2px solid #92d400; }

.experimental-pf-bar {
  background-color: #92d400;
  border: none;
  text-align: center;
  position: relative; }

.experimental-pf-more-info {
  background-color: #92d400;
  border: 0;
  color: #030303;
  display: block;
  width: 100%;
  padding-top: 10px;
  padding-bottom: 10px;
  position: static; }
  @media (min-width: 992px) {
    .experimental-pf-more-info {
      padding: 0 10px;
      position: absolute;
      right: 0;
      top: 0;
      width: auto; } }

@media (min-width: 992px) {
  .experimental-pf-text {
    padding-left: 150px;
    padding-right: 150px; } }

.experimental-pf-text a {
  color: #030303;
  text-decoration: underline; }
  .experimental-pf-text a:hover {
    color: #030303;
    cursor: pointer; }

.btn-experimental-pf {
  background-color: #92d400;
  background-image: -webkit-linear-gradient(top, #ace12e 0%, #92d400 100%);
  background-image: -o-linear-gradient(top, #ace12e 0%, #92d400 100%);
  background-image: linear-gradient(to bottom, #ace12e 0%, #92d400 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFACE12E', endColorstr='#FF92D400', GradientType=0);
  background-repeat: repeat-x;
  border-color: #92d400;
  color: #4d5258; }
  .btn-experimental-pf:hover, .btn-experimental-pf:focus, .btn-experimental-pf:active, .btn-experimental-pf.active,
  .btn-experimental-pf .open .dropdown-toggle.btn-experimental-pf {
    background-color: #92d400;
    background-image: none;
    border-color: #92d400;
    color: #4d5258; }
  .btn-experimental-pf:active, .btn-experimental-pf.active,
  .btn-experimental-pf .open .dropdown-toggle.btn-experimental-pf {
    background-image: none; }
    .btn-experimental-pf:active:hover, .btn-experimental-pf:active:focus, .btn-experimental-pf:active.focus, .btn-experimental-pf.active:hover, .btn-experimental-pf.active:focus, .btn-experimental-pf.active.focus,
    .btn-experimental-pf .open .dropdown-toggle.btn-experimental-pf:hover,
    .btn-experimental-pf .open .dropdown-toggle.btn-experimental-pf:focus,
    .btn-experimental-pf .open .dropdown-toggle.btn-experimental-pf.focus {
      background-color: #80bb00;
      border-color: #79b000; }
  .btn-experimental-pf.disabled, .btn-experimental-pf.disabled:hover, .btn-experimental-pf.disabled:focus, .btn-experimental-pf.disabled:active, .btn-experimental-pf.disabled.active, .btn-experimental-pf[disabled], .btn-experimental-pf[disabled]:hover, .btn-experimental-pf[disabled]:focus, .btn-experimental-pf[disabled]:active, .btn-experimental-pf[disabled].active,
  fieldset[disabled] .btn-experimental-pf,
  fieldset[disabled] .btn-experimental-pf:hover,
  fieldset[disabled] .btn-experimental-pf:focus,
  fieldset[disabled] .btn-experimental-pf:active,
  fieldset[disabled] .btn-experimental-pf.active {
    background-color: #92d400;
    border-color: #92d400; }

.filter-pf-category-select {
  display: flex; }

.filter-pf-category-select-value {
  border-left-width: 0; }

.filter-pf-category-item {
  margin-bottom: 5px; }

.filter-pf-category-label {
  font-weight: 700;
  margin-right: 5px;
  padding: 5px 0 6px 5px; }

.filter-pf-select .caret {
  position: absolute;
  top: 50%;
  right: 10px;
  transform: translateY(-50%); }

.filter-pf-select-dropdown {
  background-color: #fff;
  background-image: none;
  color: #8b8d8f;
  font-size: 12px;
  font-style: italic;
  font-weight: 400;
  padding-right: 25px;
  text-align: left; }
  .filter-pf-select-dropdown .caret {
    font-style: normal; }
  .filter-pf-select-dropdown.filter-selected {
    font-style: normal;
    color: inherit; }

.filter-pf-active-label {
  margin-right: 5px; }

.footer-pf-alt, .footer-pf {
  background-color: #030303;
  color: #9c9c9c;
  font-size: 11px;
  line-height: 17px;
  padding-left: 25px;
  padding-top: 10px; }
  .layout-pf-alt-fixed-with-footer .footer-pf-alt, .layout-pf-fixed-with-footer .footer-pf-alt, .layout-pf-alt-fixed-with-footer .footer-pf, .layout-pf-fixed-with-footer .footer-pf {
    bottom: 0;
    left: 0;
    position: fixed;
    right: 0;
    z-index: 1030; }

@font-face {
  font-family: "PatternFlyIcons-webfont";
  src: url("${url.resourcesPath}/fonts/PatternFlyIcons-webfont.eot");
  src: url("${url.resourcesPath}/fonts/PatternFlyIcons-webfont.eot?#iefix") format("embedded-opentype"), url("${url.resourcesPath}/fonts/PatternFlyIcons-webfont.ttf") format("truetype"), url("${url.resourcesPath}/fonts/PatternFlyIcons-webfont.woff") format("woff"), url("${url.resourcesPath}/fonts/PatternFlyIcons-webfont.svg#PatternFlyIcons-webfont") format("svg");
  font-weight: normal;
  font-style: normal; }

[class^="pficon-"],
[class*=" pficon-"] {
  display: inline-block;
  font-family: "PatternFlyIcons-webfont";
  font-style: normal;
  font-variant: normal;
  font-weight: normal;
  line-height: 1;
  speak: none;
  text-transform: none;
  /* Better Font Rendering =========== */
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased; }

.pficon-add-circle-o:before {
  content: ""; }

.pficon-applications:before {
  content: ""; }

.pficon-arrow:before {
  content: ""; }

.pficon-asleep:before {
  content: ""; }

.pficon-automation:before {
  content: ""; }

.pficon-build:before {
  content: ""; }

.pficon-builder-image:before {
  content: ""; }

.pficon-bundle:before {
  content: ""; }

.pficon-blueprint:before {
  content: ""; }

.pficon-catalog:before {
  content: ""; }

.pficon-chat:before {
  content: ""; }

.pficon-close:before {
  content: ""; }

.pficon-cloud-security:before {
  content: ""; }

.pficon-cloud-tenant:before {
  content: ""; }

.pficon-cluster:before {
  content: ""; }

.pficon-connected:before {
  content: ""; }

.pficon-container-node:before {
  content: ""; }

.pficon-cpu:before {
  content: ""; }

.pficon-degraded:before {
  content: ""; }

.pficon-delete:before {
  content: ""; }

.pficon-disconnected:before {
  content: ""; }

.pficon-domain:before {
  content: ""; }

.pficon-drag-drop:before {
  content: ""; }

.pficon-edit:before {
  content: ""; }

.pficon-enhancement:before {
  content: ""; }

.pficon-enterprise:before {
  content: ""; }

.pficon-equalizer:before {
  content: ""; }

.pficon-error-circle-o:before {
  color: #cc0000;
  content: ""; }

.pficon-export:before {
  content: ""; }

.pficon-flag:before,
.pficon-messages:before {
  content: ""; }

.pficon-flavor:before {
  content: ""; }

.pficon-filter:before {
  content: ""; }

.pficon-folder-close:before {
  content: ""; }

.pficon-folder-open:before {
  content: ""; }

.pficon-help:before {
  content: ""; }

.pficon-history:before {
  content: ""; }

.pficon-home:before {
  content: ""; }

.pficon-image:before {
  content: ""; }

.pficon-import:before {
  content: ""; }

.pficon-in-progress:before {
  content: ""; }

.pficon-info:before {
  content: ""; }

.pficon-infrastructure:before {
  content: ""; }

.pficon-integration:before {
  content: ""; }

.pficon-key:before {
  content: ""; }

.pficon-locked:before {
  content: ""; }

.pficon-maintenance:before {
  content: ""; }

.pficon-memory:before {
  content: ""; }

.pficon-middleware:before {
  content: ""; }

.pficon-migration:before {
  content: ""; }

.pficon-monitoring:before {
  content: ""; }

.pficon-network:before {
  content: ""; }

.pficon-network-range:before {
  content: ""; }

.pficon-on:before {
  content: ""; }

.pficon-on-running:before {
  content: ""; }

.pficon-optimize:before {
  content: ""; }

.pficon-orders:before {
  content: ""; }

.pficon-off:before {
  content: ""; }

.pficon-ok:before {
  color: #3f9c35;
  content: ""; }

.pficon-paused:before {
  content: ""; }

.pficon-pending:before {
  content: ""; }

.pficon-plugged:before {
  content: ""; }

.pficon-port:before {
  content: ""; }

.pficon-print:before {
  content: ""; }

.pficon-process-automation:before {
  content: ""; }

.pficon-private:before {
  content: ""; }

.pficon-project:before {
  content: ""; }

.pficon-rebalance:before {
  content: ""; }

.pficon-rebooting:before {
  content: ""; }

.pficon-refresh:before,
.pficon-restart:before {
  content: ""; }

.pficon-regions:before {
  content: ""; }

.pficon-registry:before {
  content: ""; }

.pficon-remove:before {
  content: ""; }

.pficon-replicator:before {
  content: ""; }

.pficon-repository:before {
  content: ""; }

.pficon-resource-pool:before {
  content: ""; }

.pficon-resources-almost-empty:before {
  content: ""; }

.pficon-resources-almost-full:before {
  content: ""; }

.pficon-resources-full:before {
  content: ""; }

.pficon-route:before {
  content: ""; }

.pficon-running:before {
  content: ""; }

.pficon-satellite:before {
  content: ""; }

.pficon-save:before {
  content: ""; }

.pficon-screen:before {
  content: ""; }

.pficon-search:before {
  content: ""; }

.pficon-security:before {
  content: ""; }

.pficon-server:before {
  content: ""; }

.pficon-server-group:before {
  content: ""; }

.pficon-service:before {
  content: ""; }

.pficon-services:before {
  content: ""; }

.pficon-service-catalog:before {
  content: ""; }

.pficon-settings:before {
  content: ""; }

.pficon-sort-common-asc:before {
  content: ""; }

.pficon-sort-common-desc:before {
  content: ""; }

.pficon-spinner:before {
  content: ""; }

.pficon-spinner2:before {
  content: ""; }

.pficon-storage-domain:before {
  content: ""; }

.pficon-template:before {
  content: ""; }

.pficon-tenant:before {
  content: ""; }

.pficon-thumb-tack-o:before {
  content: ""; }

.pficon-topology:before {
  content: ""; }

.pficon-trend-down:before {
  content: ""; }

.pficon-trend-up:before {
  content: ""; }

.pficon-unknown:before {
  content: ""; }

.pficon-user:before {
  content: ""; }

.pficon-users:before {
  content: ""; }

.pficon-unlocked:before {
  content: ""; }

.pficon-unplugged:before {
  content: ""; }

.pficon-vcenter:before {
  content: ""; }

.pficon-virtual-machine:before {
  content: ""; }

.pficon-volume:before {
  content: ""; }

.pficon-warning-triangle-o:before {
  color: #ec7a08;
  content: ""; }

.pficon-zone:before {
  content: ""; }

.hint-block-pf {
  background-color: #def3ff;
  color: #004368;
  padding: 10px 15px 15px; }
  .hint-block-pf .hint-block-pf-title {
    font-size: 16px;
    font-weight: 500;
    line-height: 1.1;
    margin-bottom: 10px; }
  .hint-block-pf .hint-block-pf-body {
    font-size: 13px;
    font-weight: 300;
    line-height: 1.4; }
  .hint-block-pf > .btn {
    margin-top: 30px; }

.navbar-nav > li > .dropdown-menu.infotip {
  border-top-width: 1px !important;
  margin-top: 10px; }

@media (max-width: 767px) {
  .navbar-pf .navbar-nav .open .dropdown-menu.infotip {
    background-color: #fff !important;
    margin-top: 0; } }

.infotip {
  min-width: 235px;
  padding: 0; }
  .infotip .list-group {
    border-top: 0;
    margin: 0;
    padding: 8px 0; }
    .infotip .list-group .list-group-item {
      border: none;
      margin: 0 15px 0 34px;
      padding: 5px 0; }
      .infotip .list-group .list-group-item > .i {
        color: #4d5258;
        font-size: 13px;
        left: -20px;
        position: absolute;
        top: 8px; }
      .infotip .list-group .list-group-item > a {
        color: #4d5258;
        line-height: 13px; }
      .infotip .list-group .list-group-item > .close {
        float: right; }
  .infotip .footer {
    background-color: #f5f5f5;
    padding: 6px 15px; }
    .infotip .footer a:hover {
      color: #0088ce; }

.infotip .arrow, .infotip .arrow:after {
  border-color: transparent;
  border-style: solid;
  display: block;
  height: 0;
  position: absolute;
  width: 0; }

.infotip .arrow {
  border-width: 11px; }

.infotip .arrow:after {
  border-width: 10px;
  content: ""; }

.infotip.bottom .arrow,
.infotip.bottom-left .arrow,
.infotip.bottom-right .arrow {
  border-bottom-color: #bbb;
  border-top-width: 0;
  left: 50%;
  margin-left: -11px;
  top: -11px; }
  .infotip.bottom .arrow:after,
  .infotip.bottom-left .arrow:after,
  .infotip.bottom-right .arrow:after {
    border-top-width: 0;
    border-bottom-color: #fff;
    content: " ";
    margin-left: -10px;
    top: 1px; }

.infotip.bottom-left .arrow {
  left: 20%; }

.infotip.bottom-right .arrow {
  left: 80%; }

.infotip.top .arrow {
  border-bottom-width: 0;
  border-top-color: #bbb;
  bottom: -11px;
  left: 50%;
  margin-left: -11px; }
  .infotip.top .arrow:after {
    border-bottom-width: 0;
    border-top-color: #f5f5f5;
    bottom: 1px;
    content: " ";
    margin-left: -10px; }

.infotip.right .arrow {
  border-left-width: 0;
  border-right-color: #bbb;
  left: -11px;
  margin-top: -11px;
  top: 50%; }
  .infotip.right .arrow:after {
    bottom: -10px;
    border-left-width: 0;
    border-right-color: #fff;
    content: " ";
    left: 1px; }

.infotip.left .arrow {
  border-left-color: #bbb;
  border-right-width: 0;
  margin-top: -11px;
  right: -11px;
  top: 50%; }
  .infotip.left .arrow:after {
    border-left-color: #fff;
    border-right-width: 0;
    bottom: -10px;
    content: " ";
    right: 1px; }

.layout-pf,
.layout-pf body {
  min-height: 100%; }

.layout-pf.layout-pf-fixed.transitions .container-pf-nav-pf-vertical {
  transition: all 200ms cubic-bezier(0.35, 0, 0.25, 1); }

.layout-pf.layout-pf-fixed body {
  padding-top: 60px; }

.layout-pf.layout-pf-fixed .navbar-pf {
  left: 0;
  position: fixed;
  top: 0;
  right: 0;
  z-index: 1030; }

.layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical {
  margin-left: 200px; }
  .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.nav-pf-vertical-with-badges {
    margin-left: 250px; }
  .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.collapsed-nav {
    margin-left: 75px; }
    .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.collapsed-nav.hidden-icons-pf {
      margin-left: 0; }
  .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.hidden-nav {
    margin-left: 0; }
  .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.hide-nav-pf {
    visibility: hidden !important; }
  .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.collapsed-secondary-nav-pf, .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.collapsed-tertiary-nav-pf {
    margin-left: 200px; }
    .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.collapsed-secondary-nav-pf.nav-pf-vertical-with-badges, .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.collapsed-tertiary-nav-pf.nav-pf-vertical-with-badges {
      margin-left: 250px; }
  @media (min-width: 1200px) {
    .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf {
      margin-left: 400px; }
      .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.nav-pf-vertical-with-badges {
        margin-left: 500px; }
      .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.hidden-nav {
        margin-left: 0; }
      .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-secondary-nav-pf {
        margin-left: 200px; }
        .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-secondary-nav-pf.nav-pf-vertical-with-badges {
          margin-left: 250px; }
      .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-tertiary-nav-pf {
        margin-left: 200px; }
        .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-tertiary-nav-pf.nav-pf-vertical-with-badges {
          margin-left: 250px; }
      .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-nav {
        margin-left: 275px; }
        .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-nav.nav-pf-vertical-with-badges {
          margin-left: 325px; }
        .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-nav.collapsed-secondary-nav-pf {
          margin-left: 200px; }
          .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-nav.collapsed-secondary-nav-pf.nav-pf-vertical-with-badges {
            margin-left: 250px; }
        .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-nav.collapsed-tertiary-nav-pf {
          margin-left: 200px; }
          .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-nav.collapsed-tertiary-nav-pf.nav-pf-vertical-with-badges {
            margin-left: 250px; }
        .layout-pf.layout-pf-fixed .container-pf-nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-nav.hidden-icons-pf {
          margin-left: 0; } }

.layout-pf.layout-pf-fixed-with-footer body {
  padding-bottom: 37px; }

.layout-pf-alt,
.layout-pf-alt body {
  min-height: 100%; }

.layout-pf-alt.layout-pf-alt-fixed.layout-pf-alt-fixed-inner-scroll,
.layout-pf-alt.layout-pf-alt-fixed.layout-pf-alt-fixed-inner-scroll body {
  height: 100%;
  min-height: 0; }

.layout-pf-alt.layout-pf-alt-fixed.layout-pf-alt-fixed-inner-scroll .container-pf-alt-nav-pf-vertical-alt {
  height: 100%;
  overflow: auto; }
  .layout-pf-alt.layout-pf-alt-fixed.layout-pf-alt-fixed-inner-scroll .container-pf-alt-nav-pf-vertical-alt.container-cards-pf {
    margin-top: 0;
    padding-top: 20px; }

.layout-pf-alt.layout-pf-alt-fixed.transitions .container-pf-alt-nav-pf-vertical-alt {
  transition: all 200ms cubic-bezier(0.35, 0, 0.25, 1); }

.layout-pf-alt.layout-pf-alt-fixed body {
  padding-top: 60px; }

.layout-pf-alt.layout-pf-alt-fixed .container-pf-alt-nav-pf-vertical-alt {
  margin-left: 250px; }
  .layout-pf-alt.layout-pf-alt-fixed .container-pf-alt-nav-pf-vertical-alt.collapsed-nav {
    margin-left: 75px; }
  .layout-pf-alt.layout-pf-alt-fixed .container-pf-alt-nav-pf-vertical-alt.hidden-nav {
    margin-left: 0; }

.layout-pf-alt.layout-pf-alt-fixed-with-footer body {
  padding-bottom: 37px; }

a.disabled {
  color: #8b8d8f;
  cursor: not-allowed;
  text-decoration: none; }

.list-pf {
  border-bottom: 1px solid #ededed; }

.list-pf-item {
  border-color: #ededed;
  border-left-color: #fff;
  border-right-color: #fff;
  border-style: solid;
  border-width: 1px;
  border-bottom: none; }
  .list-pf-item:hover {
    background-color: #edf8ff; }
  .list-pf-item.active {
    background-color: #edf8ff;
    border-color: #bbb;
    border-bottom-width: 1px;
    border-bottom-style: solid;
    box-shadow: 0 2px 6px rgba(3, 3, 3, 0.2); }

.list-pf-expansion {
  background-color: #fff; }

.list-pf-container {
  align-items: flex-start;
  display: flex;
  padding: 20px; }
  .list-pf-expansion .list-pf-container {
    border-top: 1px solid #bbb; }
  @media (min-width: 992px) {
    .list-pf:not(.list-pf-stacked) .list-pf-container {
      align-items: center; } }

.list-pf-chevron {
  min-width: 1.2em; }

.list-pf-chevron,
.list-pf-select {
  margin-right: 10px; }
  .list-pf-chevron + .list-pf-content,
  .list-pf-select + .list-pf-content {
    border-left: 1px solid #d1d1d1;
    padding-left: 20px; }
  .list-pf-chevron .fa, .list-pf-chevron .fas, .list-pf-chevron .far, .list-pf-chevron .fab, .list-pf-chevron .fal,
  .list-pf-select .fa,
  .list-pf-select .fas,
  .list-pf-select .far,
  .list-pf-select .fab,
  .list-pf-select .fal {
    font-size: 22px; }

.list-pf-content-flex {
  align-items: flex-start;
  display: flex;
  flex-grow: 1;
  flex-wrap: nowrap;
  justify-content: flex-start;
  min-width: 0; }
  @media (min-width: 992px) {
    .list-pf:not(.list-pf-stacked) .list-pf-content-flex {
      align-items: center; } }

.list-pf-left {
  flex-grow: 0;
  margin-left: 0;
  margin-right: 20px; }

.list-pf-icon {
  align-items: center;
  display: flex;
  justify-content: center; }

.list-pf-icon-bordered {
  border-radius: 50%;
  border: 2px solid #39a5dc; }

.list-pf-icon-small {
  font-size: 1.4em;
  height: 30px;
  line-height: 30px;
  width: 30px; }

.list-pf-content-wrapper {
  align-items: center;
  display: flex;
  flex-grow: 1;
  flex-wrap: wrap;
  min-width: 0; }
  @media (min-width: 992px) {
    .list-pf-content-wrapper {
      flex-wrap: nowrap; }
      .list-pf-content-wrapper > * + * {
        margin-left: 40px; } }
  .list-pf-stacked .list-pf-content-wrapper {
    align-items: flex-start; }

.list-pf-main-content {
  align-items: center;
  display: flex;
  flex-basis: 70%;
  flex-grow: 1;
  flex-shrink: 1;
  flex-wrap: wrap;
  min-width: 0; }

@media (min-width: 992px) {
  .list-pf:not(.list-pf-stacked) .list-pf-main-content {
    flex-wrap: nowrap;
    width: auto; }
    .list-pf:not(.list-pf-stacked) .list-pf-main-content > * + * {
      margin-left: 40px; } }

.list-pf-title {
  flex-grow: 1;
  flex-shrink: 1;
  flex-basis: 100%;
  font-weight: bold;
  min-width: 0;
  word-wrap: break-word; }

.list-pf-description {
  flex-grow: 1;
  flex-shrink: 1;
  flex-basis: 100%;
  min-width: 0;
  word-wrap: break-word; }

.list-pf-additional-content {
  display: flex;
  flex-basis: 31%;
  flex-grow: 1;
  flex-shrink: 1;
  flex-wrap: wrap;
  justify-content: space-between; }

.list-pf-actions {
  display: flex;
  align-items: flex-start;
  flex-grow: 0;
  margin-left: 40px; }
  .list-pf-actions > * + * {
    margin-left: 10px; }

.list-view-pf-dnd .dndDragging.drag-original {
  display: none; }
  .list-view-pf-dnd .dndDragging.drag-original .list-view-pf-dnd-original-items {
    display: block; }

.list-view-pf-dnd .dndDragging .list-view-pf-dnd-drag-items {
  display: inline-block; }

.list-view-pf-dnd .dndDragging .list-view-pf-dnd-original-items {
  display: none; }

.list-view-pf-dnd .dndPlaceholder {
  background-color: #ededed;
  padding: 20px 0; }

.list-view-pf-dnd .list-group-item-header {
  margin-left: -10px; }
  .list-view-pf-dnd .list-group-item-header:before {
    background-image: linear-gradient(to bottom, #0088ce 60%, #fff 0%);
    background-position: left;
    background-repeat: repeat-y;
    background-size: 2px 5px;
    border: 4px solid #0088ce;
    border-color: #00659c;
    content: "";
    height: 55px;
    left: 4px;
    position: absolute;
    top: 5px;
    width: 10px; }

.list-view-pf-dnd-drag-items {
  display: none; }

.list-view-pf .list-group-item {
  align-items: flex-start;
  background-clip: padding-box;
  border-color: transparent #fff;
  border-style: solid;
  border-width: 1px;
  display: flex;
  flex-wrap: wrap;
  padding-bottom: 0;
  padding-top: 0; }
  .list-view-pf .list-group-item:before, .list-view-pf .list-group-item:after {
    display: table;
    content: " "; }
  .list-view-pf .list-group-item:after {
    clear: both; }
  .list-view-pf .list-group-item.list-view-pf-expand-active {
    background-color: #def3ff;
    box-shadow: 0 2px 6px rgba(3, 3, 3, 0.2);
    z-index: 1; }
  .list-view-pf .list-group-item.active {
    color: #555;
    background-color: #def3ff;
    background-clip: border-box;
    border-color: #bbb transparent transparent;
    z-index: auto; }
  .list-view-pf .list-group-item:hover {
    background-color: #edf8ff;
    border-left-color: transparent;
    border-right-color: transparent; }
  .list-view-pf .list-group-item.list-view-pf-expand-active {
    border: solid 1px #bbb; }
    .list-view-pf .list-group-item.list-view-pf-expand-active:first-child {
      border-top-color: #bbb; }
  .list-view-pf .list-group-item:first-child {
    border-top: 1px solid transparent; }
  @media (min-width: 992px) {
    .list-view-pf .list-group-item {
      align-items: center; } }

.list-view-pf .list-group-item-heading {
  font-size: 16px; }
  .list-view-pf .list-group-item-heading small {
    display: block;
    font-size: 9.6px;
    font-weight: 400; }
  @media (min-width: 992px) {
    .list-view-pf .list-group-item-heading {
      flex: 1 0 calc(25% - 20px);
      float: left;
      font-size: 12px;
      margin: 0 20px 0 0;
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
      width: calc(25% - 20px); } }

.list-view-pf .list-group-item-text {
  color: currentColor !important;
  margin-bottom: 10px; }
  @media (min-width: 992px) {
    .list-view-pf .list-group-item-text {
      flex: 1 0 auto;
      float: left;
      margin: 0 40px 0 0;
      width: calc(75% - 40px); } }

.list-view-pf .close {
  float: none;
  position: absolute;
  right: 15px; }

.list-view-pf-actions {
  float: right;
  margin-bottom: 20px;
  margin-left: 20px;
  margin-top: 20px;
  order: 2; }
  .list-view-pf-actions button,
  .list-view-pf-actions > a,
  .list-view-pf-actions .dropdown-kebab-pf {
    margin-left: 10px; }
  .list-view-pf-top-align .list-view-pf-actions {
    align-self: flex-start; }

.list-view-pf-additional-info {
  align-items: center;
  display: flex;
  flex-wrap: wrap; }
  @media (min-width: 992px) {
    .list-view-pf-additional-info {
      flex: 1 0 auto;
      float: left;
      width: 50%; } }

.list-view-pf-additional-info-item {
  align-items: center;
  display: inline-block;
  display: flex;
  margin-right: 20px;
  max-width: 100%;
  text-align: center; }
  .list-view-pf-additional-info-item.list-view-pf-additional-info-item-stacked {
    text-align: center;
    flex-direction: column; }
    .list-view-pf-additional-info-item.list-view-pf-additional-info-item-stacked strong {
      font-size: 13px;
      line-height: 1em; }
  .list-view-pf-additional-info-item .pficon, .list-view-pf-additional-info-item .fa, .list-view-pf-additional-info-item .fas, .list-view-pf-additional-info-item .far, .list-view-pf-additional-info-item .fab, .list-view-pf-additional-info-item .fal {
    font-size: 16px;
    margin-right: 10px; }
  .list-view-pf-additional-info-item strong {
    font-size: 16px;
    font-weight: 600;
    margin-right: 5px; }
  .list-view-pf-additional-info-item:last-child {
    margin-right: 0; }

.list-view-pf-additional-info-item-donut-chart {
  width: 60px; }

.list-view-pf-body {
  align-items: center;
  display: table-cell;
  flex: 1;
  min-width: 0;
  vertical-align: top;
  width: 100%; }
  @media (min-width: 992px) {
    .list-view-pf-body {
      align-items: center;
      display: flex;
      flex-direction: row; } }

.list-view-pf-checkbox {
  border-right: 1px solid #d1d1d1;
  float: left;
  margin-bottom: 20px;
  margin-right: 15px;
  margin-top: 20px;
  padding: 3px 10px 3px 0; }
  .list-view-pf-top-align .list-view-pf-checkbox {
    align-self: flex-start; }

.list-view-pf-description {
  flex: 1 0 50%; }
  .list-view-pf-stacked .list-view-pf-description {
    display: block;
    flex: none; }
  @media (min-width: 992px) {
    .list-view-pf-description {
      align-items: center;
      display: flex;
      float: left;
      width: 50%; } }

.list-view-pf-left {
  display: table-cell;
  padding-right: 20px;
  text-align: center;
  vertical-align: top; }
  .list-view-pf-left .list-view-pf-calendar {
    font-size: 11px;
    line-height: 1em; }
    .list-view-pf-left .list-view-pf-calendar strong {
      display: block;
      font-size: 44px;
      font-weight: 300;
      line-height: 1em; }
  .list-view-pf-left .pficon, .list-view-pf-left .fa, .list-view-pf-left .fas, .list-view-pf-left .far, .list-view-pf-left .fab, .list-view-pf-left .fal {
    border-radius: 50%;
    font-size: 2em; }
    .list-view-pf-left .pficon.list-view-pf-icon-md, .list-view-pf-left .fa.list-view-pf-icon-md, .list-view-pf-left .fas.list-view-pf-icon-md, .list-view-pf-left .far.list-view-pf-icon-md, .list-view-pf-left .fab.list-view-pf-icon-md, .list-view-pf-left .fal.list-view-pf-icon-md {
      background-color: #f5f5f5;
      height: 50px;
      line-height: 50px;
      width: 50px; }
    .list-view-pf-left .pficon.list-view-pf-icon-danger, .list-view-pf-left .fa.list-view-pf-icon-danger, .list-view-pf-left .fas.list-view-pf-icon-danger, .list-view-pf-left .far.list-view-pf-icon-danger, .list-view-pf-left .fab.list-view-pf-icon-danger, .list-view-pf-left .fal.list-view-pf-icon-danger {
      background-color: #ffe6e6;
      color: #cc0000; }
    .list-view-pf-left .pficon.list-view-pf-icon-info, .list-view-pf-left .fa.list-view-pf-icon-info, .list-view-pf-left .fas.list-view-pf-icon-info, .list-view-pf-left .far.list-view-pf-icon-info, .list-view-pf-left .fab.list-view-pf-icon-info, .list-view-pf-left .fal.list-view-pf-icon-info {
      color: #8b8d8f; }
    .list-view-pf-left .pficon.list-view-pf-icon-lg, .list-view-pf-left .fa.list-view-pf-icon-lg, .list-view-pf-left .fas.list-view-pf-icon-lg, .list-view-pf-left .far.list-view-pf-icon-lg, .list-view-pf-left .fab.list-view-pf-icon-lg, .list-view-pf-left .fal.list-view-pf-icon-lg {
      background-color: #f5f5f5;
      height: 60px;
      line-height: 60px;
      width: 60px; }
    .list-view-pf-left .pficon.list-view-pf-icon-sm, .list-view-pf-left .fa.list-view-pf-icon-sm, .list-view-pf-left .fas.list-view-pf-icon-sm, .list-view-pf-left .far.list-view-pf-icon-sm, .list-view-pf-left .fab.list-view-pf-icon-sm, .list-view-pf-left .fal.list-view-pf-icon-sm {
      border: 2px solid #39a5dc;
      font-size: 1.4em;
      height: 30px;
      line-height: 30px;
      width: 30px; }
      .list-view-pf-left .pficon.list-view-pf-icon-sm:before, .list-view-pf-left .fa.list-view-pf-icon-sm:before, .list-view-pf-left .fas.list-view-pf-icon-sm:before, .list-view-pf-left .far.list-view-pf-icon-sm:before, .list-view-pf-left .fab.list-view-pf-icon-sm:before, .list-view-pf-left .fal.list-view-pf-icon-sm:before {
        display: block;
        line-height: 26px; }
    .list-view-pf-left .pficon.list-view-pf-icon-success, .list-view-pf-left .fa.list-view-pf-icon-success, .list-view-pf-left .fas.list-view-pf-icon-success, .list-view-pf-left .far.list-view-pf-icon-success, .list-view-pf-left .fab.list-view-pf-icon-success, .list-view-pf-left .fal.list-view-pf-icon-success {
      background-color: #e9f4e9;
      color: #3f9c35; }
    .list-view-pf-left .pficon.list-view-pf-icon-warning, .list-view-pf-left .fa.list-view-pf-icon-warning, .list-view-pf-left .fas.list-view-pf-icon-warning, .list-view-pf-left .far.list-view-pf-icon-warning, .list-view-pf-left .fab.list-view-pf-icon-warning, .list-view-pf-left .fal.list-view-pf-icon-warning {
      background-color: #fdf2e5;
      color: #ec7a08; }

.list-view-pf-main-info {
  align-items: flex-start;
  display: flex;
  flex: 1;
  min-width: 0;
  padding-bottom: 20px;
  padding-top: 20px; }
  @media (min-width: 992px) {
    .list-view-pf-main-info {
      align-items: center; }
      .list-view-pf-top-align .list-view-pf-main-info {
        align-items: flex-start; } }

.list-view-pf-stacked .list-group-item-heading {
  float: none;
  font-size: 16px;
  line-height: 1.2em;
  margin-bottom: 5px;
  margin-right: 40px;
  width: auto; }

.list-view-pf-stacked .list-group-item-text {
  float: none;
  width: auto; }

.list-view-pf-view {
  background: #ededed;
  border: none;
  margin-top: 30px; }

.list-group-item-header {
  box-sizing: content-box;
  cursor: pointer;
  margin: 0 -15px;
  padding: 0 15px;
  width: 100%; }

.list-view-pf-expand {
  cursor: pointer;
  float: left;
  margin-bottom: 20px;
  margin-right: 2px;
  margin-top: 20px;
  padding: 3px 0; }
  .list-view-pf-expand.active, .list-view-pf-expand:hover {
    color: #0088ce; }
  .list-view-pf-additional-info-item .list-view-pf-expand {
    margin: 0;
    padding: 0; }
  .list-view-pf-expand .fa-angle-right {
    cursor: pointer;
    font-size: 17px;
    margin-right: 5px;
    margin-top: 2px;
    width: 10px; }

.list-group-item-container {
  background: #fff;
  border-top: solid 1px #bbb;
  box-sizing: content-box;
  margin: -1px -15px 0;
  order: 3;
  padding: 15px;
  position: relative;
  width: 100%; }

.list-view-pf-editable.active .list-view-pf-editor,
.list-view-pf-editable.active .list-view-pf-editor.bootstrap-select,
.list-view-pf-editable.active .bootstrap-switch,
.list-view-pf-editable.active .list-view-pf-actions .list-view-pf-save,
.list-view-pf-editable.active .list-view-pf-actions .list-view-pf-cancel, .list-view-pf-editable.list-view-pf-create .list-view-pf-editor,
.list-view-pf-editable.list-view-pf-create .list-view-pf-editor.bootstrap-select,
.list-view-pf-editable.list-view-pf-create .bootstrap-switch,
.list-view-pf-editable.list-view-pf-create .list-view-pf-actions .list-view-pf-save,
.list-view-pf-editable.list-view-pf-create .list-view-pf-actions .list-view-pf-cancel {
  display: initial; }

.list-view-pf-editable.active .list-view-pf-edit,
.list-view-pf-editable.active .list-view-pf-value:not(.list-view-pf-readonly),
.list-view-pf-editable.active .dropdown-kebab-pf, .list-view-pf-editable.list-view-pf-create .list-view-pf-edit,
.list-view-pf-editable.list-view-pf-create .list-view-pf-value:not(.list-view-pf-readonly),
.list-view-pf-editable.list-view-pf-create .dropdown-kebab-pf {
  display: none; }

.list-view-pf-editable .list-view-pf-editor,
.list-view-pf-editable .list-view-pf-editor.bootstrap-select,
.list-view-pf-editable .bootstrap-switch,
.list-view-pf-editable .list-view-pf-actions .list-view-pf-save,
.list-view-pf-editable .list-view-pf-actions .list-view-pf-cancel {
  display: none; }

@media (min-width: 768px) {
  .list-view-pf-editable.active .list-view-pf-additional-info {
    margin-top: 20px; } }

@media (min-width: 992px) {
  .list-view-pf-editable.active .list-view-pf-additional-info {
    margin-top: 0; } }

.list-view-pf-editable.active .list-view-pf-additional-info .list-view-pf-additional-info-item {
  margin-top: 20px; }
  @media (min-width: 768px) {
    .list-view-pf-editable.active .list-view-pf-additional-info .list-view-pf-additional-info-item {
      margin-top: 0; } }

.list-view-pf-editable .list-view-pf-textbox {
  margin-right: 20px;
  width: 100%; }

.list-view-pf-editable .list-view-pf-readonly {
  color: #8b8d8f; }

.list-view-pf-editable .list-view-pf-actions {
  margin: 10px 0;
  width: 100px;
  text-align: right; }
  .list-view-pf-editable .list-view-pf-actions .list-view-pf-save,
  .list-view-pf-editable .list-view-pf-actions .list-view-pf-cancel {
    font-size: 24px; }
    @media (max-width: 768px) {
      .list-view-pf-editable .list-view-pf-actions .list-view-pf-save,
      .list-view-pf-editable .list-view-pf-actions .list-view-pf-cancel {
        margin-left: 0; } }

.list-view-pf-editable .list-view-pf-description {
  flex: 100%; }
  @media (min-width: 768px) {
    .list-view-pf-editable .list-view-pf-description {
      flex: 100%; } }
  @media (min-width: 992px) {
    .list-view-pf-editable .list-view-pf-description {
      flex: 25%; } }

.list-view-pf-editable .list-view-pf-additional-info {
  flex: 100%; }
  .list-view-pf-editable .list-view-pf-additional-info .list-view-pf-additional-info-item {
    flex: 100%; }
  @media (min-width: 768px) {
    .list-view-pf-editable .list-view-pf-additional-info {
      flex: 100%; }
      .list-view-pf-editable .list-view-pf-additional-info .list-view-pf-additional-info-item {
        flex: 1; } }
  @media (min-width: 992px) {
    .list-view-pf-editable .list-view-pf-additional-info {
      flex: 75%; }
      .list-view-pf-editable .list-view-pf-additional-info .list-view-pf-additional-info-item {
        flex: 1; } }

.loading-state-pf {
  display: flex;
  flex-direction: column;
  align-items: center;
  font-size: 12px;
  height: 100%; }
  .loading-state-pf:before {
    content: "";
    height: 25%;
    display: block; }
  .loading-state-pf.loading-state-pf-lg {
    font-size: 15px; }
  .loading-state-pf.loading-state-pf-sm {
    font-size: 9px; }
  .loading-state-pf.loading-state-pf-xs {
    font-size: 6px; }

.login-pf {
  height: 100%;
  background: #030303 url("${url.resourcesPath}/images/bg-login.jpg") repeat-x 50% 0;
  background-size: auto; }
  @media (min-width: 768px) {
    .login-pf {
      background-size: 100% auto; } }
  .login-pf #brand {
    position: relative;
    top: -70px; }
    .login-pf #brand img {
      display: block;
      height: 18px;
      margin: 0 auto;
      max-width: 100%; }
      @media (min-width: 768px) {
        .login-pf #brand img {
          margin: 0;
          text-align: left; } }
  .login-pf #badge {
    display: block;
    margin: 20px auto 70px;
    position: relative;
    text-align: center; }
    @media (min-width: 768px) {
      .login-pf #badge {
        float: right;
        margin-right: 64px;
        margin-top: 50px; } }
  .login-pf body {
    background: #030303 url("${url.resourcesPath}/images/bg-login.jpg") repeat-x 50% 0;
    background-size: auto; }
    @media (min-width: 768px) {
      .login-pf body {
        background-size: 100% auto; } }
  .login-pf .container {
    background-color: rgba(255, 255, 255, 0.055);
    clear: right;
    color: #fff;
    padding-bottom: 40px;
    padding-top: 20px;
    width: auto; }
    @media (min-width: 768px) {
      .login-pf .container {
        bottom: 13%;
        padding-left: 80px;
        position: absolute;
        width: 100%; } }
    .login-pf .container .details p:first-child {
      border-top: 1px solid rgba(255, 255, 255, 0.3);
      padding-top: 25px;
      margin-top: 25px; }
    @media (min-width: 768px) {
      .login-pf .container .details {
        border-left: 1px solid rgba(255, 255, 255, 0.3);
        padding-left: 40px; }
        .login-pf .container .details p:first-child {
          border-top: 0;
          padding-top: 0;
          margin-top: 0; } }
    .login-pf .container .details p {
      margin-bottom: 2px; }
    .login-pf .container .form-horizontal .control-label {
      font-size: 13px;
      font-weight: 400;
      text-align: left; }
    .login-pf .container .form-horizontal .form-group:last-child,
    .login-pf .container .form-horizontal .form-group:last-child .help-block:last-child {
      margin-bottom: 0; }
    .login-pf .container .help-block {
      color: #fff; }
    @media (min-width: 768px) {
      .login-pf .container .login {
        padding-right: 40px; } }
    .login-pf .container .submit {
      text-align: right; }

.login-pf-page {
  padding-top: 20px; }
  .login-pf-page .login-pf-brand {
    margin-top: 0px;
    max-width: 360px;
    width: 70%; }
    @media (min-width: 768px) {
      .login-pf-page .login-pf-brand {
        margin-top: 22px; } }
  .login-pf-page .login-pf-page-header {
    margin-bottom: 20px;
    text-align: center; }
    @media (min-width: 768px) {
      .login-pf-page .login-pf-page-header {
        margin-bottom: 40px; } }
    .login-pf-page .login-pf-page-header p {
      color: #fff;
      font-size: 14px;
      margin-left: auto;
      margin-right: auto;
      margin-top: 20px; }
  .login-pf-page .card-pf {
    padding: 10px 20px 30px 20px;
    margin-bottom: 0; }
    @media (min-width: 768px) {
      .login-pf-page .card-pf {
        padding: 20px 40px 30px 40px; } }
    .login-pf-page .card-pf p {
      color: #72767b; }
  .login-pf-page .form-control {
    height: 36px; }
  .login-pf-page .checkbox-label {
    color: #72767b;
    font-weight: 300;
    margin-bottom: 15px; }
    @media (min-width: 768px) {
      .login-pf-page .checkbox-label {
        margin: 0; } }
  .login-pf-page .btn-primary {
    margin-top: 40px; }
  .login-pf-page .login-pf-header {
    margin-bottom: 20px;
    display: flex;
    flex-direction: column; }
    @media (min-width: 768px) {
      .login-pf-page .login-pf-header {
        margin-bottom: 10px; } }
    .login-pf-page .login-pf-header h1 {
      text-align: center; }
    .login-pf-page .login-pf-header h1 {
      font-size: 16px; }
      @media (min-width: 768px) {
        .login-pf-page .login-pf-header h1 {
          font-size: 24px; } }
    .login-pf-page .login-pf-header .bootstrap-select:not([class*="col-"]):not([class*="form-control"]):not(.input-group-btn) {
      width: auto;
      align-self: flex-end; }
      .login-pf-page .login-pf-header .bootstrap-select:not([class*="col-"]):not([class*="form-control"]):not(.input-group-btn) .dropdown-toggle {
        color: #4d5258;
        background: none;
        padding: 0 15px 0 0;
        font-weight: 300; }
        .login-pf-page .login-pf-header .bootstrap-select:not([class*="col-"]):not([class*="form-control"]):not(.input-group-btn) .dropdown-toggle:not(:focus) {
          box-shadow: none;
          border: 1px solid transparent; }
        .login-pf-page .login-pf-header .bootstrap-select:not([class*="col-"]):not([class*="form-control"]):not(.input-group-btn) .dropdown-toggle .caret {
          right: 0; }
  .login-pf-page .login-pf-signup {
    margin: 40px 0 0;
    font-size: 15px;
    text-align: center; }
    .login-pf-page .login-pf-signup a {
      margin-left: 10px; }
  .login-pf-page .login-pf-settings {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap; }
  .login-pf-page .login-pf-page-footer {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    padding-bottom: 50px; }
    @media (min-width: 768px) {
      .login-pf-page .login-pf-page-footer {
        padding-bottom: 100px; } }
    .login-pf-page .login-pf-page-footer-links {
      display: flex;
      margin: 60px 0 0 0; }
      .login-pf-page .login-pf-page-footer-links li:not(:last-of-type) {
        position: relative;
        margin: 0 20px 0 0; }
        .login-pf-page .login-pf-page-footer-links li:not(:last-of-type):after {
          content: ".";
          color: #fff;
          position: absolute;
          top: 0px;
          right: -10px; }
    .login-pf-page .login-pf-page-footer-link {
      color: #fff;
      font-size: 14px; }
    .login-pf-page .login-pf-page-footer-sso-services {
      flex: 1 0 100%;
      margin-top: 40px;
      text-align: center;
      color: #fff; }
      .login-pf-page .login-pf-page-footer-sso-services-logos {
        display: flex;
        flex-wrap: wrap;
        padding: 0;
        margin: 0;
        list-style: none;
        justify-content: center; }
        .login-pf-page .login-pf-page-footer-sso-services-logos li {
          margin: 0 5px 5px; }
  .login-pf-page.login-pf-page-accounts {
    margin-left: 20px;
    margin-right: 20px; }
  .login-pf-page .login-pf-accounts {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    max-width: 840px;
    margin-left: auto;
    margin-right: auto; }
    .login-pf-page .login-pf-accounts .login-pf-header, .login-pf-page .login-pf-accounts .login-pf-signup {
      flex-basis: 100%; }
  .login-pf-page .login-pf-social-section {
    flex-basis: 100%;
    padding: 0; }
    @media (min-width: 768px) {
      .login-pf-page .login-pf-social-section {
        flex: 0 1 50%;
        max-width: 50%; } }
    @media (min-width: 768px) {
      .login-pf-page .login-pf-social-section:first-of-type {
        padding-right: 40px; }
      .login-pf-page .login-pf-social-section:last-of-type {
        padding-left: 39px;
        border-left: 1px solid #d1d1d1; } }
  .login-pf-page .login-pf-social {
    margin: 40px 0 0 0; }
    @media (min-width: 768px) {
      .login-pf-page .login-pf-social {
        margin: 0; }
        .login-pf-page .login-pf-social-double-col {
          flex-wrap: wrap;
          display: flex;
          justify-content: space-between; }
          .login-pf-page .login-pf-social-double-col .login-pf-social-link {
            flex-basis: 48%; } }
    .login-pf-page .login-pf-social:not(.login-pf-social-all) .login-pf-social-link-more {
      display: none; }
    .login-pf-page .login-pf-social-link {
      margin-bottom: 15px; }
      .login-pf-page .login-pf-social-link a {
        display: block;
        padding: 7px 0;
        font-size: 14px;
        background: #f5f5f5;
        text-align: center;
        color: #72767b; }
        .login-pf-page .login-pf-social-link a img {
          margin: 0 10px 0 0;
          width: 20px;
          height: 20px; }
        .login-pf-page .login-pf-social-link a:hover {
          text-decoration: none;
          background: #ededed; }
    .login-pf-page .login-pf-social-toggle {
      float: right;
      padding: 0; }
      .login-pf-page .login-pf-social-toggle .caret {
        margin-left: 5px; }
      .login-pf-page .login-pf-social-toggle-active .caret {
        transform: rotate(-180deg); }

.layout-pf-alt-fixed.transitions .nav-pf-vertical-alt {
  transition: all 200ms cubic-bezier(0.35, 0, 0.25, 1); }
  .layout-pf-alt-fixed.transitions .nav-pf-vertical-alt.collapsed .list-group-item .list-group-item-value {
    transition: opacity 0ms 100ms, opacity 100ms linear; }
  .layout-pf-alt-fixed.transitions .nav-pf-vertical-alt .list-group-item .badge {
    transition: all 200ms cubic-bezier(0.35, 0, 0.25, 1); }
  .layout-pf-alt-fixed.transitions .nav-pf-vertical-alt .list-group-item .list-group-item-value {
    transition: opacity 500ms ease-out;
    transition-delay: 150ms; }

.nav-pf-vertical-alt {
  background: #fff; }
  .ie9.layout-pf-alt-fixed .nav-pf-vertical-alt {
    box-sizing: content-box; }
  .layout-pf-alt-fixed .nav-pf-vertical-alt {
    border-right: 1px solid #d1d1d1;
    bottom: 0;
    overflow-x: hidden;
    overflow-y: auto;
    left: 0;
    position: fixed;
    top: 60px;
    width: 250px;
    z-index: 1030; }
    .layout-pf-alt-fixed .nav-pf-vertical-alt.collapsed {
      width: 75px !important; }
      .layout-pf-alt-fixed .nav-pf-vertical-alt.collapsed .list-group-item .badge {
        padding: 2px 3px;
        right: 21px;
        top: 36px; }
      .layout-pf-alt-fixed .nav-pf-vertical-alt.collapsed .list-group-item .list-group-item-value {
        opacity: 0; }
    .layout-pf-alt-fixed .nav-pf-vertical-alt.hidden {
      display: none; }
      .layout-pf-alt-fixed .nav-pf-vertical-alt.hidden.show-mobile-nav {
        box-shadow: 0 0 3px rgba(3, 3, 3, 0.15);
        display: block !important; }
  .layout-pf-alt-fixed-with-footer .nav-pf-vertical-alt {
    bottom: 37px; }
  .nav-pf-vertical-alt .list-group {
    border-top: 0;
    margin-bottom: 0; }
  .nav-pf-vertical-alt .list-group-item {
    padding: 0; }
    .nav-pf-vertical-alt .list-group-item a {
      color: #363636;
      display: block;
      font-size: 14px;
      height: 63px;
      padding: 17px 20px 17px 25px;
      position: relative;
      white-space: nowrap; }
      .nav-pf-vertical-alt .list-group-item a:focus {
        color: #363636;
        text-decoration: none; }
      .nav-pf-vertical-alt .list-group-item a:hover {
        color: #39a5dc;
        text-decoration: none; }
    .nav-pf-vertical-alt .list-group-item.active {
      background-color: #fff;
      border-color: #f5f5f5; }
      .nav-pf-vertical-alt .list-group-item.active:before {
        background: #39a5dc;
        content: " ";
        display: block;
        height: 100%;
        left: 0;
        position: absolute;
        top: 0;
        width: 5px; }
      .nav-pf-vertical-alt .list-group-item.active a {
        color: #39a5dc; }
    .nav-pf-vertical-alt .list-group-item .badge {
      background: #363636;
      border: 1px solid #fff;
      border-radius: 3px;
      color: #fff;
      font-weight: 700;
      font-size: 9px;
      padding: 5px;
      position: absolute;
      right: 15px;
      text-align: center;
      top: 21px; }
      .nav-pf-vertical-alt .list-group-item .badge.notifications {
        background: #0088ce; }
    .nav-pf-vertical-alt .list-group-item .fa, .nav-pf-vertical-alt .list-group-item .fas, .nav-pf-vertical-alt .list-group-item .far, .nav-pf-vertical-alt .list-group-item .fab, .nav-pf-vertical-alt .list-group-item .fal,
    .nav-pf-vertical-alt .list-group-item .glyphicon,
    .nav-pf-vertical-alt .list-group-item .pficon {
      float: left;
      font-size: 18px;
      line-height: 30px;
      margin-right: 10px;
      text-align: center;
      width: 18px; }
    .nav-pf-vertical-alt .list-group-item .list-group-item-value {
      display: inline-block;
      line-height: 30px;
      opacity: 1;
      overflow: hidden;
      text-overflow: ellipsis;
      width: 140px; }
  .nav-pf-vertical-alt .list-group-item-separator {
    border-top-width: 5px; }
  .sidebar-pf .nav-pf-vertical-alt {
    margin-left: -20px;
    margin-right: -20px; }

.navbar-pf-alt {
  background-color: #030303;
  background-image: "bg-navbar-pf-alt.svg";
  background-repeat: no-repeat;
  background-size: auto 100%;
  border: none;
  border-radius: 0;
  border-top: 2px solid #39a5dc;
  margin-bottom: 0; }
  .navbar-pf-alt .infotip.bottom-right .arrow {
    left: 90%; }
  .layout-pf-alt-fixed .navbar-pf-alt {
    left: 0;
    position: fixed;
    right: 0;
    top: 0;
    z-index: 1030; }
  .navbar-pf-alt .nav.navbar-nav > li > .dropdown-menu.infotip {
    margin-top: 0; }
  .navbar-pf-alt .nav .nav-item-iconic {
    cursor: pointer;
    line-height: 1;
    max-height: 58px;
    padding: 21px 12px;
    position: relative; }
    .navbar-pf-alt .nav .nav-item-iconic:hover, .navbar-pf-alt .nav .nav-item-iconic:focus {
      background-color: transparent; }
      .navbar-pf-alt .nav .nav-item-iconic:hover .caret,
      .navbar-pf-alt .nav .nav-item-iconic:hover .fa, .navbar-pf-alt .nav .nav-item-iconic:hover .fas, .navbar-pf-alt .nav .nav-item-iconic:hover .far, .navbar-pf-alt .nav .nav-item-iconic:hover .fab, .navbar-pf-alt .nav .nav-item-iconic:hover .fal,
      .navbar-pf-alt .nav .nav-item-iconic:hover .glyphicon,
      .navbar-pf-alt .nav .nav-item-iconic:hover .pficon, .navbar-pf-alt .nav .nav-item-iconic:focus .caret,
      .navbar-pf-alt .nav .nav-item-iconic:focus .fa, .navbar-pf-alt .nav .nav-item-iconic:focus .fas, .navbar-pf-alt .nav .nav-item-iconic:focus .far, .navbar-pf-alt .nav .nav-item-iconic:focus .fab, .navbar-pf-alt .nav .nav-item-iconic:focus .fal,
      .navbar-pf-alt .nav .nav-item-iconic:focus .glyphicon,
      .navbar-pf-alt .nav .nav-item-iconic:focus .pficon {
        color: #fff; }
    .navbar-pf-alt .nav .nav-item-iconic .badge {
      background-color: #0088ce;
      border-radius: 20px;
      color: #fff;
      cursor: pointer;
      font-size: 9px;
      font-weight: 700;
      margin: 0 0 -11px -12px;
      min-width: 0;
      padding: 2px 4px; }
    .navbar-pf-alt .nav .nav-item-iconic .caret,
    .navbar-pf-alt .nav .nav-item-iconic .fa, .navbar-pf-alt .nav .nav-item-iconic .fas, .navbar-pf-alt .nav .nav-item-iconic .far, .navbar-pf-alt .nav .nav-item-iconic .fab, .navbar-pf-alt .nav .nav-item-iconic .fal,
    .navbar-pf-alt .nav .nav-item-iconic .pficon {
      color: #d1d1d1;
      font-size: 16px; }
    .navbar-pf-alt .nav .nav-item-iconic .caret {
      font-size: 12px;
      width: auto; }
  .navbar-pf-alt .nav .open > .nav-item-iconic, .navbar-pf-alt .nav .open > .nav-item-iconic:hover, .navbar-pf-alt .nav .open > .nav-item-iconic:focus {
    background: transparent; }
    .navbar-pf-alt .nav .open > .nav-item-iconic .caret,
    .navbar-pf-alt .nav .open > .nav-item-iconic .fa, .navbar-pf-alt .nav .open > .nav-item-iconic .fas, .navbar-pf-alt .nav .open > .nav-item-iconic .far, .navbar-pf-alt .nav .open > .nav-item-iconic .fab, .navbar-pf-alt .nav .open > .nav-item-iconic .fal,
    .navbar-pf-alt .nav .open > .nav-item-iconic .pficon, .navbar-pf-alt .nav .open > .nav-item-iconic:hover .caret,
    .navbar-pf-alt .nav .open > .nav-item-iconic:hover .fa, .navbar-pf-alt .nav .open > .nav-item-iconic:hover .fas, .navbar-pf-alt .nav .open > .nav-item-iconic:hover .far, .navbar-pf-alt .nav .open > .nav-item-iconic:hover .fab, .navbar-pf-alt .nav .open > .nav-item-iconic:hover .fal,
    .navbar-pf-alt .nav .open > .nav-item-iconic:hover .pficon, .navbar-pf-alt .nav .open > .nav-item-iconic:focus .caret,
    .navbar-pf-alt .nav .open > .nav-item-iconic:focus .fa, .navbar-pf-alt .nav .open > .nav-item-iconic:focus .fas, .navbar-pf-alt .nav .open > .nav-item-iconic:focus .far, .navbar-pf-alt .nav .open > .nav-item-iconic:focus .fab, .navbar-pf-alt .nav .open > .nav-item-iconic:focus .fal,
    .navbar-pf-alt .nav .open > .nav-item-iconic:focus .pficon {
      color: #fff; }
  .navbar-pf-alt .navbar-brand {
    color: #fff;
    height: auto;
    margin: 0 0 0 25px;
    min-height: 35px;
    padding: 11px 0 12px; }
    .navbar-pf-alt .navbar-brand .navbar-brand-name {
      display: inline;
      margin-left: 0 15px 0 0;
      margin-right: 0 15px 0 0; }
      @media (max-width: 480px) {
        .navbar-pf-alt .navbar-brand .navbar-brand-name {
          display: none; } }
    .navbar-pf-alt .navbar-brand .navbar-brand-icon {
      display: inline;
      margin-left: 0 15px 0 0;
      margin-right: 0 15px 0 0; }
  .navbar-pf-alt .navbar-iconic {
    margin-right: 0; }
  .navbar-pf-alt .navbar-toggle {
    border: 0;
    display: block;
    float: left;
    margin: 13px 15px; }
    .navbar-pf-alt .navbar-toggle:hover .icon-bar, .navbar-pf-alt .navbar-toggle:focus .icon-bar {
      background: #fff; }
    .navbar-pf-alt .navbar-toggle + .navbar-brand {
      margin-left: 0; }
    .navbar-pf-alt .navbar-toggle .icon-bar {
      background: #d1d1d1; }

.navbar-pf-vertical {
  background-color: #1d1d1d;
  border: none;
  border-radius: 0;
  border-top: 2px solid #39a5dc;
  margin-bottom: 0; }
  .navbar-pf-vertical .infotip.bottom-right .arrow {
    left: 90%; }
  .layout-pf-fixed .navbar-pf-vertical {
    left: 0;
    position: fixed;
    right: 0;
    top: 0;
    z-index: 1030; }
  .navbar-pf-vertical .nav.navbar-nav > li > .dropdown-menu.infotip {
    margin-top: 0; }
  .navbar-pf-vertical .nav .nav-item-iconic {
    color: #d1d1d1;
    cursor: pointer;
    line-height: 1;
    max-height: 58px;
    padding: 21px 12px;
    position: relative;
    margin: 0;
    border: 0; }
    .navbar-pf-vertical .nav .nav-item-iconic:hover {
      outline: 0 !important; }
    .navbar-pf-vertical .nav .nav-item-iconic:focus {
      outline: thin dotted;
      outline: 5px auto -webkit-focus-ring-color; }
    .navbar-pf-vertical .nav .nav-item-iconic:hover, .navbar-pf-vertical .nav .nav-item-iconic:focus {
      background-color: rgba(255, 255, 255, 0.14);
      text-decoration: none; }
    .navbar-pf-vertical .nav .nav-item-iconic .badge {
      background-color: #0088ce;
      border-radius: 20px;
      color: #fff;
      cursor: pointer;
      font-size: 9px;
      font-weight: 700;
      left: 20px;
      margin: 0;
      padding: 2px 4px;
      position: absolute;
      min-width: 10px;
      min-height: 10px;
      top: 18px; }
      .navbar-pf-vertical .nav .nav-item-iconic .badge.badge-pf-bordered {
        border: 1px solid #1d1d1d; }
    .navbar-pf-vertical .nav .nav-item-iconic .caret,
    .navbar-pf-vertical .nav .nav-item-iconic .fa, .navbar-pf-vertical .nav .nav-item-iconic .fas, .navbar-pf-vertical .nav .nav-item-iconic .far, .navbar-pf-vertical .nav .nav-item-iconic .fab, .navbar-pf-vertical .nav .nav-item-iconic .fal,
    .navbar-pf-vertical .nav .nav-item-iconic .pficon {
      color: #d1d1d1;
      font-size: 16px;
      position: relative; }
    .navbar-pf-vertical .nav .nav-item-iconic .caret {
      font-size: 12px;
      width: auto; }
    .navbar-pf-vertical .nav .nav-item-iconic > .dropdown-title {
      position: relative;
      display: inline-block;
      line-height: 1.55; }
    .navbar-pf-vertical .nav .nav-item-iconic > .pficon-user {
      padding-right: calc(4px + 3px);
      float: left; }
  .navbar-pf-vertical .nav .open > .nav-item-iconic, .navbar-pf-vertical .nav .open > .nav-item-iconic:hover, .navbar-pf-vertical .nav .open > .nav-item-iconic:focus {
    background: rgba(255, 255, 255, 0.24);
    color: #fff;
    outline: 0; }
    .navbar-pf-vertical .nav .open > .nav-item-iconic .caret,
    .navbar-pf-vertical .nav .open > .nav-item-iconic .fa, .navbar-pf-vertical .nav .open > .nav-item-iconic .fas, .navbar-pf-vertical .nav .open > .nav-item-iconic .far, .navbar-pf-vertical .nav .open > .nav-item-iconic .fab, .navbar-pf-vertical .nav .open > .nav-item-iconic .fal,
    .navbar-pf-vertical .nav .open > .nav-item-iconic .pficon, .navbar-pf-vertical .nav .open > .nav-item-iconic:hover .caret,
    .navbar-pf-vertical .nav .open > .nav-item-iconic:hover .fa, .navbar-pf-vertical .nav .open > .nav-item-iconic:hover .fas, .navbar-pf-vertical .nav .open > .nav-item-iconic:hover .far, .navbar-pf-vertical .nav .open > .nav-item-iconic:hover .fab, .navbar-pf-vertical .nav .open > .nav-item-iconic:hover .fal,
    .navbar-pf-vertical .nav .open > .nav-item-iconic:hover .pficon, .navbar-pf-vertical .nav .open > .nav-item-iconic:focus .caret,
    .navbar-pf-vertical .nav .open > .nav-item-iconic:focus .fa, .navbar-pf-vertical .nav .open > .nav-item-iconic:focus .fas, .navbar-pf-vertical .nav .open > .nav-item-iconic:focus .far, .navbar-pf-vertical .nav .open > .nav-item-iconic:focus .fab, .navbar-pf-vertical .nav .open > .nav-item-iconic:focus .fal,
    .navbar-pf-vertical .nav .open > .nav-item-iconic:focus .pficon {
      color: #fff; }
  .navbar-pf-vertical .navbar-brand {
    color: #fff;
    height: auto;
    margin: 0 0 0 25px;
    min-height: 35px;
    padding: 11px 0 12px; }
    .navbar-pf-vertical .navbar-brand .navbar-brand-name {
      display: inline-block;
      margin: 0 15px 0 0; }
      @media (max-width: 480px) {
        .navbar-pf-vertical .navbar-brand .navbar-brand-name {
          display: none; } }
    .navbar-pf-vertical .navbar-brand .navbar-brand-icon {
      display: inline-block;
      margin: 0 15px 0 0;
      max-height: 35px; }
    .navbar-pf-vertical .navbar-brand .navbar-brand-txt {
      line-height: 34px; }
  .navbar-pf-vertical .navbar-iconic {
    margin-right: 0; }
  .navbar-pf-vertical .navbar-toggle {
    border: 0;
    display: block;
    float: left;
    margin: 13px 15px; }
    .navbar-pf-vertical .navbar-toggle:hover .icon-bar, .navbar-pf-vertical .navbar-toggle:focus .icon-bar {
      background: #fff; }
    .navbar-pf-vertical .navbar-toggle + .navbar-brand {
      margin-left: 0; }
    .navbar-pf-vertical .navbar-toggle .icon-bar {
      background: #d1d1d1; }

.navbar-pf {
  background: #030303;
  border: 0;
  border-radius: 0;
  border-top: 3px solid #39a5dc;
  margin-bottom: 0;
  min-height: 0; }
  .navbar-pf .navbar-brand {
    color: #f5f5f5;
    height: auto;
    padding: 12px 0;
    margin: 0 0 0 20px; }
    .navbar-pf .navbar-brand img {
      display: block; }
  .navbar-pf .navbar-collapse {
    border-top: 0;
    -webkit-box-shadow: none;
    box-shadow: none;
    padding: 0; }
  .navbar-pf .navbar-header {
    border-bottom: 1px solid #292929;
    float: none; }
  .navbar-pf .navbar-nav {
    margin: 0; }
    .navbar-pf .navbar-nav > .active > a, .navbar-pf .navbar-nav > .active > a:hover, .navbar-pf .navbar-nav > .active > a:focus,
    .navbar-pf .navbar-nav > .active > button,
    .navbar-pf .navbar-nav > .active > button:hover,
    .navbar-pf .navbar-nav > .active > button:focus {
      background-color: rgba(255, 255, 255, 0.24);
      color: #f5f5f5; }
    .navbar-pf .navbar-nav > li > a,
    .navbar-pf .navbar-nav > li > button {
      color: #d1d1d1;
      line-height: 1;
      padding: 10px 20px;
      text-shadow: none; }
      .navbar-pf .navbar-nav > li > a:hover, .navbar-pf .navbar-nav > li > a:focus,
      .navbar-pf .navbar-nav > li > button:hover,
      .navbar-pf .navbar-nav > li > button:focus {
        color: #f5f5f5;
        text-decoration: none; }
      .navbar-pf .navbar-nav > li > a > .dropdown-title,
      .navbar-pf .navbar-nav > li > a > .pficon-user,
      .navbar-pf .navbar-nav > li > button > .dropdown-title,
      .navbar-pf .navbar-nav > li > button > .pficon-user {
        position: relative; }
      .navbar-pf .navbar-nav > li > a > .pficon-user,
      .navbar-pf .navbar-nav > li > button > .pficon-user {
        padding-right: 4px; }
    .navbar-pf .navbar-nav > .open > a, .navbar-pf .navbar-nav > .open > a:hover, .navbar-pf .navbar-nav > .open > a:focus,
    .navbar-pf .navbar-nav > .open > button,
    .navbar-pf .navbar-nav > .open > button:hover,
    .navbar-pf .navbar-nav > .open > button:focus {
      background-color: rgba(255, 255, 255, 0.24);
      color: #f5f5f5;
      outline: 0; }
    .navbar-pf .navbar-nav .badge {
      background-color: #0088ce;
      border-radius: 20px;
      color: #fff;
      cursor: pointer;
      font-size: 9px;
      font-weight: 700;
      left: 26px;
      margin: 0;
      padding: 2px 4px;
      position: absolute;
      min-width: 10px;
      min-height: 10px;
      top: 6px; }
      @media (min-width: 768px) {
        .navbar-pf .navbar-nav .badge {
          left: auto;
          right: 6px;
          top: 3px; } }
      .navbar-pf .navbar-nav .badge.badge-pf-bordered {
        border: 1px solid #030303; }
    @media (max-width: 767px) {
      .navbar-pf .navbar-nav .active .dropdown-menu,
      .navbar-pf .navbar-nav .active .navbar-persistent,
      .navbar-pf .navbar-nav .open .dropdown-menu {
        background-color: #171717 !important;
        margin-left: 0;
        padding-bottom: 0;
        padding-top: 0; }
        .navbar-pf .navbar-nav .active .dropdown-menu > .active > a, .navbar-pf .navbar-nav .active .dropdown-menu > .active > a:hover, .navbar-pf .navbar-nav .active .dropdown-menu > .active > a:focus,
        .navbar-pf .navbar-nav .active .dropdown-menu .dropdown-submenu.open > a,
        .navbar-pf .navbar-nav .active .dropdown-menu .dropdown-submenu.open > a:hover,
        .navbar-pf .navbar-nav .active .dropdown-menu .dropdown-submenu.open > a:focus,
        .navbar-pf .navbar-nav .active .navbar-persistent > .active > a,
        .navbar-pf .navbar-nav .active .navbar-persistent > .active > a:hover,
        .navbar-pf .navbar-nav .active .navbar-persistent > .active > a:focus,
        .navbar-pf .navbar-nav .active .navbar-persistent .dropdown-submenu.open > a,
        .navbar-pf .navbar-nav .active .navbar-persistent .dropdown-submenu.open > a:hover,
        .navbar-pf .navbar-nav .active .navbar-persistent .dropdown-submenu.open > a:focus,
        .navbar-pf .navbar-nav .open .dropdown-menu > .active > a,
        .navbar-pf .navbar-nav .open .dropdown-menu > .active > a:hover,
        .navbar-pf .navbar-nav .open .dropdown-menu > .active > a:focus,
        .navbar-pf .navbar-nav .open .dropdown-menu .dropdown-submenu.open > a,
        .navbar-pf .navbar-nav .open .dropdown-menu .dropdown-submenu.open > a:hover,
        .navbar-pf .navbar-nav .open .dropdown-menu .dropdown-submenu.open > a:focus {
          background-color: rgba(255, 255, 255, 0.24) !important;
          color: #f5f5f5; }
        .navbar-pf .navbar-nav .active .dropdown-menu > li > a,
        .navbar-pf .navbar-nav .active .navbar-persistent > li > a,
        .navbar-pf .navbar-nav .open .dropdown-menu > li > a {
          background-color: transparent;
          border: 0;
          color: #d1d1d1;
          outline: none;
          padding-left: 30px; }
          .navbar-pf .navbar-nav .active .dropdown-menu > li > a:hover,
          .navbar-pf .navbar-nav .active .navbar-persistent > li > a:hover,
          .navbar-pf .navbar-nav .open .dropdown-menu > li > a:hover {
            color: #f5f5f5; }
        .navbar-pf .navbar-nav .active .dropdown-menu .divider,
        .navbar-pf .navbar-nav .active .navbar-persistent .divider,
        .navbar-pf .navbar-nav .open .dropdown-menu .divider {
          background-color: #292929;
          margin: 0 1px; }
        .navbar-pf .navbar-nav .active .dropdown-menu .dropdown-header,
        .navbar-pf .navbar-nav .active .navbar-persistent .dropdown-header,
        .navbar-pf .navbar-nav .open .dropdown-menu .dropdown-header {
          padding-bottom: 0;
          padding-left: 30px; }
        .navbar-pf .navbar-nav .active .dropdown-menu .dropdown-submenu.open .dropdown-toggle,
        .navbar-pf .navbar-nav .active .navbar-persistent .dropdown-submenu.open .dropdown-toggle,
        .navbar-pf .navbar-nav .open .dropdown-menu .dropdown-submenu.open .dropdown-toggle {
          color: #f5f5f5; }
        .navbar-pf .navbar-nav .active .dropdown-menu .dropdown-submenu.pull-left,
        .navbar-pf .navbar-nav .active .navbar-persistent .dropdown-submenu.pull-left,
        .navbar-pf .navbar-nav .open .dropdown-menu .dropdown-submenu.pull-left {
          float: none !important; }
        .navbar-pf .navbar-nav .active .dropdown-menu .dropdown-submenu > a:after,
        .navbar-pf .navbar-nav .active .navbar-persistent .dropdown-submenu > a:after,
        .navbar-pf .navbar-nav .open .dropdown-menu .dropdown-submenu > a:after {
          display: none; }
        .navbar-pf .navbar-nav .active .dropdown-menu .dropdown-submenu .dropdown-header,
        .navbar-pf .navbar-nav .active .navbar-persistent .dropdown-submenu .dropdown-header,
        .navbar-pf .navbar-nav .open .dropdown-menu .dropdown-submenu .dropdown-header {
          padding-left: 45px; }
        .navbar-pf .navbar-nav .active .dropdown-menu .dropdown-submenu .dropdown-menu,
        .navbar-pf .navbar-nav .active .navbar-persistent .dropdown-submenu .dropdown-menu,
        .navbar-pf .navbar-nav .open .dropdown-menu .dropdown-submenu .dropdown-menu {
          border: 0;
          bottom: auto;
          -webkit-box-shadow: none;
          box-shadow: none;
          display: block;
          float: none;
          margin: 0;
          min-width: 0;
          padding: 0;
          position: relative;
          left: auto;
          right: auto;
          top: auto; }
          .navbar-pf .navbar-nav .active .dropdown-menu .dropdown-submenu .dropdown-menu > li > a,
          .navbar-pf .navbar-nav .active .navbar-persistent .dropdown-submenu .dropdown-menu > li > a,
          .navbar-pf .navbar-nav .open .dropdown-menu .dropdown-submenu .dropdown-menu > li > a {
            padding: 5px 15px 5px 45px;
            line-height: 20px; }
          .navbar-pf .navbar-nav .active .dropdown-menu .dropdown-submenu .dropdown-menu .dropdown-menu > li > a,
          .navbar-pf .navbar-nav .active .navbar-persistent .dropdown-submenu .dropdown-menu .dropdown-menu > li > a,
          .navbar-pf .navbar-nav .open .dropdown-menu .dropdown-submenu .dropdown-menu .dropdown-menu > li > a {
            padding-left: 60px; }
      .navbar-pf .navbar-nav .active .navbar-persistent .dropdown-submenu.open .dropdown-menu {
        display: block; }
      .navbar-pf .navbar-nav .active .navbar-persistent .dropdown-submenu > a:after {
        display: inline-block !important;
        position: relative;
        right: auto;
        top: 1px; }
      .navbar-pf .navbar-nav .active .navbar-persistent .dropdown-submenu .dropdown-menu {
        display: none; }
      .navbar-pf .navbar-nav .active .navbar-persistent .dropdown-submenu .dropdown-submenu > a:after {
        display: none !important; }
      .navbar-pf .navbar-nav .context-bootstrap-select .open > .dropdown-menu {
        background-color: #fff !important; }
        .navbar-pf .navbar-nav .context-bootstrap-select .open > .dropdown-menu > .active > a, .navbar-pf .navbar-nav .context-bootstrap-select .open > .dropdown-menu > .active > a:active {
          background-color: #def3ff !important;
          border-color: #bee1f4 !important;
          color: #363636 !important; }
          .navbar-pf .navbar-nav .context-bootstrap-select .open > .dropdown-menu > .active > a small, .navbar-pf .navbar-nav .context-bootstrap-select .open > .dropdown-menu > .active > a:active small {
            color: #9c9c9c !important; }
        .navbar-pf .navbar-nav .context-bootstrap-select .open > .dropdown-menu > .disabled > a {
          color: #9c9c9c !important; }
        .navbar-pf .navbar-nav .context-bootstrap-select .open > .dropdown-menu > .selected > a, .navbar-pf .navbar-nav .context-bootstrap-select .open > .dropdown-menu > .selected > a:active {
          background-color: #0088ce !important;
          border-color: #0088ce !important;
          color: #fff !important; }
          .navbar-pf .navbar-nav .context-bootstrap-select .open > .dropdown-menu > .selected > a small, .navbar-pf .navbar-nav .context-bootstrap-select .open > .dropdown-menu > .selected > a:active small {
            color: rgba(255, 255, 255, 0.5) !important; }
        .navbar-pf .navbar-nav .context-bootstrap-select .open > .dropdown-menu li > a.opt {
          border-bottom: 1px solid transparent;
          border-top: 1px solid transparent;
          color: #363636;
          padding-left: 10px;
          padding-right: 10px; }
        .navbar-pf .navbar-nav .context-bootstrap-select .open > .dropdown-menu li a:active small {
          color: rgba(255, 255, 255, 0.5) !important; }
        .navbar-pf .navbar-nav .context-bootstrap-select .open > .dropdown-menu li a:hover small, .navbar-pf .navbar-nav .context-bootstrap-select .open > .dropdown-menu li a:focus small {
          color: #9c9c9c; }
      .navbar-pf .navbar-nav .context-bootstrap-select > .open > .dropdown-menu {
        padding-bottom: 5px;
        padding-top: 5px; } }
  .navbar-pf .navbar-persistent {
    display: none; }
  .navbar-pf .active > .navbar-persistent {
    display: block; }
  .navbar-pf .navbar-primary {
    float: none; }
    .navbar-pf .navbar-primary .context {
      border-bottom: 1px solid #292929; }
      .navbar-pf .navbar-primary .context.context-bootstrap-select .bootstrap-select.btn-group, .navbar-pf .navbar-primary .context.context-bootstrap-select .bootstrap-select.btn-group[class*="span"] {
        margin: 8px 20px 9px;
        width: auto; }
    .navbar-pf .navbar-primary > li > .navbar-persistent > .dropdown-submenu > a {
      position: relative; }
      .navbar-pf .navbar-primary > li > .navbar-persistent > .dropdown-submenu > a:after {
        content: "";
        display: inline-block;
        font-family: "FontAwesome";
        font-weight: normal; }
        @media (max-width: 767px) {
          .navbar-pf .navbar-primary > li > .navbar-persistent > .dropdown-submenu > a:after {
            height: 10px;
            margin-left: 4px;
            vertical-align: baseline; } }
  .navbar-pf .navbar-toggle {
    border: 0;
    margin: 0;
    padding: 10px 20px; }
    .navbar-pf .navbar-toggle:hover, .navbar-pf .navbar-toggle:focus {
      background-color: transparent;
      outline: none; }
      .navbar-pf .navbar-toggle:hover .icon-bar, .navbar-pf .navbar-toggle:focus .icon-bar {
        -webkit-box-shadow: 0 0 3px #fff;
        box-shadow: 0 0 3px #fff; }
    .navbar-pf .navbar-toggle .icon-bar {
      background-color: #fff; }
  .navbar-pf .navbar-utility {
    border-bottom: 1px solid #292929; }
    .navbar-pf .navbar-utility li.dropdown > a,
    .navbar-pf .navbar-utility li.dropdown > button {
      position: relative; }
      .navbar-pf .navbar-utility li.dropdown > a:hover,
      .navbar-pf .navbar-utility li.dropdown > button:hover {
        outline: 0 !important; }
      .navbar-pf .navbar-utility li.dropdown > a > .fa, .navbar-pf .navbar-utility li.dropdown > a .fas, .navbar-pf .navbar-utility li.dropdown > a .far, .navbar-pf .navbar-utility li.dropdown > a .fab, .navbar-pf .navbar-utility li.dropdown > a .fal,
      .navbar-pf .navbar-utility li.dropdown > a .pficon,
      .navbar-pf .navbar-utility li.dropdown > button > .fa,
      .navbar-pf .navbar-utility li.dropdown > button .fas,
      .navbar-pf .navbar-utility li.dropdown > button .far,
      .navbar-pf .navbar-utility li.dropdown > button .fab,
      .navbar-pf .navbar-utility li.dropdown > button .fal,
      .navbar-pf .navbar-utility li.dropdown > button .pficon {
        line-height: 0; }
    @media (max-width: 767px) {
      .navbar-pf .navbar-utility > li + li {
        border-top: 1px solid #292929; } }

@media (min-width: 768px) {
  .navbar-pf .navbar-brand {
    padding: 8px 0 7px; }
  .navbar-pf .navbar-nav > li > a,
  .navbar-pf .navbar-nav > li > button {
    padding-bottom: 14px;
    padding-top: 14px; }
  .navbar-pf .navbar-persistent {
    font-size: 14px; }
  .navbar-pf .navbar-primary {
    font-size: 14px;
    background-image: -webkit-linear-gradient(top, #1d1d1d 0%, #030303 100%);
    background-image: -o-linear-gradient(top, #1d1d1d 0%, #030303 100%);
    background-image: linear-gradient(to bottom, #1d1d1d 0%, #030303 100%);
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FF1D1D1D', endColorstr='#FF030303', GradientType=0);
    background-repeat: repeat-x; }
    .navbar-pf .navbar-primary.persistent-secondary .context .dropdown-menu {
      top: auto; }
    .navbar-pf .navbar-primary.persistent-secondary .dropup .dropdown-menu {
      bottom: -5px;
      top: auto; }
    .navbar-pf .navbar-primary.persistent-secondary > li {
      position: static; }
      .navbar-pf .navbar-primary.persistent-secondary > li.active {
        margin-bottom: 32px; }
        .navbar-pf .navbar-primary.persistent-secondary > li.active > .navbar-persistent {
          display: block;
          left: 0;
          position: absolute; }
      .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent {
        background: #f5f5f5;
        border-bottom: 1px solid #d1d1d1;
        padding: 0;
        width: 100%; }
        .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent a {
          text-decoration: none !important; }
        .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li.active:before, .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li.active:hover:before {
          background: #0088ce;
          bottom: -1px;
          content: "";
          display: block;
          height: 2px;
          left: 20px;
          position: absolute;
          right: 20px; }
        .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li.active > a,
        .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li.active > a:hover,
        .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li.active:hover > a {
          color: #0088ce !important; }
        .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li.active .active > a {
          color: #f5f5f5; }
        .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li.dropdown-submenu:hover > .dropdown-menu {
          display: none; }
        .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li.dropdown-submenu.open > .dropdown-menu {
          display: block;
          left: 20px;
          margin-top: 1px;
          top: 100%; }
        .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li.dropdown-submenu.open > .dropdown-toggle {
          color: #252525; }
          .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li.dropdown-submenu.open > .dropdown-toggle:after {
            border-top-color: #252525; }
        .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li.dropdown-submenu > .dropdown-toggle {
          padding-right: 35px !important; }
          .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li.dropdown-submenu > .dropdown-toggle:after {
            position: absolute;
            right: 20px;
            top: 10px; }
        .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li:hover:before, .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li.open:before {
          background: #bbb;
          bottom: -1px;
          content: "";
          display: block;
          height: 2px;
          left: 20px;
          position: absolute;
          right: 20px; }
        .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li:hover > a, .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li.open > a {
          color: #252525; }
          .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li:hover > a:after, .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li.open > a:after {
            border-top-color: #252525; }
        .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li > a {
          background-color: transparent;
          display: block;
          line-height: 1;
          padding: 9px 20px; }
          .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li > a.dropdown-toggle {
            padding-right: 35px; }
            .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li > a.dropdown-toggle:after {
              font-size: 15px;
              position: absolute;
              right: 20px;
              top: 9px; }
          .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li > a:hover {
            color: #252525; }
        .navbar-pf .navbar-primary.persistent-secondary > li > .navbar-persistent > li a {
          color: #4d5258; }
    .navbar-pf .navbar-primary > li > a,
    .navbar-pf .navbar-primary > li > button {
      border-bottom: 1px solid transparent;
      border-top: 1px solid transparent;
      position: relative;
      margin: -1px 0 0; }
      .navbar-pf .navbar-primary > li > a:hover,
      .navbar-pf .navbar-primary > li > button:hover {
        background-color: rgba(255, 255, 255, 0.14);
        border-top-color: #5c5c5c;
        color: #d1d1d1;
        background-image: -webkit-linear-gradient(top, #363636 0%, #1d1d1d 100%);
        background-image: -o-linear-gradient(top, #363636 0%, #1d1d1d 100%);
        background-image: linear-gradient(to bottom, #363636 0%, #1d1d1d 100%);
        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FF363636', endColorstr='#FF1D1D1D', GradientType=0);
        background-repeat: repeat-x; }
    .navbar-pf .navbar-primary > .active > a, .navbar-pf .navbar-primary > .active > a:hover, .navbar-pf .navbar-primary > .active > a:focus,
    .navbar-pf .navbar-primary > .active > button,
    .navbar-pf .navbar-primary > .active > button:hover,
    .navbar-pf .navbar-primary > .active > button:focus,
    .navbar-pf .navbar-primary .open > a,
    .navbar-pf .navbar-primary .open > a:hover,
    .navbar-pf .navbar-primary .open > a:focus,
    .navbar-pf .navbar-primary .open > button,
    .navbar-pf .navbar-primary .open > button:hover,
    .navbar-pf .navbar-primary .open > button:focus {
      background-color: rgba(255, 255, 255, 0.24);
      border-bottom-color: #303030;
      border-top-color: dimgray;
      -webkit-box-shadow: none;
      box-shadow: none;
      color: #f5f5f5;
      background-image: -webkit-linear-gradient(top, #434343 0%, #303030 100%);
      background-image: -o-linear-gradient(top, #434343 0%, #303030 100%);
      background-image: linear-gradient(to bottom, #434343 0%, #303030 100%);
      filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FF434343', endColorstr='#FF303030', GradientType=0);
      background-repeat: repeat-x; }
    .navbar-pf .navbar-primary li.context.context-bootstrap-select .filter-option {
      max-width: 160px;
      text-overflow: ellipsis; }
    .navbar-pf .navbar-primary li.context.dropdown {
      border-bottom: 0; }
    .navbar-pf .navbar-primary li.context > a, .navbar-pf .navbar-primary li.context.context-bootstrap-select {
      background-color: #1f1f1f;
      border-bottom-color: #3e3e3e;
      border-right: 1px solid #3e3e3e;
      border-top-color: #3b3b3b;
      font-weight: 600;
      background-image: -webkit-linear-gradient(top, #323232 0%, #1f1f1f 100%);
      background-image: -o-linear-gradient(top, #323232 0%, #1f1f1f 100%);
      background-image: linear-gradient(to bottom, #323232 0%, #1f1f1f 100%);
      filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FF323232', endColorstr='#FF1F1F1F', GradientType=0);
      background-repeat: repeat-x; }
      .navbar-pf .navbar-primary li.context > a:hover, .navbar-pf .navbar-primary li.context.context-bootstrap-select:hover {
        background-color: #323232;
        border-bottom-color: #4a4a4a;
        border-right-color: #4a4a4a;
        border-top-color: #4a4a4a;
        background-image: -webkit-linear-gradient(top, #3f3f3f 0%, #323232 100%);
        background-image: -o-linear-gradient(top, #3f3f3f 0%, #323232 100%);
        background-image: linear-gradient(to bottom, #3f3f3f 0%, #323232 100%);
        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FF3F3F3F', endColorstr='#FF323232', GradientType=0);
        background-repeat: repeat-x; }
    .navbar-pf .navbar-primary li.context.open > a {
      background-color: #454545;
      border-bottom-color: #575757;
      border-right-color: #575757;
      border-top-color: #5a5a5a;
      background-image: -webkit-linear-gradient(top, #4c4c4c 0%, #454545 100%);
      background-image: -o-linear-gradient(top, #4c4c4c 0%, #454545 100%);
      background-image: linear-gradient(to bottom, #4c4c4c 0%, #454545 100%);
      filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FF4C4C4C', endColorstr='#FF454545', GradientType=0);
      background-repeat: repeat-x; }
  .navbar-pf .navbar-utility {
    border-bottom: 0;
    position: absolute;
    right: 0;
    top: 0; }
    .navbar-pf .navbar-utility > .active > a, .navbar-pf .navbar-utility > .active > a:hover, .navbar-pf .navbar-utility > .active > a:focus,
    .navbar-pf .navbar-utility > .active > button,
    .navbar-pf .navbar-utility > .active > button:hover,
    .navbar-pf .navbar-utility > .active > button:focus,
    .navbar-pf .navbar-utility > .open > a,
    .navbar-pf .navbar-utility > .open > a:hover,
    .navbar-pf .navbar-utility > .open > a:focus,
    .navbar-pf .navbar-utility > .open > button,
    .navbar-pf .navbar-utility > .open > button:hover,
    .navbar-pf .navbar-utility > .open > button:focus {
      background: rgba(255, 255, 255, 0.24);
      color: #f5f5f5; }
    .navbar-pf .navbar-utility > li > a,
    .navbar-pf .navbar-utility > li > button {
      border: solid #2b2b2b;
      border-width: 0 0 0 1px;
      color: #d1d1d1 !important;
      padding: 7px 10px;
      font-size: 11px;
      margin: 0; }
      .navbar-pf .navbar-utility > li > a:hover,
      .navbar-pf .navbar-utility > li > button:hover {
        background: rgba(255, 255, 255, 0.14);
        border-left-color: #373737;
        outline: 0; }
    .navbar-pf .navbar-utility > li.open > a,
    .navbar-pf .navbar-utility > li.open > button {
      border-left-color: #444444;
      color: #f5f5f5 !important; }
    .navbar-pf .navbar-utility .open .dropdown-menu {
      left: auto;
      right: 0; }
      .navbar-pf .navbar-utility .open .dropdown-menu .dropdown-menu {
        left: auto;
        right: 100%; }
  .navbar-pf .navbar-utility .open .dropdown-menu {
    border-top-width: 0; }
  .navbar-pf .open.bootstrap-select .dropdown-menu,
  .navbar-pf .open .dropdown-submenu > .dropdown-menu {
    border-top-width: 1px !important; } }

@media (max-width: 360px) {
  .navbar-pf .navbar-brand {
    margin-left: 10px;
    width: 75%; }
    .navbar-pf .navbar-brand img {
      height: auto;
      max-width: 100%; }
  .navbar-pf .navbar-toggle {
    padding-left: 0; } }

.drawer-pf {
  background-color: #fafafa;
  border: 1px solid #d1d1d1;
  -webkit-box-shadow: 0 6px 12px rgba(3, 3, 3, 0.175);
  box-shadow: 0 6px 12px rgba(3, 3, 3, 0.175);
  overflow-y: auto;
  position: absolute;
  right: 0;
  width: 320px;
  z-index: 2; }
  .drawer-pf .panel {
    border-bottom: none;
    border-left: none;
    border-right: none; }
  .drawer-pf .panel-group .panel-heading + .panel-collapse .panel-body {
    border-top: none;
    border-bottom: 1px solid #d1d1d1;
    padding: 0; }
  .drawer-pf .panel-counter {
    display: block;
    font-style: italic;
    line-height: 1.2;
    padding-left: 18px;
    padding-top: 5px; }
  .drawer-pf .panel-heading {
    border-bottom: 1px solid #d1d1d1; }
  .drawer-pf .panel-group {
    bottom: 0;
    margin-bottom: 0;
    position: absolute;
    top: 25px;
    width: 100%; }
  .drawer-pf .panel-title a {
    cursor: pointer;
    display: block; }
  .drawer-pf.drawer-pf-expanded {
    width: inherit; }
    @media (max-width: 767px) {
      .drawer-pf.drawer-pf-expanded {
        left: 0;
        width: 100%; } }
    @media (min-width: 767px) {
      .drawer-pf.drawer-pf-expanded {
        left: 270px; } }
    .drawer-pf.drawer-pf-expanded .drawer-pf-toggle-expand:before {
      content: "\f101"; }
  .drawer-pf .blank-slate-pf {
    border: 0;
    margin-bottom: 0;
    padding: 30px; }
    .drawer-pf .blank-slate-pf .blank-slate-pf-icon {
      font-size: 3em;
      line-height: 1em; }
    .drawer-pf .blank-slate-pf h1 {
      font-size: 1em;
      margin-bottom: 0;
      margin-top: 15px; }

.drawer-pf-close, .drawer-pf-toggle-expand {
  color: #252525;
  cursor: pointer;
  line-height: inherit;
  padding: 2px 10px;
  position: absolute; }
  .drawer-pf-close:hover, .drawer-pf-close:focus, .drawer-pf-toggle-expand:hover, .drawer-pf-toggle-expand:focus {
    color: #0088ce;
    text-decoration: none; }

.drawer-pf-toggle-expand {
  left: 0; }
  .drawer-pf-toggle-expand:before {
    content: "\f100";
    font-family: "FontAwesome"; }
  .drawer-pf-toggle-expand:hover {
    color: #0088ce; }

.drawer-pf-close {
  right: 0; }

.drawer-pf-action {
  display: flex;
  border-bottom: 1px solid #d1d1d1; }
  .drawer-pf-action .btn-link {
    color: #0088ce;
    padding: 10px 0; }
    .drawer-pf-action .btn-link .pficon, .drawer-pf-action .btn-link .fa, .drawer-pf-action .btn-link .fas, .drawer-pf-action .btn-link .far, .drawer-pf-action .btn-link .fab, .drawer-pf-action .btn-link .fal {
      margin-right: 3px; }
    .drawer-pf-action .btn-link .pficon-close {
      position: relative;
      top: 1px; }
    .drawer-pf-action .btn-link:hover {
      color: #00659c; }

.drawer-pf-action-link {
  border-left: solid 1px #d1d1d1;
  flex: 1 1 0%;
  margin: 10px 0;
  text-align: center; }
  .drawer-pf-action-link:first-of-type {
    border-left-width: 0; }
  .drawer-pf-action-link .btn-link {
    padding: 0; }

.drawer-pf-loading {
  color: #4d5258;
  font-size: 14px;
  padding: 20px 15px; }

.drawer-pf-notification {
  border-bottom: 1px solid #d1d1d1;
  padding: 15px; }
  .drawer-pf-notification .date {
    border-right: 1px solid #aaa;
    display: inline-block;
    line-height: 1;
    margin-right: 5px;
    padding-right: 9px; }
  .drawer-pf-notification > .dropdown-kebab-pf {
    margin-top: -3px; }
  .drawer-pf-notification .pficon {
    font-size: 14px;
    margin-top: 3px; }
  .drawer-pf-notification:last-of-type {
    border-bottom: none; }
  .drawer-pf-notification:hover {
    background-color: #def3ff; }
  .drawer-pf-notification.unread .drawer-pf-notification-message {
    font-weight: bold;
    cursor: pointer; }
  .drawer-pf-notification.expanded-notification .date {
    border-right: none;
    padding-right: 0; }

.drawer-pf-notification-content {
  cursor: default; }

.drawer-pf-notification-info,
.drawer-pf-notification-message {
  display: block;
  padding-left: 27px;
  padding-right: 19px; }
  .expanded-notification .drawer-pf-notification-info, .expanded-notification
  .drawer-pf-notification-message {
    display: inline-block; }

.drawer-pf-title {
  background-color: #fafafa;
  border-bottom: 1px solid #d1d1d1;
  position: absolute;
  width: 100%; }
  .drawer-pf-title h3 {
    font-size: 12px;
    margin: 0;
    padding: 6px 15px; }

.drawer-pf-notification.expanded-notification .drawer-pf-notification-content {
  display: flex; }
  @media (max-width: 991px) {
    .drawer-pf-notification.expanded-notification .drawer-pf-notification-content {
      flex-direction: column; } }
  .drawer-pf-notification.expanded-notification .drawer-pf-notification-content .drawer-pf-notification-message {
    flex: 1 1; }

/* Exclusive styles to work with Vertical Navigation */
.navbar-pf-vertical .drawer-pf {
  height: calc(100vh - 58px - 20px);
  top: 58px; }
  @media (max-width: 767px) {
    .navbar-pf-vertical .drawer-pf {
      width: 100%;
      height: calc(unquote("100vh - 58px")); } }

.navbar-pf-vertical .nav .drawer-pf-trigger .drawer-pf-trigger-icon {
  border-left: 1px solid #2b2b2b;
  border-right: 1px solid #2b2b2b;
  padding-left: 15px;
  padding-right: 15px; }

.navbar-pf-vertical .nav .drawer-pf-trigger.open .drawer-pf-trigger-icon {
  background-color: #232323; }

/* Exclusive styles to work with Horizontal Navigation */
.navbar-pf .drawer-pf {
  height: calc(100vh - 25px - 20px);
  top: 25px;
  border-top: 0; }
  @media (max-width: 767px) {
    .navbar-pf .drawer-pf {
      width: 100%;
      height: calc(unquote("100vh - 25px - 32px"));
      top: calc(unquote("25px + 10px")); } }

.navbar-pf .drawer-pf-trigger-icon {
  cursor: pointer; }

.search-pf.has-button {
  border-collapse: separate;
  display: table; }
  .search-pf.has-button .form-group {
    display: table-cell;
    width: 100%; }
    .search-pf.has-button .form-group .btn {
      -webkit-box-shadow: none;
      box-shadow: none;
      float: left;
      margin-left: -1px; }
      .search-pf.has-button .form-group .btn.btn-lg, .search-pf.has-button .form-group .btn-group-lg > .btn {
        font-size: 14.5px; }
      .search-pf.has-button .form-group .btn.btn-sm, .search-pf.has-button .form-group .btn-group-sm > .btn {
        font-size: 10.7px; }
    .search-pf.has-button .form-group .form-control {
      float: left; }

.search-pf .has-clear .clear {
  background: rgba(255, 255, 255, 0);
  border: 0;
  height: 25px;
  line-height: 1;
  padding: 0;
  position: absolute;
  right: 1px;
  top: 1px;
  width: 28px; }
  .search-pf .has-clear .clear:focus {
    outline: none; }

.search-pf .has-clear .form-control {
  padding-right: 30px; }
  .search-pf .has-clear .form-control::-ms-clear {
    display: none; }

.search-pf .has-clear .input-lg + .clear, .search-pf .has-clear .input-group-lg > .form-control + .clear, .search-pf .has-clear .input-group-lg > .input-group-addon + .clear, .search-pf .has-clear .input-group-lg > .input-group-btn > .btn + .clear {
  height: 31px;
  width: 28px; }

.search-pf .has-clear .input-sm + .clear, .search-pf .has-clear .input-group-sm > .form-control + .clear, .search-pf .has-clear .input-group-sm > .input-group-addon + .clear, .search-pf .has-clear .input-group-sm > .input-group-btn > .btn + .clear {
  height: 20px;
  width: 28px; }
  .search-pf .has-clear .input-sm + .clear span, .search-pf .has-clear .input-group-sm > .form-control + .clear span, .search-pf .has-clear .input-group-sm > .input-group-addon + .clear span, .search-pf .has-clear .input-group-sm > .input-group-btn > .btn + .clear span {
    font-size: 10px; }

.search-pf .has-clear .search-pf-input-group {
  position: relative; }

.sidebar-header {
  border-bottom: 1px solid #ececec;
  padding-bottom: 11px;
  margin: 50px 0 20px; }
  .sidebar-header .actions {
    margin-top: -2px; }

.sidebar-pf .sidebar-header + .list-group {
  border-top: 0;
  margin-top: -10px; }
  .sidebar-pf .sidebar-header + .list-group .list-group-item {
    background: transparent;
    border-color: #ececec;
    padding-left: 0; }
  .sidebar-pf .sidebar-header + .list-group .list-group-item-heading {
    font-size: 12px; }

.sidebar-pf .nav-category h2 {
  color: #9c9c9c;
  font-size: 12px;
  font-weight: 400;
  line-height: 21px;
  margin: 0;
  padding: 8px 0; }

.sidebar-pf .nav-category + .nav-category {
  margin-top: 10px; }

.sidebar-pf .nav-pills > li.active > a {
  background: #0088ce !important;
  border-color: #0088ce !important;
  color: #fff; }
  @media (min-width: 768px) {
    .sidebar-pf .nav-pills > li.active > a:after {
      content: "";
      font-family: "FontAwesome";
      display: block;
      position: absolute;
      right: 10px;
      top: 1px; } }
  .sidebar-pf .nav-pills > li.active > a .fa, .sidebar-pf .nav-pills > li.active > a .fas, .sidebar-pf .nav-pills > li.active > a .far, .sidebar-pf .nav-pills > li.active > a .fab, .sidebar-pf .nav-pills > li.active > a .fal {
    color: #fff; }

.sidebar-pf .nav-pills > li > a {
  border-bottom: 1px solid transparent;
  border-radius: 0;
  border-top: 1px solid transparent;
  color: #363636;
  font-size: 13px;
  line-height: 21px;
  padding: 1px 20px; }
  .sidebar-pf .nav-pills > li > a:hover {
    background: #def3ff;
    border-color: #bee1f4; }
  .sidebar-pf .nav-pills > li > a .fa, .sidebar-pf .nav-pills > li > a .fas, .sidebar-pf .nav-pills > li > a .far, .sidebar-pf .nav-pills > li > a .fab, .sidebar-pf .nav-pills > li > a .fal {
    color: #6a7079;
    font-size: 15px;
    margin-right: 10px;
    text-align: center;
    vertical-align: middle;
    width: 15px; }

.sidebar-pf .nav-stacked {
  margin-left: -20px;
  margin-right: -20px; }
  .sidebar-pf .nav-stacked li + li {
    margin-top: 0; }

.sidebar-pf .panel {
  background: transparent; }

.sidebar-pf .panel-body {
  padding: 6px 20px; }
  .sidebar-pf .panel-body .nav-pills > li > a {
    padding-left: 37px; }

.sidebar-pf .panel-heading {
  padding: 9px 20px; }

.sidebar-pf .panel-title {
  font-size: 12px; }
  .sidebar-pf .panel-title > a:before {
    display: inline-block;
    margin-left: 1px;
    margin-right: 4px;
    width: 9px; }
  .sidebar-pf .panel-title > a.collapsed:before {
    margin-left: 3px;
    margin-right: 2px; }

@media (min-width: 767px) {
  .sidebar-header-bleed-left {
    margin-left: -20px; }
    .sidebar-header-bleed-left > h2 {
      margin-left: 20px; }
  .sidebar-header-bleed-right {
    margin-right: -20px; }
    .sidebar-header-bleed-right .actions {
      margin-right: 20px; }
    .sidebar-header-bleed-right > h2 {
      margin-right: 20px; }
    .sidebar-header-bleed-right + .list-group {
      margin-right: -20px; }
  .sidebar-pf .panel-group .panel-default,
  .sidebar-pf .treeview {
    border-left: 0;
    border-right: 0;
    margin-left: -20px;
    margin-right: -20px; }
  .sidebar-pf .treeview {
    margin-top: 5px; }
    .sidebar-pf .treeview .list-group-item {
      padding-left: 20px;
      padding-right: 20px; }
      .sidebar-pf .treeview .list-group-item.node-selected:after {
        content: "";
        font-family: "FontAwesome";
        display: block;
        position: absolute;
        right: 10px;
        top: 1px; } }

@media (min-width: 768px) {
  .sidebar-pf {
    background: #fafafa; }
    .sidebar-pf.sidebar-pf-left {
      border-right: 1px solid #d1d1d1; }
    .sidebar-pf.sidebar-pf-right {
      border-left: 1px solid #d1d1d1; }
    .sidebar-pf > .nav-category,
    .sidebar-pf > .nav-stacked {
      margin-top: 5px; } }

.skiplink-pf {
  position: absolute;
  top: 12px;
  left: -300%;
  /* moves off screen */
  z-index: 1050; }

.skiplink-pf:focus {
  left: 10px; }

@keyframes rotation {
  from {
    transform: rotate(0deg); }
  to {
    transform: rotate(359deg); } }

.spinner {
  animation: rotation 600ms infinite linear;
  border-bottom: 4px solid rgba(3, 3, 3, 0.25);
  border-left: 4px solid rgba(3, 3, 3, 0.25);
  border-right: 4px solid rgba(3, 3, 3, 0.25);
  border-radius: 100%;
  border-top: 4px solid rgba(3, 3, 3, 0.75);
  height: 24px;
  margin: 0 auto;
  position: relative;
  width: 24px; }
  .spinner.spinner-inline {
    display: inline-block;
    margin-right: 3px; }
  .spinner.spinner-lg {
    border-width: 5px;
    height: 30px;
    width: 30px; }
  .spinner.spinner-sm {
    border-width: 3px;
    height: 18px;
    width: 18px; }
  .spinner.spinner-xs {
    border-width: 2px;
    height: 12px;
    width: 12px; }
  .spinner.spinner-inverse {
    border-bottom-color: rgba(255, 255, 255, 0.25);
    border-left-color: rgba(255, 255, 255, 0.25);
    border-right-color: rgba(255, 255, 255, 0.25);
    border-top-color: rgba(255, 255, 255, 0.75); }

.ie9 .spinner {
  background: url("${url.resourcesPath}/images/spinner.gif") no-repeat;
  border: 0; }
  .ie9 .spinner.spinner-inverse {
    background-image: url("${url.resourcesPath}/images/spinner-inverse.gif"); }
  .ie9 .spinner.spinner-inverse-lg {
    background-image: url("${url.resourcesPath}/images/spinner-inverse-lg.gif"); }
  .ie9 .spinner.spinner-inverse-sm {
    background-image: url("${url.resourcesPath}/images/spinner-inverse-sm.gif"); }
  .ie9 .spinner.spinner-inverse-xs {
    background-image: url("${url.resourcesPath}/images/spinner-inverse-xs.gif"); }
  .ie9 .spinner.spinner-lg {
    background-image: url("${url.resourcesPath}/images/spinner-lg.gif"); }
  .ie9 .spinner.spinner-sm {
    background-image: url("${url.resourcesPath}/images/spinner-sm.gif"); }
  .ie9 .spinner.spinner-xs {
    background-image: url("${url.resourcesPath}/images/spinner-xs.gif"); }

.prettyprint .atn,
.prettyprint .com,
.prettyprint .fun,
.prettyprint .var {
  color: #3f9c35; }

.prettyprint .atv,
.prettyprint .str {
  color: #a30000; }

.prettyprint .clo,
.prettyprint .dec,
.prettyprint .kwd,
.prettyprint .opn,
.prettyprint .pln,
.prettyprint .pun {
  color: #363636; }

.prettyprint .lit,
.prettyprint .tag,
.prettyprint .typ {
  color: #00659c; }

.prettyprint ol.linenums {
  margin-bottom: 0; }

table.dataTable {
  height: 100%;
  margin-bottom: 0;
  max-width: none !important; }
  table.dataTable tbody > tr > td.table-view-pf-actions {
    padding: 0;
    vertical-align: middle; }
  table.dataTable tbody > tr:hover > td.table-view-pf-actions {
    background-color: #f5f5f5;
    border-bottom-color: #d1d1d1; }
  table.dataTable tbody > tr.selected {
    color: #fff;
    background-color: #0088ce; }
    table.dataTable tbody > tr.selected > td {
      border-bottom-color: #00659c; }
      table.dataTable tbody > tr.selected > td.table-view-pf-actions {
        background-color: #f5f5f5;
        border-bottom-color: #d1d1d1; }
    table.dataTable tbody > tr.selected:hover > td {
      background-color: inherit;
      border-bottom-color: #00659c; }
      table.dataTable tbody > tr.selected:hover > td.table-view-pf-actions {
        background-color: #f5f5f5;
        border-bottom-color: #d1d1d1; }
  table.dataTable thead .sorting,
  table.dataTable thead .sorting_asc,
  table.dataTable thead .sorting_desc,
  table.dataTable thead .sorting_asc_disabled,
  table.dataTable thead .sorting_desc_disabled {
    cursor: pointer; }
  table.dataTable thead .sorting_asc,
  table.dataTable thead .sorting_desc {
    color: #0088ce !important;
    position: relative; }
    table.dataTable thead .sorting_asc:after,
    table.dataTable thead .sorting_desc:after {
      content: "";
      font-family: "FontAwesome";
      font-size: 10px;
      font-weight: normal;
      height: 9px;
      left: 7px;
      line-height: 12px;
      position: relative;
      top: 2px;
      vertical-align: baseline;
      width: 12px; }
    table.dataTable thead .sorting_asc:before,
    table.dataTable thead .sorting_desc:before {
      background: #0088ce;
      content: "";
      height: 2px;
      position: absolute;
      left: 0;
      top: 0;
      width: 100%; }
  table.dataTable thead .sorting_asc:after {
    content: "";
    top: -3px; }
  table.dataTable th:active {
    outline: none; }

.table-view-pf-empty.blank-slate-pf {
  background-color: #f5f5f5;
  border: 1px solid #d1d1d1;
  border-radius: 0;
  margin-top: -1px; }

.table-view-pf-toolbar.toolbar-pf {
  background-color: #f5f5f5;
  border-bottom: none;
  border-left: 1px solid #d1d1d1;
  border-right: 1px solid #d1d1d1;
  border-top: 1px solid #d1d1d1;
  box-shadow: none;
  margin-left: 0px;
  margin-right: 0px; }
  .table-view-pf-toolbar.toolbar-pf .toolbar-pf-results {
    border-top: 1px solid #d1d1d1;
    min-height: 40px;
    line-height: 40px; }

.table-view-pf-toolbar-external.toolbar-pf {
  border-bottom: none;
  border-top: none;
  box-shadow: none; }
  .table-view-pf-toolbar-external.toolbar-pf .toolbar-pf-results {
    border-top: 1px solid #d1d1d1;
    min-height: 40px;
    line-height: 40px; }

.table-view-pf-colvis-menu > li {
  padding: 5px 10px; }
  .table-view-pf-colvis-menu > li:hover {
    background-color: #def3ff; }
  .table-view-pf-colvis-menu > li > input {
    margin-top: 0;
    margin-right: 10px;
    vertical-align: middle; }
  .table-view-pf-colvis-menu > li > label {
    margin-bottom: 0; }

.table-view-pf-actions {
  background-color: #f1f1f1;
  height: 100%; }
  .table-view-pf-actions .btn,
  .table-view-pf-actions .dropdown-toggle {
    border: none;
    box-shadow: none;
    height: 100%;
    width: 100%; }
  .table-view-pf-actions .dropdown,
  .table-view-pf-actions .table-view-pf-btn {
    height: 100%; }
  .table-view-pf-actions .dropdown-menu.dropdown-menu-right {
    right: -5px; }
  .table-view-pf-actions:last-child {
    width: 24px; }

.table-view-pf-select {
  width: 33px; }

.table-view-pf-select-results {
  text-align: right; }

.bootstrap-datetimepicker-widget .today-button-pf:before {
  content: "Today"; }

@media (min-width: 992px) {
  .bootstrap-datetimepicker-widget.timepicker-sbs .datepicker, .bootstrap-datetimepicker-widget.timepicker-sbs .accordion-toggle {
    border-right: 1px solid #d1d1d1; }
  .bootstrap-datetimepicker-widget.timepicker-sbs .timepicker {
    padding-left: 0;
    margin-top: 50px; }
  .bootstrap-datetimepicker-widget.timepicker-sbs .picker-switch {
    width: 50%; } }

.bootstrap-datetimepicker-widget a[data-action] {
  border: 0;
  box-shadow: none;
  color: #363636;
  display: block;
  padding-bottom: 4px;
  padding-top: 4px; }
  .bootstrap-datetimepicker-widget a[data-action]:hover {
    color: #0088ce; }

.bootstrap-datetimepicker-widget.dropdown-menu {
  left: 0 !important;
  padding: 0;
  width: calc(100% - 25px); }
  .bootstrap-datetimepicker-widget.dropdown-menu:before, .bootstrap-datetimepicker-widget.dropdown-menu:after {
    content: none; }
  .bootstrap-datetimepicker-widget.dropdown-menu.top {
    margin-bottom: -1px; }
  .bootstrap-datetimepicker-widget.dropdown-menu.bottom {
    margin-top: -1px; }

.bootstrap-datetimepicker-widget .timepicker-hour {
  width: 100%; }
  .bootstrap-datetimepicker-widget .timepicker-hour:after {
    content: ":";
    float: right; }

.timepicker-hours table td,
.timepicker-minutes table td {
  font-weight: bold;
  line-height: 30px;
  height: 30px; }
  .timepicker-hours table td:hover,
  .timepicker-minutes table td:hover {
    color: #0088ce; }

.timepicker-hours .table-condensed > tbody > tr > td,
.timepicker-minutes .table-condensed > tbody > tr > td {
  padding: 0; }

.time-picker-pf .input-group-addon .fa, .time-picker-pf .input-group-addon .fas, .time-picker-pf .input-group-addon .far, .time-picker-pf .input-group-addon .fab, .time-picker-pf .input-group-addon .fal,
.time-picker-pf .input-group-addon .pficon {
  width: 12px; }

.time-picker-pf .input-group-addon:not(.active) {
  box-shadow: none; }

.timepicker-picker table td span,
.timepicker-picker table td a span {
  height: 24px;
  line-height: 24px;
  margin: 0;
  width: 100%; }

.timepicker-picker .table-condensed > tbody > tr > td {
  height: 25px;
  line-height: 18px;
  padding: 0; }

.timepicker-picker button[data-action] {
  padding-bottom: 0;
  padding-top: 0; }

.timepicker-picker .separator {
  display: none; }

.timepicker-picker tr:nth-child(2) td {
  background-color: #def3ff;
  border-color: #bee1f4;
  border-style: solid;
  border-width: 1px;
  border-left: 0;
  border-right: 0; }

.toast-pf {
  background-color: #fff;
  border-color: #bbb;
  box-shadow: 0 2px 6px rgba(3, 3, 3, 0.2);
  padding-left: 68px;
  margin-bottom: 5px;
  /* Medium devices (desktops, 992px and up) */ }
  .toast-pf.alert-danger > .pficon {
    background-color: #cc0000; }
  .toast-pf.alert-info > .pficon {
    background-color: #8b8d8f; }
  .toast-pf.alert-success > .pficon {
    background-color: #3f9c35; }
  .toast-pf.alert-warning > .pficon {
    background-color: #ec7a08; }
  .toast-pf .dropdown-kebab-pf {
    margin-left: 10px; }
  .toast-pf > .pficon {
    background-color: #4d5258;
    bottom: -1px;
    box-shadow: 2px 0 5px -2px rgba(3, 3, 3, 0.2);
    left: -1px;
    padding-top: 10px;
    text-align: center;
    top: -1px;
    width: 53px; }
    .toast-pf > .pficon:before {
      color: rgba(255, 255, 255, 0.74); }
  .toast-pf .toast-pf-action {
    margin-left: 15px; }
  .toast-pf .dropdown-kebab-pf .btn-link {
    padding-top: 0;
    padding-bottom: 0;
    vertical-align: text-bottom; }
  @media (min-width: 992px) {
    .toast-pf {
      display: inline-block; } }

@media (min-width: 992px) {
  .toast-pf-max-width {
    max-width: 31.1%; } }

.toast-pf-top-right {
  left: 20px;
  position: absolute;
  right: 20px;
  top: 12px;
  z-index: 1055;
  /* Medium devices (desktops, 992px and up) */ }
  @media (min-width: 992px) {
    .toast-pf-top-right {
      left: auto; } }

.toast-notifications-list-pf {
  margin-left: 20px;
  position: fixed;
  right: 20px;
  top: 80px;
  z-index: 1055; }
  .toast-notifications-list-pf .toast-pf {
    clear: both;
    float: right; }
  @media (min-width: 768px) {
    .toast-notifications-list-pf {
      max-width: calc(50%); } }
  @media (min-width: 992px) {
    .toast-notifications-list-pf {
      max-width: calc(33.1%); } }

.toolbar-pf {
  background: #fff;
  border-bottom: 1px solid #d1d1d1;
  box-shadow: 0 1px 0px rgba(3, 3, 3, 0.045);
  padding-top: 10px; }
  .toolbar-pf .form-group {
    margin-bottom: 10px; }
    @media (min-width: 768px) {
      .toolbar-pf .form-group {
        border-right: 1px solid #d1d1d1;
        float: left;
        margin-bottom: 0;
        padding-left: 20px;
        padding-right: 20px; } }
    .toolbar-pf .form-group:last-child {
      border-right: 0;
      margin-bottom: 0;
      padding-right: 0; }
    .toolbar-pf .form-group .btn + .btn,
    .toolbar-pf .form-group .btn + .btn-group,
    .toolbar-pf .form-group .btn-group + .btn,
    .toolbar-pf .form-group .btn-group + .btn-group {
      margin-left: 5px; }
    .toolbar-pf .form-group .btn + .btn-link,
    .toolbar-pf .form-group .btn + .dropdown,
    .toolbar-pf .form-group .btn-group + .btn-link,
    .toolbar-pf .form-group .btn-group + .dropdown {
      margin-left: 10px; }
    .toolbar-pf .form-group .btn-link {
      color: #252525;
      font-size: 16px;
      line-height: 1;
      padding: 4px 0; }
      .toolbar-pf .form-group .btn-link:active, .toolbar-pf .form-group .btn-link:focus, .toolbar-pf .form-group .btn-link:hover {
        color: #0088ce; }
    .toolbar-pf .form-group .dropdown-kebab-pf .btn-link {
      padding: 4px 10px;
      margin-left: -10px;
      margin-right: -10px; }

.toolbar-pf-actions {
  display: table;
  margin-bottom: 10px;
  width: 100%; }
  @media (min-width: 768px) {
    .toolbar-pf-actions .toolbar-pf-filter {
      padding-left: 0; } }

.toolbar-pf-view-selector {
  font-size: 16px; }
  .toolbar-pf-view-selector .btn-link.active {
    color: #0088ce;
    cursor: default; }

.toolbar-pf-action-right {
  float: right; }
  @media (max-width: 768px) {
    .toolbar-pf-action-right {
      float: none; } }

.toolbar-pf-find {
  font-size: 14px;
  position: relative; }

.find-pf-dropdown-container {
  background: #fff;
  border: solid 1px #bbb;
  display: none;
  right: -20px;
  padding: 5px;
  position: absolute;
  top: 35px;
  width: 300px;
  z-index: 10000; }
  @media (max-width: 768px) {
    .find-pf-dropdown-container {
      left: 30px;
      top: -5px;
      width: calc(100% - 30px); } }
  .find-pf-dropdown-container:before, .find-pf-dropdown-container:after {
    content: "";
    position: absolute; }
  .find-pf-dropdown-container:before {
    border-bottom: 11px solid #bbb;
    border-left: 11px solid transparent;
    border-right: 11px solid transparent;
    right: 35px;
    top: -12px; }
    .toolbar-pf-find:last-child .find-pf-dropdown-container:before {
      right: 15px; }
    @media (max-width: 768px) {
      .find-pf-dropdown-container:before {
        border-bottom: 11px solid transparent;
        border-right: 11px solid #bbb;
        border-top: 11px solid transparent;
        left: -22px;
        right: initial;
        top: 8px; } }
  .find-pf-dropdown-container:after {
    border-bottom: 10px solid #fff;
    border-left: 10px solid transparent;
    border-right: 10px solid transparent;
    right: 36px;
    top: -10px; }
    .toolbar-pf-find:last-child .find-pf-dropdown-container:after {
      right: 16px; }
    @media (max-width: 768px) {
      .find-pf-dropdown-container:after {
        border-bottom: 10px solid transparent;
        border-right: 10px solid #fff;
        border-top: 10px solid transparent;
        left: -20px;
        right: initial;
        top: 9px; } }
  .find-pf-dropdown-container input {
    height: 30px;
    padding: 5px 117px 5px 5px;
    width: 100%; }
  .find-pf-dropdown-container .find-pf-buttons {
    position: absolute;
    right: 10px;
    top: 5px; }
    .find-pf-dropdown-container .find-pf-buttons .btn {
      border: none;
      cursor: pointer;
      margin-left: 0 !important;
      padding: 0;
      width: 18px; }
      .find-pf-dropdown-container .find-pf-buttons .btn .fa-angle-up,
      .find-pf-dropdown-container .find-pf-buttons .btn .fa-angle-down {
        font-weight: bold;
        font-size: 18px; }
      .find-pf-dropdown-container .find-pf-buttons .btn .pficon-close {
        font-size: 14px; }
    .find-pf-dropdown-container .find-pf-buttons span {
      height: 30px;
      line-height: 30px;
      vertical-align: middle; }
    .find-pf-dropdown-container .find-pf-buttons .find-pf-nums {
      color: #8b8d8f;
      margin-right: 3px; }

.toolbar-pf-results {
  border-top: 1px solid #d1d1d1;
  margin-top: 10px; }
  .toolbar-pf-results h5,
  .toolbar-pf-results p,
  .toolbar-pf-results ul {
    display: inline-block;
    line-height: 26.66667px;
    margin-bottom: 0;
    margin-top: 0; }
    @media (min-width: 768px) {
      .toolbar-pf-results h5,
      .toolbar-pf-results p,
      .toolbar-pf-results ul {
        line-height: 40px; } }
  .toolbar-pf-results h5 {
    font-weight: 700;
    margin-right: 20px; }
  .toolbar-pf-results .label {
    font-size: 11px; }
    .toolbar-pf-results .label a {
      color: #fff;
      display: inline-block;
      margin-left: 5px; }

.nav-pf-vertical {
  background: #292e34;
  border-right: 1px solid #292e34;
  bottom: 0;
  left: 0;
  overflow-x: hidden;
  overflow-y: auto;
  position: fixed;
  top: 60px;
  width: 200px;
  z-index: 1030; }
  .layout-pf-fixed-with-footer .nav-pf-vertical {
    bottom: 37px; }
  .ie9.layout-pf-fixed .nav-pf-vertical {
    box-sizing: content-box; }
  .nav-pf-vertical.hidden.show-mobile-nav {
    box-shadow: 0 0 3px rgba(3, 3, 3, 0.15);
    display: block !important; }
  .nav-pf-vertical.hide-nav-pf {
    visibility: hidden !important; }
  .nav-pf-vertical .list-group {
    border-top: 0;
    margin-bottom: 0; }
  .nav-pf-vertical .list-group-item {
    background-color: transparent;
    border-color: #030303;
    padding: 0; }
    .nav-pf-vertical .list-group-item > a {
      background-color: transparent;
      color: #d1d1d1;
      cursor: pointer;
      display: block;
      font-size: 14px;
      font-weight: 400;
      height: 63px;
      line-height: 26px;
      padding: 17px 20px 17px 25px;
      position: relative;
      white-space: nowrap;
      width: 200px; }
      @supports (display: flex) {
        .nav-pf-vertical .list-group-item > a {
          display: flex;
          padding-right: 0; } }
      .nav-pf-vertical .list-group-item > a .fa, .nav-pf-vertical .list-group-item > a .fas, .nav-pf-vertical .list-group-item > a .far, .nav-pf-vertical .list-group-item > a .fab, .nav-pf-vertical .list-group-item > a .fal,
      .nav-pf-vertical .list-group-item > a .glyphicon,
      .nav-pf-vertical .list-group-item > a .pficon {
        color: #72767b;
        float: left;
        font-size: 20px;
        line-height: 26px;
        margin-right: 10px;
        text-align: center;
        width: 24px; }
      .nav-pf-vertical .list-group-item > a:hover, .nav-pf-vertical .list-group-item > a:focus {
        text-decoration: none; }
    .nav-pf-vertical .list-group-item.active > a,
    .nav-pf-vertical .list-group-item:hover > a,
    .nav-pf-vertical .list-group-item > a:focus {
      background-color: #393f44;
      color: #fff;
      font-weight: 600; }
      .nav-pf-vertical .list-group-item.active > a .fa, .nav-pf-vertical .list-group-item.active > a .fas, .nav-pf-vertical .list-group-item.active > a .far, .nav-pf-vertical .list-group-item.active > a .fab, .nav-pf-vertical .list-group-item.active > a .fal,
      .nav-pf-vertical .list-group-item.active > a .glyphicon,
      .nav-pf-vertical .list-group-item.active > a .pficon,
      .nav-pf-vertical .list-group-item:hover > a .fa,
      .nav-pf-vertical .list-group-item:hover > a .fas,
      .nav-pf-vertical .list-group-item:hover > a .far,
      .nav-pf-vertical .list-group-item:hover > a .fab,
      .nav-pf-vertical .list-group-item:hover > a .fal,
      .nav-pf-vertical .list-group-item:hover > a .glyphicon,
      .nav-pf-vertical .list-group-item:hover > a .pficon,
      .nav-pf-vertical .list-group-item > a:focus .fa,
      .nav-pf-vertical .list-group-item > a:focus .fas,
      .nav-pf-vertical .list-group-item > a:focus .far,
      .nav-pf-vertical .list-group-item > a:focus .fab,
      .nav-pf-vertical .list-group-item > a:focus .fal,
      .nav-pf-vertical .list-group-item > a:focus .glyphicon,
      .nav-pf-vertical .list-group-item > a:focus .pficon {
        color: #39a5dc; }
    .nav-pf-vertical .list-group-item.active > a:before {
      background: #39a5dc;
      content: " ";
      height: 100%;
      left: 0;
      position: absolute;
      top: 0;
      width: 3px; }
    .nav-pf-vertical .list-group-item.active:hover {
      background-color: transparent;
      border-color: #030303; }
    .nav-pf-vertical .list-group-item .list-group-item-value {
      display: block;
      line-height: 25px;
      max-width: 120px;
      overflow: hidden;
      text-overflow: ellipsis; }
      @supports (display: flex) {
        .nav-pf-vertical .list-group-item .list-group-item-value {
          flex: 1;
          max-width: none;
          padding-right: 15px; } }
  .nav-pf-vertical .list-group-item-separator {
    border-top-color: #030303;
    border-top-width: 2px; }
  .nav-pf-vertical.nav-pf-vertical-with-badges {
    width: 250px; }
    .nav-pf-vertical.nav-pf-vertical-with-badges .list-group-item > a {
      width: 250px; }
  .nav-pf-vertical h5 {
    color: #fff;
    cursor: default;
    font-size: 13px;
    font-weight: 600;
    margin: 30px 20px 10px 20px; }
  .nav-pf-vertical.hidden-icons-pf > .list-group > .list-group-item > a .fa, .nav-pf-vertical.hidden-icons-pf > .list-group > .list-group-item > a .fas, .nav-pf-vertical.hidden-icons-pf > .list-group > .list-group-item > a .far, .nav-pf-vertical.hidden-icons-pf > .list-group > .list-group-item > a .fab, .nav-pf-vertical.hidden-icons-pf > .list-group > .list-group-item > a .fal,
  .nav-pf-vertical.hidden-icons-pf > .list-group > .list-group-item > a .glyphicon,
  .nav-pf-vertical.hidden-icons-pf > .list-group > .list-group-item > a .pficon {
    display: none; }
  .nav-pf-vertical.hidden-icons-pf.collapsed {
    display: none; }
  .nav-pf-vertical .badge-container-pf {
    position: absolute;
    right: 15px;
    top: 20px; }
    @supports (display: flex) {
      .nav-pf-vertical .badge-container-pf {
        padding-left: 0;
        padding-right: 15px;
        position: relative;
        right: 0;
        margin-top: -3px;
        top: 5px; } }
    .nav-pf-vertical .badge-container-pf .badge {
      background: #292e34;
      color: #fff;
      float: left;
      font-size: 12px;
      font-weight: 700;
      line-height: 1.66667;
      margin: 0;
      padding: 0 7px;
      text-align: center; }
      .nav-pf-vertical .badge-container-pf .badge .pficon,
      .nav-pf-vertical .badge-container-pf .badge .fa, .nav-pf-vertical .badge-container-pf .badge .fas, .nav-pf-vertical .badge-container-pf .badge .far, .nav-pf-vertical .badge-container-pf .badge .fab, .nav-pf-vertical .badge-container-pf .badge .fal {
        font-size: 14px;
        height: 20px;
        line-height: 1.66667;
        margin-right: 3px;
        margin-top: -1px; }

.nav-pf-vertical-tooltip.tooltip {
  margin-left: 15px; }
  .nav-pf-vertical-tooltip.tooltip .tooltip-inner {
    background-color: #fff;
    color: #292e34; }
  .nav-pf-vertical-tooltip.tooltip .tooltip-arrow {
    border-bottom-color: #fff;
    left: calc(50% - 15px) !important; }

.hover-secondary-nav-pf {
  width: calc(200px * 2); }
  .hover-secondary-nav-pf.nav-pf-vertical-with-badges {
    width: calc(250px * 2); }

.hover-tertiary-nav-pf {
  width: calc(200px * 3); }
  .hover-tertiary-nav-pf.nav-pf-vertical-with-badges {
    width: calc(250px * 3); }
  .hover-tertiary-nav-pf .nav-pf-secondary-nav {
    width: calc(200px * 2); }
    .hover-tertiary-nav-pf .nav-pf-secondary-nav .collapsed-tertiary-nav-pf {
      width: 200px; }
  .hover-tertiary-nav-pf .nav-pf-tertiary-nav {
    left: calc(200px * 2); }
  .hover-tertiary-nav-pf.nav-pf-vertical-with-badges .nav-pf-secondary-nav {
    width: calc(250px * 2); }
    .hover-tertiary-nav-pf.nav-pf-vertical-with-badges .nav-pf-secondary-nav .collapsed-tertiary-nav-pf {
      width: 250px; }
  .hover-tertiary-nav-pf.nav-pf-vertical-with-badges .nav-pf-tertiary-nav {
    left: calc(250px * 2); }

.nav-pf-vertical.collapsed {
  width: 75px; }
  .nav-pf-vertical.collapsed.collapsed-secondary-nav-pf {
    width: 200px; }
    .nav-pf-vertical.collapsed.collapsed-secondary-nav-pf.nav-pf-vertical-with-badges {
      width: 250px; }
  .nav-pf-vertical.collapsed.collapsed-tertiary-nav-pf {
    width: 200px; }
    .nav-pf-vertical.collapsed.collapsed-tertiary-nav-pf.nav-pf-vertical-with-badges {
      width: 250px; }
  .nav-pf-vertical.collapsed.hover-secondary-nav-pf {
    width: calc(75px + 200px); }
    .nav-pf-vertical.collapsed.hover-secondary-nav-pf.nav-pf-vertical-with-badges {
      width: calc(75px + 250px); }
  .nav-pf-vertical.collapsed.hover-tertiary-nav-pf {
    width: calc(75px + (200px * 2)); }
    .nav-pf-vertical.collapsed.hover-tertiary-nav-pf.nav-pf-vertical-with-badges {
      width: calc(75px + (250px * 2)); }

.show-mobile-nav.show-mobile-secondary {
  width: 200px; }
  .show-mobile-nav.show-mobile-secondary.nav-pf-vertical-with-badges {
    width: 250px; }

.show-mobile-nav.show-mobile-tertiary {
  width: 200px; }
  .show-mobile-nav.show-mobile-tertiary.nav-pf-vertical-with-badges {
    width: 250px; }

.show-mobile-nav .mobile-nav-item-pf .nav-pf-secondary-nav,
.show-mobile-nav .mobile-secondary-item-pf .nav-pf-secondary-nav {
  left: 0;
  opacity: 1;
  visibility: visible;
  z-index: 1034; }

.show-mobile-nav .mobile-nav-item-pf > .nav-pf-tertiary-nav,
.show-mobile-nav .mobile-secondary-item-pf > .nav-pf-tertiary-nav {
  left: 0;
  opacity: 1;
  visibility: visible;
  z-index: 1038; }

.show-mobile-nav .nav-pf-secondary-nav {
  left: 0; }
  .secondary-nav-item-pf:hover .show-mobile-nav .nav-pf-secondary-nav {
    opacity: 0;
    visibility: hidden; }

.show-mobile-nav .tertiary-nav-item-pf:hover .nav-pf-tertiary-nav {
  opacity: 0;
  visibility: hidden; }

.show-mobile-nav .tertiary-nav-item-pf.mobile-nav-item-pf:hover .nav-pf-tertiary-nav {
  opacity: 1;
  visibility: visible; }

.secondary-nav-item-pf > a {
  cursor: default; }
  .secondary-nav-item-pf > a:after {
    color: #72767b;
    content: "";
    display: block;
    font-family: "FontAwesome";
    font-size: 24px;
    line-height: 30px;
    padding: 14px 0;
    position: absolute;
    right: 20px;
    top: 0; }
  @supports (display: flex) {
    .secondary-nav-item-pf > a .list-group-item-value {
      padding-right: 35px; } }

.secondary-nav-item-pf.active > a, .secondary-nav-item-pf:hover > a {
  width: calc(200px + 1px);
  z-index: 1031; }
  .secondary-nav-item-pf.active > a:after, .secondary-nav-item-pf:hover > a:after {
    right: 21px; }
  .collapsed-secondary-nav-pf .secondary-nav-item-pf.active > a, .collapsed-secondary-nav-pf .secondary-nav-item-pf:hover > a {
    z-index: 0; }
  .collapsed-tertiary-nav-pf .secondary-nav-item-pf.active > a, .collapsed-tertiary-nav-pf .secondary-nav-item-pf:hover > a {
    z-index: 0; }

.nav-pf-vertical-with-badges .secondary-nav-item-pf.active > a, .nav-pf-vertical-with-badges .secondary-nav-item-pf:hover > a {
  width: calc(250px + 1px); }

.nav-pf-vertical.collapsed-secondary-nav-pf {
  width: 200px; }
  .nav-pf-vertical.collapsed-secondary-nav-pf.nav-pf-vertical-with-badges {
    width: 250px; }
  .nav-pf-vertical.collapsed-secondary-nav-pf .secondary-nav-item-pf.active > a, .nav-pf-vertical.collapsed-secondary-nav-pf .secondary-nav-item-pf.hover > a {
    z-index: 1030; }
  .nav-pf-vertical.collapsed-secondary-nav-pf.hover-tertiary-nav-pf {
    width: 200px; }
    .nav-pf-vertical.collapsed-secondary-nav-pf.hover-tertiary-nav-pf.nav-pf-vertical-with-badges {
      width: 250px; }
  .nav-pf-vertical.collapsed-secondary-nav-pf .nav-pf-secondary-nav {
    left: 0; }
  .nav-pf-vertical.collapsed-secondary-nav-pf .nav-pf-tertiary-nav {
    left: 200px; }
  .nav-pf-vertical.collapsed-secondary-nav-pf.nav-pf-vertical-with-badges .nav-pf-tertiary-nav {
    left: 250px; }

.nav-pf-vertical.collapsed-tertiary-nav-pf {
  width: 200px; }
  .nav-pf-vertical.collapsed-tertiary-nav-pf.nav-pf-vertical-with-badges {
    width: 250px; }
  .nav-pf-vertical.collapsed-tertiary-nav-pf .nav-pf-secondary-nav {
    width: 200px; }
    .nav-pf-vertical.collapsed-tertiary-nav-pf .nav-pf-secondary-nav.nav-pf-vertical-with-badges {
      width: 250px; }
  .nav-pf-vertical.collapsed-tertiary-nav-pf .secondary-nav-item-pf.active > a, .nav-pf-vertical.collapsed-tertiary-nav-pf .secondary-nav-item-pf.hover > a,
  .nav-pf-vertical.collapsed-tertiary-nav-pf .tertiary-nav-item-pf.active > a,
  .nav-pf-vertical.collapsed-tertiary-nav-pf .tertiary-nav-item-pf.hover > a {
    z-index: 0; }

@media (min-width: 1200px) {
  .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf {
    width: calc(200px * 2); }
    .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.nav-pf-vertical-with-badges {
      width: calc(250px * 2); }
    .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-secondary-nav-pf {
      width: 200px; }
      .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-secondary-nav-pf.nav-pf-vertical-with-badges {
        width: 250px; }
      .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-secondary-nav-pf.hover-tertiary-nav-pf {
        width: calc(200px * 2); }
        .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-secondary-nav-pf.hover-tertiary-nav-pf.nav-pf-vertical-with-badges {
          width: calc(250px * 2); }
    .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-tertiary-nav-pf {
      width: 200px; }
      .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed-tertiary-nav-pf.nav-pf-vertical-with-badges {
        width: 250px; }
    .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed {
      width: calc(75px + 200px); }
      .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed.collapsed-secondary-nav-pf {
        width: 200px; }
        .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed.collapsed-secondary-nav-pf.nav-pf-vertical-with-badges {
          width: 250px; }
      .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed.collapsed-tertiary-nav-pf {
        width: 200px; }
        .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed.collapsed-tertiary-nav-pf.nav-pf-vertical-with-badges {
          width: 250px; }
      .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed.hover-tertiary-nav-pf {
        width: calc(75px + (200px * 2)); }
        .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.collapsed.hover-tertiary-nav-pf.nav-pf-vertical-with-badges {
          width: calc(75px + (250px * 2)); }
    .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.hover-tertiary-nav-pf {
      width: calc(200px * 3); }
      .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf.hover-tertiary-nav-pf.nav-pf-vertical-with-badges {
        width: calc(250px * 3); }
    .nav-pf-vertical.nav-pf-persistent-secondary.secondary-visible-pf .secondary-nav-item-pf.active .nav-pf-secondary-nav {
      visibility: visible;
      opacity: 1; } }

.nav-item-pf-header {
  color: #fff;
  font-size: 16px;
  margin: 18px 20px 10px 20px; }
  .nav-item-pf-header > a {
    cursor: pointer;
    margin-right: 7px; }
    .nav-item-pf-header > a:hover, .nav-item-pf-header > a:focus {
      color: #0088ce;
      text-decoration: none; }

.nav-pf-vertical.collapsed {
  width: 75px; }
  .nav-pf-vertical.collapsed .list-group-item > a {
    width: 75px; }
    .nav-pf-vertical.collapsed .list-group-item > a > .list-group-item-value {
      display: none; }
    .nav-pf-vertical.collapsed .list-group-item > a > .badge-container-pf {
      display: none; }
  .nav-pf-vertical.collapsed .list-group-item.secondary-nav-item-pf.active > a,
  .nav-pf-vertical.collapsed .list-group-item.secondary-nav-item-pf > a {
    width: 75px; }
    .nav-pf-vertical.collapsed .list-group-item.secondary-nav-item-pf.active > a:after,
    .nav-pf-vertical.collapsed .list-group-item.secondary-nav-item-pf > a:after {
      right: 10px; }
  .nav-pf-vertical.collapsed .list-group-item.secondary-nav-item-pf.active > a, .nav-pf-vertical.collapsed .list-group-item.secondary-nav-item-pf:hover > a {
    width: 77px; }
    .nav-pf-vertical.collapsed .list-group-item.secondary-nav-item-pf.active > a:after, .nav-pf-vertical.collapsed .list-group-item.secondary-nav-item-pf:hover > a:after {
      right: 11px; }

.nav-pf-secondary-nav {
  background: #393f44;
  border: 1px solid #292e34;
  border-bottom: none;
  border-top: none;
  bottom: 0;
  display: block;
  left: 200px;
  opacity: 0;
  overflow-x: hidden;
  overflow-y: auto;
  position: fixed;
  top: 60px;
  visibility: hidden;
  width: 200px;
  z-index: 1030; }
  .collapsed-secondary-nav-pf .secondary-nav-item-pf.active .nav-pf-secondary-nav {
    left: 0;
    opacity: 1;
    visibility: visible;
    z-index: 1032; }
  .collapsed-tertiary-nav-pf .secondary-nav-item-pf.active .nav-pf-secondary-nav {
    left: 0;
    opacity: 1;
    visibility: visible; }
  .hover-secondary-nav-pf .secondary-nav-item-pf.is-hover .nav-pf-secondary-nav {
    opacity: 1;
    visibility: visible; }
  .ie9.layout-pf-fixed .nav-pf-secondary-nav {
    box-sizing: content-box; }
  .layout-pf-fixed-with-footer .nav-pf-secondary-nav {
    bottom: 37px; }
  .nav-pf-secondary-nav .list-group-item {
    border: none;
    padding: 0 0 5px 0;
    width: 200px; }
    .nav-pf-secondary-nav .list-group-item > a {
      background-color: #393f44;
      color: #d1d1d1;
      font-size: 12px;
      font-weight: inherit;
      height: inherit;
      padding: 4px 0 2px 0;
      margin-left: 20px;
      width: calc(200px - 20px); }
    .nav-pf-secondary-nav .list-group-item.active > a:before {
      display: none; }
    .nav-pf-secondary-nav .list-group-item.active > a,
    .nav-pf-secondary-nav .list-group-item:hover > a,
    .nav-pf-secondary-nav .list-group-item > a:focus {
      background-color: #4d5258;
      color: #fff; }
    .nav-pf-secondary-nav .list-group-item .badge-container-pf {
      top: 5px; }
      .nav-pf-secondary-nav .list-group-item .badge-container-pf .badge {
        background: #292e34;
        color: #fff; }
    .nav-pf-secondary-nav .list-group-item .list-group-item-value {
      padding-left: 5px; }
    .nav-pf-secondary-nav .list-group-item.tertiary-nav-item-pf > a {
      cursor: default; }
      .nav-pf-secondary-nav .list-group-item.tertiary-nav-item-pf > a:after {
        color: #72767b;
        content: "";
        display: block;
        font-family: "FontAwesome";
        font-size: 20px;
        line-height: 20px;
        padding: 0;
        position: absolute;
        right: 20px;
        top: 4px; }
      @supports (display: flex) {
        .nav-pf-secondary-nav .list-group-item.tertiary-nav-item-pf > a .list-group-item-value {
          padding-right: 35px; } }
    .nav-pf-secondary-nav .list-group-item.tertiary-nav-item-pf.active > a, .nav-pf-secondary-nav .list-group-item.tertiary-nav-item-pf:hover > a {
      width: calc(200px - 19px);
      z-index: 1033; }
      .nav-pf-secondary-nav .list-group-item.tertiary-nav-item-pf.active > a:after, .nav-pf-secondary-nav .list-group-item.tertiary-nav-item-pf:hover > a:after {
        right: 21px; }
  .nav-pf-vertical-with-badges .nav-pf-secondary-nav {
    left: 250px;
    width: 250px; }
    .nav-pf-vertical-with-badges .nav-pf-secondary-nav .list-group-item {
      width: 250px; }
      .nav-pf-vertical-with-badges .nav-pf-secondary-nav .list-group-item > a {
        width: calc(250px - 20px); }
      .nav-pf-vertical-with-badges .nav-pf-secondary-nav .list-group-item.tertiary-nav-item-pf.active > a, .nav-pf-vertical-with-badges .nav-pf-secondary-nav .list-group-item.tertiary-nav-item-pf:hover > a {
        width: calc(250px - 19px); }

.nav-pf-tertiary-nav {
  background: #4d5258;
  border: 1px solid #292e34;
  border-bottom: none;
  border-top: none;
  bottom: 0;
  display: block;
  left: calc(200px * 2);
  opacity: 0;
  overflow-x: hidden;
  overflow-y: auto;
  position: fixed;
  top: 60px;
  visibility: hidden;
  width: 200px;
  z-index: 1030; }
  .nav-pf-vertical-with-badges .nav-pf-tertiary-nav {
    left: 250px;
    width: 250px; }
    .nav-pf-vertical-with-badges .nav-pf-tertiary-nav .show-mobile-nav {
      left: 0; }
  .collapsed-tertiary-nav-pf .tertiary-nav-item-pf.active .nav-pf-tertiary-nav {
    left: 0;
    opacity: 1;
    visibility: visible;
    z-index: 1033; }
  .hover-tertiary-nav-pf .tertiary-nav-item-pf.is-hover .nav-pf-tertiary-nav {
    opacity: 1;
    visibility: visible; }
    .collapsed.collapsed-tertiary-nav-pf .hover-tertiary-nav-pf .tertiary-nav-item-pf.is-hover .nav-pf-tertiary-nav {
      left: 0; }
  .ie9.layout-pf-fixed .nav-pf-tertiary-nav {
    box-sizing: content-box; }
  .layout-pf-fixed-with-footer .nav-pf-tertiary-nav {
    bottom: 37px; }
  .nav-pf-tertiary-nav .nav-item-pf-header {
    color: #fff;
    margin: 18px 20px 10px 20px; }
  .nav-pf-tertiary-nav h5 {
    color: #fff;
    margin: 30px 20px 10px 20px; }
  .nav-pf-tertiary-nav .list-group-item {
    border: none;
    padding: 0 0 5px 0; }
    .nav-pf-tertiary-nav .list-group-item > a {
      background-color: transparent;
      color: #d1d1d1;
      font-size: 12px;
      font-weight: inherit;
      height: inherit;
      margin: 0 20px 0 20px;
      padding: 4px 0 2px 0; }
    .nav-pf-tertiary-nav .list-group-item.active > a:before {
      display: none; }
    .nav-pf-tertiary-nav .list-group-item.active > a,
    .nav-pf-tertiary-nav .list-group-item:hover > a,
    .nav-pf-tertiary-nav .list-group-item > a:focus {
      background-color: #393f44;
      color: #fff; }
    .nav-pf-tertiary-nav .list-group-item .badge-container-pf {
      top: 5px; }
      .nav-pf-tertiary-nav .list-group-item .badge-container-pf .badge {
        background: #292e34;
        color: #fff; }
    .nav-pf-tertiary-nav .list-group-item .list-group-item-value {
      padding-left: 5px; }

.collapsed .nav-pf-secondary-nav {
  left: 75px; }
  .collapsed .nav-pf-secondary-nav .list-group-item > a {
    width: calc(200px - 20px); }
    .collapsed .nav-pf-secondary-nav .list-group-item > a > .list-group-item-value {
      display: inline-block; }
    .collapsed .nav-pf-secondary-nav .list-group-item > a > .badge-container-pf {
      display: inline-block; }

.collapsed .nav-pf-tertiary-nav {
  left: calc(75px + 200px); }
  .collapsed .nav-pf-tertiary-nav .list-group-item > a {
    width: calc(200px - 20px); }
    .collapsed .nav-pf-tertiary-nav .list-group-item > a > .list-group-item-value {
      display: inline-block; }
    .collapsed .nav-pf-tertiary-nav .list-group-item > a > .badge-container-pf {
      display: inline-block; }

.collapsed.collapsed-secondary-nav-pf, .collapsed.collapsed-tertiary-nav-pf {
  width: 200px; }
  .collapsed.collapsed-secondary-nav-pf .secondary-nav-item-pf:hover > a, .collapsed.collapsed-tertiary-nav-pf .secondary-nav-item-pf:hover > a {
    z-index: 1030; }
  .collapsed.collapsed-secondary-nav-pf .nav-pf-secondary-nav, .collapsed.collapsed-tertiary-nav-pf .nav-pf-secondary-nav {
    left: 0; }

.collapsed.collapsed-secondary-nav-pf .nav-pf-tertiary-nav {
  left: 200px; }

.collapsed.collapsed-tertiary-nav-pf .nav-pf-tertiary-nav {
  left: 0; }

.collapsed.hover-secondary-nav-pf {
  width: calc(75px + 200px); }
  .collapsed.hover-secondary-nav-pf.collapsed-secondary-nav-pf, .collapsed.hover-secondary-nav-pf.collapsed-tertiary-nav-pf {
    width: 200px; }

.collapsed.hover-tertiary-nav-pf {
  width: calc(75px + (200px * 2)); }
  .collapsed.hover-tertiary-nav-pf.collapsed-secondary-nav-pf {
    width: calc(200px * 2); }
  .collapsed.hover-tertiary-nav-pf.collapsed-tertiary-nav-pf {
    width: 200px; }

.collapsed.nav-pf-vertical-with-badges .nav-pf-secondary-nav .list-group-item > a {
  width: calc(250px - 20px); }

.collapsed.nav-pf-vertical-with-badges .nav-pf-tertiary-nav {
  left: calc(75px + 250px); }
  .collapsed.nav-pf-vertical-with-badges .nav-pf-tertiary-nav .list-group-item > a {
    width: calc(250px - 20px); }

.collapsed.nav-pf-vertical-with-badges.collapsed-secondary-nav-pf, .collapsed.nav-pf-vertical-with-badges.collapsed-tertiary-nav-pf {
  width: 250px; }

.collapsed.nav-pf-vertical-with-badges.collapsed-secondary-nav-pf .nav-pf-tertiary-nav {
  left: 250px; }

.collapsed.nav-pf-vertical-with-badges.hover-secondary-nav-pf {
  width: calc(75px + 250px); }
  .collapsed.nav-pf-vertical-with-badges.hover-secondary-nav-pf.collapsed-secondary-nav-pf, .collapsed.nav-pf-vertical-with-badges.hover-secondary-nav-pf.collapsed-tertiary-nav-pf {
    width: 250px; }

.collapsed.nav-pf-vertical-with-badges.hover-tertiary-nav-pf {
  width: calc(75px + (200px * 2)); }
  .collapsed.nav-pf-vertical-with-badges.hover-tertiary-nav-pf.collapsed-secondary-nav-pf {
    width: calc(200px * 2); }
  .collapsed.nav-pf-vertical-with-badges.hover-tertiary-nav-pf.collapsed-tertiary-nav-pf {
    width: 200px; }

.secondary-collapse-toggle-pf {
  display: none;
  font-family: "FontAwesome";
  font-size: inherit;
  opacity: 0;
  pointer-events: none;
  -webkit-font-smoothing: antialiased; }
  .secondary-collapse-toggle-pf:before {
    content: ""; }
  .secondary-collapse-toggle-pf.collapsed:before {
    content: ""; }

.tertiary-collapse-toggle-pf {
  display: none;
  font-family: "FontAwesome";
  font-size: inherit;
  opacity: 0;
  pointer-events: none;
  -webkit-font-smoothing: antialiased; }
  .tertiary-collapse-toggle-pf:before {
    content: ""; }
  .tertiary-collapse-toggle-pf.collapsed:before {
    content: ""; }

.nav-pf-vertical-collapsible-menus .secondary-collapse-toggle-pf {
  display: inline-block; }

.nav-pf-vertical-collapsible-menus .secondary-nav-item-pf.active .secondary-collapse-toggle-pf {
  opacity: 1;
  pointer-events: all; }

.nav-pf-vertical-collapsible-menus .tertiary-collapse-toggle-pf {
  display: inline-block; }

.nav-pf-vertical-collapsible-menus .tertiary-nav-item-pf.active .tertiary-collapse-toggle-pf {
  opacity: 1;
  pointer-events: all; }

.show-mobile-nav .secondary-collapse-toggle-pf {
  display: inline-block;
  opacity: 1;
  pointer-events: all; }
  .show-mobile-nav .secondary-collapse-toggle-pf:before {
    content: ""; }

.show-mobile-nav .tertiary-collapse-toggle-pf {
  display: inline-block;
  opacity: 1;
  pointer-events: all; }
  .show-mobile-nav .tertiary-collapse-toggle-pf:before {
    content: ""; }

.force-hide-secondary-nav-pf .nav-pf-secondary-nav {
  display: none !important; }

.force-hide-secondary-nav-pf .nav-pf-tertiary-nav {
  display: none !important; }

.nav-pf-vertical.transitions {
  transition: width 100ms; }
  .nav-pf-vertical.transitions .nav-pf-secondary-nav {
    transition: visibility 100ms, opacity 100ms linear; }
  .nav-pf-vertical.transitions .nav-pf-tertiary-nav {
    transition: visibility 100ms, opacity 100ms linear; }

.wizard-pf {
  padding: 10px;
  margin: 0 auto;
  max-height: 900px;
  width: auto; }
  .wizard-pf .modal-content {
    min-height: 100%; }

.wizard-pf-body {
  background: #fff;
  padding: 0;
  position: static; }

/* styles the sidebard containing the sub-steps */
.wizard-pf-sidebar {
  background: #fafafa;
  border-right: 1px solid #d1d1d1;
  display: none; }
  @media (min-width: 768px) {
    .wizard-pf-sidebar {
      display: inherit;
      flex: 0 0 auto;
      overflow-x: hidden;
      overflow-y: auto; }
      .wizard-pf-sidebar .list-group {
        border-top: 0;
        margin-bottom: 0; }
      .wizard-pf-sidebar .list-group-item {
        background-color: transparent;
        border-color: #ededed;
        padding: 0; }
        .wizard-pf-sidebar .list-group-item > a {
          color: #030303;
          cursor: pointer;
          display: block;
          font-size: 14px;
          font-weight: 700;
          height: 50px;
          outline: 0;
          padding-top: 11px;
          padding-left: 20px;
          position: relative;
          white-space: nowrap;
          width: 14em; }
          .wizard-pf-sidebar .list-group-item > a:hover {
            background-color: #ededed;
            text-decoration: none; }
            .wizard-pf-sidebar .list-group-item > a:hover:focus {
              text-decoration: none; }
              .wizard-pf-sidebar .list-group-item > a:hover:focus span {
                text-decoration: underline; }
        .wizard-pf-sidebar .list-group-item.active {
          background-color: #ededed; }
          .wizard-pf-sidebar .list-group-item.active:hover {
            border-color: #ededed; }
          .wizard-pf-sidebar .list-group-item.active > a {
            color: #39a5dc;
            cursor: default; }
            .wizard-pf-sidebar .list-group-item.active > a:before {
              content: " ";
              background: #39a5dc;
              height: 100%;
              left: 0;
              position: absolute;
              top: 0;
              width: 3px; }
            .wizard-pf-sidebar .list-group-item.active > a:after {
              color: #39a5dc;
              content: "\f105";
              display: block;
              font-family: FontAwesome;
              font-size: 24px;
              font-weight: 500;
              line-height: 30px;
              padding-top: 10px;
              position: absolute;
              right: 23px;
              top: 0; } }

.wizard-pf-substep-number {
  display: inline-block;
  margin-right: 5px;
  vertical-align: middle;
  width: 25px; }

.wizard-pf-substep-title {
  display: inline-block;
  margin-right: 5px;
  text-align: left;
  vertical-align: middle; }

/* styles the steps indicator across the top of the wizard */
.wizard-pf-steps {
  border-bottom: solid 1px #d1d1d1; }
  @media (min-width: 768px) {
    .wizard-pf-steps {
      text-align: center; } }

.wizard-pf-steps-indicator {
  background: #ededed;
  border-top: 1px solid #d1d1d1;
  display: inline-block;
  display: flex;
  font-size: 16px;
  list-style: none;
  margin-bottom: 0;
  padding: 15px 0; }
  @media (min-width: 768px) {
    .wizard-pf-steps-indicator {
      background: #fff;
      height: 120px;
      padding: 38px 0 0;
      justify-content: space-around; } }
  .wizard-pf-steps-indicator .wizard-pf-step {
    counter-increment: section;
    float: left;
    /* float for IE9 since it doesn't support flex. If items wrap, they overlap */
    flex-grow: 1;
    flex-basis: 0;
    line-height: 15px;
    margin: 0;
    padding: 0;
    position: relative;
    text-align: center;
    /* draw the line between the circles */ }
    .wizard-pf-steps-indicator .wizard-pf-step:not(.active) {
      display: none; }
      @media (min-width: 768px) {
        .wizard-pf-steps-indicator .wizard-pf-step:not(.active) {
          display: block; } }
    .wizard-pf-steps-indicator .wizard-pf-step a {
      align-items: center;
      display: flex;
      flex-wrap: wrap;
      font-weight: 700; }
      @media (min-width: 768px) {
        .wizard-pf-steps-indicator .wizard-pf-step a {
          font-weight: normal;
          justify-content: center; } }
      .wizard-pf-steps-indicator .wizard-pf-step a .wizard-pf-step-title {
        margin-left: 10px; }
        @media (min-width: 768px) {
          .wizard-pf-steps-indicator .wizard-pf-step a .wizard-pf-step-title {
            margin-left: 0; } }
        .wizard-pf-steps-indicator .wizard-pf-step a .wizard-pf-step-title-substep {
          font-weight: normal;
          margin-left: 10px;
          text-transform: capitalize; }
          .wizard-pf-steps-indicator .wizard-pf-step a .wizard-pf-step-title-substep:before {
            content: "\00BB";
            font-size: 20px;
            margin-right: 10px; }
          .wizard-pf-steps-indicator .wizard-pf-step a .wizard-pf-step-title-substep:not(.active) {
            display: none; }
    @media (min-width: 768px) {
      .wizard-pf-steps-indicator .wizard-pf-step {
        /* don't draw the line between the circles on the ends */ }
        .wizard-pf-steps-indicator .wizard-pf-step .wizard-pf-step-title-substep {
          display: none; }
        .wizard-pf-steps-indicator .wizard-pf-step:before {
          background-color: #bbb;
          content: "";
          height: 2px;
          left: 0;
          position: absolute;
          right: 0;
          top: 40px; }
        .wizard-pf-steps-indicator .wizard-pf-step:first-child:before {
          left: 50%;
          right: 0; }
        .wizard-pf-steps-indicator .wizard-pf-step:last-child:before {
          left: 0;
          right: 50%; }
        .wizard-pf-steps-indicator .wizard-pf-step:only-of-type:before {
          background-color: transparent; } }
    .wizard-pf-steps-indicator .wizard-pf-step a {
      color: #030303;
      cursor: pointer;
      font-size: 16px;
      margin-left: 1em;
      margin-right: 1em;
      text-decoration: none; }
    .wizard-pf-steps-indicator .wizard-pf-step:not(.active):not(.disabled) a:hover .wizard-pf-step-number {
      background-color: #bbb;
      border-color: #bbb;
      color: #fff; }
    .wizard-pf-steps-indicator .wizard-pf-step .wizard-pf-step-number {
      background-color: #fff;
      border-radius: 50%;
      border: solid 2px #39a5dc;
      color: #bbb;
      font-size: 12px;
      font-weight: 700;
      height: 25px;
      line-height: 22px;
      width: 25px;
      display: inline-block; }
      @media (min-width: 768px) {
        .wizard-pf-steps-indicator .wizard-pf-step .wizard-pf-step-number {
          left: calc(50% - 13px);
          position: absolute;
          top: 27px; } }
    .wizard-pf-steps-indicator .wizard-pf-step.active .wizard-pf-step-number {
      background-color: #39a5dc;
      border-color: #39a5dc;
      cursor: default;
      color: #fff; }
    .wizard-pf-steps-indicator .wizard-pf-step.active ~ .wizard-pf-step .wizard-pf-step-number {
      border-color: #bbb;
      background: #fff; }

/* styles the main content portion of the wizard */
.wizard-pf-main {
  height: 100%;
  padding: 1em;
  vertical-align: top;
  width: 100%; }
  @media (min-width: 768px) {
    .wizard-pf-main {
      overflow: auto;
      padding: 3em;
      flex: 1 1 auto; } }
  .wizard-pf-main .blank-slate-pf {
    background-color: transparent;
    border: none;
    left: 0;
    right: 0; }

.wizard-pf-contents textarea {
  resize: vertical; }

/* styles the content of a review page */
.wizard-pf-review-steps {
  list-style: none; }
  .wizard-pf-review-steps .list-group,
  .wizard-pf-review-steps .list-group-item {
    border: none;
    margin-bottom: 0; }
  .wizard-pf-review-steps > ul > li {
    float: left;
    line-height: 15px;
    margin: 0;
    padding-top: 0;
    position: relative;
    width: 100%; }
    .wizard-pf-review-steps > ul > li > a {
      color: #030303;
      cursor: pointer;
      font-size: 16px;
      padding-left: 30px;
      padding-right: 5px;
      text-decoration: none;
      transition: 250ms; }
      .wizard-pf-review-steps > ul > li > a:before {
        content: "\f107";
        display: block;
        font-family: FontAwesome;
        font-size: 24px;
        font-weight: 500;
        left: 20px;
        position: absolute;
        top: 0; }
      .wizard-pf-review-steps > ul > li > a.collapsed:before {
        content: "\f105"; }

.wizard-pf-review-substeps {
  padding-left: 22px; }
  .wizard-pf-review-substeps > ul > li {
    float: left;
    line-height: 15px;
    margin: 0;
    position: relative;
    width: 100%; }
    .wizard-pf-review-substeps > ul > li a {
      color: #030303;
      cursor: pointer;
      font-size: 16px;
      padding-left: 30px;
      padding-right: 5px;
      text-decoration: none;
      transition: 250ms; }
      .wizard-pf-review-substeps > ul > li a:before {
        content: "\f107";
        display: block;
        font-family: FontAwesome;
        font-size: 24px;
        font-weight: 500;
        left: 20px;
        position: absolute;
        top: 10px; }
      .wizard-pf-review-substeps > ul > li a.collapsed:before {
        content: "\f105"; }

.wizard-pf-review-content {
  padding-top: 10px;
  padding-left: 40px; }
  .wizard-pf-review-content .wizard-pf-review-item {
    padding: 5px 0; }
    .wizard-pf-review-content .wizard-pf-review-item.sub-item {
      margin-left: 10px; }
    .wizard-pf-review-content .wizard-pf-review-item .wizard-pf-review-item-label {
      font-weight: 700;
      padding-right: 10px; }
    .wizard-pf-review-content .wizard-pf-review-item .wizard-pf-review-item-field {
      font-weight: 700;
      margin: 5px 0;
      padding-right: 10px; }
      .wizard-pf-review-content .wizard-pf-review-item .wizard-pf-review-item-field:first-of-type {
        margin-top: 0; }
      .wizard-pf-review-content .wizard-pf-review-item .wizard-pf-review-item-field:last-of-type {
        margin-bottom: 0; }
      .wizard-pf-review-content .wizard-pf-review-item .wizard-pf-review-item-field.sub-field {
        margin-left: 10px; }

.wizard-pf-success-icon {
  color: #3f9c35;
  font-size: 67.2px;
  line-height: 67.2px; }

/* styles the footer */
.wizard-pf-footer {
  background: #fff;
  border-top: 1px solid #d1d1d1;
  margin-top: 0;
  padding-bottom: 17px;
  display: flex;
  justify-content: flex-end; }
  .wizard-pf-footer .wizard-pf-cancel {
    margin-right: 25px;
    order: -1; }
  .wizard-pf-footer .wizard-pf-next {
    order: 1;
    margin-left: 8px; }

@media (min-width: 768px) {
  .wizard-pf-row {
    display: flex;
    width: 100%;
    height: 900px;
    max-height: 65vh; } }

@media (min-width: 992px) {
  .wizard-pf {
    padding: 30px 0;
    width: 900px; }
  .wizard-pf-sidebar .list-group-item > a {
    width: 18em; } }

.wizard-pf-steps-alt,
.wizard-pf-steps-alt ul {
  list-style: none;
  margin: 0;
  padding: 0; }

.wizard-pf-steps-alt {
  margin: 15px 0 15px 15px; }
  @media (min-width: 768px) {
    .wizard-pf-steps-alt {
      display: none; } }
  .wizard-pf-steps-alt-indicator {
    position: relative; }
    .wizard-pf-steps-alt-indicator:after {
      color: #4d5258;
      content: "\f107";
      display: block;
      font-family: FontAwesome;
      font-size: 24px;
      font-weight: 500;
      position: absolute;
      right: 17px;
      top: 50%;
      transform: translateY(-50%); }
      @media (min-width: 768px) {
        .wizard-pf-steps-alt-indicator:after {
          display: none; } }
    .wizard-pf-steps-alt-indicator.active:after {
      content: "\f106"; }

.wizard-pf-step-alt {
  position: relative;
  z-index: 1; }
  .wizard-pf-step-alt:not(:last-child) {
    padding-bottom: 10px; }
  .wizard-pf-step-alt a {
    display: flex;
    flex: 1; }
    .wizard-pf-step-alt a:hover, .wizard-pf-step-alt a:focus {
      text-decoration: none; }
      .wizard-pf-step-alt a:hover .wizard-pf-step-alt-title, .wizard-pf-step-alt a:focus .wizard-pf-step-alt-title {
        color: #39a5dc; }
  .wizard-pf-step-alt ul {
    margin-left: 11px; }
  .wizard-pf-step-alt .wizard-pf-step-alt-number {
    border-radius: 50%;
    font-size: 12px;
    font-weight: 700;
    height: 24px;
    width: 24px;
    display: inline-block;
    text-align: center;
    flex: 0 0 auto;
    border: 2px solid #39a5dc;
    background-color: #fff; }
  .wizard-pf-step-alt .wizard-pf-step-alt-title {
    color: #030303;
    font-weight: 700;
    text-transform: capitalize;
    display: inline-block;
    margin-left: 5px;
    align-self: center; }
  .wizard-pf-step-alt.active .wizard-pf-step-alt-number {
    background-color: #39a5dc;
    border-color: #39a5dc;
    cursor: default;
    color: #fff; }
  .wizard-pf-step-alt.active .wizard-pf-step-alt-title {
    color: #39a5dc; }
  .wizard-pf-step-alt.active ~ .wizard-pf-step-alt .wizard-pf-step-alt-number {
    color: #bbb;
    border-color: #bbb; }
  .wizard-pf-step-alt:not(.active) a:hover .wizard-pf-step-alt-number {
    border-color: #bbb;
    background: #bbb;
    color: #fff; }
  .wizard-pf-step-alt:before {
    content: "";
    position: absolute;
    left: 11px;
    height: 100%;
    border-left: 2px solid #bbb;
    z-index: -1; }

.wizard-pf-step-alt-substep {
  display: flex;
  border-left: 2px solid transparent; }
  .wizard-pf-step-alt-substep a {
    padding: 5px 0 5px 18px;
    color: #393f44; }
  .wizard-pf-step-alt-substep.active, .wizard-pf-step-alt-substep:not(.disabled):hover {
    background-color: #ededed;
    border-color: #39a5dc; }
    .wizard-pf-step-alt-substep.active a, .wizard-pf-step-alt-substep:not(.disabled):hover a {
      color: #39a5dc; }
  .wizard-pf-step-alt-substep.active a {
    font-weight: 700; }

.wizard-pf-step.disabled > a:hover,
.wizard-pf-step-alt-substep.disabled > a:hover,
.wizard-pf-sidebar .list-group-item.disabled > a:hover {
  cursor: not-allowed; }

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

html,
body {
  height: 100%; }

.navbar-pf {
  background: #4eb4f9; }
  .navbar-pf .navbar-title {
    background-image: url("${url.resourcesPath}/images/logo.png");
    background-size: cover;
    height: 25px;
    background-repeat: no-repeat;
    width: 165px;
    margin: 3px 10px 5px;
    text-indent: -99999px; }
  .navbar-pf .navbar-header {
    border-bottom: 1px solid #b0b8b9; }
  .navbar-pf .navbar {
    margin-bottom: 0;
    min-height: inherit; }
  @media screen and (max-width: 768px) {
    .navbar-pf .navbar-utility {
      border: 0; } }
  .navbar-pf .navbar-utility > li + li {
    border: 0; }
    @media screen and (max-width: 768px) {
      .navbar-pf .navbar-utility > li + li {
        border-top: 1px solid #ffffff; } }
    .navbar-pf .navbar-utility > li + li > a,
    .navbar-pf .navbar-utility > li + li > a {
      color: #ffffff !important;
      border-left: 1px solid #ffffff; }
      @media screen and (max-width: 768px) {
        .navbar-pf .navbar-utility > li + li > a,
        .navbar-pf .navbar-utility > li + li > a {
          border: 0; } }
  .navbar-pf .navbar-utility li a,
  .navbar-pf .navbar-utility li a,
  .navbar-pf .navbar-utility li a:hover {
    color: #ffffff !important;
    border-left: 1px solid #ffffff; }
    @media screen and (max-width: 768px) {
      .navbar-pf .navbar-utility li a,
      .navbar-pf .navbar-utility li a,
      .navbar-pf .navbar-utility li a:hover {
        border: 0; } }

.container {
  height: 100%; }

.content-area {
  background-color: #fff;
  border-color: #cecece;
  border-style: solid;
  border-width: 0 1px;
  height: 100%;
  padding: 0 30px; }

.margin-bottom {
  margin-bottom: 10px; }

/* Sidebar */
.bs-sidebar {
  background-color: #f9f9f9;
  padding-top: 44px;
  padding-right: 0;
  padding-left: 0;
  z-index: 20; }

.bs-sidebar ul {
  list-style: none;
  padding-left: 12px; }

.bs-sidebar ul li {
  margin-bottom: 0.5em;
  margin-left: -1em; }

.bs-sidebar ul li a {
  font-size: 14px;
  padding-left: 25px;
  color: #4d5258;
  line-height: 28px;
  display: block;
  border-width: 1px 0 1px 1px;
  border-style: solid;
  border-color: #f9f9f9; }

.bs-sidebar ul li a:hover,
.bs-sidebar ul li a:focus {
  text-decoration: none;
  color: #777777;
  border-right: 2px solid #aaa; }

.bs-sidebar ul li.active a {
  background-color: #c7e5f0;
  border-color: #56bae0;
  font-weight: bold;
  background-image: url(../img/icon-sidebar-active.png);
  background-repeat: no-repeat;
  background-position: right center; }

.bs-sidebar ul li.active a:hover {
  border-right: none; }

.content-area h2 {
  font-family: "Open Sans", sans-serif;
  font-weight: 100;
  font-size: 24px;
  margin-bottom: 25px;
  margin-top: 25px; }

.subtitle {
  text-align: right;
  margin-top: 30px;
  color: #909090; }

.required {
  color: #cb2915; }

.alert {
  margin-top: 30px;
  margin-bottom: 0; }

.feedback-aligner .alert {
  background-position: 1.27273em center;
  background-repeat: no-repeat;
  border-radius: 2px;
  border-width: 1px;
  color: #4d5258;
  display: inline-block;
  font-size: 1.1em;
  line-height: 1.4em;
  margin: 0;
  padding: 0.909091em 3.63636em;
  position: relative;
  text-align: left; }

.alert.alert-success {
  background-color: #e4f1e1;
  border-color: #4b9e39; }

.alert.alert-error {
  background-color: #f8e7e7;
  border-color: #b91415; }

.alert.alert-warning {
  background-color: #fef1e9;
  border-color: #f17528; }

.alert.alert-info {
  background-color: #e4f3fa;
  border-color: #5994b2; }

.form-horizontal {
  border-top: 1px solid #e9e8e8;
  padding-top: 23px; }

.form-horizontal .control-label {
  color: #909090;
  line-height: 1.4em;
  padding-top: 5px;
  position: relative;
  text-align: right;
  width: 100%; }

.form-group {
  position: relative; }

.control-label + .required {
  position: absolute;
  right: -2px;
  top: 0; }

#kc-form-buttons {
  text-align: right;
  margin-top: 10px; }

#kc-form-buttons .btn-primary {
  float: right;
  margin-left: 8px; }

/* Authenticator page */
ol {
  padding-left: 40px; }

ol li {
  font-size: 13px;
  margin-bottom: 10px;
  position: relative; }

ol li img {
  margin-top: 15px;
  margin-bottom: 5px;
  border: 1px solid #eee; }

hr + .form-horizontal {
  border: none;
  padding-top: 0; }

.kc-dropdown {
  position: relative; }

.kc-dropdown > a {
  display: block;
  padding: 11px 10px 12px;
  line-height: 12px;
  font-size: 12px;
  color: #fff !important;
  text-decoration: none; }

.kc-dropdown > a::after {
  content: "\2c5";
  margin-left: 4px; }

.kc-dropdown:hover > a {
  background-color: rgba(0, 0, 0, 0.2); }

.kc-dropdown ul li a {
  padding: 1px 11px;
  font-size: 12px;
  color: #000 !important;
  border: 1px solid #fff;
  text-decoration: none;
  display: block;
  line-height: 20px; }

.kc-dropdown ul li a:hover {
  color: #4d5258;
  background-color: #d4edfa;
  border-color: #b3d3e7; }

.kc-dropdown ul {
  position: absolute;
  z-index: 2000;
  list-style: none;
  display: none;
  padding: 5px 0px;
  margin: 0px;
  background-color: #fff !important;
  border: 1px solid #b6b6b6;
  border-radius: 1px;
  -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  background-clip: padding-box;
  min-width: 100px; }

.kc-dropdown:hover ul {
  display: block; }

#kc-totp-secret-key {
  border: 1px solid #eee;
  font-size: 16px;
  padding: 10px;
  margin: 50px 0; }

</style></head>
<body class="admin-console user ka-body">

    <header class="navbar navbar-default navbar-pf navbar-main header ka-header">
        <nav class="navbar ka-navbar" role="navigation">  
            <div class="navbar-header">
                <div class="container">
                    <h1 class="navbar-title">Keycloak</h1>
                </div>
            </div>
            <div class="navbar-collapse navbar-collapse-1">
                <div class="container">
                    <ul class="nav navbar-nav navbar-utility">
                        <#if realm.internationalizationEnabled>
                            <li>
                                <div class="kc-dropdown" id="kc-locale-dropdown">
                                    <a href="#" id="kc-current-locale-link">${locale.current}</a>
                                    <ul>
                                        <#list locale.supported as l>
                                            <li class="kc-dropdown-item"><a href="${l.url}">${l.label}</a></li>
                                        </#list>
                                    </ul>
                                </div>
                            <li>
                        </#if>
                        <#if referrer?has_content && referrer.url?has_content><li><a href="${referrer.url}" id="referrer">${msg("backTo",referrer.name)}</a></li></#if>
                        <li><a href="${url.logoutUrl}">${msg("doSignOut")}</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <div class="container ka-container">
        <div class="ka-sidebar bs-sidebar col-sm-3">
            <ul>
                <li class="<#if active=='account'>active</#if>"><a href="${url.accountUrl}">${msg("account")}</a></li>
                <#if features.passwordUpdateSupported><li class="<#if active=='password'>active</#if>"><a href="${url.passwordUrl}">${msg("password")}</a></li></#if>
                <li class="<#if active=='totp'>active</#if>"><a href="${url.totpUrl}">${msg("authenticator")}</a></li>
                <#if features.identityFederation><li class="<#if active=='social'>active</#if>"><a href="${url.socialUrl}">${msg("federatedIdentity")}</a></li></#if>
                <li class="<#if active=='sessions'>active</#if>"><a href="${url.sessionsUrl}">${msg("sessions")}</a></li>
                <li class="<#if active=='applications'>active</#if>"><a href="${url.applicationsUrl}">${msg("applications")}</a></li>
                <#if features.log><li class="<#if active=='log'>active</#if>"><a href="${url.logUrl}">${msg("log")}</a></li></#if>
                <#if realm.userManagedAccessAllowed && features.authorization><li class="<#if active=='authorization'>active</#if>"><a href="${url.resourceUrl}">${msg("myResources")}</a></li></#if>
            </ul>
        </div>

        <div class="ka-content-area col-sm-9 content-area">
            <#if message?has_content>
                <div class="alert alert-${message.type}">
                    <#if message.type=='success' ><span class="pficon pficon-ok"></span></#if>
                    <#if message.type=='error' ><span class="pficon pficon-error-octagon"></span><span class="pficon pficon-error-exclamation"></span></#if>
                    ${kcSanitize(message.summary)?no_esc}
                </div>
            </#if>

            <#nested "content">
        </div>
    </div>

<script type="text/javascript" src="${url.resourcesPath}/js/bundle.js"></script></body>
</html>
</#macro>
