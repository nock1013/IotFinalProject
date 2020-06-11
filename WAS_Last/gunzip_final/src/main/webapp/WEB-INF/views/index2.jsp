<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <script
src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Untitled1</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.1.10/require.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>



<style type="text/css">
    /*!
*
* Twitter Bootstrap
*
*/
/*!
 * Bootstrap v3.3.7 (http://getbootstrap.com)
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */
/*! normalize.css v3.0.3 | MIT License | github.com/necolas/normalize.css */
html {
  font-family: sans-serif;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
}
body {
  margin: 0;
}
article,
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
  display: block;
}
audio,
canvas,
progress,
video {
  display: inline-block;
  vertical-align: baseline;
}
audio:not([controls]) {
  display: none;
  height: 0;
}
[hidden],
template {
  display: none;
}
a {
  background-color: transparent;
}
a:active,
a:hover {
  outline: 0;
}
abbr[title] {
  border-bottom: 1px dotted;
}
b,
strong {
  font-weight: bold;
}
dfn {
  font-style: italic;
}
h1 {
  font-size: 2em;
  margin: 0.67em 0;
}
mark {
  background: #ff0;
  color: #000;
}
small {
  font-size: 80%;
}
sub,
sup {
  font-size: 75%;
  line-height: 0;
  position: relative;
  vertical-align: baseline;
}
sup {
  top: -0.5em;
}
sub {
  bottom: -0.25em;
}
img {
  border: 0;
}
svg:not(:root) {
  overflow: hidden;
}
figure {
  margin: 1em 40px;
}
hr {
  box-sizing: content-box;
  height: 0;
}
pre {
  overflow: auto;
}
code,
kbd,
pre,
samp {
  font-family: monospace, monospace;
  font-size: 1em;
}
button,
input,
optgroup,
select,
textarea {
  color: inherit;
  font: inherit;
  margin: 0;
}
button {
  overflow: visible;
}
button,
select {
  text-transform: none;
}
button,
html input[type="button"],
input[type="reset"],
input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
button[disabled],
html input[disabled] {
  cursor: default;
}
button::-moz-focus-inner,
input::-moz-focus-inner {
  border: 0;
  padding: 0;
}
input {
  line-height: normal;
}
input[type="checkbox"],
input[type="radio"] {
  box-sizing: border-box;
  padding: 0;
}
input[type="number"]::-webkit-inner-spin-button,
input[type="number"]::-webkit-outer-spin-button {
  height: auto;
}
input[type="search"] {
  -webkit-appearance: textfield;
  box-sizing: content-box;
}
input[type="search"]::-webkit-search-cancel-button,
input[type="search"]::-webkit-search-decoration {
  -webkit-appearance: none;
}
fieldset {
  border: 1px solid #c0c0c0;
  margin: 0 2px;
  padding: 0.35em 0.625em 0.75em;
}
legend {
  border: 0;
  padding: 0;
}
textarea {
  overflow: auto;
}
optgroup {
  font-weight: bold;
}
table {
  border-collapse: collapse;
  border-spacing: 0;
}
td,
th {
  padding: 0;
}
/*! Source: https://github.com/h5bp/html5-boilerplate/blob/master/src/css/main.css */
@media print {
  *,
  *:before,
  *:after {
    background: transparent !important;
    box-shadow: none !important;
    text-shadow: none !important;
  }
  a,
  a:visited {
    text-decoration: underline;
  }
  a[href]:after {
    content: " (" attr(href) ")";
  }
  abbr[title]:after {
    content: " (" attr(title) ")";
  }
  a[href^="#"]:after,
  a[href^="javascript:"]:after {
    content: "";
  }
  pre,
  blockquote {
    border: 1px solid #999;
    page-break-inside: avoid;
  }
  thead {
    display: table-header-group;
  }
  tr,
  img {
    page-break-inside: avoid;
  }
  img {
    max-width: 100% !important;
  }
  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3;
  }
  h2,
  h3 {
    page-break-after: avoid;
  }
  .navbar {
    display: none;
  }
  .btn > .caret,
  .dropup > .btn > .caret {
    border-top-color: #000 !important;
  }
  .label {
    border: 1px solid #000;
  }
  .table {
    border-collapse: collapse !important;
  }
  .table td,
  .table th {
    background-color: #fff !important;
  }
  .table-bordered th,
  .table-bordered td {
    border: 1px solid #ddd !important;
  }
}
@font-face {
  font-family: 'Glyphicons Halflings';
  src: url('../components/bootstrap/fonts/glyphicons-halflings-regular.eot');
  src: url('../components/bootstrap/fonts/glyphicons-halflings-regular.eot?#iefix') format('embedded-opentype'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.woff2') format('woff2'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.woff') format('woff'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.ttf') format('truetype'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.svg#glyphicons_halflingsregular') format('svg');
}
.glyphicon {
  position: relative;
  top: 1px;
  display: inline-block;
  font-family: 'Glyphicons Halflings';
  font-style: normal;
  font-weight: normal;
  line-height: 1;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.glyphicon-asterisk:before {
  content: "\002a";
}
.glyphicon-plus:before {
  content: "\002b";
}
.glyphicon-euro:before,
.glyphicon-eur:before {
  content: "\20ac";
}
.glyphicon-minus:before {
  content: "\2212";
}
.glyphicon-cloud:before {
  content: "\2601";
}
.glyphicon-envelope:before {
  content: "\2709";
}
.glyphicon-pencil:before {
  content: "\270f";
}
.glyphicon-glass:before {
  content: "\e001";
}
.glyphicon-music:before {
  content: "\e002";
}
.glyphicon-search:before {
  content: "\e003";
}
.glyphicon-heart:before {
  content: "\e005";
}
.glyphicon-star:before {
  content: "\e006";
}
.glyphicon-star-empty:before {
  content: "\e007";
}
.glyphicon-user:before {
  content: "\e008";
}
.glyphicon-film:before {
  content: "\e009";
}
.glyphicon-th-large:before {
  content: "\e010";
}
.glyphicon-th:before {
  content: "\e011";
}
.glyphicon-th-list:before {
  content: "\e012";
}
.glyphicon-ok:before {
  content: "\e013";
}
.glyphicon-remove:before {
  content: "\e014";
}
.glyphicon-zoom-in:before {
  content: "\e015";
}
.glyphicon-zoom-out:before {
  content: "\e016";
}
.glyphicon-off:before {
  content: "\e017";
}
.glyphicon-signal:before {
  content: "\e018";
}
.glyphicon-cog:before {
  content: "\e019";
}
.glyphicon-trash:before {
  content: "\e020";
}
.glyphicon-home:before {
  content: "\e021";
}
.glyphicon-file:before {
  content: "\e022";
}
.glyphicon-time:before {
  content: "\e023";
}
.glyphicon-road:before {
  content: "\e024";
}
.glyphicon-download-alt:before {
  content: "\e025";
}
.glyphicon-download:before {
  content: "\e026";
}
.glyphicon-upload:before {
  content: "\e027";
}
.glyphicon-inbox:before {
  content: "\e028";
}
.glyphicon-play-circle:before {
  content: "\e029";
}
.glyphicon-repeat:before {
  content: "\e030";
}
.glyphicon-refresh:before {
  content: "\e031";
}
.glyphicon-list-alt:before {
  content: "\e032";
}
.glyphicon-lock:before {
  content: "\e033";
}
.glyphicon-flag:before {
  content: "\e034";
}
.glyphicon-headphones:before {
  content: "\e035";
}
.glyphicon-volume-off:before {
  content: "\e036";
}
.glyphicon-volume-down:before {
  content: "\e037";
}
.glyphicon-volume-up:before {
  content: "\e038";
}
.glyphicon-qrcode:before {
  content: "\e039";
}
.glyphicon-barcode:before {
  content: "\e040";
}
.glyphicon-tag:before {
  content: "\e041";
}
.glyphicon-tags:before {
  content: "\e042";
}
.glyphicon-book:before {
  content: "\e043";
}
.glyphicon-bookmark:before {
  content: "\e044";
}
.glyphicon-print:before {
  content: "\e045";
}
.glyphicon-camera:before {
  content: "\e046";
}
.glyphicon-font:before {
  content: "\e047";
}
.glyphicon-bold:before {
  content: "\e048";
}
.glyphicon-italic:before {
  content: "\e049";
}
.glyphicon-text-height:before {
  content: "\e050";
}
.glyphicon-text-width:before {
  content: "\e051";
}
.glyphicon-align-left:before {
  content: "\e052";
}
.glyphicon-align-center:before {
  content: "\e053";
}
.glyphicon-align-right:before {
  content: "\e054";
}
.glyphicon-align-justify:before {
  content: "\e055";
}
.glyphicon-list:before {
  content: "\e056";
}
.glyphicon-indent-left:before {
  content: "\e057";
}
.glyphicon-indent-right:before {
  content: "\e058";
}
.glyphicon-facetime-video:before {
  content: "\e059";
}
.glyphicon-picture:before {
  content: "\e060";
}
.glyphicon-map-marker:before {
  content: "\e062";
}
.glyphicon-adjust:before {
  content: "\e063";
}
.glyphicon-tint:before {
  content: "\e064";
}
.glyphicon-edit:before {
  content: "\e065";
}
.glyphicon-share:before {
  content: "\e066";
}
.glyphicon-check:before {
  content: "\e067";
}
.glyphicon-move:before {
  content: "\e068";
}
.glyphicon-step-backward:before {
  content: "\e069";
}
.glyphicon-fast-backward:before {
  content: "\e070";
}
.glyphicon-backward:before {
  content: "\e071";
}
.glyphicon-play:before {
  content: "\e072";
}
.glyphicon-pause:before {
  content: "\e073";
}
.glyphicon-stop:before {
  content: "\e074";
}
.glyphicon-forward:before {
  content: "\e075";
}
.glyphicon-fast-forward:before {
  content: "\e076";
}
.glyphicon-step-forward:before {
  content: "\e077";
}
.glyphicon-eject:before {
  content: "\e078";
}
.glyphicon-chevron-left:before {
  content: "\e079";
}
.glyphicon-chevron-right:before {
  content: "\e080";
}
.glyphicon-plus-sign:before {
  content: "\e081";
}
.glyphicon-minus-sign:before {
  content: "\e082";
}
.glyphicon-remove-sign:before {
  content: "\e083";
}
.glyphicon-ok-sign:before {
  content: "\e084";
}
.glyphicon-question-sign:before {
  content: "\e085";
}
.glyphicon-info-sign:before {
  content: "\e086";
}
.glyphicon-screenshot:before {
  content: "\e087";
}
.glyphicon-remove-circle:before {
  content: "\e088";
}
.glyphicon-ok-circle:before {
  content: "\e089";
}
.glyphicon-ban-circle:before {
  content: "\e090";
}
.glyphicon-arrow-left:before {
  content: "\e091";
}
.glyphicon-arrow-right:before {
  content: "\e092";
}
.glyphicon-arrow-up:before {
  content: "\e093";
}
.glyphicon-arrow-down:before {
  content: "\e094";
}
.glyphicon-share-alt:before {
  content: "\e095";
}
.glyphicon-resize-full:before {
  content: "\e096";
}
.glyphicon-resize-small:before {
  content: "\e097";
}
.glyphicon-exclamation-sign:before {
  content: "\e101";
}
.glyphicon-gift:before {
  content: "\e102";
}
.glyphicon-leaf:before {
  content: "\e103";
}
.glyphicon-fire:before {
  content: "\e104";
}
.glyphicon-eye-open:before {
  content: "\e105";
}
.glyphicon-eye-close:before {
  content: "\e106";
}
.glyphicon-warning-sign:before {
  content: "\e107";
}
.glyphicon-plane:before {
  content: "\e108";
}
.glyphicon-calendar:before {
  content: "\e109";
}
.glyphicon-random:before {
  content: "\e110";
}
.glyphicon-comment:before {
  content: "\e111";
}
.glyphicon-magnet:before {
  content: "\e112";
}
.glyphicon-chevron-up:before {
  content: "\e113";
}
.glyphicon-chevron-down:before {
  content: "\e114";
}
.glyphicon-retweet:before {
  content: "\e115";
}
.glyphicon-shopping-cart:before {
  content: "\e116";
}
.glyphicon-folder-close:before {
  content: "\e117";
}
.glyphicon-folder-open:before {
  content: "\e118";
}
.glyphicon-resize-vertical:before {
  content: "\e119";
}
.glyphicon-resize-horizontal:before {
  content: "\e120";
}
.glyphicon-hdd:before {
  content: "\e121";
}
.glyphicon-bullhorn:before {
  content: "\e122";
}
.glyphicon-bell:before {
  content: "\e123";
}
.glyphicon-certificate:before {
  content: "\e124";
}
.glyphicon-thumbs-up:before {
  content: "\e125";
}
.glyphicon-thumbs-down:before {
  content: "\e126";
}
.glyphicon-hand-right:before {
  content: "\e127";
}
.glyphicon-hand-left:before {
  content: "\e128";
}
.glyphicon-hand-up:before {
  content: "\e129";
}
.glyphicon-hand-down:before {
  content: "\e130";
}
.glyphicon-circle-arrow-right:before {
  content: "\e131";
}
.glyphicon-circle-arrow-left:before {
  content: "\e132";
}
.glyphicon-circle-arrow-up:before {
  content: "\e133";
}
.glyphicon-circle-arrow-down:before {
  content: "\e134";
}
.glyphicon-globe:before {
  content: "\e135";
}
.glyphicon-wrench:before {
  content: "\e136";
}
.glyphicon-tasks:before {
  content: "\e137";
}
.glyphicon-filter:before {
  content: "\e138";
}
.glyphicon-briefcase:before {
  content: "\e139";
}
.glyphicon-fullscreen:before {
  content: "\e140";
}
.glyphicon-dashboard:before {
  content: "\e141";
}
.glyphicon-paperclip:before {
  content: "\e142";
}
.glyphicon-heart-empty:before {
  content: "\e143";
}
.glyphicon-link:before {
  content: "\e144";
}
.glyphicon-phone:before {
  content: "\e145";
}
.glyphicon-pushpin:before {
  content: "\e146";
}
.glyphicon-usd:before {
  content: "\e148";
}
.glyphicon-gbp:before {
  content: "\e149";
}
.glyphicon-sort:before {
  content: "\e150";
}
.glyphicon-sort-by-alphabet:before {
  content: "\e151";
}
.glyphicon-sort-by-alphabet-alt:before {
  content: "\e152";
}
.glyphicon-sort-by-order:before {
  content: "\e153";
}
.glyphicon-sort-by-order-alt:before {
  content: "\e154";
}
.glyphicon-sort-by-attributes:before {
  content: "\e155";
}
.glyphicon-sort-by-attributes-alt:before {
  content: "\e156";
}
.glyphicon-unchecked:before {
  content: "\e157";
}
.glyphicon-expand:before {
  content: "\e158";
}
.glyphicon-collapse-down:before {
  content: "\e159";
}
.glyphicon-collapse-up:before {
  content: "\e160";
}
.glyphicon-log-in:before {
  content: "\e161";
}
.glyphicon-flash:before {
  content: "\e162";
}
.glyphicon-log-out:before {
  content: "\e163";
}
.glyphicon-new-window:before {
  content: "\e164";
}
.glyphicon-record:before {
  content: "\e165";
}
.glyphicon-save:before {
  content: "\e166";
}
.glyphicon-open:before {
  content: "\e167";
}
.glyphicon-saved:before {
  content: "\e168";
}
.glyphicon-import:before {
  content: "\e169";
}
.glyphicon-export:before {
  content: "\e170";
}
.glyphicon-send:before {
  content: "\e171";
}
.glyphicon-floppy-disk:before {
  content: "\e172";
}
.glyphicon-floppy-saved:before {
  content: "\e173";
}
.glyphicon-floppy-remove:before {
  content: "\e174";
}
.glyphicon-floppy-save:before {
  content: "\e175";
}
.glyphicon-floppy-open:before {
  content: "\e176";
}
.glyphicon-credit-card:before {
  content: "\e177";
}
.glyphicon-transfer:before {
  content: "\e178";
}
.glyphicon-cutlery:before {
  content: "\e179";
}
.glyphicon-header:before {
  content: "\e180";
}
.glyphicon-compressed:before {
  content: "\e181";
}
.glyphicon-earphone:before {
  content: "\e182";
}
.glyphicon-phone-alt:before {
  content: "\e183";
}
.glyphicon-tower:before {
  content: "\e184";
}
.glyphicon-stats:before {
  content: "\e185";
}
.glyphicon-sd-video:before {
  content: "\e186";
}
.glyphicon-hd-video:before {
  content: "\e187";
}
.glyphicon-subtitles:before {
  content: "\e188";
}
.glyphicon-sound-stereo:before {
  content: "\e189";
}
.glyphicon-sound-dolby:before {
  content: "\e190";
}
.glyphicon-sound-5-1:before {
  content: "\e191";
}
.glyphicon-sound-6-1:before {
  content: "\e192";
}
.glyphicon-sound-7-1:before {
  content: "\e193";
}
.glyphicon-copyright-mark:before {
  content: "\e194";
}
.glyphicon-registration-mark:before {
  content: "\e195";
}
.glyphicon-cloud-download:before {
  content: "\e197";
}
.glyphicon-cloud-upload:before {
  content: "\e198";
}
.glyphicon-tree-conifer:before {
  content: "\e199";
}
.glyphicon-tree-deciduous:before {
  content: "\e200";
}
.glyphicon-cd:before {
  content: "\e201";
}
.glyphicon-save-file:before {
  content: "\e202";
}
.glyphicon-open-file:before {
  content: "\e203";
}
.glyphicon-level-up:before {
  content: "\e204";
}
.glyphicon-copy:before {
  content: "\e205";
}
.glyphicon-paste:before {
  content: "\e206";
}
.glyphicon-alert:before {
  content: "\e209";
}
.glyphicon-equalizer:before {
  content: "\e210";
}
.glyphicon-king:before {
  content: "\e211";
}
.glyphicon-queen:before {
  content: "\e212";
}
.glyphicon-pawn:before {
  content: "\e213";
}
.glyphicon-bishop:before {
  content: "\e214";
}
.glyphicon-knight:before {
  content: "\e215";
}
.glyphicon-baby-formula:before {
  content: "\e216";
}
.glyphicon-tent:before {
  content: "\26fa";
}
.glyphicon-blackboard:before {
  content: "\e218";
}
.glyphicon-bed:before {
  content: "\e219";
}
.glyphicon-apple:before {
  content: "\f8ff";
}
.glyphicon-erase:before {
  content: "\e221";
}
.glyphicon-hourglass:before {
  content: "\231b";
}
.glyphicon-lamp:before {
  content: "\e223";
}
.glyphicon-duplicate:before {
  content: "\e224";
}
.glyphicon-piggy-bank:before {
  content: "\e225";
}
.glyphicon-scissors:before {
  content: "\e226";
}
.glyphicon-bitcoin:before {
  content: "\e227";
}
.glyphicon-btc:before {
  content: "\e227";
}
.glyphicon-xbt:before {
  content: "\e227";
}
.glyphicon-yen:before {
  content: "\00a5";
}
.glyphicon-jpy:before {
  content: "\00a5";
}
.glyphicon-ruble:before {
  content: "\20bd";
}
.glyphicon-rub:before {
  content: "\20bd";
}
.glyphicon-scale:before {
  content: "\e230";
}
.glyphicon-ice-lolly:before {
  content: "\e231";
}
.glyphicon-ice-lolly-tasted:before {
  content: "\e232";
}
.glyphicon-education:before {
  content: "\e233";
}
.glyphicon-option-horizontal:before {
  content: "\e234";
}
.glyphicon-option-vertical:before {
  content: "\e235";
}
.glyphicon-menu-hamburger:before {
  content: "\e236";
}
.glyphicon-modal-window:before {
  content: "\e237";
}
.glyphicon-oil:before {
  content: "\e238";
}
.glyphicon-grain:before {
  content: "\e239";
}
.glyphicon-sunglasses:before {
  content: "\e240";
}
.glyphicon-text-size:before {
  content: "\e241";
}
.glyphicon-text-color:before {
  content: "\e242";
}
.glyphicon-text-background:before {
  content: "\e243";
}
.glyphicon-object-align-top:before {
  content: "\e244";
}
.glyphicon-object-align-bottom:before {
  content: "\e245";
}
.glyphicon-object-align-horizontal:before {
  content: "\e246";
}
.glyphicon-object-align-left:before {
  content: "\e247";
}
.glyphicon-object-align-vertical:before {
  content: "\e248";
}
.glyphicon-object-align-right:before {
  content: "\e249";
}
.glyphicon-triangle-right:before {
  content: "\e250";
}
.glyphicon-triangle-left:before {
  content: "\e251";
}
.glyphicon-triangle-bottom:before {
  content: "\e252";
}
.glyphicon-triangle-top:before {
  content: "\e253";
}
.glyphicon-console:before {
  content: "\e254";
}
.glyphicon-superscript:before {
  content: "\e255";
}
.glyphicon-subscript:before {
  content: "\e256";
}
.glyphicon-menu-left:before {
  content: "\e257";
}
.glyphicon-menu-right:before {
  content: "\e258";
}
.glyphicon-menu-down:before {
  content: "\e259";
}
.glyphicon-menu-up:before {
  content: "\e260";
}
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
*:before,
*:after {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
html {
  font-size: 10px;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
body {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  line-height: 1.42857143;
  color: #000;
  background-color: #fff;
}
input,
button,
select,
textarea {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
}
a {
  color: #337ab7;
  text-decoration: none;
}
a:hover,
a:focus {
  color: #23527c;
  text-decoration: underline;
}
a:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
figure {
  margin: 0;
}
img {
  vertical-align: middle;
}
.img-responsive,
.thumbnail > img,
.thumbnail a > img,
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  display: block;
  max-width: 100%;
  height: auto;
}
.img-rounded {
  border-radius: 3px;
}
.img-thumbnail {
  padding: 4px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 2px;
  -webkit-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
  display: inline-block;
  max-width: 100%;
  height: auto;
}
.img-circle {
  border-radius: 50%;
}
hr {
  margin-top: 18px;
  margin-bottom: 18px;
  border: 0;
  border-top: 1px solid #eeeeee;
}
.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  margin: -1px;
  padding: 0;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
[role="button"] {
  cursor: pointer;
}
h1,
h2,
h3,
h4,
h5,
h6,
.h1,
.h2,
.h3,
.h4,
.h5,
.h6 {
  font-family: inherit;
  font-weight: 500;
  line-height: 1.1;
  color: inherit;
}
h1 small,
h2 small,
h3 small,
h4 small,
h5 small,
h6 small,
.h1 small,
.h2 small,
.h3 small,
.h4 small,
.h5 small,
.h6 small,
h1 .small,
h2 .small,
h3 .small,
h4 .small,
h5 .small,
h6 .small,
.h1 .small,
.h2 .small,
.h3 .small,
.h4 .small,
.h5 .small,
.h6 .small {
  font-weight: normal;
  line-height: 1;
  color: #777777;
}
h1,
.h1,
h2,
.h2,
h3,
.h3 {
  margin-top: 18px;
  margin-bottom: 9px;
}
h1 small,
.h1 small,
h2 small,
.h2 small,
h3 small,
.h3 small,
h1 .small,
.h1 .small,
h2 .small,
.h2 .small,
h3 .small,
.h3 .small {
  font-size: 65%;
}
h4,
.h4,
h5,
.h5,
h6,
.h6 {
  margin-top: 9px;
  margin-bottom: 9px;
}
h4 small,
.h4 small,
h5 small,
.h5 small,
h6 small,
.h6 small,
h4 .small,
.h4 .small,
h5 .small,
.h5 .small,
h6 .small,
.h6 .small {
  font-size: 75%;
}
h1,
.h1 {
  font-size: 33px;
}
h2,
.h2 {
  font-size: 27px;
}
h3,
.h3 {
  font-size: 23px;
}
h4,
.h4 {
  font-size: 17px;
}
h5,
.h5 {
  font-size: 13px;
}
h6,
.h6 {
  font-size: 12px;
}
p {
  margin: 0 0 9px;
}
.lead {
  margin-bottom: 18px;
  font-size: 14px;
  font-weight: 300;
  line-height: 1.4;
}
@media (min-width: 768px) {
  .lead {
    font-size: 19.5px;
  }
}
small,
.small {
  font-size: 92%;
}
mark,
.mark {
  background-color: #fcf8e3;
  padding: .2em;
}
.text-left {
  text-align: left;
}
.text-right {
  text-align: right;
}
.text-center {
  text-align: center;
}
.text-justify {
  text-align: justify;
}
.text-nowrap {
  white-space: nowrap;
}
.text-lowercase {
  text-transform: lowercase;
}
.text-uppercase {
  text-transform: uppercase;
}
.text-capitalize {
  text-transform: capitalize;
}
.text-muted {
  color: #777777;
}
.text-primary {
  color: #337ab7;
}
a.text-primary:hover,
a.text-primary:focus {
  color: #286090;
}
.text-success {
  color: #3c763d;
}
a.text-success:hover,
a.text-success:focus {
  color: #2b542c;
}
.text-info {
  color: #31708f;
}
a.text-info:hover,
a.text-info:focus {
  color: #245269;
}
.text-warning {
  color: #8a6d3b;
}
a.text-warning:hover,
a.text-warning:focus {
  color: #66512c;
}
.text-danger {
  color: #a94442;
}
a.text-danger:hover,
a.text-danger:focus {
  color: #843534;
}
.bg-primary {
  color: #fff;
  background-color: #337ab7;
}
a.bg-primary:hover,
a.bg-primary:focus {
  background-color: #286090;
}
.bg-success {
  background-color: #dff0d8;
}
a.bg-success:hover,
a.bg-success:focus {
  background-color: #c1e2b3;
}
.bg-info {
  background-color: #d9edf7;
}
a.bg-info:hover,
a.bg-info:focus {
  background-color: #afd9ee;
}
.bg-warning {
  background-color: #fcf8e3;
}
a.bg-warning:hover,
a.bg-warning:focus {
  background-color: #f7ecb5;
}
.bg-danger {
  background-color: #f2dede;
}
a.bg-danger:hover,
a.bg-danger:focus {
  background-color: #e4b9b9;
}
.page-header {
  padding-bottom: 8px;
  margin: 36px 0 18px;
  border-bottom: 1px solid #eeeeee;
}
ul,
ol {
  margin-top: 0;
  margin-bottom: 9px;
}
ul ul,
ol ul,
ul ol,
ol ol {
  margin-bottom: 0;
}
.list-unstyled {
  padding-left: 0;
  list-style: none;
}
.list-inline {
  padding-left: 0;
  list-style: none;
  margin-left: -5px;
}
.list-inline > li {
  display: inline-block;
  padding-left: 5px;
  padding-right: 5px;
}
dl {
  margin-top: 0;
  margin-bottom: 18px;
}
dt,
dd {
  line-height: 1.42857143;
}
dt {
  font-weight: bold;
}
dd {
  margin-left: 0;
}
@media (min-width: 541px) {
  .dl-horizontal dt {
    float: left;
    width: 160px;
    clear: left;
    text-align: right;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .dl-horizontal dd {
    margin-left: 180px;
  }
}
abbr[title],
abbr[data-original-title] {
  cursor: help;
  border-bottom: 1px dotted #777777;
}
.initialism {
  font-size: 90%;
  text-transform: uppercase;
}
blockquote {
  padding: 9px 18px;
  margin: 0 0 18px;
  font-size: inherit;
  border-left: 5px solid #eeeeee;
}
blockquote p:last-child,
blockquote ul:last-child,
blockquote ol:last-child {
  margin-bottom: 0;
}
blockquote footer,
blockquote small,
blockquote .small {
  display: block;
  font-size: 80%;
  line-height: 1.42857143;
  color: #777777;
}
blockquote footer:before,
blockquote small:before,
blockquote .small:before {
  content: '\2014 \00A0';
}
.blockquote-reverse,
blockquote.pull-right {
  padding-right: 15px;
  padding-left: 0;
  border-right: 5px solid #eeeeee;
  border-left: 0;
  text-align: right;
}
.blockquote-reverse footer:before,
blockquote.pull-right footer:before,
.blockquote-reverse small:before,
blockquote.pull-right small:before,
.blockquote-reverse .small:before,
blockquote.pull-right .small:before {
  content: '';
}
.blockquote-reverse footer:after,
blockquote.pull-right footer:after,
.blockquote-reverse small:after,
blockquote.pull-right small:after,
.blockquote-reverse .small:after,
blockquote.pull-right .small:after {
  content: '\00A0 \2014';
}
address {
  margin-bottom: 18px;
  font-style: normal;
  line-height: 1.42857143;
}
code,
kbd,
pre,
samp {
  font-family: monospace;
}
code {
  padding: 2px 4px;
  font-size: 90%;
  color: #c7254e;
  background-color: #f9f2f4;
  border-radius: 2px;
}
kbd {
  padding: 2px 4px;
  font-size: 90%;
  color: #888;
  background-color: transparent;
  border-radius: 1px;
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.25);
}
kbd kbd {
  padding: 0;
  font-size: 100%;
  font-weight: bold;
  box-shadow: none;
}
pre {
  display: block;
  padding: 8.5px;
  margin: 0 0 9px;
  font-size: 12px;
  line-height: 1.42857143;
  word-break: break-all;
  word-wrap: break-word;
  color: #333333;
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border-radius: 2px;
}
pre code {
  padding: 0;
  font-size: inherit;
  color: inherit;
  white-space: pre-wrap;
  background-color: transparent;
  border-radius: 0;
}
.pre-scrollable {
  max-height: 340px;
  overflow-y: scroll;
}
.container {
  margin-right: auto;
  margin-left: auto;
  padding-left: 0px;
  padding-right: 0px;
}
@media (min-width: 768px) {
  .container {
    width: 768px;
  }
}
@media (min-width: 992px) {
  .container {
    width: 940px;
  }
}
@media (min-width: 1200px) {
  .container {
    width: 1140px;
  }
}
.container-fluid {
  margin-right: auto;
  margin-left: auto;
  padding-left: 0px;
  padding-right: 0px;
}
.row {
  margin-left: 0px;
  margin-right: 0px;
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
  position: relative;
  min-height: 1px;
  padding-left: 0px;
  padding-right: 0px;
}
.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
  float: left;
}
.col-xs-12 {
  width: 100%;
}
.col-xs-11 {
  width: 91.66666667%;
}
.col-xs-10 {
  width: 83.33333333%;
}
.col-xs-9 {
  width: 75%;
}
.col-xs-8 {
  width: 66.66666667%;
}
.col-xs-7 {
  width: 58.33333333%;
}
.col-xs-6 {
  width: 50%;
}
.col-xs-5 {
  width: 41.66666667%;
}
.col-xs-4 {
  width: 33.33333333%;
}
.col-xs-3 {
  width: 25%;
}
.col-xs-2 {
  width: 16.66666667%;
}
.col-xs-1 {
  width: 8.33333333%;
}
.col-xs-pull-12 {
  right: 100%;
}
.col-xs-pull-11 {
  right: 91.66666667%;
}
.col-xs-pull-10 {
  right: 83.33333333%;
}
.col-xs-pull-9 {
  right: 75%;
}
.col-xs-pull-8 {
  right: 66.66666667%;
}
.col-xs-pull-7 {
  right: 58.33333333%;
}
.col-xs-pull-6 {
  right: 50%;
}
.col-xs-pull-5 {
  right: 41.66666667%;
}
.col-xs-pull-4 {
  right: 33.33333333%;
}
.col-xs-pull-3 {
  right: 25%;
}
.col-xs-pull-2 {
  right: 16.66666667%;
}
.col-xs-pull-1 {
  right: 8.33333333%;
}
.col-xs-pull-0 {
  right: auto;
}
.col-xs-push-12 {
  left: 100%;
}
.col-xs-push-11 {
  left: 91.66666667%;
}
.col-xs-push-10 {
  left: 83.33333333%;
}
.col-xs-push-9 {
  left: 75%;
}
.col-xs-push-8 {
  left: 66.66666667%;
}
.col-xs-push-7 {
  left: 58.33333333%;
}
.col-xs-push-6 {
  left: 50%;
}
.col-xs-push-5 {
  left: 41.66666667%;
}
.col-xs-push-4 {
  left: 33.33333333%;
}
.col-xs-push-3 {
  left: 25%;
}
.col-xs-push-2 {
  left: 16.66666667%;
}
.col-xs-push-1 {
  left: 8.33333333%;
}
.col-xs-push-0 {
  left: auto;
}
.col-xs-offset-12 {
  margin-left: 100%;
}
.col-xs-offset-11 {
  margin-left: 91.66666667%;
}
.col-xs-offset-10 {
  margin-left: 83.33333333%;
}
.col-xs-offset-9 {
  margin-left: 75%;
}
.col-xs-offset-8 {
  margin-left: 66.66666667%;
}
.col-xs-offset-7 {
  margin-left: 58.33333333%;
}
.col-xs-offset-6 {
  margin-left: 50%;
}
.col-xs-offset-5 {
  margin-left: 41.66666667%;
}
.col-xs-offset-4 {
  margin-left: 33.33333333%;
}
.col-xs-offset-3 {
  margin-left: 25%;
}
.col-xs-offset-2 {
  margin-left: 16.66666667%;
}
.col-xs-offset-1 {
  margin-left: 8.33333333%;
}
.col-xs-offset-0 {
  margin-left: 0%;
}
@media (min-width: 768px) {
  .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
    float: left;
  }
  .col-sm-12 {
    width: 100%;
  }
  .col-sm-11 {
    width: 91.66666667%;
  }
  .col-sm-10 {
    width: 83.33333333%;
  }
  .col-sm-9 {
    width: 75%;
  }
  .col-sm-8 {
    width: 66.66666667%;
  }
  .col-sm-7 {
    width: 58.33333333%;
  }
  .col-sm-6 {
    width: 50%;
  }
  .col-sm-5 {
    width: 41.66666667%;
  }
  .col-sm-4 {
    width: 33.33333333%;
  }
  .col-sm-3 {
    width: 25%;
  }
  .col-sm-2 {
    width: 16.66666667%;
  }
  .col-sm-1 {
    width: 8.33333333%;
  }
  .col-sm-pull-12 {
    right: 100%;
  }
  .col-sm-pull-11 {
    right: 91.66666667%;
  }
  .col-sm-pull-10 {
    right: 83.33333333%;
  }
  .col-sm-pull-9 {
    right: 75%;
  }
  .col-sm-pull-8 {
    right: 66.66666667%;
  }
  .col-sm-pull-7 {
    right: 58.33333333%;
  }
  .col-sm-pull-6 {
    right: 50%;
  }
  .col-sm-pull-5 {
    right: 41.66666667%;
  }
  .col-sm-pull-4 {
    right: 33.33333333%;
  }
  .col-sm-pull-3 {
    right: 25%;
  }
  .col-sm-pull-2 {
    right: 16.66666667%;
  }
  .col-sm-pull-1 {
    right: 8.33333333%;
  }
  .col-sm-pull-0 {
    right: auto;
  }
  .col-sm-push-12 {
    left: 100%;
  }
  .col-sm-push-11 {
    left: 91.66666667%;
  }
  .col-sm-push-10 {
    left: 83.33333333%;
  }
  .col-sm-push-9 {
    left: 75%;
  }
  .col-sm-push-8 {
    left: 66.66666667%;
  }
  .col-sm-push-7 {
    left: 58.33333333%;
  }
  .col-sm-push-6 {
    left: 50%;
  }
  .col-sm-push-5 {
    left: 41.66666667%;
  }
  .col-sm-push-4 {
    left: 33.33333333%;
  }
  .col-sm-push-3 {
    left: 25%;
  }
  .col-sm-push-2 {
    left: 16.66666667%;
  }
  .col-sm-push-1 {
    left: 8.33333333%;
  }
  .col-sm-push-0 {
    left: auto;
  }
  .col-sm-offset-12 {
    margin-left: 100%;
  }
  .col-sm-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-sm-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-sm-offset-9 {
    margin-left: 75%;
  }
  .col-sm-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-sm-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-sm-offset-6 {
    margin-left: 50%;
  }
  .col-sm-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-sm-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-sm-offset-3 {
    margin-left: 25%;
  }
  .col-sm-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-sm-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-sm-offset-0 {
    margin-left: 0%;
  }
}
@media (min-width: 992px) {
  .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
    float: left;
  }
  .col-md-12 {
    width: 100%;
  }
  .col-md-11 {
    width: 91.66666667%;
  }
  .col-md-10 {
    width: 83.33333333%;
  }
  .col-md-9 {
    width: 75%;
  }
  .col-md-8 {
    width: 66.66666667%;
  }
  .col-md-7 {
    width: 58.33333333%;
  }
  .col-md-6 {
    width: 50%;
  }
  .col-md-5 {
    width: 41.66666667%;
  }
  .col-md-4 {
    width: 33.33333333%;
  }
  .col-md-3 {
    width: 25%;
  }
  .col-md-2 {
    width: 16.66666667%;
  }
  .col-md-1 {
    width: 8.33333333%;
  }
  .col-md-pull-12 {
    right: 100%;
  }
  .col-md-pull-11 {
    right: 91.66666667%;
  }
  .col-md-pull-10 {
    right: 83.33333333%;
  }
  .col-md-pull-9 {
    right: 75%;
  }
  .col-md-pull-8 {
    right: 66.66666667%;
  }
  .col-md-pull-7 {
    right: 58.33333333%;
  }
  .col-md-pull-6 {
    right: 50%;
  }
  .col-md-pull-5 {
    right: 41.66666667%;
  }
  .col-md-pull-4 {
    right: 33.33333333%;
  }
  .col-md-pull-3 {
    right: 25%;
  }
  .col-md-pull-2 {
    right: 16.66666667%;
  }
  .col-md-pull-1 {
    right: 8.33333333%;
  }
  .col-md-pull-0 {
    right: auto;
  }
  .col-md-push-12 {
    left: 100%;
  }
  .col-md-push-11 {
    left: 91.66666667%;
  }
  .col-md-push-10 {
    left: 83.33333333%;
  }
  .col-md-push-9 {
    left: 75%;
  }
  .col-md-push-8 {
    left: 66.66666667%;
  }
  .col-md-push-7 {
    left: 58.33333333%;
  }
  .col-md-push-6 {
    left: 50%;
  }
  .col-md-push-5 {
    left: 41.66666667%;
  }
  .col-md-push-4 {
    left: 33.33333333%;
  }
  .col-md-push-3 {
    left: 25%;
  }
  .col-md-push-2 {
    left: 16.66666667%;
  }
  .col-md-push-1 {
    left: 8.33333333%;
  }
  .col-md-push-0 {
    left: auto;
  }
  .col-md-offset-12 {
    margin-left: 100%;
  }
  .col-md-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-md-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-md-offset-9 {
    margin-left: 75%;
  }
  .col-md-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-md-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-md-offset-6 {
    margin-left: 50%;
  }
  .col-md-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-md-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-md-offset-3 {
    margin-left: 25%;
  }
  .col-md-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-md-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-md-offset-0 {
    margin-left: 0%;
  }
}
@media (min-width: 1200px) {
  .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12 {
    float: left;
  }
  .col-lg-12 {
    width: 100%;
  }
  .col-lg-11 {
    width: 91.66666667%;
  }
  .col-lg-10 {
    width: 83.33333333%;
  }
  .col-lg-9 {
    width: 75%;
  }
  .col-lg-8 {
    width: 66.66666667%;
  }
  .col-lg-7 {
    width: 58.33333333%;
  }
  .col-lg-6 {
    width: 50%;
  }
  .col-lg-5 {
    width: 41.66666667%;
  }
  .col-lg-4 {
    width: 33.33333333%;
  }
  .col-lg-3 {
    width: 25%;
  }
  .col-lg-2 {
    width: 16.66666667%;
  }
  .col-lg-1 {
    width: 8.33333333%;
  }
  .col-lg-pull-12 {
    right: 100%;
  }
  .col-lg-pull-11 {
    right: 91.66666667%;
  }
  .col-lg-pull-10 {
    right: 83.33333333%;
  }
  .col-lg-pull-9 {
    right: 75%;
  }
  .col-lg-pull-8 {
    right: 66.66666667%;
  }
  .col-lg-pull-7 {
    right: 58.33333333%;
  }
  .col-lg-pull-6 {
    right: 50%;
  }
  .col-lg-pull-5 {
    right: 41.66666667%;
  }
  .col-lg-pull-4 {
    right: 33.33333333%;
  }
  .col-lg-pull-3 {
    right: 25%;
  }
  .col-lg-pull-2 {
    right: 16.66666667%;
  }
  .col-lg-pull-1 {
    right: 8.33333333%;
  }
  .col-lg-pull-0 {
    right: auto;
  }
  .col-lg-push-12 {
    left: 100%;
  }
  .col-lg-push-11 {
    left: 91.66666667%;
  }
  .col-lg-push-10 {
    left: 83.33333333%;
  }
  .col-lg-push-9 {
    left: 75%;
  }
  .col-lg-push-8 {
    left: 66.66666667%;
  }
  .col-lg-push-7 {
    left: 58.33333333%;
  }
  .col-lg-push-6 {
    left: 50%;
  }
  .col-lg-push-5 {
    left: 41.66666667%;
  }
  .col-lg-push-4 {
    left: 33.33333333%;
  }
  .col-lg-push-3 {
    left: 25%;
  }
  .col-lg-push-2 {
    left: 16.66666667%;
  }
  .col-lg-push-1 {
    left: 8.33333333%;
  }
  .col-lg-push-0 {
    left: auto;
  }
  .col-lg-offset-12 {
    margin-left: 100%;
  }
  .col-lg-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-lg-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-lg-offset-9 {
    margin-left: 75%;
  }
  .col-lg-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-lg-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-lg-offset-6 {
    margin-left: 50%;
  }
  .col-lg-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-lg-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-lg-offset-3 {
    margin-left: 25%;
  }
  .col-lg-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-lg-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-lg-offset-0 {
    margin-left: 0%;
  }
}
table {
  background-color: transparent;
}
caption {
  padding-top: 8px;
  padding-bottom: 8px;
  color: #777777;
  text-align: left;
}
th {
  text-align: left;
}
.table {
  width: 100%;
  max-width: 100%;
  margin-bottom: 18px;
}
.table > thead > tr > th,
.table > tbody > tr > th,
.table > tfoot > tr > th,
.table > thead > tr > td,
.table > tbody > tr > td,
.table > tfoot > tr > td {
  padding: 8px;
  line-height: 1.42857143;
  vertical-align: top;
  border-top: 1px solid #ddd;
}
.table > thead > tr > th {
  vertical-align: bottom;
  border-bottom: 2px solid #ddd;
}
.table > caption + thead > tr:first-child > th,
.table > colgroup + thead > tr:first-child > th,
.table > thead:first-child > tr:first-child > th,
.table > caption + thead > tr:first-child > td,
.table > colgroup + thead > tr:first-child > td,
.table > thead:first-child > tr:first-child > td {
  border-top: 0;
}
.table > tbody + tbody {
  border-top: 2px solid #ddd;
}
.table .table {
  background-color: #fff;
}
.table-condensed > thead > tr > th,
.table-condensed > tbody > tr > th,
.table-condensed > tfoot > tr > th,
.table-condensed > thead > tr > td,
.table-condensed > tbody > tr > td,
.table-condensed > tfoot > tr > td {
  padding: 5px;
}
.table-bordered {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > tbody > tr > th,
.table-bordered > tfoot > tr > th,
.table-bordered > thead > tr > td,
.table-bordered > tbody > tr > td,
.table-bordered > tfoot > tr > td {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > thead > tr > td {
  border-bottom-width: 2px;
}
.table-striped > tbody > tr:nth-of-type(odd) {
  background-color: #f9f9f9;
}
.table-hover > tbody > tr:hover {
  background-color: #f5f5f5;
}
table col[class*="col-"] {
  position: static;
  float: none;
  display: table-column;
}
table td[class*="col-"],
table th[class*="col-"] {
  position: static;
  float: none;
  display: table-cell;
}
.table > thead > tr > td.active,
.table > tbody > tr > td.active,
.table > tfoot > tr > td.active,
.table > thead > tr > th.active,
.table > tbody > tr > th.active,
.table > tfoot > tr > th.active,
.table > thead > tr.active > td,
.table > tbody > tr.active > td,
.table > tfoot > tr.active > td,
.table > thead > tr.active > th,
.table > tbody > tr.active > th,
.table > tfoot > tr.active > th {
  background-color: #f5f5f5;
}
.table-hover > tbody > tr > td.active:hover,
.table-hover > tbody > tr > th.active:hover,
.table-hover > tbody > tr.active:hover > td,
.table-hover > tbody > tr:hover > .active,
.table-hover > tbody > tr.active:hover > th {
  background-color: #e8e8e8;
}
.table > thead > tr > td.success,
.table > tbody > tr > td.success,
.table > tfoot > tr > td.success,
.table > thead > tr > th.success,
.table > tbody > tr > th.success,
.table > tfoot > tr > th.success,
.table > thead > tr.success > td,
.table > tbody > tr.success > td,
.table > tfoot > tr.success > td,
.table > thead > tr.success > th,
.table > tbody > tr.success > th,
.table > tfoot > tr.success > th {
  background-color: #dff0d8;
}
.table-hover > tbody > tr > td.success:hover,
.table-hover > tbody > tr > th.success:hover,
.table-hover > tbody > tr.success:hover > td,
.table-hover > tbody > tr:hover > .success,
.table-hover > tbody > tr.success:hover > th {
  background-color: #d0e9c6;
}
.table > thead > tr > td.info,
.table > tbody > tr > td.info,
.table > tfoot > tr > td.info,
.table > thead > tr > th.info,
.table > tbody > tr > th.info,
.table > tfoot > tr > th.info,
.table > thead > tr.info > td,
.table > tbody > tr.info > td,
.table > tfoot > tr.info > td,
.table > thead > tr.info > th,
.table > tbody > tr.info > th,
.table > tfoot > tr.info > th {
  background-color: #d9edf7;
}
.table-hover > tbody > tr > td.info:hover,
.table-hover > tbody > tr > th.info:hover,
.table-hover > tbody > tr.info:hover > td,
.table-hover > tbody > tr:hover > .info,
.table-hover > tbody > tr.info:hover > th {
  background-color: #c4e3f3;
}
.table > thead > tr > td.warning,
.table > tbody > tr > td.warning,
.table > tfoot > tr > td.warning,
.table > thead > tr > th.warning,
.table > tbody > tr > th.warning,
.table > tfoot > tr > th.warning,
.table > thead > tr.warning > td,
.table > tbody > tr.warning > td,
.table > tfoot > tr.warning > td,
.table > thead > tr.warning > th,
.table > tbody > tr.warning > th,
.table > tfoot > tr.warning > th {
  background-color: #fcf8e3;
}
.table-hover > tbody > tr > td.warning:hover,
.table-hover > tbody > tr > th.warning:hover,
.table-hover > tbody > tr.warning:hover > td,
.table-hover > tbody > tr:hover > .warning,
.table-hover > tbody > tr.warning:hover > th {
  background-color: #faf2cc;
}
.table > thead > tr > td.danger,
.table > tbody > tr > td.danger,
.table > tfoot > tr > td.danger,
.table > thead > tr > th.danger,
.table > tbody > tr > th.danger,
.table > tfoot > tr > th.danger,
.table > thead > tr.danger > td,
.table > tbody > tr.danger > td,
.table > tfoot > tr.danger > td,
.table > thead > tr.danger > th,
.table > tbody > tr.danger > th,
.table > tfoot > tr.danger > th {
  background-color: #f2dede;
}
.table-hover > tbody > tr > td.danger:hover,
.table-hover > tbody > tr > th.danger:hover,
.table-hover > tbody > tr.danger:hover > td,
.table-hover > tbody > tr:hover > .danger,
.table-hover > tbody > tr.danger:hover > th {
  background-color: #ebcccc;
}
.table-responsive {
  overflow-x: auto;
  min-height: 0.01%;
}
@media screen and (max-width: 767px) {
  .table-responsive {
    width: 100%;
    margin-bottom: 13.5px;
    overflow-y: hidden;
    -ms-overflow-style: -ms-autohiding-scrollbar;
    border: 1px solid #ddd;
  }
  .table-responsive > .table {
    margin-bottom: 0;
  }
  .table-responsive > .table > thead > tr > th,
  .table-responsive > .table > tbody > tr > th,
  .table-responsive > .table > tfoot > tr > th,
  .table-responsive > .table > thead > tr > td,
  .table-responsive > .table > tbody > tr > td,
  .table-responsive > .table > tfoot > tr > td {
    white-space: nowrap;
  }
  .table-responsive > .table-bordered {
    border: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:first-child,
  .table-responsive > .table-bordered > tbody > tr > th:first-child,
  .table-responsive > .table-bordered > tfoot > tr > th:first-child,
  .table-responsive > .table-bordered > thead > tr > td:first-child,
  .table-responsive > .table-bordered > tbody > tr > td:first-child,
  .table-responsive > .table-bordered > tfoot > tr > td:first-child {
    border-left: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:last-child,
  .table-responsive > .table-bordered > tbody > tr > th:last-child,
  .table-responsive > .table-bordered > tfoot > tr > th:last-child,
  .table-responsive > .table-bordered > thead > tr > td:last-child,
  .table-responsive > .table-bordered > tbody > tr > td:last-child,
  .table-responsive > .table-bordered > tfoot > tr > td:last-child {
    border-right: 0;
  }
  .table-responsive > .table-bordered > tbody > tr:last-child > th,
  .table-responsive > .table-bordered > tfoot > tr:last-child > th,
  .table-responsive > .table-bordered > tbody > tr:last-child > td,
  .table-responsive > .table-bordered > tfoot > tr:last-child > td {
    border-bottom: 0;
  }
}
fieldset {
  padding: 0;
  margin: 0;
  border: 0;
  min-width: 0;
}
legend {
  display: block;
  width: 100%;
  padding: 0;
  margin-bottom: 18px;
  font-size: 19.5px;
  line-height: inherit;
  color: #333333;
  border: 0;
  border-bottom: 1px solid #e5e5e5;
}
label {
  display: inline-block;
  max-width: 100%;
  margin-bottom: 5px;
  font-weight: bold;
}
input[type="search"] {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
input[type="radio"],
input[type="checkbox"] {
  margin: 4px 0 0;
  margin-top: 1px \9;
  line-height: normal;
}
input[type="file"] {
  display: block;
}
input[type="range"] {
  display: block;
  width: 100%;
}
select[multiple],
select[size] {
  height: auto;
}
input[type="file"]:focus,
input[type="radio"]:focus,
input[type="checkbox"]:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
output {
  display: block;
  padding-top: 7px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
}
.form-control {
  display: block;
  width: 100%;
  height: 32px;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.form-control:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
.form-control::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.form-control:-ms-input-placeholder {
  color: #999;
}
.form-control::-webkit-input-placeholder {
  color: #999;
}
.form-control::-ms-expand {
  border: 0;
  background-color: transparent;
}
.form-control[disabled],
.form-control[readonly],
fieldset[disabled] .form-control {
  background-color: #eeeeee;
  opacity: 1;
}
.form-control[disabled],
fieldset[disabled] .form-control {
  cursor: not-allowed;
}
textarea.form-control {
  height: auto;
}
input[type="search"] {
  -webkit-appearance: none;
}
@media screen and (-webkit-min-device-pixel-ratio: 0) {
  input[type="date"].form-control,
  input[type="time"].form-control,
  input[type="datetime-local"].form-control,
  input[type="month"].form-control {
    line-height: 32px;
  }
  input[type="date"].input-sm,
  input[type="time"].input-sm,
  input[type="datetime-local"].input-sm,
  input[type="month"].input-sm,
  .input-group-sm input[type="date"],
  .input-group-sm input[type="time"],
  .input-group-sm input[type="datetime-local"],
  .input-group-sm input[type="month"] {
    line-height: 30px;
  }
  input[type="date"].input-lg,
  input[type="time"].input-lg,
  input[type="datetime-local"].input-lg,
  input[type="month"].input-lg,
  .input-group-lg input[type="date"],
  .input-group-lg input[type="time"],
  .input-group-lg input[type="datetime-local"],
  .input-group-lg input[type="month"] {
    line-height: 45px;
  }
}
.form-group {
  margin-bottom: 15px;
}
.radio,
.checkbox {
  position: relative;
  display: block;
  margin-top: 10px;
  margin-bottom: 10px;
}
.radio label,
.checkbox label {
  min-height: 18px;
  padding-left: 20px;
  margin-bottom: 0;
  font-weight: normal;
  cursor: pointer;
}
.radio input[type="radio"],
.radio-inline input[type="radio"],
.checkbox input[type="checkbox"],
.checkbox-inline input[type="checkbox"] {
  position: absolute;
  margin-left: -20px;
  margin-top: 4px \9;
}
.radio + .radio,
.checkbox + .checkbox {
  margin-top: -5px;
}
.radio-inline,
.checkbox-inline {
  position: relative;
  display: inline-block;
  padding-left: 20px;
  margin-bottom: 0;
  vertical-align: middle;
  font-weight: normal;
  cursor: pointer;
}
.radio-inline + .radio-inline,
.checkbox-inline + .checkbox-inline {
  margin-top: 0;
  margin-left: 10px;
}
input[type="radio"][disabled],
input[type="checkbox"][disabled],
input[type="radio"].disabled,
input[type="checkbox"].disabled,
fieldset[disabled] input[type="radio"],
fieldset[disabled] input[type="checkbox"] {
  cursor: not-allowed;
}
.radio-inline.disabled,
.checkbox-inline.disabled,
fieldset[disabled] .radio-inline,
fieldset[disabled] .checkbox-inline {
  cursor: not-allowed;
}
.radio.disabled label,
.checkbox.disabled label,
fieldset[disabled] .radio label,
fieldset[disabled] .checkbox label {
  cursor: not-allowed;
}
.form-control-static {
  padding-top: 7px;
  padding-bottom: 7px;
  margin-bottom: 0;
  min-height: 31px;
}
.form-control-static.input-lg,
.form-control-static.input-sm {
  padding-left: 0;
  padding-right: 0;
}
.input-sm {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
select.input-sm {
  height: 30px;
  line-height: 30px;
}
textarea.input-sm,
select[multiple].input-sm {
  height: auto;
}
.form-group-sm .form-control {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
.form-group-sm select.form-control {
  height: 30px;
  line-height: 30px;
}
.form-group-sm textarea.form-control,
.form-group-sm select[multiple].form-control {
  height: auto;
}
.form-group-sm .form-control-static {
  height: 30px;
  min-height: 30px;
  padding: 6px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.input-lg {
  height: 45px;
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
select.input-lg {
  height: 45px;
  line-height: 45px;
}
textarea.input-lg,
select[multiple].input-lg {
  height: auto;
}
.form-group-lg .form-control {
  height: 45px;
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
.form-group-lg select.form-control {
  height: 45px;
  line-height: 45px;
}
.form-group-lg textarea.form-control,
.form-group-lg select[multiple].form-control {
  height: auto;
}
.form-group-lg .form-control-static {
  height: 45px;
  min-height: 35px;
  padding: 11px 16px;
  font-size: 17px;
  line-height: 1.3333333;
}
.has-feedback {
  position: relative;
}
.has-feedback .form-control {
  padding-right: 40px;
}
.form-control-feedback {
  position: absolute;
  top: 0;
  right: 0;
  z-index: 2;
  display: block;
  width: 32px;
  height: 32px;
  line-height: 32px;
  text-align: center;
  pointer-events: none;
}
.input-lg + .form-control-feedback,
.input-group-lg + .form-control-feedback,
.form-group-lg .form-control + .form-control-feedback {
  width: 45px;
  height: 45px;
  line-height: 45px;
}
.input-sm + .form-control-feedback,
.input-group-sm + .form-control-feedback,
.form-group-sm .form-control + .form-control-feedback {
  width: 30px;
  height: 30px;
  line-height: 30px;
}
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
  color: #3c763d;
}
.has-success .form-control {
  border-color: #3c763d;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-success .form-control:focus {
  border-color: #2b542c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #67b168;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #67b168;
}
.has-success .input-group-addon {
  color: #3c763d;
  border-color: #3c763d;
  background-color: #dff0d8;
}
.has-success .form-control-feedback {
  color: #3c763d;
}
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
  color: #8a6d3b;
}
.has-warning .form-control {
  border-color: #8a6d3b;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-warning .form-control:focus {
  border-color: #66512c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #c0a16b;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #c0a16b;
}
.has-warning .input-group-addon {
  color: #8a6d3b;
  border-color: #8a6d3b;
  background-color: #fcf8e3;
}
.has-warning .form-control-feedback {
  color: #8a6d3b;
}
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
  color: #a94442;
}
.has-error .form-control {
  border-color: #a94442;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-error .form-control:focus {
  border-color: #843534;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #ce8483;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #ce8483;
}
.has-error .input-group-addon {
  color: #a94442;
  border-color: #a94442;
  background-color: #f2dede;
}
.has-error .form-control-feedback {
  color: #a94442;
}
.has-feedback label ~ .form-control-feedback {
  top: 23px;
}
.has-feedback label.sr-only ~ .form-control-feedback {
  top: 0;
}
.help-block {
  display: block;
  margin-top: 5px;
  margin-bottom: 10px;
  color: #404040;
}
@media (min-width: 768px) {
  .form-inline .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .form-inline .form-control-static {
    display: inline-block;
  }
  .form-inline .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .form-inline .input-group .input-group-addon,
  .form-inline .input-group .input-group-btn,
  .form-inline .input-group .form-control {
    width: auto;
  }
  .form-inline .input-group > .form-control {
    width: 100%;
  }
  .form-inline .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio,
  .form-inline .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio label,
  .form-inline .checkbox label {
    padding-left: 0;
  }
  .form-inline .radio input[type="radio"],
  .form-inline .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .form-inline .has-feedback .form-control-feedback {
    top: 0;
  }
}
.form-horizontal .radio,
.form-horizontal .checkbox,
.form-horizontal .radio-inline,
.form-horizontal .checkbox-inline {
  margin-top: 0;
  margin-bottom: 0;
  padding-top: 7px;
}
.form-horizontal .radio,
.form-horizontal .checkbox {
  min-height: 25px;
}
.form-horizontal .form-group {
  margin-left: 0px;
  margin-right: 0px;
}
@media (min-width: 768px) {
  .form-horizontal .control-label {
    text-align: right;
    margin-bottom: 0;
    padding-top: 7px;
  }
}
.form-horizontal .has-feedback .form-control-feedback {
  right: 0px;
}
@media (min-width: 768px) {
  .form-horizontal .form-group-lg .control-label {
    padding-top: 11px;
    font-size: 17px;
  }
}
@media (min-width: 768px) {
  .form-horizontal .form-group-sm .control-label {
    padding-top: 6px;
    font-size: 12px;
  }
}
.btn {
  display: inline-block;
  margin-bottom: 0;
  font-weight: normal;
  text-align: center;
  vertical-align: middle;
  touch-action: manipulation;
  cursor: pointer;
  background-image: none;
  border: 1px solid transparent;
  white-space: nowrap;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  border-radius: 2px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
.btn:focus,
.btn:active:focus,
.btn.active:focus,
.btn.focus,
.btn:active.focus,
.btn.active.focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
.btn:hover,
.btn:focus,
.btn.focus {
  color: #333;
  text-decoration: none;
}
.btn:active,
.btn.active {
  outline: 0;
  background-image: none;
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
  box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
}
.btn.disabled,
.btn[disabled],
fieldset[disabled] .btn {
  cursor: not-allowed;
  opacity: 0.65;
  filter: alpha(opacity=65);
  -webkit-box-shadow: none;
  box-shadow: none;
}
a.btn.disabled,
fieldset[disabled] a.btn {
  pointer-events: none;
}
.btn-default {
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
.btn-default:focus,
.btn-default.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
.btn-default:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active,
.btn-default.active,
.open > .dropdown-toggle.btn-default {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active:hover,
.btn-default.active:hover,
.open > .dropdown-toggle.btn-default:hover,
.btn-default:active:focus,
.btn-default.active:focus,
.open > .dropdown-toggle.btn-default:focus,
.btn-default:active.focus,
.btn-default.active.focus,
.open > .dropdown-toggle.btn-default.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
.btn-default:active,
.btn-default.active,
.open > .dropdown-toggle.btn-default {
  background-image: none;
}
.btn-default.disabled:hover,
.btn-default[disabled]:hover,
fieldset[disabled] .btn-default:hover,
.btn-default.disabled:focus,
.btn-default[disabled]:focus,
fieldset[disabled] .btn-default:focus,
.btn-default.disabled.focus,
.btn-default[disabled].focus,
fieldset[disabled] .btn-default.focus {
  background-color: #fff;
  border-color: #ccc;
}
.btn-default .badge {
  color: #fff;
  background-color: #333;
}
.btn-primary {
  color: #fff;
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary:focus,
.btn-primary.focus {
  color: #fff;
  background-color: #286090;
  border-color: #122b40;
}
.btn-primary:hover {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active,
.btn-primary.active,
.open > .dropdown-toggle.btn-primary {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active:hover,
.btn-primary.active:hover,
.open > .dropdown-toggle.btn-primary:hover,
.btn-primary:active:focus,
.btn-primary.active:focus,
.open > .dropdown-toggle.btn-primary:focus,
.btn-primary:active.focus,
.btn-primary.active.focus,
.open > .dropdown-toggle.btn-primary.focus {
  color: #fff;
  background-color: #204d74;
  border-color: #122b40;
}
.btn-primary:active,
.btn-primary.active,
.open > .dropdown-toggle.btn-primary {
  background-image: none;
}
.btn-primary.disabled:hover,
.btn-primary[disabled]:hover,
fieldset[disabled] .btn-primary:hover,
.btn-primary.disabled:focus,
.btn-primary[disabled]:focus,
fieldset[disabled] .btn-primary:focus,
.btn-primary.disabled.focus,
.btn-primary[disabled].focus,
fieldset[disabled] .btn-primary.focus {
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary .badge {
  color: #337ab7;
  background-color: #fff;
}
.btn-success {
  color: #fff;
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success:focus,
.btn-success.focus {
  color: #fff;
  background-color: #449d44;
  border-color: #255625;
}
.btn-success:hover {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active,
.btn-success.active,
.open > .dropdown-toggle.btn-success {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active:hover,
.btn-success.active:hover,
.open > .dropdown-toggle.btn-success:hover,
.btn-success:active:focus,
.btn-success.active:focus,
.open > .dropdown-toggle.btn-success:focus,
.btn-success:active.focus,
.btn-success.active.focus,
.open > .dropdown-toggle.btn-success.focus {
  color: #fff;
  background-color: #398439;
  border-color: #255625;
}
.btn-success:active,
.btn-success.active,
.open > .dropdown-toggle.btn-success {
  background-image: none;
}
.btn-success.disabled:hover,
.btn-success[disabled]:hover,
fieldset[disabled] .btn-success:hover,
.btn-success.disabled:focus,
.btn-success[disabled]:focus,
fieldset[disabled] .btn-success:focus,
.btn-success.disabled.focus,
.btn-success[disabled].focus,
fieldset[disabled] .btn-success.focus {
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success .badge {
  color: #5cb85c;
  background-color: #fff;
}
.btn-info {
  color: #fff;
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info:focus,
.btn-info.focus {
  color: #fff;
  background-color: #31b0d5;
  border-color: #1b6d85;
}
.btn-info:hover {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active,
.btn-info.active,
.open > .dropdown-toggle.btn-info {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active:hover,
.btn-info.active:hover,
.open > .dropdown-toggle.btn-info:hover,
.btn-info:active:focus,
.btn-info.active:focus,
.open > .dropdown-toggle.btn-info:focus,
.btn-info:active.focus,
.btn-info.active.focus,
.open > .dropdown-toggle.btn-info.focus {
  color: #fff;
  background-color: #269abc;
  border-color: #1b6d85;
}
.btn-info:active,
.btn-info.active,
.open > .dropdown-toggle.btn-info {
  background-image: none;
}
.btn-info.disabled:hover,
.btn-info[disabled]:hover,
fieldset[disabled] .btn-info:hover,
.btn-info.disabled:focus,
.btn-info[disabled]:focus,
fieldset[disabled] .btn-info:focus,
.btn-info.disabled.focus,
.btn-info[disabled].focus,
fieldset[disabled] .btn-info.focus {
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info .badge {
  color: #5bc0de;
  background-color: #fff;
}
.btn-warning {
  color: #fff;
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning:focus,
.btn-warning.focus {
  color: #fff;
  background-color: #ec971f;
  border-color: #985f0d;
}
.btn-warning:hover {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active,
.btn-warning.active,
.open > .dropdown-toggle.btn-warning {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active:hover,
.btn-warning.active:hover,
.open > .dropdown-toggle.btn-warning:hover,
.btn-warning:active:focus,
.btn-warning.active:focus,
.open > .dropdown-toggle.btn-warning:focus,
.btn-warning:active.focus,
.btn-warning.active.focus,
.open > .dropdown-toggle.btn-warning.focus {
  color: #fff;
  background-color: #d58512;
  border-color: #985f0d;
}
.btn-warning:active,
.btn-warning.active,
.open > .dropdown-toggle.btn-warning {
  background-image: none;
}
.btn-warning.disabled:hover,
.btn-warning[disabled]:hover,
fieldset[disabled] .btn-warning:hover,
.btn-warning.disabled:focus,
.btn-warning[disabled]:focus,
fieldset[disabled] .btn-warning:focus,
.btn-warning.disabled.focus,
.btn-warning[disabled].focus,
fieldset[disabled] .btn-warning.focus {
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning .badge {
  color: #f0ad4e;
  background-color: #fff;
}
.btn-danger {
  color: #fff;
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger:focus,
.btn-danger.focus {
  color: #fff;
  background-color: #c9302c;
  border-color: #761c19;
}
.btn-danger:hover {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active,
.btn-danger.active,
.open > .dropdown-toggle.btn-danger {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active:hover,
.btn-danger.active:hover,
.open > .dropdown-toggle.btn-danger:hover,
.btn-danger:active:focus,
.btn-danger.active:focus,
.open > .dropdown-toggle.btn-danger:focus,
.btn-danger:active.focus,
.btn-danger.active.focus,
.open > .dropdown-toggle.btn-danger.focus {
  color: #fff;
  background-color: #ac2925;
  border-color: #761c19;
}
.btn-danger:active,
.btn-danger.active,
.open > .dropdown-toggle.btn-danger {
  background-image: none;
}
.btn-danger.disabled:hover,
.btn-danger[disabled]:hover,
fieldset[disabled] .btn-danger:hover,
.btn-danger.disabled:focus,
.btn-danger[disabled]:focus,
fieldset[disabled] .btn-danger:focus,
.btn-danger.disabled.focus,
.btn-danger[disabled].focus,
fieldset[disabled] .btn-danger.focus {
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger .badge {
  color: #d9534f;
  background-color: #fff;
}
.btn-link {
  color: #337ab7;
  font-weight: normal;
  border-radius: 0;
}
.btn-link,
.btn-link:active,
.btn-link.active,
.btn-link[disabled],
fieldset[disabled] .btn-link {
  background-color: transparent;
  -webkit-box-shadow: none;
  box-shadow: none;
}
.btn-link,
.btn-link:hover,
.btn-link:focus,
.btn-link:active {
  border-color: transparent;
}
.btn-link:hover,
.btn-link:focus {
  color: #23527c;
  text-decoration: underline;
  background-color: transparent;
}
.btn-link[disabled]:hover,
fieldset[disabled] .btn-link:hover,
.btn-link[disabled]:focus,
fieldset[disabled] .btn-link:focus {
  color: #777777;
  text-decoration: none;
}
.btn-lg,
.btn-group-lg > .btn {
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
.btn-sm,
.btn-group-sm > .btn {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
.btn-xs,
.btn-group-xs > .btn {
  padding: 1px 5px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
.btn-block {
  display: block;
  width: 100%;
}
.btn-block + .btn-block {
  margin-top: 5px;
}
input[type="submit"].btn-block,
input[type="reset"].btn-block,
input[type="button"].btn-block {
  width: 100%;
}
.fade {
  opacity: 0;
  -webkit-transition: opacity 0.15s linear;
  -o-transition: opacity 0.15s linear;
  transition: opacity 0.15s linear;
}
.fade.in {
  opacity: 1;
}
.collapse {
  display: none;
}
.collapse.in {
  display: block;
}
tr.collapse.in {
  display: table-row;
}
tbody.collapse.in {
  display: table-row-group;
}
.collapsing {
  position: relative;
  height: 0;
  overflow: hidden;
  -webkit-transition-property: height, visibility;
  transition-property: height, visibility;
  -webkit-transition-duration: 0.35s;
  transition-duration: 0.35s;
  -webkit-transition-timing-function: ease;
  transition-timing-function: ease;
}
.caret {
  display: inline-block;
  width: 0;
  height: 0;
  margin-left: 2px;
  vertical-align: middle;
  border-top: 4px dashed;
  border-top: 4px solid \9;
  border-right: 4px solid transparent;
  border-left: 4px solid transparent;
}
.dropup,
.dropdown {
  position: relative;
}
.dropdown-toggle:focus {
  outline: 0;
}
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
  list-style: none;
  font-size: 13px;
  text-align: left;
  background-color: #fff;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.15);
  border-radius: 2px;
  -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  background-clip: padding-box;
}
.dropdown-menu.pull-right {
  right: 0;
  left: auto;
}
.dropdown-menu .divider {
  height: 1px;
  margin: 8px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.dropdown-menu > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 1.42857143;
  color: #333333;
  white-space: nowrap;
}
.dropdown-menu > li > a:hover,
.dropdown-menu > li > a:focus {
  text-decoration: none;
  color: #262626;
  background-color: #f5f5f5;
}
.dropdown-menu > .active > a,
.dropdown-menu > .active > a:hover,
.dropdown-menu > .active > a:focus {
  color: #fff;
  text-decoration: none;
  outline: 0;
  background-color: #337ab7;
}
.dropdown-menu > .disabled > a,
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  color: #777777;
}
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  text-decoration: none;
  background-color: transparent;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  cursor: not-allowed;
}
.open > .dropdown-menu {
  display: block;
}
.open > a {
  outline: 0;
}
.dropdown-menu-right {
  left: auto;
  right: 0;
}
.dropdown-menu-left {
  left: 0;
  right: auto;
}
.dropdown-header {
  display: block;
  padding: 3px 20px;
  font-size: 12px;
  line-height: 1.42857143;
  color: #777777;
  white-space: nowrap;
}
.dropdown-backdrop {
  position: fixed;
  left: 0;
  right: 0;
  bottom: 0;
  top: 0;
  z-index: 990;
}
.pull-right > .dropdown-menu {
  right: 0;
  left: auto;
}
.dropup .caret,
.navbar-fixed-bottom .dropdown .caret {
  border-top: 0;
  border-bottom: 4px dashed;
  border-bottom: 4px solid \9;
  content: "";
}
.dropup .dropdown-menu,
.navbar-fixed-bottom .dropdown .dropdown-menu {
  top: auto;
  bottom: 100%;
  margin-bottom: 2px;
}
@media (min-width: 541px) {
  .navbar-right .dropdown-menu {
    left: auto;
    right: 0;
  }
  .navbar-right .dropdown-menu-left {
    left: 0;
    right: auto;
  }
}
.btn-group,
.btn-group-vertical {
  position: relative;
  display: inline-block;
  vertical-align: middle;
}
.btn-group > .btn,
.btn-group-vertical > .btn {
  position: relative;
  float: left;
}
.btn-group > .btn:hover,
.btn-group-vertical > .btn:hover,
.btn-group > .btn:focus,
.btn-group-vertical > .btn:focus,
.btn-group > .btn:active,
.btn-group-vertical > .btn:active,
.btn-group > .btn.active,
.btn-group-vertical > .btn.active {
  z-index: 2;
}
.btn-group .btn + .btn,
.btn-group .btn + .btn-group,
.btn-group .btn-group + .btn,
.btn-group .btn-group + .btn-group {
  margin-left: -1px;
}
.btn-toolbar {
  margin-left: -5px;
}
.btn-toolbar .btn,
.btn-toolbar .btn-group,
.btn-toolbar .input-group {
  float: left;
}
.btn-toolbar > .btn,
.btn-toolbar > .btn-group,
.btn-toolbar > .input-group {
  margin-left: 5px;
}
.btn-group > .btn:not(:first-child):not(:last-child):not(.dropdown-toggle) {
  border-radius: 0;
}
.btn-group > .btn:first-child {
  margin-left: 0;
}
.btn-group > .btn:first-child:not(:last-child):not(.dropdown-toggle) {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}
.btn-group > .btn:last-child:not(:first-child),
.btn-group > .dropdown-toggle:not(:first-child) {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.btn-group > .btn-group {
  float: left;
}
.btn-group > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.btn-group > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}
.btn-group > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.btn-group .dropdown-toggle:active,
.btn-group.open .dropdown-toggle {
  outline: 0;
}
.btn-group > .btn + .dropdown-toggle {
  padding-left: 8px;
  padding-right: 8px;
}
.btn-group > .btn-lg + .dropdown-toggle {
  padding-left: 12px;
  padding-right: 12px;
}
.btn-group.open .dropdown-toggle {
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
  box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
}
.btn-group.open .dropdown-toggle.btn-link {
  -webkit-box-shadow: none;
  box-shadow: none;
}
.btn .caret {
  margin-left: 0;
}
.btn-lg .caret {
  border-width: 5px 5px 0;
  border-bottom-width: 0;
}
.dropup .btn-lg .caret {
  border-width: 0 5px 5px;
}
.btn-group-vertical > .btn,
.btn-group-vertical > .btn-group,
.btn-group-vertical > .btn-group > .btn {
  display: block;
  float: none;
  width: 100%;
  max-width: 100%;
}
.btn-group-vertical > .btn-group > .btn {
  float: none;
}
.btn-group-vertical > .btn + .btn,
.btn-group-vertical > .btn + .btn-group,
.btn-group-vertical > .btn-group + .btn,
.btn-group-vertical > .btn-group + .btn-group {
  margin-top: -1px;
  margin-left: 0;
}
.btn-group-vertical > .btn:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.btn-group-vertical > .btn:first-child:not(:last-child) {
  border-top-right-radius: 2px;
  border-top-left-radius: 2px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn:last-child:not(:first-child) {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
}
.btn-group-vertical > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.btn-group-justified {
  display: table;
  width: 100%;
  table-layout: fixed;
  border-collapse: separate;
}
.btn-group-justified > .btn,
.btn-group-justified > .btn-group {
  float: none;
  display: table-cell;
  width: 1%;
}
.btn-group-justified > .btn-group .btn {
  width: 100%;
}
.btn-group-justified > .btn-group .dropdown-menu {
  left: auto;
}
[data-toggle="buttons"] > .btn input[type="radio"],
[data-toggle="buttons"] > .btn-group > .btn input[type="radio"],
[data-toggle="buttons"] > .btn input[type="checkbox"],
[data-toggle="buttons"] > .btn-group > .btn input[type="checkbox"] {
  position: absolute;
  clip: rect(0, 0, 0, 0);
  pointer-events: none;
}
.input-group {
  position: relative;
  display: table;
  border-collapse: separate;
}
.input-group[class*="col-"] {
  float: none;
  padding-left: 0;
  padding-right: 0;
}
.input-group .form-control {
  position: relative;
  z-index: 2;
  float: left;
  width: 100%;
  margin-bottom: 0;
}
.input-group .form-control:focus {
  z-index: 3;
}
.input-group-lg > .form-control,
.input-group-lg > .input-group-addon,
.input-group-lg > .input-group-btn > .btn {
  height: 45px;
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
select.input-group-lg > .form-control,
select.input-group-lg > .input-group-addon,
select.input-group-lg > .input-group-btn > .btn {
  height: 45px;
  line-height: 45px;
}
textarea.input-group-lg > .form-control,
textarea.input-group-lg > .input-group-addon,
textarea.input-group-lg > .input-group-btn > .btn,
select[multiple].input-group-lg > .form-control,
select[multiple].input-group-lg > .input-group-addon,
select[multiple].input-group-lg > .input-group-btn > .btn {
  height: auto;
}
.input-group-sm > .form-control,
.input-group-sm > .input-group-addon,
.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
select.input-group-sm > .form-control,
select.input-group-sm > .input-group-addon,
select.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  line-height: 30px;
}
textarea.input-group-sm > .form-control,
textarea.input-group-sm > .input-group-addon,
textarea.input-group-sm > .input-group-btn > .btn,
select[multiple].input-group-sm > .form-control,
select[multiple].input-group-sm > .input-group-addon,
select[multiple].input-group-sm > .input-group-btn > .btn {
  height: auto;
}
.input-group-addon,
.input-group-btn,
.input-group .form-control {
  display: table-cell;
}
.input-group-addon:not(:first-child):not(:last-child),
.input-group-btn:not(:first-child):not(:last-child),
.input-group .form-control:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.input-group-addon,
.input-group-btn {
  width: 1%;
  white-space: nowrap;
  vertical-align: middle;
}
.input-group-addon {
  padding: 6px 12px;
  font-size: 13px;
  font-weight: normal;
  line-height: 1;
  color: #555555;
  text-align: center;
  background-color: #eeeeee;
  border: 1px solid #ccc;
  border-radius: 2px;
}
.input-group-addon.input-sm {
  padding: 5px 10px;
  font-size: 12px;
  border-radius: 1px;
}
.input-group-addon.input-lg {
  padding: 10px 16px;
  font-size: 17px;
  border-radius: 3px;
}
.input-group-addon input[type="radio"],
.input-group-addon input[type="checkbox"] {
  margin-top: 0;
}
.input-group .form-control:first-child,
.input-group-addon:first-child,
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group > .btn,
.input-group-btn:first-child > .dropdown-toggle,
.input-group-btn:last-child > .btn:not(:last-child):not(.dropdown-toggle),
.input-group-btn:last-child > .btn-group:not(:last-child) > .btn {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}
.input-group-addon:first-child {
  border-right: 0;
}
.input-group .form-control:last-child,
.input-group-addon:last-child,
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group > .btn,
.input-group-btn:last-child > .dropdown-toggle,
.input-group-btn:first-child > .btn:not(:first-child),
.input-group-btn:first-child > .btn-group:not(:first-child) > .btn {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.input-group-addon:last-child {
  border-left: 0;
}
.input-group-btn {
  position: relative;
  font-size: 0;
  white-space: nowrap;
}
.input-group-btn > .btn {
  position: relative;
}
.input-group-btn > .btn + .btn {
  margin-left: -1px;
}
.input-group-btn > .btn:hover,
.input-group-btn > .btn:focus,
.input-group-btn > .btn:active {
  z-index: 2;
}
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group {
  margin-right: -1px;
}
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group {
  z-index: 2;
  margin-left: -1px;
}
.nav {
  margin-bottom: 0;
  padding-left: 0;
  list-style: none;
}
.nav > li {
  position: relative;
  display: block;
}
.nav > li > a {
  position: relative;
  display: block;
  padding: 10px 15px;
}
.nav > li > a:hover,
.nav > li > a:focus {
  text-decoration: none;
  background-color: #eeeeee;
}
.nav > li.disabled > a {
  color: #777777;
}
.nav > li.disabled > a:hover,
.nav > li.disabled > a:focus {
  color: #777777;
  text-decoration: none;
  background-color: transparent;
  cursor: not-allowed;
}
.nav .open > a,
.nav .open > a:hover,
.nav .open > a:focus {
  background-color: #eeeeee;
  border-color: #337ab7;
}
.nav .nav-divider {
  height: 1px;
  margin: 8px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.nav > li > a > img {
  max-width: none;
}
.nav-tabs {
  border-bottom: 1px solid #ddd;
}
.nav-tabs > li {
  float: left;
  margin-bottom: -1px;
}
.nav-tabs > li > a {
  margin-right: 2px;
  line-height: 1.42857143;
  border: 1px solid transparent;
  border-radius: 2px 2px 0 0;
}
.nav-tabs > li > a:hover {
  border-color: #eeeeee #eeeeee #ddd;
}
.nav-tabs > li.active > a,
.nav-tabs > li.active > a:hover,
.nav-tabs > li.active > a:focus {
  color: #555555;
  background-color: #fff;
  border: 1px solid #ddd;
  border-bottom-color: transparent;
  cursor: default;
}
.nav-tabs.nav-justified {
  width: 100%;
  border-bottom: 0;
}
.nav-tabs.nav-justified > li {
  float: none;
}
.nav-tabs.nav-justified > li > a {
  text-align: center;
  margin-bottom: 5px;
}
.nav-tabs.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-tabs.nav-justified > li > a {
    margin-bottom: 0;
  }
}
.nav-tabs.nav-justified > li > a {
  margin-right: 0;
  border-radius: 2px;
}
.nav-tabs.nav-justified > .active > a,
.nav-tabs.nav-justified > .active > a:hover,
.nav-tabs.nav-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 2px 2px 0 0;
  }
  .nav-tabs.nav-justified > .active > a,
  .nav-tabs.nav-justified > .active > a:hover,
  .nav-tabs.nav-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}
.nav-pills > li {
  float: left;
}
.nav-pills > li > a {
  border-radius: 2px;
}
.nav-pills > li + li {
  margin-left: 2px;
}
.nav-pills > li.active > a,
.nav-pills > li.active > a:hover,
.nav-pills > li.active > a:focus {
  color: #fff;
  background-color: #337ab7;
}
.nav-stacked > li {
  float: none;
}
.nav-stacked > li + li {
  margin-top: 2px;
  margin-left: 0;
}
.nav-justified {
  width: 100%;
}
.nav-justified > li {
  float: none;
}
.nav-justified > li > a {
  text-align: center;
  margin-bottom: 5px;
}
.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-justified > li > a {
    margin-bottom: 0;
  }
}
.nav-tabs-justified {
  border-bottom: 0;
}
.nav-tabs-justified > li > a {
  margin-right: 0;
  border-radius: 2px;
}
.nav-tabs-justified > .active > a,
.nav-tabs-justified > .active > a:hover,
.nav-tabs-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 2px 2px 0 0;
  }
  .nav-tabs-justified > .active > a,
  .nav-tabs-justified > .active > a:hover,
  .nav-tabs-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}
.tab-content > .tab-pane {
  display: none;
}
.tab-content > .active {
  display: block;
}
.nav-tabs .dropdown-menu {
  margin-top: -1px;
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.navbar {
  position: relative;
  min-height: 30px;
  margin-bottom: 18px;
  border: 1px solid transparent;
}
@media (min-width: 541px) {
  .navbar {
    border-radius: 2px;
  }
}
@media (min-width: 541px) {
  .navbar-header {
    float: left;
  }
}
.navbar-collapse {
  overflow-x: visible;
  padding-right: 0px;
  padding-left: 0px;
  border-top: 1px solid transparent;
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1);
  -webkit-overflow-scrolling: touch;
}
.navbar-collapse.in {
  overflow-y: auto;
}
@media (min-width: 541px) {
  .navbar-collapse {
    width: auto;
    border-top: 0;
    box-shadow: none;
  }
  .navbar-collapse.collapse {
    display: block !important;
    height: auto !important;
    padding-bottom: 0;
    overflow: visible !important;
  }
  .navbar-collapse.in {
    overflow-y: visible;
  }
  .navbar-fixed-top .navbar-collapse,
  .navbar-static-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    padding-left: 0;
    padding-right: 0;
  }
}
.navbar-fixed-top .navbar-collapse,
.navbar-fixed-bottom .navbar-collapse {
  max-height: 340px;
}
@media (max-device-width: 540px) and (orientation: landscape) {
  .navbar-fixed-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    max-height: 200px;
  }
}
.container > .navbar-header,
.container-fluid > .navbar-header,
.container > .navbar-collapse,
.container-fluid > .navbar-collapse {
  margin-right: 0px;
  margin-left: 0px;
}
@media (min-width: 541px) {
  .container > .navbar-header,
  .container-fluid > .navbar-header,
  .container > .navbar-collapse,
  .container-fluid > .navbar-collapse {
    margin-right: 0;
    margin-left: 0;
  }
}
.navbar-static-top {
  z-index: 1000;
  border-width: 0 0 1px;
}
@media (min-width: 541px) {
  .navbar-static-top {
    border-radius: 0;
  }
}
.navbar-fixed-top,
.navbar-fixed-bottom {
  position: fixed;
  right: 0;
  left: 0;
  z-index: 1030;
}
@media (min-width: 541px) {
  .navbar-fixed-top,
  .navbar-fixed-bottom {
    border-radius: 0;
  }
}
.navbar-fixed-top {
  top: 0;
  border-width: 0 0 1px;
}
.navbar-fixed-bottom {
  bottom: 0;
  margin-bottom: 0;
  border-width: 1px 0 0;
}
.navbar-brand {
  float: left;
  padding: 6px 0px;
  font-size: 17px;
  line-height: 18px;
  height: 30px;
}
.navbar-brand:hover,
.navbar-brand:focus {
  text-decoration: none;
}
.navbar-brand > img {
  display: block;
}
@media (min-width: 541px) {
  .navbar > .container .navbar-brand,
  .navbar > .container-fluid .navbar-brand {
    margin-left: 0px;
  }
}
.navbar-toggle {
  position: relative;
  float: right;
  margin-right: 0px;
  padding: 9px 10px;
  margin-top: -2px;
  margin-bottom: -2px;
  background-color: transparent;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 2px;
}
.navbar-toggle:focus {
  outline: 0;
}
.navbar-toggle .icon-bar {
  display: block;
  width: 22px;
  height: 2px;
  border-radius: 1px;
}
.navbar-toggle .icon-bar + .icon-bar {
  margin-top: 4px;
}
@media (min-width: 541px) {
  .navbar-toggle {
    display: none;
  }
}
.navbar-nav {
  margin: 3px 0px;
}
.navbar-nav > li > a {
  padding-top: 10px;
  padding-bottom: 10px;
  line-height: 18px;
}
@media (max-width: 540px) {
  .navbar-nav .open .dropdown-menu {
    position: static;
    float: none;
    width: auto;
    margin-top: 0;
    background-color: transparent;
    border: 0;
    box-shadow: none;
  }
  .navbar-nav .open .dropdown-menu > li > a,
  .navbar-nav .open .dropdown-menu .dropdown-header {
    padding: 5px 15px 5px 25px;
  }
  .navbar-nav .open .dropdown-menu > li > a {
    line-height: 18px;
  }
  .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-nav .open .dropdown-menu > li > a:focus {
    background-image: none;
  }
}
@media (min-width: 541px) {
  .navbar-nav {
    float: left;
    margin: 0;
  }
  .navbar-nav > li {
    float: left;
  }
  .navbar-nav > li > a {
    padding-top: 6px;
    padding-bottom: 6px;
  }
}
.navbar-form {
  margin-left: 0px;
  margin-right: 0px;
  padding: 10px 0px;
  border-top: 1px solid transparent;
  border-bottom: 1px solid transparent;
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.1);
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.1);
  margin-top: -1px;
  margin-bottom: -1px;
}
@media (min-width: 768px) {
  .navbar-form .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .navbar-form .form-control-static {
    display: inline-block;
  }
  .navbar-form .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .navbar-form .input-group .input-group-addon,
  .navbar-form .input-group .input-group-btn,
  .navbar-form .input-group .form-control {
    width: auto;
  }
  .navbar-form .input-group > .form-control {
    width: 100%;
  }
  .navbar-form .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio,
  .navbar-form .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio label,
  .navbar-form .checkbox label {
    padding-left: 0;
  }
  .navbar-form .radio input[type="radio"],
  .navbar-form .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .navbar-form .has-feedback .form-control-feedback {
    top: 0;
  }
}
@media (max-width: 540px) {
  .navbar-form .form-group {
    margin-bottom: 5px;
  }
  .navbar-form .form-group:last-child {
    margin-bottom: 0;
  }
}
@media (min-width: 541px) {
  .navbar-form {
    width: auto;
    border: 0;
    margin-left: 0;
    margin-right: 0;
    padding-top: 0;
    padding-bottom: 0;
    -webkit-box-shadow: none;
    box-shadow: none;
  }
}
.navbar-nav > li > .dropdown-menu {
  margin-top: 0;
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.navbar-fixed-bottom .navbar-nav > li > .dropdown-menu {
  margin-bottom: 0;
  border-top-right-radius: 2px;
  border-top-left-radius: 2px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.navbar-btn {
  margin-top: -1px;
  margin-bottom: -1px;
}
.navbar-btn.btn-sm {
  margin-top: 0px;
  margin-bottom: 0px;
}
.navbar-btn.btn-xs {
  margin-top: 4px;
  margin-bottom: 4px;
}
.navbar-text {
  margin-top: 6px;
  margin-bottom: 6px;
}
@media (min-width: 541px) {
  .navbar-text {
    float: left;
    margin-left: 0px;
    margin-right: 0px;
  }
}
@media (min-width: 541px) {
  .navbar-left {
    float: left !important;
    float: left;
  }
  .navbar-right {
    float: right !important;
    float: right;
    margin-right: 0px;
  }
  .navbar-right ~ .navbar-right {
    margin-right: 0;
  }
}
.navbar-default {
  background-color: #f8f8f8;
  border-color: #e7e7e7;
}
.navbar-default .navbar-brand {
  color: #777;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
  color: #5e5e5e;
  background-color: transparent;
}
.navbar-default .navbar-text {
  color: #777;
}
.navbar-default .navbar-nav > li > a {
  color: #777;
}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
  color: #333;
  background-color: transparent;
}
.navbar-default .navbar-nav > .active > a,
.navbar-default .navbar-nav > .active > a:hover,
.navbar-default .navbar-nav > .active > a:focus {
  color: #555;
  background-color: #e7e7e7;
}
.navbar-default .navbar-nav > .disabled > a,
.navbar-default .navbar-nav > .disabled > a:hover,
.navbar-default .navbar-nav > .disabled > a:focus {
  color: #ccc;
  background-color: transparent;
}
.navbar-default .navbar-toggle {
  border-color: #ddd;
}
.navbar-default .navbar-toggle:hover,
.navbar-default .navbar-toggle:focus {
  background-color: #ddd;
}
.navbar-default .navbar-toggle .icon-bar {
  background-color: #888;
}
.navbar-default .navbar-collapse,
.navbar-default .navbar-form {
  border-color: #e7e7e7;
}
.navbar-default .navbar-nav > .open > a,
.navbar-default .navbar-nav > .open > a:hover,
.navbar-default .navbar-nav > .open > a:focus {
  background-color: #e7e7e7;
  color: #555;
}
@media (max-width: 540px) {
  .navbar-default .navbar-nav .open .dropdown-menu > li > a {
    color: #777;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #333;
    background-color: transparent;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #555;
    background-color: #e7e7e7;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #ccc;
    background-color: transparent;
  }
}
.navbar-default .navbar-link {
  color: #777;
}
.navbar-default .navbar-link:hover {
  color: #333;
}
.navbar-default .btn-link {
  color: #777;
}
.navbar-default .btn-link:hover,
.navbar-default .btn-link:focus {
  color: #333;
}
.navbar-default .btn-link[disabled]:hover,
fieldset[disabled] .navbar-default .btn-link:hover,
.navbar-default .btn-link[disabled]:focus,
fieldset[disabled] .navbar-default .btn-link:focus {
  color: #ccc;
}
.navbar-inverse {
  background-color: #222;
  border-color: #080808;
}
.navbar-inverse .navbar-brand {
  color: #9d9d9d;
}
.navbar-inverse .navbar-brand:hover,
.navbar-inverse .navbar-brand:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-text {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a:hover,
.navbar-inverse .navbar-nav > li > a:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-nav > .active > a,
.navbar-inverse .navbar-nav > .active > a:hover,
.navbar-inverse .navbar-nav > .active > a:focus {
  color: #fff;
  background-color: #080808;
}
.navbar-inverse .navbar-nav > .disabled > a,
.navbar-inverse .navbar-nav > .disabled > a:hover,
.navbar-inverse .navbar-nav > .disabled > a:focus {
  color: #444;
  background-color: transparent;
}
.navbar-inverse .navbar-toggle {
  border-color: #333;
}
.navbar-inverse .navbar-toggle:hover,
.navbar-inverse .navbar-toggle:focus {
  background-color: #333;
}
.navbar-inverse .navbar-toggle .icon-bar {
  background-color: #fff;
}
.navbar-inverse .navbar-collapse,
.navbar-inverse .navbar-form {
  border-color: #101010;
}
.navbar-inverse .navbar-nav > .open > a,
.navbar-inverse .navbar-nav > .open > a:hover,
.navbar-inverse .navbar-nav > .open > a:focus {
  background-color: #080808;
  color: #fff;
}
@media (max-width: 540px) {
  .navbar-inverse .navbar-nav .open .dropdown-menu > .dropdown-header {
    border-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu .divider {
    background-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a {
    color: #9d9d9d;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #fff;
    background-color: transparent;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #fff;
    background-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #444;
    background-color: transparent;
  }
}
.navbar-inverse .navbar-link {
  color: #9d9d9d;
}
.navbar-inverse .navbar-link:hover {
  color: #fff;
}
.navbar-inverse .btn-link {
  color: #9d9d9d;
}
.navbar-inverse .btn-link:hover,
.navbar-inverse .btn-link:focus {
  color: #fff;
}
.navbar-inverse .btn-link[disabled]:hover,
fieldset[disabled] .navbar-inverse .btn-link:hover,
.navbar-inverse .btn-link[disabled]:focus,
fieldset[disabled] .navbar-inverse .btn-link:focus {
  color: #444;
}
.breadcrumb {
  padding: 8px 15px;
  margin-bottom: 18px;
  list-style: none;
  background-color: #f5f5f5;
  border-radius: 2px;
}
.breadcrumb > li {
  display: inline-block;
}
.breadcrumb > li + li:before {
  content: "/\00a0";
  padding: 0 5px;
  color: #5e5e5e;
}
.breadcrumb > .active {
  color: #777777;
}
.pagination {
  display: inline-block;
  padding-left: 0;
  margin: 18px 0;
  border-radius: 2px;
}
.pagination > li {
  display: inline;
}
.pagination > li > a,
.pagination > li > span {
  position: relative;
  float: left;
  padding: 6px 12px;
  line-height: 1.42857143;
  text-decoration: none;
  color: #337ab7;
  background-color: #fff;
  border: 1px solid #ddd;
  margin-left: -1px;
}
.pagination > li:first-child > a,
.pagination > li:first-child > span {
  margin-left: 0;
  border-bottom-left-radius: 2px;
  border-top-left-radius: 2px;
}
.pagination > li:last-child > a,
.pagination > li:last-child > span {
  border-bottom-right-radius: 2px;
  border-top-right-radius: 2px;
}
.pagination > li > a:hover,
.pagination > li > span:hover,
.pagination > li > a:focus,
.pagination > li > span:focus {
  z-index: 2;
  color: #23527c;
  background-color: #eeeeee;
  border-color: #ddd;
}
.pagination > .active > a,
.pagination > .active > span,
.pagination > .active > a:hover,
.pagination > .active > span:hover,
.pagination > .active > a:focus,
.pagination > .active > span:focus {
  z-index: 3;
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
  cursor: default;
}
.pagination > .disabled > span,
.pagination > .disabled > span:hover,
.pagination > .disabled > span:focus,
.pagination > .disabled > a,
.pagination > .disabled > a:hover,
.pagination > .disabled > a:focus {
  color: #777777;
  background-color: #fff;
  border-color: #ddd;
  cursor: not-allowed;
}
.pagination-lg > li > a,
.pagination-lg > li > span {
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
}
.pagination-lg > li:first-child > a,
.pagination-lg > li:first-child > span {
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
}
.pagination-lg > li:last-child > a,
.pagination-lg > li:last-child > span {
  border-bottom-right-radius: 3px;
  border-top-right-radius: 3px;
}
.pagination-sm > li > a,
.pagination-sm > li > span {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.pagination-sm > li:first-child > a,
.pagination-sm > li:first-child > span {
  border-bottom-left-radius: 1px;
  border-top-left-radius: 1px;
}
.pagination-sm > li:last-child > a,
.pagination-sm > li:last-child > span {
  border-bottom-right-radius: 1px;
  border-top-right-radius: 1px;
}
.pager {
  padding-left: 0;
  margin: 18px 0;
  list-style: none;
  text-align: center;
}
.pager li {
  display: inline;
}
.pager li > a,
.pager li > span {
  display: inline-block;
  padding: 5px 14px;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 15px;
}
.pager li > a:hover,
.pager li > a:focus {
  text-decoration: none;
  background-color: #eeeeee;
}
.pager .next > a,
.pager .next > span {
  float: right;
}
.pager .previous > a,
.pager .previous > span {
  float: left;
}
.pager .disabled > a,
.pager .disabled > a:hover,
.pager .disabled > a:focus,
.pager .disabled > span {
  color: #777777;
  background-color: #fff;
  cursor: not-allowed;
}
.label {
  display: inline;
  padding: .2em .6em .3em;
  font-size: 75%;
  font-weight: bold;
  line-height: 1;
  color: #fff;
  text-align: center;
  white-space: nowrap;
  vertical-align: baseline;
  border-radius: .25em;
}
a.label:hover,
a.label:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}
.label:empty {
  display: none;
}
.btn .label {
  position: relative;
  top: -1px;
}
.label-default {
  background-color: #777777;
}
.label-default[href]:hover,
.label-default[href]:focus {
  background-color: #5e5e5e;
}
.label-primary {
  background-color: #337ab7;
}
.label-primary[href]:hover,
.label-primary[href]:focus {
  background-color: #286090;
}
.label-success {
  background-color: #5cb85c;
}
.label-success[href]:hover,
.label-success[href]:focus {
  background-color: #449d44;
}
.label-info {
  background-color: #5bc0de;
}
.label-info[href]:hover,
.label-info[href]:focus {
  background-color: #31b0d5;
}
.label-warning {
  background-color: #f0ad4e;
}
.label-warning[href]:hover,
.label-warning[href]:focus {
  background-color: #ec971f;
}
.label-danger {
  background-color: #d9534f;
}
.label-danger[href]:hover,
.label-danger[href]:focus {
  background-color: #c9302c;
}
.badge {
  display: inline-block;
  min-width: 10px;
  padding: 3px 7px;
  font-size: 12px;
  font-weight: bold;
  color: #fff;
  line-height: 1;
  vertical-align: middle;
  white-space: nowrap;
  text-align: center;
  background-color: #777777;
  border-radius: 10px;
}
.badge:empty {
  display: none;
}
.btn .badge {
  position: relative;
  top: -1px;
}
.btn-xs .badge,
.btn-group-xs > .btn .badge {
  top: 0;
  padding: 1px 5px;
}
a.badge:hover,
a.badge:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}
.list-group-item.active > .badge,
.nav-pills > .active > a > .badge {
  color: #337ab7;
  background-color: #fff;
}
.list-group-item > .badge {
  float: right;
}
.list-group-item > .badge + .badge {
  margin-right: 5px;
}
.nav-pills > li > a > .badge {
  margin-left: 3px;
}
.jumbotron {
  padding-top: 30px;
  padding-bottom: 30px;
  margin-bottom: 30px;
  color: inherit;
  background-color: #eeeeee;
}
.jumbotron h1,
.jumbotron .h1 {
  color: inherit;
}
.jumbotron p {
  margin-bottom: 15px;
  font-size: 20px;
  font-weight: 200;
}
.jumbotron > hr {
  border-top-color: #d5d5d5;
}
.container .jumbotron,
.container-fluid .jumbotron {
  border-radius: 3px;
  padding-left: 0px;
  padding-right: 0px;
}
.jumbotron .container {
  max-width: 100%;
}
@media screen and (min-width: 768px) {
  .jumbotron {
    padding-top: 48px;
    padding-bottom: 48px;
  }
  .container .jumbotron,
  .container-fluid .jumbotron {
    padding-left: 60px;
    padding-right: 60px;
  }
  .jumbotron h1,
  .jumbotron .h1 {
    font-size: 59px;
  }
}
.thumbnail {
  display: block;
  padding: 4px;
  margin-bottom: 18px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 2px;
  -webkit-transition: border 0.2s ease-in-out;
  -o-transition: border 0.2s ease-in-out;
  transition: border 0.2s ease-in-out;
}
.thumbnail > img,
.thumbnail a > img {
  margin-left: auto;
  margin-right: auto;
}
a.thumbnail:hover,
a.thumbnail:focus,
a.thumbnail.active {
  border-color: #337ab7;
}
.thumbnail .caption {
  padding: 9px;
  color: #000;
}
.alert {
  padding: 15px;
  margin-bottom: 18px;
  border: 1px solid transparent;
  border-radius: 2px;
}
.alert h4 {
  margin-top: 0;
  color: inherit;
}
.alert .alert-link {
  font-weight: bold;
}
.alert > p,
.alert > ul {
  margin-bottom: 0;
}
.alert > p + p {
  margin-top: 5px;
}
.alert-dismissable,
.alert-dismissible {
  padding-right: 35px;
}
.alert-dismissable .close,
.alert-dismissible .close {
  position: relative;
  top: -2px;
  right: -21px;
  color: inherit;
}
.alert-success {
  background-color: #dff0d8;
  border-color: #d6e9c6;
  color: #3c763d;
}
.alert-success hr {
  border-top-color: #c9e2b3;
}
.alert-success .alert-link {
  color: #2b542c;
}
.alert-info {
  background-color: #d9edf7;
  border-color: #bce8f1;
  color: #31708f;
}
.alert-info hr {
  border-top-color: #a6e1ec;
}
.alert-info .alert-link {
  color: #245269;
}
.alert-warning {
  background-color: #fcf8e3;
  border-color: #faebcc;
  color: #8a6d3b;
}
.alert-warning hr {
  border-top-color: #f7e1b5;
}
.alert-warning .alert-link {
  color: #66512c;
}
.alert-danger {
  background-color: #f2dede;
  border-color: #ebccd1;
  color: #a94442;
}
.alert-danger hr {
  border-top-color: #e4b9c0;
}
.alert-danger .alert-link {
  color: #843534;
}
@-webkit-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
.progress {
  overflow: hidden;
  height: 18px;
  margin-bottom: 18px;
  background-color: #f5f5f5;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
}
.progress-bar {
  float: left;
  width: 0%;
  height: 100%;
  font-size: 12px;
  line-height: 18px;
  color: #fff;
  text-align: center;
  background-color: #337ab7;
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -webkit-transition: width 0.6s ease;
  -o-transition: width 0.6s ease;
  transition: width 0.6s ease;
}
.progress-striped .progress-bar,
.progress-bar-striped {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-size: 40px 40px;
}
.progress.active .progress-bar,
.progress-bar.active {
  -webkit-animation: progress-bar-stripes 2s linear infinite;
  -o-animation: progress-bar-stripes 2s linear infinite;
  animation: progress-bar-stripes 2s linear infinite;
}
.progress-bar-success {
  background-color: #5cb85c;
}
.progress-striped .progress-bar-success {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-bar-info {
  background-color: #5bc0de;
}
.progress-striped .progress-bar-info {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-bar-warning {
  background-color: #f0ad4e;
}
.progress-striped .progress-bar-warning {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-bar-danger {
  background-color: #d9534f;
}
.progress-striped .progress-bar-danger {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.media {
  margin-top: 15px;
}
.media:first-child {
  margin-top: 0;
}
.media,
.media-body {
  zoom: 1;
  overflow: hidden;
}
.media-body {
  width: 10000px;
}
.media-object {
  display: block;
}
.media-object.img-thumbnail {
  max-width: none;
}
.media-right,
.media > .pull-right {
  padding-left: 10px;
}
.media-left,
.media > .pull-left {
  padding-right: 10px;
}
.media-left,
.media-right,
.media-body {
  display: table-cell;
  vertical-align: top;
}
.media-middle {
  vertical-align: middle;
}
.media-bottom {
  vertical-align: bottom;
}
.media-heading {
  margin-top: 0;
  margin-bottom: 5px;
}
.media-list {
  padding-left: 0;
  list-style: none;
}
.list-group {
  margin-bottom: 20px;
  padding-left: 0;
}
.list-group-item {
  position: relative;
  display: block;
  padding: 10px 15px;
  margin-bottom: -1px;
  background-color: #fff;
  border: 1px solid #ddd;
}
.list-group-item:first-child {
  border-top-right-radius: 2px;
  border-top-left-radius: 2px;
}
.list-group-item:last-child {
  margin-bottom: 0;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
}
a.list-group-item,
button.list-group-item {
  color: #555;
}
a.list-group-item .list-group-item-heading,
button.list-group-item .list-group-item-heading {
  color: #333;
}
a.list-group-item:hover,
button.list-group-item:hover,
a.list-group-item:focus,
button.list-group-item:focus {
  text-decoration: none;
  color: #555;
  background-color: #f5f5f5;
}
button.list-group-item {
  width: 100%;
  text-align: left;
}
.list-group-item.disabled,
.list-group-item.disabled:hover,
.list-group-item.disabled:focus {
  background-color: #eeeeee;
  color: #777777;
  cursor: not-allowed;
}
.list-group-item.disabled .list-group-item-heading,
.list-group-item.disabled:hover .list-group-item-heading,
.list-group-item.disabled:focus .list-group-item-heading {
  color: inherit;
}
.list-group-item.disabled .list-group-item-text,
.list-group-item.disabled:hover .list-group-item-text,
.list-group-item.disabled:focus .list-group-item-text {
  color: #777777;
}
.list-group-item.active,
.list-group-item.active:hover,
.list-group-item.active:focus {
  z-index: 2;
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.list-group-item.active .list-group-item-heading,
.list-group-item.active:hover .list-group-item-heading,
.list-group-item.active:focus .list-group-item-heading,
.list-group-item.active .list-group-item-heading > small,
.list-group-item.active:hover .list-group-item-heading > small,
.list-group-item.active:focus .list-group-item-heading > small,
.list-group-item.active .list-group-item-heading > .small,
.list-group-item.active:hover .list-group-item-heading > .small,
.list-group-item.active:focus .list-group-item-heading > .small {
  color: inherit;
}
.list-group-item.active .list-group-item-text,
.list-group-item.active:hover .list-group-item-text,
.list-group-item.active:focus .list-group-item-text {
  color: #c7ddef;
}
.list-group-item-success {
  color: #3c763d;
  background-color: #dff0d8;
}
a.list-group-item-success,
button.list-group-item-success {
  color: #3c763d;
}
a.list-group-item-success .list-group-item-heading,
button.list-group-item-success .list-group-item-heading {
  color: inherit;
}
a.list-group-item-success:hover,
button.list-group-item-success:hover,
a.list-group-item-success:focus,
button.list-group-item-success:focus {
  color: #3c763d;
  background-color: #d0e9c6;
}
a.list-group-item-success.active,
button.list-group-item-success.active,
a.list-group-item-success.active:hover,
button.list-group-item-success.active:hover,
a.list-group-item-success.active:focus,
button.list-group-item-success.active:focus {
  color: #fff;
  background-color: #3c763d;
  border-color: #3c763d;
}
.list-group-item-info {
  color: #31708f;
  background-color: #d9edf7;
}
a.list-group-item-info,
button.list-group-item-info {
  color: #31708f;
}
a.list-group-item-info .list-group-item-heading,
button.list-group-item-info .list-group-item-heading {
  color: inherit;
}
a.list-group-item-info:hover,
button.list-group-item-info:hover,
a.list-group-item-info:focus,
button.list-group-item-info:focus {
  color: #31708f;
  background-color: #c4e3f3;
}
a.list-group-item-info.active,
button.list-group-item-info.active,
a.list-group-item-info.active:hover,
button.list-group-item-info.active:hover,
a.list-group-item-info.active:focus,
button.list-group-item-info.active:focus {
  color: #fff;
  background-color: #31708f;
  border-color: #31708f;
}
.list-group-item-warning {
  color: #8a6d3b;
  background-color: #fcf8e3;
}
a.list-group-item-warning,
button.list-group-item-warning {
  color: #8a6d3b;
}
a.list-group-item-warning .list-group-item-heading,
button.list-group-item-warning .list-group-item-heading {
  color: inherit;
}
a.list-group-item-warning:hover,
button.list-group-item-warning:hover,
a.list-group-item-warning:focus,
button.list-group-item-warning:focus {
  color: #8a6d3b;
  background-color: #faf2cc;
}
a.list-group-item-warning.active,
button.list-group-item-warning.active,
a.list-group-item-warning.active:hover,
button.list-group-item-warning.active:hover,
a.list-group-item-warning.active:focus,
button.list-group-item-warning.active:focus {
  color: #fff;
  background-color: #8a6d3b;
  border-color: #8a6d3b;
}
.list-group-item-danger {
  color: #a94442;
  background-color: #f2dede;
}
a.list-group-item-danger,
button.list-group-item-danger {
  color: #a94442;
}
a.list-group-item-danger .list-group-item-heading,
button.list-group-item-danger .list-group-item-heading {
  color: inherit;
}
a.list-group-item-danger:hover,
button.list-group-item-danger:hover,
a.list-group-item-danger:focus,
button.list-group-item-danger:focus {
  color: #a94442;
  background-color: #ebcccc;
}
a.list-group-item-danger.active,
button.list-group-item-danger.active,
a.list-group-item-danger.active:hover,
button.list-group-item-danger.active:hover,
a.list-group-item-danger.active:focus,
button.list-group-item-danger.active:focus {
  color: #fff;
  background-color: #a94442;
  border-color: #a94442;
}
.list-group-item-heading {
  margin-top: 0;
  margin-bottom: 5px;
}
.list-group-item-text {
  margin-bottom: 0;
  line-height: 1.3;
}
.panel {
  margin-bottom: 18px;
  background-color: #fff;
  border: 1px solid transparent;
  border-radius: 2px;
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
}
.panel-body {
  padding: 15px;
}
.panel-heading {
  padding: 10px 15px;
  border-bottom: 1px solid transparent;
  border-top-right-radius: 1px;
  border-top-left-radius: 1px;
}
.panel-heading > .dropdown .dropdown-toggle {
  color: inherit;
}
.panel-title {
  margin-top: 0;
  margin-bottom: 0;
  font-size: 15px;
  color: inherit;
}
.panel-title > a,
.panel-title > small,
.panel-title > .small,
.panel-title > small > a,
.panel-title > .small > a {
  color: inherit;
}
.panel-footer {
  padding: 10px 15px;
  background-color: #f5f5f5;
  border-top: 1px solid #ddd;
  border-bottom-right-radius: 1px;
  border-bottom-left-radius: 1px;
}
.panel > .list-group,
.panel > .panel-collapse > .list-group {
  margin-bottom: 0;
}
.panel > .list-group .list-group-item,
.panel > .panel-collapse > .list-group .list-group-item {
  border-width: 1px 0;
  border-radius: 0;
}
.panel > .list-group:first-child .list-group-item:first-child,
.panel > .panel-collapse > .list-group:first-child .list-group-item:first-child {
  border-top: 0;
  border-top-right-radius: 1px;
  border-top-left-radius: 1px;
}
.panel > .list-group:last-child .list-group-item:last-child,
.panel > .panel-collapse > .list-group:last-child .list-group-item:last-child {
  border-bottom: 0;
  border-bottom-right-radius: 1px;
  border-bottom-left-radius: 1px;
}
.panel > .panel-heading + .panel-collapse > .list-group .list-group-item:first-child {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.panel-heading + .list-group .list-group-item:first-child {
  border-top-width: 0;
}
.list-group + .panel-footer {
  border-top-width: 0;
}
.panel > .table,
.panel > .table-responsive > .table,
.panel > .panel-collapse > .table {
  margin-bottom: 0;
}
.panel > .table caption,
.panel > .table-responsive > .table caption,
.panel > .panel-collapse > .table caption {
  padding-left: 15px;
  padding-right: 15px;
}
.panel > .table:first-child,
.panel > .table-responsive:first-child > .table:first-child {
  border-top-right-radius: 1px;
  border-top-left-radius: 1px;
}
.panel > .table:first-child > thead:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child {
  border-top-left-radius: 1px;
  border-top-right-radius: 1px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:first-child {
  border-top-left-radius: 1px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:last-child {
  border-top-right-radius: 1px;
}
.panel > .table:last-child,
.panel > .table-responsive:last-child > .table:last-child {
  border-bottom-right-radius: 1px;
  border-bottom-left-radius: 1px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child {
  border-bottom-left-radius: 1px;
  border-bottom-right-radius: 1px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:first-child {
  border-bottom-left-radius: 1px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:last-child {
  border-bottom-right-radius: 1px;
}
.panel > .panel-body + .table,
.panel > .panel-body + .table-responsive,
.panel > .table + .panel-body,
.panel > .table-responsive + .panel-body {
  border-top: 1px solid #ddd;
}
.panel > .table > tbody:first-child > tr:first-child th,
.panel > .table > tbody:first-child > tr:first-child td {
  border-top: 0;
}
.panel > .table-bordered,
.panel > .table-responsive > .table-bordered {
  border: 0;
}
.panel > .table-bordered > thead > tr > th:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:first-child,
.panel > .table-bordered > tbody > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:first-child,
.panel > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-bordered > thead > tr > td:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:first-child,
.panel > .table-bordered > tbody > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:first-child,
.panel > .table-bordered > tfoot > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:first-child {
  border-left: 0;
}
.panel > .table-bordered > thead > tr > th:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:last-child,
.panel > .table-bordered > tbody > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:last-child,
.panel > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-bordered > thead > tr > td:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:last-child,
.panel > .table-bordered > tbody > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:last-child,
.panel > .table-bordered > tfoot > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:last-child {
  border-right: 0;
}
.panel > .table-bordered > thead > tr:first-child > td,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > td,
.panel > .table-bordered > tbody > tr:first-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > td,
.panel > .table-bordered > thead > tr:first-child > th,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > th,
.panel > .table-bordered > tbody > tr:first-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > th {
  border-bottom: 0;
}
.panel > .table-bordered > tbody > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > td,
.panel > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-bordered > tbody > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > th,
.panel > .table-bordered > tfoot > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > th {
  border-bottom: 0;
}
.panel > .table-responsive {
  border: 0;
  margin-bottom: 0;
}
.panel-group {
  margin-bottom: 18px;
}
.panel-group .panel {
  margin-bottom: 0;
  border-radius: 2px;
}
.panel-group .panel + .panel {
  margin-top: 5px;
}
.panel-group .panel-heading {
  border-bottom: 0;
}
.panel-group .panel-heading + .panel-collapse > .panel-body,
.panel-group .panel-heading + .panel-collapse > .list-group {
  border-top: 1px solid #ddd;
}
.panel-group .panel-footer {
  border-top: 0;
}
.panel-group .panel-footer + .panel-collapse .panel-body {
  border-bottom: 1px solid #ddd;
}
.panel-default {
  border-color: #ddd;
}
.panel-default > .panel-heading {
  color: #333333;
  background-color: #f5f5f5;
  border-color: #ddd;
}
.panel-default > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ddd;
}
.panel-default > .panel-heading .badge {
  color: #f5f5f5;
  background-color: #333333;
}
.panel-default > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ddd;
}
.panel-primary {
  border-color: #337ab7;
}
.panel-primary > .panel-heading {
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.panel-primary > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #337ab7;
}
.panel-primary > .panel-heading .badge {
  color: #337ab7;
  background-color: #fff;
}
.panel-primary > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #337ab7;
}
.panel-success {
  border-color: #d6e9c6;
}
.panel-success > .panel-heading {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #d6e9c6;
}
.panel-success > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #d6e9c6;
}
.panel-success > .panel-heading .badge {
  color: #dff0d8;
  background-color: #3c763d;
}
.panel-success > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #d6e9c6;
}
.panel-info {
  border-color: #bce8f1;
}
.panel-info > .panel-heading {
  color: #31708f;
  background-color: #d9edf7;
  border-color: #bce8f1;
}
.panel-info > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #bce8f1;
}
.panel-info > .panel-heading .badge {
  color: #d9edf7;
  background-color: #31708f;
}
.panel-info > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #bce8f1;
}
.panel-warning {
  border-color: #faebcc;
}
.panel-warning > .panel-heading {
  color: #8a6d3b;
  background-color: #fcf8e3;
  border-color: #faebcc;
}
.panel-warning > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #faebcc;
}
.panel-warning > .panel-heading .badge {
  color: #fcf8e3;
  background-color: #8a6d3b;
}
.panel-warning > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #faebcc;
}
.panel-danger {
  border-color: #ebccd1;
}
.panel-danger > .panel-heading {
  color: #a94442;
  background-color: #f2dede;
  border-color: #ebccd1;
}
.panel-danger > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ebccd1;
}
.panel-danger > .panel-heading .badge {
  color: #f2dede;
  background-color: #a94442;
}
.panel-danger > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ebccd1;
}
.embed-responsive {
  position: relative;
  display: block;
  height: 0;
  padding: 0;
  overflow: hidden;
}
.embed-responsive .embed-responsive-item,
.embed-responsive iframe,
.embed-responsive embed,
.embed-responsive object,
.embed-responsive video {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  height: 100%;
  width: 100%;
  border: 0;
}
.embed-responsive-16by9 {
  padding-bottom: 56.25%;
}
.embed-responsive-4by3 {
  padding-bottom: 75%;
}
.well {
  min-height: 20px;
  padding: 19px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border: 1px solid #e3e3e3;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}
.well blockquote {
  border-color: #ddd;
  border-color: rgba(0, 0, 0, 0.15);
}
.well-lg {
  padding: 24px;
  border-radius: 3px;
}
.well-sm {
  padding: 9px;
  border-radius: 1px;
}
.close {
  float: right;
  font-size: 19.5px;
  font-weight: bold;
  line-height: 1;
  color: #000;
  text-shadow: 0 1px 0 #fff;
  opacity: 0.2;
  filter: alpha(opacity=20);
}
.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
  opacity: 0.5;
  filter: alpha(opacity=50);
}
button.close {
  padding: 0;
  cursor: pointer;
  background: transparent;
  border: 0;
  -webkit-appearance: none;
}
.modal-open {
  overflow: hidden;
}
.modal {
  display: none;
  overflow: hidden;
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1050;
  -webkit-overflow-scrolling: touch;
  outline: 0;
}
.modal.fade .modal-dialog {
  -webkit-transform: translate(0, -25%);
  -ms-transform: translate(0, -25%);
  -o-transform: translate(0, -25%);
  transform: translate(0, -25%);
  -webkit-transition: -webkit-transform 0.3s ease-out;
  -moz-transition: -moz-transform 0.3s ease-out;
  -o-transition: -o-transform 0.3s ease-out;
  transition: transform 0.3s ease-out;
}
.modal.in .modal-dialog {
  -webkit-transform: translate(0, 0);
  -ms-transform: translate(0, 0);
  -o-transform: translate(0, 0);
  transform: translate(0, 0);
}
.modal-open .modal {
  overflow-x: hidden;
  overflow-y: auto;
}
.modal-dialog {
  position: relative;
  width: auto;
  margin: 10px;
}
.modal-content {
  position: relative;
  background-color: #fff;
  border: 1px solid #999;
  border: 1px solid rgba(0, 0, 0, 0.2);
  border-radius: 3px;
  -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
  box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
  background-clip: padding-box;
  outline: 0;
}
.modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: #000;
}
.modal-backdrop.fade {
  opacity: 0;
  filter: alpha(opacity=0);
}
.modal-backdrop.in {
  opacity: 0.5;
  filter: alpha(opacity=50);
}
.modal-header {
  padding: 15px;
  border-bottom: 1px solid #e5e5e5;
}
.modal-header .close {
  margin-top: -2px;
}
.modal-title {
  margin: 0;
  line-height: 1.42857143;
}
.modal-body {
  position: relative;
  padding: 15px;
}
.modal-footer {
  padding: 15px;
  text-align: right;
  border-top: 1px solid #e5e5e5;
}
.modal-footer .btn + .btn {
  margin-left: 5px;
  margin-bottom: 0;
}
.modal-footer .btn-group .btn + .btn {
  margin-left: -1px;
}
.modal-footer .btn-block + .btn-block {
  margin-left: 0;
}
.modal-scrollbar-measure {
  position: absolute;
  top: -9999px;
  width: 50px;
  height: 50px;
  overflow: scroll;
}
@media (min-width: 768px) {
  .modal-dialog {
    width: 600px;
    margin: 30px auto;
  }
  .modal-content {
    -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
  }
  .modal-sm {
    width: 300px;
  }
}
@media (min-width: 992px) {
  .modal-lg {
    width: 900px;
  }
}
.tooltip {
  position: absolute;
  z-index: 1070;
  display: block;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-style: normal;
  font-weight: normal;
  letter-spacing: normal;
  line-break: auto;
  line-height: 1.42857143;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  white-space: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  font-size: 12px;
  opacity: 0;
  filter: alpha(opacity=0);
}
.tooltip.in {
  opacity: 0.9;
  filter: alpha(opacity=90);
}
.tooltip.top {
  margin-top: -3px;
  padding: 5px 0;
}
.tooltip.right {
  margin-left: 3px;
  padding: 0 5px;
}
.tooltip.bottom {
  margin-top: 3px;
  padding: 5px 0;
}
.tooltip.left {
  margin-left: -3px;
  padding: 0 5px;
}
.tooltip-inner {
  max-width: 200px;
  padding: 3px 8px;
  color: #fff;
  text-align: center;
  background-color: #000;
  border-radius: 2px;
}
.tooltip-arrow {
  position: absolute;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.tooltip.top .tooltip-arrow {
  bottom: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-left .tooltip-arrow {
  bottom: 0;
  right: 5px;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-right .tooltip-arrow {
  bottom: 0;
  left: 5px;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.right .tooltip-arrow {
  top: 50%;
  left: 0;
  margin-top: -5px;
  border-width: 5px 5px 5px 0;
  border-right-color: #000;
}
.tooltip.left .tooltip-arrow {
  top: 50%;
  right: 0;
  margin-top: -5px;
  border-width: 5px 0 5px 5px;
  border-left-color: #000;
}
.tooltip.bottom .tooltip-arrow {
  top: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-left .tooltip-arrow {
  top: 0;
  right: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-right .tooltip-arrow {
  top: 0;
  left: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.popover {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1060;
  display: none;
  max-width: 276px;
  padding: 1px;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-style: normal;
  font-weight: normal;
  letter-spacing: normal;
  line-break: auto;
  line-height: 1.42857143;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  white-space: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  font-size: 13px;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  border-radius: 3px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}
.popover.top {
  margin-top: -10px;
}
.popover.right {
  margin-left: 10px;
}
.popover.bottom {
  margin-top: 10px;
}
.popover.left {
  margin-left: -10px;
}
.popover-title {
  margin: 0;
  padding: 8px 14px;
  font-size: 13px;
  background-color: #f7f7f7;
  border-bottom: 1px solid #ebebeb;
  border-radius: 2px 2px 0 0;
}
.popover-content {
  padding: 9px 14px;
}
.popover > .arrow,
.popover > .arrow:after {
  position: absolute;
  display: block;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.popover > .arrow {
  border-width: 11px;
}
.popover > .arrow:after {
  border-width: 10px;
  content: "";
}
.popover.top > .arrow {
  left: 50%;
  margin-left: -11px;
  border-bottom-width: 0;
  border-top-color: #999999;
  border-top-color: rgba(0, 0, 0, 0.25);
  bottom: -11px;
}
.popover.top > .arrow:after {
  content: " ";
  bottom: 1px;
  margin-left: -10px;
  border-bottom-width: 0;
  border-top-color: #fff;
}
.popover.right > .arrow {
  top: 50%;
  left: -11px;
  margin-top: -11px;
  border-left-width: 0;
  border-right-color: #999999;
  border-right-color: rgba(0, 0, 0, 0.25);
}
.popover.right > .arrow:after {
  content: " ";
  left: 1px;
  bottom: -10px;
  border-left-width: 0;
  border-right-color: #fff;
}
.popover.bottom > .arrow {
  left: 50%;
  margin-left: -11px;
  border-top-width: 0;
  border-bottom-color: #999999;
  border-bottom-color: rgba(0, 0, 0, 0.25);
  top: -11px;
}
.popover.bottom > .arrow:after {
  content: " ";
  top: 1px;
  margin-left: -10px;
  border-top-width: 0;
  border-bottom-color: #fff;
}
.popover.left > .arrow {
  top: 50%;
  right: -11px;
  margin-top: -11px;
  border-right-width: 0;
  border-left-color: #999999;
  border-left-color: rgba(0, 0, 0, 0.25);
}
.popover.left > .arrow:after {
  content: " ";
  right: 1px;
  border-right-width: 0;
  border-left-color: #fff;
  bottom: -10px;
}
.carousel {
  position: relative;
}
.carousel-inner {
  position: relative;
  overflow: hidden;
  width: 100%;
}
.carousel-inner > .item {
  display: none;
  position: relative;
  -webkit-transition: 0.6s ease-in-out left;
  -o-transition: 0.6s ease-in-out left;
  transition: 0.6s ease-in-out left;
}
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  line-height: 1;
}
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
    perspective: 1000px;
  }
  .carousel-inner > .item.next,
  .carousel-inner > .item.active.right {
    -webkit-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);
    left: 0;
  }
  .carousel-inner > .item.prev,
  .carousel-inner > .item.active.left {
    -webkit-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0);
    left: 0;
  }
  .carousel-inner > .item.next.left,
  .carousel-inner > .item.prev.right,
  .carousel-inner > .item.active {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
    left: 0;
  }
}
.carousel-inner > .active,
.carousel-inner > .next,
.carousel-inner > .prev {
  display: block;
}
.carousel-inner > .active {
  left: 0;
}
.carousel-inner > .next,
.carousel-inner > .prev {
  position: absolute;
  top: 0;
  width: 100%;
}
.carousel-inner > .next {
  left: 100%;
}
.carousel-inner > .prev {
  left: -100%;
}
.carousel-inner > .next.left,
.carousel-inner > .prev.right {
  left: 0;
}
.carousel-inner > .active.left {
  left: -100%;
}
.carousel-inner > .active.right {
  left: 100%;
}
.carousel-control {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  width: 15%;
  opacity: 0.5;
  filter: alpha(opacity=50);
  font-size: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
  background-color: rgba(0, 0, 0, 0);
}
.carousel-control.left {
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#80000000', endColorstr='#00000000', GradientType=1);
}
.carousel-control.right {
  left: auto;
  right: 0;
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000', endColorstr='#80000000', GradientType=1);
}
.carousel-control:hover,
.carousel-control:focus {
  outline: 0;
  color: #fff;
  text-decoration: none;
  opacity: 0.9;
  filter: alpha(opacity=90);
}
.carousel-control .icon-prev,
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-left,
.carousel-control .glyphicon-chevron-right {
  position: absolute;
  top: 50%;
  margin-top: -10px;
  z-index: 5;
  display: inline-block;
}
.carousel-control .icon-prev,
.carousel-control .glyphicon-chevron-left {
  left: 50%;
  margin-left: -10px;
}
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-right {
  right: 50%;
  margin-right: -10px;
}
.carousel-control .icon-prev,
.carousel-control .icon-next {
  width: 20px;
  height: 20px;
  line-height: 1;
  font-family: serif;
}
.carousel-control .icon-prev:before {
  content: '\2039';
}
.carousel-control .icon-next:before {
  content: '\203a';
}
.carousel-indicators {
  position: absolute;
  bottom: 10px;
  left: 50%;
  z-index: 15;
  width: 60%;
  margin-left: -30%;
  padding-left: 0;
  list-style: none;
  text-align: center;
}
.carousel-indicators li {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin: 1px;
  text-indent: -999px;
  border: 1px solid #fff;
  border-radius: 10px;
  cursor: pointer;
  background-color: #000 \9;
  background-color: rgba(0, 0, 0, 0);
}
.carousel-indicators .active {
  margin: 0;
  width: 12px;
  height: 12px;
  background-color: #fff;
}
.carousel-caption {
  position: absolute;
  left: 15%;
  right: 15%;
  bottom: 20px;
  z-index: 10;
  padding-top: 20px;
  padding-bottom: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
}
.carousel-caption .btn {
  text-shadow: none;
}
@media screen and (min-width: 768px) {
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-prev,
  .carousel-control .icon-next {
    width: 30px;
    height: 30px;
    margin-top: -10px;
    font-size: 30px;
  }
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .icon-prev {
    margin-left: -10px;
  }
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-next {
    margin-right: -10px;
  }
  .carousel-caption {
    left: 20%;
    right: 20%;
    padding-bottom: 30px;
  }
  .carousel-indicators {
    bottom: 20px;
  }
}
.clearfix:before,
.clearfix:after,
.dl-horizontal dd:before,
.dl-horizontal dd:after,
.container:before,
.container:after,
.container-fluid:before,
.container-fluid:after,
.row:before,
.row:after,
.form-horizontal .form-group:before,
.form-horizontal .form-group:after,
.btn-toolbar:before,
.btn-toolbar:after,
.btn-group-vertical > .btn-group:before,
.btn-group-vertical > .btn-group:after,
.nav:before,
.nav:after,
.navbar:before,
.navbar:after,
.navbar-header:before,
.navbar-header:after,
.navbar-collapse:before,
.navbar-collapse:after,
.pager:before,
.pager:after,
.panel-body:before,
.panel-body:after,
.modal-header:before,
.modal-header:after,
.modal-footer:before,
.modal-footer:after,
.item_buttons:before,
.item_buttons:after {
  content: " ";
  display: table;
}
.clearfix:after,
.dl-horizontal dd:after,
.container:after,
.container-fluid:after,
.row:after,
.form-horizontal .form-group:after,
.btn-toolbar:after,
.btn-group-vertical > .btn-group:after,
.nav:after,
.navbar:after,
.navbar-header:after,
.navbar-collapse:after,
.pager:after,
.panel-body:after,
.modal-header:after,
.modal-footer:after,
.item_buttons:after {
  clear: both;
}
.center-block {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.pull-right {
  float: right !important;
}
.pull-left {
  float: left !important;
}
.hide {
  display: none !important;
}
.show {
  display: block !important;
}
.invisible {
  visibility: hidden;
}
.text-hide {
  font: 0/0 a;
  color: transparent;
  text-shadow: none;
  background-color: transparent;
  border: 0;
}
.hidden {
  display: none !important;
}
.affix {
  position: fixed;
}
@-ms-viewport {
  width: device-width;
}
.visible-xs,
.visible-sm,
.visible-md,
.visible-lg {
  display: none !important;
}
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
  display: none !important;
}
@media (max-width: 767px) {
  .visible-xs {
    display: block !important;
  }
  table.visible-xs {
    display: table !important;
  }
  tr.visible-xs {
    display: table-row !important;
  }
  th.visible-xs,
  td.visible-xs {
    display: table-cell !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-block {
    display: block !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-inline {
    display: inline !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm {
    display: block !important;
  }
  table.visible-sm {
    display: table !important;
  }
  tr.visible-sm {
    display: table-row !important;
  }
  th.visible-sm,
  td.visible-sm {
    display: table-cell !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-block {
    display: block !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline {
    display: inline !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md {
    display: block !important;
  }
  table.visible-md {
    display: table !important;
  }
  tr.visible-md {
    display: table-row !important;
  }
  th.visible-md,
  td.visible-md {
    display: table-cell !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-block {
    display: block !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline {
    display: inline !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg {
    display: block !important;
  }
  table.visible-lg {
    display: table !important;
  }
  tr.visible-lg {
    display: table-row !important;
  }
  th.visible-lg,
  td.visible-lg {
    display: table-cell !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-block {
    display: block !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-inline {
    display: inline !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-inline-block {
    display: inline-block !important;
  }
}
@media (max-width: 767px) {
  .hidden-xs {
    display: none !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .hidden-sm {
    display: none !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .hidden-md {
    display: none !important;
  }
}
@media (min-width: 1200px) {
  .hidden-lg {
    display: none !important;
  }
}
.visible-print {
  display: none !important;
}
@media print {
  .visible-print {
    display: block !important;
  }
  table.visible-print {
    display: table !important;
  }
  tr.visible-print {
    display: table-row !important;
  }
  th.visible-print,
  td.visible-print {
    display: table-cell !important;
  }
}
.visible-print-block {
  display: none !important;
}
@media print {
  .visible-print-block {
    display: block !important;
  }
}
.visible-print-inline {
  display: none !important;
}
@media print {
  .visible-print-inline {
    display: inline !important;
  }
}
.visible-print-inline-block {
  display: none !important;
}
@media print {
  .visible-print-inline-block {
    display: inline-block !important;
  }
}
@media print {
  .hidden-print {
    display: none !important;
  }
}
/*!
*
* Font Awesome
*
*/
/*!
 *  Font Awesome 4.7.0 by @davegandy - http://fontawesome.io - @fontawesome
 *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)
 */
/* FONT PATH
 * -------------------------- */
@font-face {
  font-family: 'FontAwesome';
  src: url('../components/font-awesome/fonts/fontawesome-webfont.eot?v=4.7.0');
  src: url('../components/font-awesome/fonts/fontawesome-webfont.eot?#iefix&v=4.7.0') format('embedded-opentype'), url('../components/font-awesome/fonts/fontawesome-webfont.woff2?v=4.7.0') format('woff2'), url('../components/font-awesome/fonts/fontawesome-webfont.woff?v=4.7.0') format('woff'), url('../components/font-awesome/fonts/fontawesome-webfont.ttf?v=4.7.0') format('truetype'), url('../components/font-awesome/fonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular') format('svg');
  font-weight: normal;
  font-style: normal;
}
.fa {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
/* makes the font 33% larger relative to the icon container */
.fa-lg {
  font-size: 1.33333333em;
  line-height: 0.75em;
  vertical-align: -15%;
}
.fa-2x {
  font-size: 2em;
}
.fa-3x {
  font-size: 3em;
}
.fa-4x {
  font-size: 4em;
}
.fa-5x {
  font-size: 5em;
}
.fa-fw {
  width: 1.28571429em;
  text-align: center;
}
.fa-ul {
  padding-left: 0;
  margin-left: 2.14285714em;
  list-style-type: none;
}
.fa-ul > li {
  position: relative;
}
.fa-li {
  position: absolute;
  left: -2.14285714em;
  width: 2.14285714em;
  top: 0.14285714em;
  text-align: center;
}
.fa-li.fa-lg {
  left: -1.85714286em;
}
.fa-border {
  padding: .2em .25em .15em;
  border: solid 0.08em #eee;
  border-radius: .1em;
}
.fa-pull-left {
  float: left;
}
.fa-pull-right {
  float: right;
}
.fa.fa-pull-left {
  margin-right: .3em;
}
.fa.fa-pull-right {
  margin-left: .3em;
}
/* Deprecated as of 4.4.0 */
.pull-right {
  float: right;
}
.pull-left {
  float: left;
}
.fa.pull-left {
  margin-right: .3em;
}
.fa.pull-right {
  margin-left: .3em;
}
.fa-spin {
  -webkit-animation: fa-spin 2s infinite linear;
  animation: fa-spin 2s infinite linear;
}
.fa-pulse {
  -webkit-animation: fa-spin 1s infinite steps(8);
  animation: fa-spin 1s infinite steps(8);
}
@-webkit-keyframes fa-spin {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
    transform: rotate(359deg);
  }
}
@keyframes fa-spin {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
    transform: rotate(359deg);
  }
}
.fa-rotate-90 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";
  -webkit-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
}
.fa-rotate-180 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2)";
  -webkit-transform: rotate(180deg);
  -ms-transform: rotate(180deg);
  transform: rotate(180deg);
}
.fa-rotate-270 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=3)";
  -webkit-transform: rotate(270deg);
  -ms-transform: rotate(270deg);
  transform: rotate(270deg);
}
.fa-flip-horizontal {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)";
  -webkit-transform: scale(-1, 1);
  -ms-transform: scale(-1, 1);
  transform: scale(-1, 1);
}
.fa-flip-vertical {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";
  -webkit-transform: scale(1, -1);
  -ms-transform: scale(1, -1);
  transform: scale(1, -1);
}
:root .fa-rotate-90,
:root .fa-rotate-180,
:root .fa-rotate-270,
:root .fa-flip-horizontal,
:root .fa-flip-vertical {
  filter: none;
}
.fa-stack {
  position: relative;
  display: inline-block;
  width: 2em;
  height: 2em;
  line-height: 2em;
  vertical-align: middle;
}
.fa-stack-1x,
.fa-stack-2x {
  position: absolute;
  left: 0;
  width: 100%;
  text-align: center;
}
.fa-stack-1x {
  line-height: inherit;
}
.fa-stack-2x {
  font-size: 2em;
}
.fa-inverse {
  color: #fff;
}
/* Font Awesome uses the Unicode Private Use Area (PUA) to ensure screen
   readers do not read off random characters that represent icons */
.fa-glass:before {
  content: "\f000";
}
.fa-music:before {
  content: "\f001";
}
.fa-search:before {
  content: "\f002";
}
.fa-envelope-o:before {
  content: "\f003";
}
.fa-heart:before {
  content: "\f004";
}
.fa-star:before {
  content: "\f005";
}
.fa-star-o:before {
  content: "\f006";
}
.fa-user:before {
  content: "\f007";
}
.fa-film:before {
  content: "\f008";
}
.fa-th-large:before {
  content: "\f009";
}
.fa-th:before {
  content: "\f00a";
}
.fa-th-list:before {
  content: "\f00b";
}
.fa-check:before {
  content: "\f00c";
}
.fa-remove:before,
.fa-close:before,
.fa-times:before {
  content: "\f00d";
}
.fa-search-plus:before {
  content: "\f00e";
}
.fa-search-minus:before {
  content: "\f010";
}
.fa-power-off:before {
  content: "\f011";
}
.fa-signal:before {
  content: "\f012";
}
.fa-gear:before,
.fa-cog:before {
  content: "\f013";
}
.fa-trash-o:before {
  content: "\f014";
}
.fa-home:before {
  content: "\f015";
}
.fa-file-o:before {
  content: "\f016";
}
.fa-clock-o:before {
  content: "\f017";
}
.fa-road:before {
  content: "\f018";
}
.fa-download:before {
  content: "\f019";
}
.fa-arrow-circle-o-down:before {
  content: "\f01a";
}
.fa-arrow-circle-o-up:before {
  content: "\f01b";
}
.fa-inbox:before {
  content: "\f01c";
}
.fa-play-circle-o:before {
  content: "\f01d";
}
.fa-rotate-right:before,
.fa-repeat:before {
  content: "\f01e";
}
.fa-refresh:before {
  content: "\f021";
}
.fa-list-alt:before {
  content: "\f022";
}
.fa-lock:before {
  content: "\f023";
}
.fa-flag:before {
  content: "\f024";
}
.fa-headphones:before {
  content: "\f025";
}
.fa-volume-off:before {
  content: "\f026";
}
.fa-volume-down:before {
  content: "\f027";
}
.fa-volume-up:before {
  content: "\f028";
}
.fa-qrcode:before {
  content: "\f029";
}
.fa-barcode:before {
  content: "\f02a";
}
.fa-tag:before {
  content: "\f02b";
}
.fa-tags:before {
  content: "\f02c";
}
.fa-book:before {
  content: "\f02d";
}
.fa-bookmark:before {
  content: "\f02e";
}
.fa-print:before {
  content: "\f02f";
}
.fa-camera:before {
  content: "\f030";
}
.fa-font:before {
  content: "\f031";
}
.fa-bold:before {
  content: "\f032";
}
.fa-italic:before {
  content: "\f033";
}
.fa-text-height:before {
  content: "\f034";
}
.fa-text-width:before {
  content: "\f035";
}
.fa-align-left:before {
  content: "\f036";
}
.fa-align-center:before {
  content: "\f037";
}
.fa-align-right:before {
  content: "\f038";
}
.fa-align-justify:before {
  content: "\f039";
}
.fa-list:before {
  content: "\f03a";
}
.fa-dedent:before,
.fa-outdent:before {
  content: "\f03b";
}
.fa-indent:before {
  content: "\f03c";
}
.fa-video-camera:before {
  content: "\f03d";
}
.fa-photo:before,
.fa-image:before,
.fa-picture-o:before {
  content: "\f03e";
}
.fa-pencil:before {
  content: "\f040";
}
.fa-map-marker:before {
  content: "\f041";
}
.fa-adjust:before {
  content: "\f042";
}
.fa-tint:before {
  content: "\f043";
}
.fa-edit:before,
.fa-pencil-square-o:before {
  content: "\f044";
}
.fa-share-square-o:before {
  content: "\f045";
}
.fa-check-square-o:before {
  content: "\f046";
}
.fa-arrows:before {
  content: "\f047";
}
.fa-step-backward:before {
  content: "\f048";
}
.fa-fast-backward:before {
  content: "\f049";
}
.fa-backward:before {
  content: "\f04a";
}
.fa-play:before {
  content: "\f04b";
}
.fa-pause:before {
  content: "\f04c";
}
.fa-stop:before {
  content: "\f04d";
}
.fa-forward:before {
  content: "\f04e";
}
.fa-fast-forward:before {
  content: "\f050";
}
.fa-step-forward:before {
  content: "\f051";
}
.fa-eject:before {
  content: "\f052";
}
.fa-chevron-left:before {
  content: "\f053";
}
.fa-chevron-right:before {
  content: "\f054";
}
.fa-plus-circle:before {
  content: "\f055";
}
.fa-minus-circle:before {
  content: "\f056";
}
.fa-times-circle:before {
  content: "\f057";
}
.fa-check-circle:before {
  content: "\f058";
}
.fa-question-circle:before {
  content: "\f059";
}
.fa-info-circle:before {
  content: "\f05a";
}
.fa-crosshairs:before {
  content: "\f05b";
}
.fa-times-circle-o:before {
  content: "\f05c";
}
.fa-check-circle-o:before {
  content: "\f05d";
}
.fa-ban:before {
  content: "\f05e";
}
.fa-arrow-left:before {
  content: "\f060";
}
.fa-arrow-right:before {
  content: "\f061";
}
.fa-arrow-up:before {
  content: "\f062";
}
.fa-arrow-down:before {
  content: "\f063";
}
.fa-mail-forward:before,
.fa-share:before {
  content: "\f064";
}
.fa-expand:before {
  content: "\f065";
}
.fa-compress:before {
  content: "\f066";
}
.fa-plus:before {
  content: "\f067";
}
.fa-minus:before {
  content: "\f068";
}
.fa-asterisk:before {
  content: "\f069";
}
.fa-exclamation-circle:before {
  content: "\f06a";
}
.fa-gift:before {
  content: "\f06b";
}
.fa-leaf:before {
  content: "\f06c";
}
.fa-fire:before {
  content: "\f06d";
}
.fa-eye:before {
  content: "\f06e";
}
.fa-eye-slash:before {
  content: "\f070";
}
.fa-warning:before,
.fa-exclamation-triangle:before {
  content: "\f071";
}
.fa-plane:before {
  content: "\f072";
}
.fa-calendar:before {
  content: "\f073";
}
.fa-random:before {
  content: "\f074";
}
.fa-comment:before {
  content: "\f075";
}
.fa-magnet:before {
  content: "\f076";
}
.fa-chevron-up:before {
  content: "\f077";
}
.fa-chevron-down:before {
  content: "\f078";
}
.fa-retweet:before {
  content: "\f079";
}
.fa-shopping-cart:before {
  content: "\f07a";
}
.fa-folder:before {
  content: "\f07b";
}
.fa-folder-open:before {
  content: "\f07c";
}
.fa-arrows-v:before {
  content: "\f07d";
}
.fa-arrows-h:before {
  content: "\f07e";
}
.fa-bar-chart-o:before,
.fa-bar-chart:before {
  content: "\f080";
}
.fa-twitter-square:before {
  content: "\f081";
}
.fa-facebook-square:before {
  content: "\f082";
}
.fa-camera-retro:before {
  content: "\f083";
}
.fa-key:before {
  content: "\f084";
}
.fa-gears:before,
.fa-cogs:before {
  content: "\f085";
}
.fa-comments:before {
  content: "\f086";
}
.fa-thumbs-o-up:before {
  content: "\f087";
}
.fa-thumbs-o-down:before {
  content: "\f088";
}
.fa-star-half:before {
  content: "\f089";
}
.fa-heart-o:before {
  content: "\f08a";
}
.fa-sign-out:before {
  content: "\f08b";
}
.fa-linkedin-square:before {
  content: "\f08c";
}
.fa-thumb-tack:before {
  content: "\f08d";
}
.fa-external-link:before {
  content: "\f08e";
}
.fa-sign-in:before {
  content: "\f090";
}
.fa-trophy:before {
  content: "\f091";
}
.fa-github-square:before {
  content: "\f092";
}
.fa-upload:before {
  content: "\f093";
}
.fa-lemon-o:before {
  content: "\f094";
}
.fa-phone:before {
  content: "\f095";
}
.fa-square-o:before {
  content: "\f096";
}
.fa-bookmark-o:before {
  content: "\f097";
}
.fa-phone-square:before {
  content: "\f098";
}
.fa-twitter:before {
  content: "\f099";
}
.fa-facebook-f:before,
.fa-facebook:before {
  content: "\f09a";
}
.fa-github:before {
  content: "\f09b";
}
.fa-unlock:before {
  content: "\f09c";
}
.fa-credit-card:before {
  content: "\f09d";
}
.fa-feed:before,
.fa-rss:before {
  content: "\f09e";
}
.fa-hdd-o:before {
  content: "\f0a0";
}
.fa-bullhorn:before {
  content: "\f0a1";
}
.fa-bell:before {
  content: "\f0f3";
}
.fa-certificate:before {
  content: "\f0a3";
}
.fa-hand-o-right:before {
  content: "\f0a4";
}
.fa-hand-o-left:before {
  content: "\f0a5";
}
.fa-hand-o-up:before {
  content: "\f0a6";
}
.fa-hand-o-down:before {
  content: "\f0a7";
}
.fa-arrow-circle-left:before {
  content: "\f0a8";
}
.fa-arrow-circle-right:before {
  content: "\f0a9";
}
.fa-arrow-circle-up:before {
  content: "\f0aa";
}
.fa-arrow-circle-down:before {
  content: "\f0ab";
}
.fa-globe:before {
  content: "\f0ac";
}
.fa-wrench:before {
  content: "\f0ad";
}
.fa-tasks:before {
  content: "\f0ae";
}
.fa-filter:before {
  content: "\f0b0";
}
.fa-briefcase:before {
  content: "\f0b1";
}
.fa-arrows-alt:before {
  content: "\f0b2";
}
.fa-group:before,
.fa-users:before {
  content: "\f0c0";
}
.fa-chain:before,
.fa-link:before {
  content: "\f0c1";
}
.fa-cloud:before {
  content: "\f0c2";
}
.fa-flask:before {
  content: "\f0c3";
}
.fa-cut:before,
.fa-scissors:before {
  content: "\f0c4";
}
.fa-copy:before,
.fa-files-o:before {
  content: "\f0c5";
}
.fa-paperclip:before {
  content: "\f0c6";
}
.fa-save:before,
.fa-floppy-o:before {
  content: "\f0c7";
}
.fa-square:before {
  content: "\f0c8";
}
.fa-navicon:before,
.fa-reorder:before,
.fa-bars:before {
  content: "\f0c9";
}
.fa-list-ul:before {
  content: "\f0ca";
}
.fa-list-ol:before {
  content: "\f0cb";
}
.fa-strikethrough:before {
  content: "\f0cc";
}
.fa-underline:before {
  content: "\f0cd";
}
.fa-table:before {
  content: "\f0ce";
}
.fa-magic:before {
  content: "\f0d0";
}
.fa-truck:before {
  content: "\f0d1";
}
.fa-pinterest:before {
  content: "\f0d2";
}
.fa-pinterest-square:before {
  content: "\f0d3";
}
.fa-google-plus-square:before {
  content: "\f0d4";
}
.fa-google-plus:before {
  content: "\f0d5";
}
.fa-money:before {
  content: "\f0d6";
}
.fa-caret-down:before {
  content: "\f0d7";
}
.fa-caret-up:before {
  content: "\f0d8";
}
.fa-caret-left:before {
  content: "\f0d9";
}
.fa-caret-right:before {
  content: "\f0da";
}
.fa-columns:before {
  content: "\f0db";
}
.fa-unsorted:before,
.fa-sort:before {
  content: "\f0dc";
}
.fa-sort-down:before,
.fa-sort-desc:before {
  content: "\f0dd";
}
.fa-sort-up:before,
.fa-sort-asc:before {
  content: "\f0de";
}
.fa-envelope:before {
  content: "\f0e0";
}
.fa-linkedin:before {
  content: "\f0e1";
}
.fa-rotate-left:before,
.fa-undo:before {
  content: "\f0e2";
}
.fa-legal:before,
.fa-gavel:before {
  content: "\f0e3";
}
.fa-dashboard:before,
.fa-tachometer:before {
  content: "\f0e4";
}
.fa-comment-o:before {
  content: "\f0e5";
}
.fa-comments-o:before {
  content: "\f0e6";
}
.fa-flash:before,
.fa-bolt:before {
  content: "\f0e7";
}
.fa-sitemap:before {
  content: "\f0e8";
}
.fa-umbrella:before {
  content: "\f0e9";
}
.fa-paste:before,
.fa-clipboard:before {
  content: "\f0ea";
}
.fa-lightbulb-o:before {
  content: "\f0eb";
}
.fa-exchange:before {
  content: "\f0ec";
}
.fa-cloud-download:before {
  content: "\f0ed";
}
.fa-cloud-upload:before {
  content: "\f0ee";
}
.fa-user-md:before {
  content: "\f0f0";
}
.fa-stethoscope:before {
  content: "\f0f1";
}
.fa-suitcase:before {
  content: "\f0f2";
}
.fa-bell-o:before {
  content: "\f0a2";
}
.fa-coffee:before {
  content: "\f0f4";
}
.fa-cutlery:before {
  content: "\f0f5";
}
.fa-file-text-o:before {
  content: "\f0f6";
}
.fa-building-o:before {
  content: "\f0f7";
}
.fa-hospital-o:before {
  content: "\f0f8";
}
.fa-ambulance:before {
  content: "\f0f9";
}
.fa-medkit:before {
  content: "\f0fa";
}
.fa-fighter-jet:before {
  content: "\f0fb";
}
.fa-beer:before {
  content: "\f0fc";
}
.fa-h-square:before {
  content: "\f0fd";
}
.fa-plus-square:before {
  content: "\f0fe";
}
.fa-angle-double-left:before {
  content: "\f100";
}
.fa-angle-double-right:before {
  content: "\f101";
}
.fa-angle-double-up:before {
  content: "\f102";
}
.fa-angle-double-down:before {
  content: "\f103";
}
.fa-angle-left:before {
  content: "\f104";
}
.fa-angle-right:before {
  content: "\f105";
}
.fa-angle-up:before {
  content: "\f106";
}
.fa-angle-down:before {
  content: "\f107";
}
.fa-desktop:before {
  content: "\f108";
}
.fa-laptop:before {
  content: "\f109";
}
.fa-tablet:before {
  content: "\f10a";
}
.fa-mobile-phone:before,
.fa-mobile:before {
  content: "\f10b";
}
.fa-circle-o:before {
  content: "\f10c";
}
.fa-quote-left:before {
  content: "\f10d";
}
.fa-quote-right:before {
  content: "\f10e";
}
.fa-spinner:before {
  content: "\f110";
}
.fa-circle:before {
  content: "\f111";
}
.fa-mail-reply:before,
.fa-reply:before {
  content: "\f112";
}
.fa-github-alt:before {
  content: "\f113";
}
.fa-folder-o:before {
  content: "\f114";
}
.fa-folder-open-o:before {
  content: "\f115";
}
.fa-smile-o:before {
  content: "\f118";
}
.fa-frown-o:before {
  content: "\f119";
}
.fa-meh-o:before {
  content: "\f11a";
}
.fa-gamepad:before {
  content: "\f11b";
}
.fa-keyboard-o:before {
  content: "\f11c";
}
.fa-flag-o:before {
  content: "\f11d";
}
.fa-flag-checkered:before {
  content: "\f11e";
}
.fa-terminal:before {
  content: "\f120";
}
.fa-code:before {
  content: "\f121";
}
.fa-mail-reply-all:before,
.fa-reply-all:before {
  content: "\f122";
}
.fa-star-half-empty:before,
.fa-star-half-full:before,
.fa-star-half-o:before {
  content: "\f123";
}
.fa-location-arrow:before {
  content: "\f124";
}
.fa-crop:before {
  content: "\f125";
}
.fa-code-fork:before {
  content: "\f126";
}
.fa-unlink:before,
.fa-chain-broken:before {
  content: "\f127";
}
.fa-question:before {
  content: "\f128";
}
.fa-info:before {
  content: "\f129";
}
.fa-exclamation:before {
  content: "\f12a";
}
.fa-superscript:before {
  content: "\f12b";
}
.fa-subscript:before {
  content: "\f12c";
}
.fa-eraser:before {
  content: "\f12d";
}
.fa-puzzle-piece:before {
  content: "\f12e";
}
.fa-microphone:before {
  content: "\f130";
}
.fa-microphone-slash:before {
  content: "\f131";
}
.fa-shield:before {
  content: "\f132";
}
.fa-calendar-o:before {
  content: "\f133";
}
.fa-fire-extinguisher:before {
  content: "\f134";
}
.fa-rocket:before {
  content: "\f135";
}
.fa-maxcdn:before {
  content: "\f136";
}
.fa-chevron-circle-left:before {
  content: "\f137";
}
.fa-chevron-circle-right:before {
  content: "\f138";
}
.fa-chevron-circle-up:before {
  content: "\f139";
}
.fa-chevron-circle-down:before {
  content: "\f13a";
}
.fa-html5:before {
  content: "\f13b";
}
.fa-css3:before {
  content: "\f13c";
}
.fa-anchor:before {
  content: "\f13d";
}
.fa-unlock-alt:before {
  content: "\f13e";
}
.fa-bullseye:before {
  content: "\f140";
}
.fa-ellipsis-h:before {
  content: "\f141";
}
.fa-ellipsis-v:before {
  content: "\f142";
}
.fa-rss-square:before {
  content: "\f143";
}
.fa-play-circle:before {
  content: "\f144";
}
.fa-ticket:before {
  content: "\f145";
}
.fa-minus-square:before {
  content: "\f146";
}
.fa-minus-square-o:before {
  content: "\f147";
}
.fa-level-up:before {
  content: "\f148";
}
.fa-level-down:before {
  content: "\f149";
}
.fa-check-square:before {
  content: "\f14a";
}
.fa-pencil-square:before {
  content: "\f14b";
}
.fa-external-link-square:before {
  content: "\f14c";
}
.fa-share-square:before {
  content: "\f14d";
}
.fa-compass:before {
  content: "\f14e";
}
.fa-toggle-down:before,
.fa-caret-square-o-down:before {
  content: "\f150";
}
.fa-toggle-up:before,
.fa-caret-square-o-up:before {
  content: "\f151";
}
.fa-toggle-right:before,
.fa-caret-square-o-right:before {
  content: "\f152";
}
.fa-euro:before,
.fa-eur:before {
  content: "\f153";
}
.fa-gbp:before {
  content: "\f154";
}
.fa-dollar:before,
.fa-usd:before {
  content: "\f155";
}
.fa-rupee:before,
.fa-inr:before {
  content: "\f156";
}
.fa-cny:before,
.fa-rmb:before,
.fa-yen:before,
.fa-jpy:before {
  content: "\f157";
}
.fa-ruble:before,
.fa-rouble:before,
.fa-rub:before {
  content: "\f158";
}
.fa-won:before,
.fa-krw:before {
  content: "\f159";
}
.fa-bitcoin:before,
.fa-btc:before {
  content: "\f15a";
}
.fa-file:before {
  content: "\f15b";
}
.fa-file-text:before {
  content: "\f15c";
}
.fa-sort-alpha-asc:before {
  content: "\f15d";
}
.fa-sort-alpha-desc:before {
  content: "\f15e";
}
.fa-sort-amount-asc:before {
  content: "\f160";
}
.fa-sort-amount-desc:before {
  content: "\f161";
}
.fa-sort-numeric-asc:before {
  content: "\f162";
}
.fa-sort-numeric-desc:before {
  content: "\f163";
}
.fa-thumbs-up:before {
  content: "\f164";
}
.fa-thumbs-down:before {
  content: "\f165";
}
.fa-youtube-square:before {
  content: "\f166";
}
.fa-youtube:before {
  content: "\f167";
}
.fa-xing:before {
  content: "\f168";
}
.fa-xing-square:before {
  content: "\f169";
}
.fa-youtube-play:before {
  content: "\f16a";
}
.fa-dropbox:before {
  content: "\f16b";
}
.fa-stack-overflow:before {
  content: "\f16c";
}
.fa-instagram:before {
  content: "\f16d";
}
.fa-flickr:before {
  content: "\f16e";
}
.fa-adn:before {
  content: "\f170";
}
.fa-bitbucket:before {
  content: "\f171";
}
.fa-bitbucket-square:before {
  content: "\f172";
}
.fa-tumblr:before {
  content: "\f173";
}
.fa-tumblr-square:before {
  content: "\f174";
}
.fa-long-arrow-down:before {
  content: "\f175";
}
.fa-long-arrow-up:before {
  content: "\f176";
}
.fa-long-arrow-left:before {
  content: "\f177";
}
.fa-long-arrow-right:before {
  content: "\f178";
}
.fa-apple:before {
  content: "\f179";
}
.fa-windows:before {
  content: "\f17a";
}
.fa-android:before {
  content: "\f17b";
}
.fa-linux:before {
  content: "\f17c";
}
.fa-dribbble:before {
  content: "\f17d";
}
.fa-skype:before {
  content: "\f17e";
}
.fa-foursquare:before {
  content: "\f180";
}
.fa-trello:before {
  content: "\f181";
}
.fa-female:before {
  content: "\f182";
}
.fa-male:before {
  content: "\f183";
}
.fa-gittip:before,
.fa-gratipay:before {
  content: "\f184";
}
.fa-sun-o:before {
  content: "\f185";
}
.fa-moon-o:before {
  content: "\f186";
}
.fa-archive:before {
  content: "\f187";
}
.fa-bug:before {
  content: "\f188";
}
.fa-vk:before {
  content: "\f189";
}
.fa-weibo:before {
  content: "\f18a";
}
.fa-renren:before {
  content: "\f18b";
}
.fa-pagelines:before {
  content: "\f18c";
}
.fa-stack-exchange:before {
  content: "\f18d";
}
.fa-arrow-circle-o-right:before {
  content: "\f18e";
}
.fa-arrow-circle-o-left:before {
  content: "\f190";
}
.fa-toggle-left:before,
.fa-caret-square-o-left:before {
  content: "\f191";
}
.fa-dot-circle-o:before {
  content: "\f192";
}
.fa-wheelchair:before {
  content: "\f193";
}
.fa-vimeo-square:before {
  content: "\f194";
}
.fa-turkish-lira:before,
.fa-try:before {
  content: "\f195";
}
.fa-plus-square-o:before {
  content: "\f196";
}
.fa-space-shuttle:before {
  content: "\f197";
}
.fa-slack:before {
  content: "\f198";
}
.fa-envelope-square:before {
  content: "\f199";
}
.fa-wordpress:before {
  content: "\f19a";
}
.fa-openid:before {
  content: "\f19b";
}
.fa-institution:before,
.fa-bank:before,
.fa-university:before {
  content: "\f19c";
}
.fa-mortar-board:before,
.fa-graduation-cap:before {
  content: "\f19d";
}
.fa-yahoo:before {
  content: "\f19e";
}
.fa-google:before {
  content: "\f1a0";
}
.fa-reddit:before {
  content: "\f1a1";
}
.fa-reddit-square:before {
  content: "\f1a2";
}
.fa-stumbleupon-circle:before {
  content: "\f1a3";
}
.fa-stumbleupon:before {
  content: "\f1a4";
}
.fa-delicious:before {
  content: "\f1a5";
}
.fa-digg:before {
  content: "\f1a6";
}
.fa-pied-piper-pp:before {
  content: "\f1a7";
}
.fa-pied-piper-alt:before {
  content: "\f1a8";
}
.fa-drupal:before {
  content: "\f1a9";
}
.fa-joomla:before {
  content: "\f1aa";
}
.fa-language:before {
  content: "\f1ab";
}
.fa-fax:before {
  content: "\f1ac";
}
.fa-building:before {
  content: "\f1ad";
}
.fa-child:before {
  content: "\f1ae";
}
.fa-paw:before {
  content: "\f1b0";
}
.fa-spoon:before {
  content: "\f1b1";
}
.fa-cube:before {
  content: "\f1b2";
}
.fa-cubes:before {
  content: "\f1b3";
}
.fa-behance:before {
  content: "\f1b4";
}
.fa-behance-square:before {
  content: "\f1b5";
}
.fa-steam:before {
  content: "\f1b6";
}
.fa-steam-square:before {
  content: "\f1b7";
}
.fa-recycle:before {
  content: "\f1b8";
}
.fa-automobile:before,
.fa-car:before {
  content: "\f1b9";
}
.fa-cab:before,
.fa-taxi:before {
  content: "\f1ba";
}
.fa-tree:before {
  content: "\f1bb";
}
.fa-spotify:before {
  content: "\f1bc";
}
.fa-deviantart:before {
  content: "\f1bd";
}
.fa-soundcloud:before {
  content: "\f1be";
}
.fa-database:before {
  content: "\f1c0";
}
.fa-file-pdf-o:before {
  content: "\f1c1";
}
.fa-file-word-o:before {
  content: "\f1c2";
}
.fa-file-excel-o:before {
  content: "\f1c3";
}
.fa-file-powerpoint-o:before {
  content: "\f1c4";
}
.fa-file-photo-o:before,
.fa-file-picture-o:before,
.fa-file-image-o:before {
  content: "\f1c5";
}
.fa-file-zip-o:before,
.fa-file-archive-o:before {
  content: "\f1c6";
}
.fa-file-sound-o:before,
.fa-file-audio-o:before {
  content: "\f1c7";
}
.fa-file-movie-o:before,
.fa-file-video-o:before {
  content: "\f1c8";
}
.fa-file-code-o:before {
  content: "\f1c9";
}
.fa-vine:before {
  content: "\f1ca";
}
.fa-codepen:before {
  content: "\f1cb";
}
.fa-jsfiddle:before {
  content: "\f1cc";
}
.fa-life-bouy:before,
.fa-life-buoy:before,
.fa-life-saver:before,
.fa-support:before,
.fa-life-ring:before {
  content: "\f1cd";
}
.fa-circle-o-notch:before {
  content: "\f1ce";
}
.fa-ra:before,
.fa-resistance:before,
.fa-rebel:before {
  content: "\f1d0";
}
.fa-ge:before,
.fa-empire:before {
  content: "\f1d1";
}
.fa-git-square:before {
  content: "\f1d2";
}
.fa-git:before {
  content: "\f1d3";
}
.fa-y-combinator-square:before,
.fa-yc-square:before,
.fa-hacker-news:before {
  content: "\f1d4";
}
.fa-tencent-weibo:before {
  content: "\f1d5";
}
.fa-qq:before {
  content: "\f1d6";
}
.fa-wechat:before,
.fa-weixin:before {
  content: "\f1d7";
}
.fa-send:before,
.fa-paper-plane:before {
  content: "\f1d8";
}
.fa-send-o:before,
.fa-paper-plane-o:before {
  content: "\f1d9";
}
.fa-history:before {
  content: "\f1da";
}
.fa-circle-thin:before {
  content: "\f1db";
}
.fa-header:before {
  content: "\f1dc";
}
.fa-paragraph:before {
  content: "\f1dd";
}
.fa-sliders:before {
  content: "\f1de";
}
.fa-share-alt:before {
  content: "\f1e0";
}
.fa-share-alt-square:before {
  content: "\f1e1";
}
.fa-bomb:before {
  content: "\f1e2";
}
.fa-soccer-ball-o:before,
.fa-futbol-o:before {
  content: "\f1e3";
}
.fa-tty:before {
  content: "\f1e4";
}
.fa-binoculars:before {
  content: "\f1e5";
}
.fa-plug:before {
  content: "\f1e6";
}
.fa-slideshare:before {
  content: "\f1e7";
}
.fa-twitch:before {
  content: "\f1e8";
}
.fa-yelp:before {
  content: "\f1e9";
}
.fa-newspaper-o:before {
  content: "\f1ea";
}
.fa-wifi:before {
  content: "\f1eb";
}
.fa-calculator:before {
  content: "\f1ec";
}
.fa-paypal:before {
  content: "\f1ed";
}
.fa-google-wallet:before {
  content: "\f1ee";
}
.fa-cc-visa:before {
  content: "\f1f0";
}
.fa-cc-mastercard:before {
  content: "\f1f1";
}
.fa-cc-discover:before {
  content: "\f1f2";
}
.fa-cc-amex:before {
  content: "\f1f3";
}
.fa-cc-paypal:before {
  content: "\f1f4";
}
.fa-cc-stripe:before {
  content: "\f1f5";
}
.fa-bell-slash:before {
  content: "\f1f6";
}
.fa-bell-slash-o:before {
  content: "\f1f7";
}
.fa-trash:before {
  content: "\f1f8";
}
.fa-copyright:before {
  content: "\f1f9";
}
.fa-at:before {
  content: "\f1fa";
}
.fa-eyedropper:before {
  content: "\f1fb";
}
.fa-paint-brush:before {
  content: "\f1fc";
}
.fa-birthday-cake:before {
  content: "\f1fd";
}
.fa-area-chart:before {
  content: "\f1fe";
}
.fa-pie-chart:before {
  content: "\f200";
}
.fa-line-chart:before {
  content: "\f201";
}
.fa-lastfm:before {
  content: "\f202";
}
.fa-lastfm-square:before {
  content: "\f203";
}
.fa-toggle-off:before {
  content: "\f204";
}
.fa-toggle-on:before {
  content: "\f205";
}
.fa-bicycle:before {
  content: "\f206";
}
.fa-bus:before {
  content: "\f207";
}
.fa-ioxhost:before {
  content: "\f208";
}
.fa-angellist:before {
  content: "\f209";
}
.fa-cc:before {
  content: "\f20a";
}
.fa-shekel:before,
.fa-sheqel:before,
.fa-ils:before {
  content: "\f20b";
}
.fa-meanpath:before {
  content: "\f20c";
}
.fa-buysellads:before {
  content: "\f20d";
}
.fa-connectdevelop:before {
  content: "\f20e";
}
.fa-dashcube:before {
  content: "\f210";
}
.fa-forumbee:before {
  content: "\f211";
}
.fa-leanpub:before {
  content: "\f212";
}
.fa-sellsy:before {
  content: "\f213";
}
.fa-shirtsinbulk:before {
  content: "\f214";
}
.fa-simplybuilt:before {
  content: "\f215";
}
.fa-skyatlas:before {
  content: "\f216";
}
.fa-cart-plus:before {
  content: "\f217";
}
.fa-cart-arrow-down:before {
  content: "\f218";
}
.fa-diamond:before {
  content: "\f219";
}
.fa-ship:before {
  content: "\f21a";
}
.fa-user-secret:before {
  content: "\f21b";
}
.fa-motorcycle:before {
  content: "\f21c";
}
.fa-street-view:before {
  content: "\f21d";
}
.fa-heartbeat:before {
  content: "\f21e";
}
.fa-venus:before {
  content: "\f221";
}
.fa-mars:before {
  content: "\f222";
}
.fa-mercury:before {
  content: "\f223";
}
.fa-intersex:before,
.fa-transgender:before {
  content: "\f224";
}
.fa-transgender-alt:before {
  content: "\f225";
}
.fa-venus-double:before {
  content: "\f226";
}
.fa-mars-double:before {
  content: "\f227";
}
.fa-venus-mars:before {
  content: "\f228";
}
.fa-mars-stroke:before {
  content: "\f229";
}
.fa-mars-stroke-v:before {
  content: "\f22a";
}
.fa-mars-stroke-h:before {
  content: "\f22b";
}
.fa-neuter:before {
  content: "\f22c";
}
.fa-genderless:before {
  content: "\f22d";
}
.fa-facebook-official:before {
  content: "\f230";
}
.fa-pinterest-p:before {
  content: "\f231";
}
.fa-whatsapp:before {
  content: "\f232";
}
.fa-server:before {
  content: "\f233";
}
.fa-user-plus:before {
  content: "\f234";
}
.fa-user-times:before {
  content: "\f235";
}
.fa-hotel:before,
.fa-bed:before {
  content: "\f236";
}
.fa-viacoin:before {
  content: "\f237";
}
.fa-train:before {
  content: "\f238";
}
.fa-subway:before {
  content: "\f239";
}
.fa-medium:before {
  content: "\f23a";
}
.fa-yc:before,
.fa-y-combinator:before {
  content: "\f23b";
}
.fa-optin-monster:before {
  content: "\f23c";
}
.fa-opencart:before {
  content: "\f23d";
}
.fa-expeditedssl:before {
  content: "\f23e";
}
.fa-battery-4:before,
.fa-battery:before,
.fa-battery-full:before {
  content: "\f240";
}
.fa-battery-3:before,
.fa-battery-three-quarters:before {
  content: "\f241";
}
.fa-battery-2:before,
.fa-battery-half:before {
  content: "\f242";
}
.fa-battery-1:before,
.fa-battery-quarter:before {
  content: "\f243";
}
.fa-battery-0:before,
.fa-battery-empty:before {
  content: "\f244";
}
.fa-mouse-pointer:before {
  content: "\f245";
}
.fa-i-cursor:before {
  content: "\f246";
}
.fa-object-group:before {
  content: "\f247";
}
.fa-object-ungroup:before {
  content: "\f248";
}
.fa-sticky-note:before {
  content: "\f249";
}
.fa-sticky-note-o:before {
  content: "\f24a";
}
.fa-cc-jcb:before {
  content: "\f24b";
}
.fa-cc-diners-club:before {
  content: "\f24c";
}
.fa-clone:before {
  content: "\f24d";
}
.fa-balance-scale:before {
  content: "\f24e";
}
.fa-hourglass-o:before {
  content: "\f250";
}
.fa-hourglass-1:before,
.fa-hourglass-start:before {
  content: "\f251";
}
.fa-hourglass-2:before,
.fa-hourglass-half:before {
  content: "\f252";
}
.fa-hourglass-3:before,
.fa-hourglass-end:before {
  content: "\f253";
}
.fa-hourglass:before {
  content: "\f254";
}
.fa-hand-grab-o:before,
.fa-hand-rock-o:before {
  content: "\f255";
}
.fa-hand-stop-o:before,
.fa-hand-paper-o:before {
  content: "\f256";
}
.fa-hand-scissors-o:before {
  content: "\f257";
}
.fa-hand-lizard-o:before {
  content: "\f258";
}
.fa-hand-spock-o:before {
  content: "\f259";
}
.fa-hand-pointer-o:before {
  content: "\f25a";
}
.fa-hand-peace-o:before {
  content: "\f25b";
}
.fa-trademark:before {
  content: "\f25c";
}
.fa-registered:before {
  content: "\f25d";
}
.fa-creative-commons:before {
  content: "\f25e";
}
.fa-gg:before {
  content: "\f260";
}
.fa-gg-circle:before {
  content: "\f261";
}
.fa-tripadvisor:before {
  content: "\f262";
}
.fa-odnoklassniki:before {
  content: "\f263";
}
.fa-odnoklassniki-square:before {
  content: "\f264";
}
.fa-get-pocket:before {
  content: "\f265";
}
.fa-wikipedia-w:before {
  content: "\f266";
}
.fa-safari:before {
  content: "\f267";
}
.fa-chrome:before {
  content: "\f268";
}
.fa-firefox:before {
  content: "\f269";
}
.fa-opera:before {
  content: "\f26a";
}
.fa-internet-explorer:before {
  content: "\f26b";
}
.fa-tv:before,
.fa-television:before {
  content: "\f26c";
}
.fa-contao:before {
  content: "\f26d";
}
.fa-500px:before {
  content: "\f26e";
}
.fa-amazon:before {
  content: "\f270";
}
.fa-calendar-plus-o:before {
  content: "\f271";
}
.fa-calendar-minus-o:before {
  content: "\f272";
}
.fa-calendar-times-o:before {
  content: "\f273";
}
.fa-calendar-check-o:before {
  content: "\f274";
}
.fa-industry:before {
  content: "\f275";
}
.fa-map-pin:before {
  content: "\f276";
}
.fa-map-signs:before {
  content: "\f277";
}
.fa-map-o:before {
  content: "\f278";
}
.fa-map:before {
  content: "\f279";
}
.fa-commenting:before {
  content: "\f27a";
}
.fa-commenting-o:before {
  content: "\f27b";
}
.fa-houzz:before {
  content: "\f27c";
}
.fa-vimeo:before {
  content: "\f27d";
}
.fa-black-tie:before {
  content: "\f27e";
}
.fa-fonticons:before {
  content: "\f280";
}
.fa-reddit-alien:before {
  content: "\f281";
}
.fa-edge:before {
  content: "\f282";
}
.fa-credit-card-alt:before {
  content: "\f283";
}
.fa-codiepie:before {
  content: "\f284";
}
.fa-modx:before {
  content: "\f285";
}
.fa-fort-awesome:before {
  content: "\f286";
}
.fa-usb:before {
  content: "\f287";
}
.fa-product-hunt:before {
  content: "\f288";
}
.fa-mixcloud:before {
  content: "\f289";
}
.fa-scribd:before {
  content: "\f28a";
}
.fa-pause-circle:before {
  content: "\f28b";
}
.fa-pause-circle-o:before {
  content: "\f28c";
}
.fa-stop-circle:before {
  content: "\f28d";
}
.fa-stop-circle-o:before {
  content: "\f28e";
}
.fa-shopping-bag:before {
  content: "\f290";
}
.fa-shopping-basket:before {
  content: "\f291";
}
.fa-hashtag:before {
  content: "\f292";
}
.fa-bluetooth:before {
  content: "\f293";
}
.fa-bluetooth-b:before {
  content: "\f294";
}
.fa-percent:before {
  content: "\f295";
}
.fa-gitlab:before {
  content: "\f296";
}
.fa-wpbeginner:before {
  content: "\f297";
}
.fa-wpforms:before {
  content: "\f298";
}
.fa-envira:before {
  content: "\f299";
}
.fa-universal-access:before {
  content: "\f29a";
}
.fa-wheelchair-alt:before {
  content: "\f29b";
}
.fa-question-circle-o:before {
  content: "\f29c";
}
.fa-blind:before {
  content: "\f29d";
}
.fa-audio-description:before {
  content: "\f29e";
}
.fa-volume-control-phone:before {
  content: "\f2a0";
}
.fa-braille:before {
  content: "\f2a1";
}
.fa-assistive-listening-systems:before {
  content: "\f2a2";
}
.fa-asl-interpreting:before,
.fa-american-sign-language-interpreting:before {
  content: "\f2a3";
}
.fa-deafness:before,
.fa-hard-of-hearing:before,
.fa-deaf:before {
  content: "\f2a4";
}
.fa-glide:before {
  content: "\f2a5";
}
.fa-glide-g:before {
  content: "\f2a6";
}
.fa-signing:before,
.fa-sign-language:before {
  content: "\f2a7";
}
.fa-low-vision:before {
  content: "\f2a8";
}
.fa-viadeo:before {
  content: "\f2a9";
}
.fa-viadeo-square:before {
  content: "\f2aa";
}
.fa-snapchat:before {
  content: "\f2ab";
}
.fa-snapchat-ghost:before {
  content: "\f2ac";
}
.fa-snapchat-square:before {
  content: "\f2ad";
}
.fa-pied-piper:before {
  content: "\f2ae";
}
.fa-first-order:before {
  content: "\f2b0";
}
.fa-yoast:before {
  content: "\f2b1";
}
.fa-themeisle:before {
  content: "\f2b2";
}
.fa-google-plus-circle:before,
.fa-google-plus-official:before {
  content: "\f2b3";
}
.fa-fa:before,
.fa-font-awesome:before {
  content: "\f2b4";
}
.fa-handshake-o:before {
  content: "\f2b5";
}
.fa-envelope-open:before {
  content: "\f2b6";
}
.fa-envelope-open-o:before {
  content: "\f2b7";
}
.fa-linode:before {
  content: "\f2b8";
}
.fa-address-book:before {
  content: "\f2b9";
}
.fa-address-book-o:before {
  content: "\f2ba";
}
.fa-vcard:before,
.fa-address-card:before {
  content: "\f2bb";
}
.fa-vcard-o:before,
.fa-address-card-o:before {
  content: "\f2bc";
}
.fa-user-circle:before {
  content: "\f2bd";
}
.fa-user-circle-o:before {
  content: "\f2be";
}
.fa-user-o:before {
  content: "\f2c0";
}
.fa-id-badge:before {
  content: "\f2c1";
}
.fa-drivers-license:before,
.fa-id-card:before {
  content: "\f2c2";
}
.fa-drivers-license-o:before,
.fa-id-card-o:before {
  content: "\f2c3";
}
.fa-quora:before {
  content: "\f2c4";
}
.fa-free-code-camp:before {
  content: "\f2c5";
}
.fa-telegram:before {
  content: "\f2c6";
}
.fa-thermometer-4:before,
.fa-thermometer:before,
.fa-thermometer-full:before {
  content: "\f2c7";
}
.fa-thermometer-3:before,
.fa-thermometer-three-quarters:before {
  content: "\f2c8";
}
.fa-thermometer-2:before,
.fa-thermometer-half:before {
  content: "\f2c9";
}
.fa-thermometer-1:before,
.fa-thermometer-quarter:before {
  content: "\f2ca";
}
.fa-thermometer-0:before,
.fa-thermometer-empty:before {
  content: "\f2cb";
}
.fa-shower:before {
  content: "\f2cc";
}
.fa-bathtub:before,
.fa-s15:before,
.fa-bath:before {
  content: "\f2cd";
}
.fa-podcast:before {
  content: "\f2ce";
}
.fa-window-maximize:before {
  content: "\f2d0";
}
.fa-window-minimize:before {
  content: "\f2d1";
}
.fa-window-restore:before {
  content: "\f2d2";
}
.fa-times-rectangle:before,
.fa-window-close:before {
  content: "\f2d3";
}
.fa-times-rectangle-o:before,
.fa-window-close-o:before {
  content: "\f2d4";
}
.fa-bandcamp:before {
  content: "\f2d5";
}
.fa-grav:before {
  content: "\f2d6";
}
.fa-etsy:before {
  content: "\f2d7";
}
.fa-imdb:before {
  content: "\f2d8";
}
.fa-ravelry:before {
  content: "\f2d9";
}
.fa-eercast:before {
  content: "\f2da";
}
.fa-microchip:before {
  content: "\f2db";
}
.fa-snowflake-o:before {
  content: "\f2dc";
}
.fa-superpowers:before {
  content: "\f2dd";
}
.fa-wpexplorer:before {
  content: "\f2de";
}
.fa-meetup:before {
  content: "\f2e0";
}
.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
/*!
*
* IPython base
*
*/
.modal.fade .modal-dialog {
  -webkit-transform: translate(0, 0);
  -ms-transform: translate(0, 0);
  -o-transform: translate(0, 0);
  transform: translate(0, 0);
}
code {
  color: #000;
}
pre {
  font-size: inherit;
  line-height: inherit;
}
label {
  font-weight: normal;
}
/* Make the page background atleast 100% the height of the view port */
/* Make the page itself atleast 70% the height of the view port */
.border-box-sizing {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
.corner-all {
  border-radius: 2px;
}
.no-padding {
  padding: 0px;
}
/* Flexible box model classes */
/* Taken from Alex Russell http://infrequently.org/2009/08/css-3-progress/ */
/* This file is a compatability layer.  It allows the usage of flexible box 
model layouts accross multiple browsers, including older browsers.  The newest,
universal implementation of the flexible box model is used when available (see
`Modern browsers` comments below).  Browsers that are known to implement this 
new spec completely include:

    Firefox 28.0+
    Chrome 29.0+
    Internet Explorer 11+ 
    Opera 17.0+

Browsers not listed, including Safari, are supported via the styling under the
`Old browsers` comments below.
*/
.hbox {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
.hbox > * {
  /* Old browsers */
  -webkit-box-flex: 0;
  -moz-box-flex: 0;
  box-flex: 0;
  /* Modern browsers */
  flex: none;
}
.vbox {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
.vbox > * {
  /* Old browsers */
  -webkit-box-flex: 0;
  -moz-box-flex: 0;
  box-flex: 0;
  /* Modern browsers */
  flex: none;
}
.hbox.reverse,
.vbox.reverse,
.reverse {
  /* Old browsers */
  -webkit-box-direction: reverse;
  -moz-box-direction: reverse;
  box-direction: reverse;
  /* Modern browsers */
  flex-direction: row-reverse;
}
.hbox.box-flex0,
.vbox.box-flex0,
.box-flex0 {
  /* Old browsers */
  -webkit-box-flex: 0;
  -moz-box-flex: 0;
  box-flex: 0;
  /* Modern browsers */
  flex: none;
  width: auto;
}
.hbox.box-flex1,
.vbox.box-flex1,
.box-flex1 {
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
.hbox.box-flex,
.vbox.box-flex,
.box-flex {
  /* Old browsers */
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
.hbox.box-flex2,
.vbox.box-flex2,
.box-flex2 {
  /* Old browsers */
  -webkit-box-flex: 2;
  -moz-box-flex: 2;
  box-flex: 2;
  /* Modern browsers */
  flex: 2;
}
.box-group1 {
  /*  Deprecated */
  -webkit-box-flex-group: 1;
  -moz-box-flex-group: 1;
  box-flex-group: 1;
}
.box-group2 {
  /* Deprecated */
  -webkit-box-flex-group: 2;
  -moz-box-flex-group: 2;
  box-flex-group: 2;
}
.hbox.start,
.vbox.start,
.start {
  /* Old browsers */
  -webkit-box-pack: start;
  -moz-box-pack: start;
  box-pack: start;
  /* Modern browsers */
  justify-content: flex-start;
}
.hbox.end,
.vbox.end,
.end {
  /* Old browsers */
  -webkit-box-pack: end;
  -moz-box-pack: end;
  box-pack: end;
  /* Modern browsers */
  justify-content: flex-end;
}
.hbox.center,
.vbox.center,
.center {
  /* Old browsers */
  -webkit-box-pack: center;
  -moz-box-pack: center;
  box-pack: center;
  /* Modern browsers */
  justify-content: center;
}
.hbox.baseline,
.vbox.baseline,
.baseline {
  /* Old browsers */
  -webkit-box-pack: baseline;
  -moz-box-pack: baseline;
  box-pack: baseline;
  /* Modern browsers */
  justify-content: baseline;
}
.hbox.stretch,
.vbox.stretch,
.stretch {
  /* Old browsers */
  -webkit-box-pack: stretch;
  -moz-box-pack: stretch;
  box-pack: stretch;
  /* Modern browsers */
  justify-content: stretch;
}
.hbox.align-start,
.vbox.align-start,
.align-start {
  /* Old browsers */
  -webkit-box-align: start;
  -moz-box-align: start;
  box-align: start;
  /* Modern browsers */
  align-items: flex-start;
}
.hbox.align-end,
.vbox.align-end,
.align-end {
  /* Old browsers */
  -webkit-box-align: end;
  -moz-box-align: end;
  box-align: end;
  /* Modern browsers */
  align-items: flex-end;
}
.hbox.align-center,
.vbox.align-center,
.align-center {
  /* Old browsers */
  -webkit-box-align: center;
  -moz-box-align: center;
  box-align: center;
  /* Modern browsers */
  align-items: center;
}
.hbox.align-baseline,
.vbox.align-baseline,
.align-baseline {
  /* Old browsers */
  -webkit-box-align: baseline;
  -moz-box-align: baseline;
  box-align: baseline;
  /* Modern browsers */
  align-items: baseline;
}
.hbox.align-stretch,
.vbox.align-stretch,
.align-stretch {
  /* Old browsers */
  -webkit-box-align: stretch;
  -moz-box-align: stretch;
  box-align: stretch;
  /* Modern browsers */
  align-items: stretch;
}
div.error {
  margin: 2em;
  text-align: center;
}
div.error > h1 {
  font-size: 500%;
  line-height: normal;
}
div.error > p {
  font-size: 200%;
  line-height: normal;
}
div.traceback-wrapper {
  text-align: left;
  max-width: 800px;
  margin: auto;
}
div.traceback-wrapper pre.traceback {
  max-height: 600px;
  overflow: auto;
}
/**
 * Primary styles
 *
 * Author: Jupyter Development Team
 */
body {
  background-color: #fff;
  /* This makes sure that the body covers the entire window and needs to
       be in a different element than the display: box in wrapper below */
  position: absolute;
  left: 0px;
  right: 0px;
  top: 0px;
  bottom: 0px;
  overflow: visible;
}
body > #header {
  /* Initially hidden to prevent FLOUC */
  display: none;
  background-color: #fff;
  /* Display over codemirror */
  position: relative;
  z-index: 100;
}
body > #header #header-container {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  padding: 5px;
  padding-bottom: 5px;
  padding-top: 5px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
body > #header .header-bar {
  width: 100%;
  height: 1px;
  background: #e7e7e7;
  margin-bottom: -1px;
}
@media print {
  body > #header {
    display: none !important;
  }
}
#header-spacer {
  width: 100%;
  visibility: hidden;
}
@media print {
  #header-spacer {
    display: none;
  }
}
#ipython_notebook {
  padding-left: 0px;
  padding-top: 1px;
  padding-bottom: 1px;
}
[dir="rtl"] #ipython_notebook {
  margin-right: 10px;
  margin-left: 0;
}
[dir="rtl"] #ipython_notebook.pull-left {
  float: right !important;
  float: right;
}
.flex-spacer {
  flex: 1;
}
#noscript {
  width: auto;
  padding-top: 16px;
  padding-bottom: 16px;
  text-align: center;
  font-size: 22px;
  color: red;
  font-weight: bold;
}
#ipython_notebook img {
  height: 28px;
}
#site {
  width: 100%;
  display: none;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  overflow: auto;
}
@media print {
  #site {
    height: auto !important;
  }
}
/* Smaller buttons */
.ui-button .ui-button-text {
  padding: 0.2em 0.8em;
  font-size: 77%;
}
input.ui-button {
  padding: 0.3em 0.9em;
}
span#kernel_logo_widget {
  margin: 0 10px;
}
span#login_widget {
  float: right;
}
[dir="rtl"] span#login_widget {
  float: left;
}
span#login_widget > .button,
#logout {
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
span#login_widget > .button:focus,
#logout:focus,
span#login_widget > .button.focus,
#logout.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
span#login_widget > .button:hover,
#logout:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
span#login_widget > .button:active,
#logout:active,
span#login_widget > .button.active,
#logout.active,
.open > .dropdown-togglespan#login_widget > .button,
.open > .dropdown-toggle#logout {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
span#login_widget > .button:active:hover,
#logout:active:hover,
span#login_widget > .button.active:hover,
#logout.active:hover,
.open > .dropdown-togglespan#login_widget > .button:hover,
.open > .dropdown-toggle#logout:hover,
span#login_widget > .button:active:focus,
#logout:active:focus,
span#login_widget > .button.active:focus,
#logout.active:focus,
.open > .dropdown-togglespan#login_widget > .button:focus,
.open > .dropdown-toggle#logout:focus,
span#login_widget > .button:active.focus,
#logout:active.focus,
span#login_widget > .button.active.focus,
#logout.active.focus,
.open > .dropdown-togglespan#login_widget > .button.focus,
.open > .dropdown-toggle#logout.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
span#login_widget > .button:active,
#logout:active,
span#login_widget > .button.active,
#logout.active,
.open > .dropdown-togglespan#login_widget > .button,
.open > .dropdown-toggle#logout {
  background-image: none;
}
span#login_widget > .button.disabled:hover,
#logout.disabled:hover,
span#login_widget > .button[disabled]:hover,
#logout[disabled]:hover,
fieldset[disabled] span#login_widget > .button:hover,
fieldset[disabled] #logout:hover,
span#login_widget > .button.disabled:focus,
#logout.disabled:focus,
span#login_widget > .button[disabled]:focus,
#logout[disabled]:focus,
fieldset[disabled] span#login_widget > .button:focus,
fieldset[disabled] #logout:focus,
span#login_widget > .button.disabled.focus,
#logout.disabled.focus,
span#login_widget > .button[disabled].focus,
#logout[disabled].focus,
fieldset[disabled] span#login_widget > .button.focus,
fieldset[disabled] #logout.focus {
  background-color: #fff;
  border-color: #ccc;
}
span#login_widget > .button .badge,
#logout .badge {
  color: #fff;
  background-color: #333;
}
.nav-header {
  text-transform: none;
}
#header > span {
  margin-top: 10px;
}
.modal_stretch .modal-dialog {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  min-height: 80vh;
}
.modal_stretch .modal-dialog .modal-body {
  max-height: calc(100vh - 200px);
  overflow: auto;
  flex: 1;
}
.modal-header {
  cursor: move;
}
@media (min-width: 768px) {
  .modal .modal-dialog {
    width: 700px;
  }
}
@media (min-width: 768px) {
  select.form-control {
    margin-left: 12px;
    margin-right: 12px;
  }
}
/*!
*
* IPython auth
*
*/
.center-nav {
  display: inline-block;
  margin-bottom: -4px;
}
[dir="rtl"] .center-nav form.pull-left {
  float: right !important;
  float: right;
}
[dir="rtl"] .center-nav .navbar-text {
  float: right;
}
[dir="rtl"] .navbar-inner {
  text-align: right;
}
[dir="rtl"] div.text-left {
  text-align: right;
}
/*!
*
* IPython tree view
*
*/
/* We need an invisible input field on top of the sentense*/
/* "Drag file onto the list ..." */
.alternate_upload {
  background-color: none;
  display: inline;
}
.alternate_upload.form {
  padding: 0;
  margin: 0;
}
.alternate_upload input.fileinput {
  position: absolute;
  display: block;
  width: 100%;
  height: 100%;
  overflow: hidden;
  cursor: pointer;
  opacity: 0;
  z-index: 2;
}
.alternate_upload .btn-xs > input.fileinput {
  margin: -1px -5px;
}
.alternate_upload .btn-upload {
  position: relative;
  height: 22px;
}
::-webkit-file-upload-button {
  cursor: pointer;
}
/**
 * Primary styles
 *
 * Author: Jupyter Development Team
 */
ul#tabs {
  margin-bottom: 4px;
}
ul#tabs a {
  padding-top: 6px;
  padding-bottom: 4px;
}
[dir="rtl"] ul#tabs.nav-tabs > li {
  float: right;
}
[dir="rtl"] ul#tabs.nav.nav-tabs {
  padding-right: 0;
}
ul.breadcrumb a:focus,
ul.breadcrumb a:hover {
  text-decoration: none;
}
ul.breadcrumb i.icon-home {
  font-size: 16px;
  margin-right: 4px;
}
ul.breadcrumb span {
  color: #5e5e5e;
}
.list_toolbar {
  padding: 4px 0 4px 0;
  vertical-align: middle;
}
.list_toolbar .tree-buttons {
  padding-top: 1px;
}
[dir="rtl"] .list_toolbar .tree-buttons .pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .list_toolbar .col-sm-4,
[dir="rtl"] .list_toolbar .col-sm-8 {
  float: right;
}
.dynamic-buttons {
  padding-top: 3px;
  display: inline-block;
}
.list_toolbar [class*="span"] {
  min-height: 24px;
}
.list_header {
  font-weight: bold;
  background-color: #EEE;
}
.list_placeholder {
  font-weight: bold;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 7px;
  padding-right: 7px;
}
.list_container {
  margin-top: 4px;
  margin-bottom: 20px;
  border: 1px solid #ddd;
  border-radius: 2px;
}
.list_container > div {
  border-bottom: 1px solid #ddd;
}
.list_container > div:hover .list-item {
  background-color: red;
}
.list_container > div:last-child {
  border: none;
}
.list_item:hover .list_item {
  background-color: #ddd;
}
.list_item a {
  text-decoration: none;
}
.list_item:hover {
  background-color: #fafafa;
}
.list_header > div,
.list_item > div {
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 7px;
  padding-right: 7px;
  line-height: 22px;
}
.list_header > div input,
.list_item > div input {
  margin-right: 7px;
  margin-left: 14px;
  vertical-align: text-bottom;
  line-height: 22px;
  position: relative;
  top: -1px;
}
.list_header > div .item_link,
.list_item > div .item_link {
  margin-left: -1px;
  vertical-align: baseline;
  line-height: 22px;
}
[dir="rtl"] .list_item > div input {
  margin-right: 0;
}
.new-file input[type=checkbox] {
  visibility: hidden;
}
.item_name {
  line-height: 22px;
  height: 24px;
}
.item_icon {
  font-size: 14px;
  color: #5e5e5e;
  margin-right: 7px;
  margin-left: 7px;
  line-height: 22px;
  vertical-align: baseline;
}
.item_modified {
  margin-right: 7px;
  margin-left: 7px;
}
[dir="rtl"] .item_modified.pull-right {
  float: left !important;
  float: left;
}
.item_buttons {
  line-height: 1em;
  margin-left: -5px;
}
.item_buttons .btn,
.item_buttons .btn-group,
.item_buttons .input-group {
  float: left;
}
.item_buttons > .btn,
.item_buttons > .btn-group,
.item_buttons > .input-group {
  margin-left: 5px;
}
.item_buttons .btn {
  min-width: 13ex;
}
.item_buttons .running-indicator {
  padding-top: 4px;
  color: #5cb85c;
}
.item_buttons .kernel-name {
  padding-top: 4px;
  color: #5bc0de;
  margin-right: 7px;
  float: left;
}
[dir="rtl"] .item_buttons.pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .item_buttons .kernel-name {
  margin-left: 7px;
  float: right;
}
.toolbar_info {
  height: 24px;
  line-height: 24px;
}
.list_item input:not([type=checkbox]) {
  padding-top: 3px;
  padding-bottom: 3px;
  height: 22px;
  line-height: 14px;
  margin: 0px;
}
.highlight_text {
  color: blue;
}
#project_name {
  display: inline-block;
  padding-left: 7px;
  margin-left: -2px;
}
#project_name > .breadcrumb {
  padding: 0px;
  margin-bottom: 0px;
  background-color: transparent;
  font-weight: bold;
}
.sort_button {
  display: inline-block;
  padding-left: 7px;
}
[dir="rtl"] .sort_button.pull-right {
  float: left !important;
  float: left;
}
#tree-selector {
  padding-right: 0px;
}
#button-select-all {
  min-width: 50px;
}
[dir="rtl"] #button-select-all.btn {
  float: right ;
}
#select-all {
  margin-left: 7px;
  margin-right: 2px;
  margin-top: 2px;
  height: 16px;
}
[dir="rtl"] #select-all.pull-left {
  float: right !important;
  float: right;
}
.menu_icon {
  margin-right: 2px;
}
.tab-content .row {
  margin-left: 0px;
  margin-right: 0px;
}
.folder_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f114";
}
.folder_icon:before.fa-pull-left {
  margin-right: .3em;
}
.folder_icon:before.fa-pull-right {
  margin-left: .3em;
}
.folder_icon:before.pull-left {
  margin-right: .3em;
}
.folder_icon:before.pull-right {
  margin-left: .3em;
}
.notebook_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f02d";
  position: relative;
  top: -1px;
}
.notebook_icon:before.fa-pull-left {
  margin-right: .3em;
}
.notebook_icon:before.fa-pull-right {
  margin-left: .3em;
}
.notebook_icon:before.pull-left {
  margin-right: .3em;
}
.notebook_icon:before.pull-right {
  margin-left: .3em;
}
.running_notebook_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f02d";
  position: relative;
  top: -1px;
  color: #5cb85c;
}
.running_notebook_icon:before.fa-pull-left {
  margin-right: .3em;
}
.running_notebook_icon:before.fa-pull-right {
  margin-left: .3em;
}
.running_notebook_icon:before.pull-left {
  margin-right: .3em;
}
.running_notebook_icon:before.pull-right {
  margin-left: .3em;
}
.file_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f016";
  position: relative;
  top: -2px;
}
.file_icon:before.fa-pull-left {
  margin-right: .3em;
}
.file_icon:before.fa-pull-right {
  margin-left: .3em;
}
.file_icon:before.pull-left {
  margin-right: .3em;
}
.file_icon:before.pull-right {
  margin-left: .3em;
}
#notebook_toolbar .pull-right {
  padding-top: 0px;
  margin-right: -1px;
}
ul#new-menu {
  left: auto;
  right: 0;
}
#new-menu .dropdown-header {
  font-size: 10px;
  border-bottom: 1px solid #e5e5e5;
  padding: 0 0 3px;
  margin: -3px 20px 0;
}
.kernel-menu-icon {
  padding-right: 12px;
  width: 24px;
  content: "\f096";
}
.kernel-menu-icon:before {
  content: "\f096";
}
.kernel-menu-icon-current:before {
  content: "\f00c";
}
#tab_content {
  padding-top: 20px;
}
#running .panel-group .panel {
  margin-top: 3px;
  margin-bottom: 1em;
}
#running .panel-group .panel .panel-heading {
  background-color: #EEE;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 7px;
  padding-right: 7px;
  line-height: 22px;
}
#running .panel-group .panel .panel-heading a:focus,
#running .panel-group .panel .panel-heading a:hover {
  text-decoration: none;
}
#running .panel-group .panel .panel-body {
  padding: 0px;
}
#running .panel-group .panel .panel-body .list_container {
  margin-top: 0px;
  margin-bottom: 0px;
  border: 0px;
  border-radius: 0px;
}
#running .panel-group .panel .panel-body .list_container .list_item {
  border-bottom: 1px solid #ddd;
}
#running .panel-group .panel .panel-body .list_container .list_item:last-child {
  border-bottom: 0px;
}
.delete-button {
  display: none;
}
.duplicate-button {
  display: none;
}
.rename-button {
  display: none;
}
.move-button {
  display: none;
}
.download-button {
  display: none;
}
.shutdown-button {
  display: none;
}
.dynamic-instructions {
  display: inline-block;
  padding-top: 4px;
}
/*!
*
* IPython text editor webapp
*
*/
.selected-keymap i.fa {
  padding: 0px 5px;
}
.selected-keymap i.fa:before {
  content: "\f00c";
}
#mode-menu {
  overflow: auto;
  max-height: 20em;
}
.edit_app #header {
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
}
.edit_app #menubar .navbar {
  /* Use a negative 1 bottom margin, so the border overlaps the border of the
    header */
  margin-bottom: -1px;
}
.dirty-indicator {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width: 20px;
}
.dirty-indicator.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator.pull-left {
  margin-right: .3em;
}
.dirty-indicator.pull-right {
  margin-left: .3em;
}
.dirty-indicator-dirty {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width: 20px;
}
.dirty-indicator-dirty.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator-dirty.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator-dirty.pull-left {
  margin-right: .3em;
}
.dirty-indicator-dirty.pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width: 20px;
}
.dirty-indicator-clean.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean.pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean.pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f00c";
}
.dirty-indicator-clean:before.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean:before.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean:before.pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean:before.pull-right {
  margin-left: .3em;
}
#filename {
  font-size: 16pt;
  display: table;
  padding: 0px 5px;
}
#current-mode {
  padding-left: 5px;
  padding-right: 5px;
}
#texteditor-backdrop {
  padding-top: 20px;
  padding-bottom: 20px;
}
@media not print {
  #texteditor-backdrop {
    background-color: #EEE;
  }
}
@media print {
  #texteditor-backdrop #texteditor-container .CodeMirror-gutter,
  #texteditor-backdrop #texteditor-container .CodeMirror-gutters {
    background-color: #fff;
  }
}
@media not print {
  #texteditor-backdrop #texteditor-container .CodeMirror-gutter,
  #texteditor-backdrop #texteditor-container .CodeMirror-gutters {
    background-color: #fff;
  }
}
@media not print {
  #texteditor-backdrop #texteditor-container {
    padding: 0px;
    background-color: #fff;
    -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
    box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  }
}
.CodeMirror-dialog {
  background-color: #fff;
}
/*!
*
* IPython notebook
*
*/
/* CSS font colors for translated ANSI escape sequences */
/* The color values are a mix of
   http://www.xcolors.net/dl/baskerville-ivorylight and
   http://www.xcolors.net/dl/euphrasia */
.ansi-black-fg {
  color: #3E424D;
}
.ansi-black-bg {
  background-color: #3E424D;
}
.ansi-black-intense-fg {
  color: #282C36;
}
.ansi-black-intense-bg {
  background-color: #282C36;
}
.ansi-red-fg {
  color: #E75C58;
}
.ansi-red-bg {
  background-color: #E75C58;
}
.ansi-red-intense-fg {
  color: #B22B31;
}
.ansi-red-intense-bg {
  background-color: #B22B31;
}
.ansi-green-fg {
  color: #00A250;
}
.ansi-green-bg {
  background-color: #00A250;
}
.ansi-green-intense-fg {
  color: #007427;
}
.ansi-green-intense-bg {
  background-color: #007427;
}
.ansi-yellow-fg {
  color: #DDB62B;
}
.ansi-yellow-bg {
  background-color: #DDB62B;
}
.ansi-yellow-intense-fg {
  color: #B27D12;
}
.ansi-yellow-intense-bg {
  background-color: #B27D12;
}
.ansi-blue-fg {
  color: #208FFB;
}
.ansi-blue-bg {
  background-color: #208FFB;
}
.ansi-blue-intense-fg {
  color: #0065CA;
}
.ansi-blue-intense-bg {
  background-color: #0065CA;
}
.ansi-magenta-fg {
  color: #D160C4;
}
.ansi-magenta-bg {
  background-color: #D160C4;
}
.ansi-magenta-intense-fg {
  color: #A03196;
}
.ansi-magenta-intense-bg {
  background-color: #A03196;
}
.ansi-cyan-fg {
  color: #60C6C8;
}
.ansi-cyan-bg {
  background-color: #60C6C8;
}
.ansi-cyan-intense-fg {
  color: #258F8F;
}
.ansi-cyan-intense-bg {
  background-color: #258F8F;
}
.ansi-white-fg {
  color: #C5C1B4;
}
.ansi-white-bg {
  background-color: #C5C1B4;
}
.ansi-white-intense-fg {
  color: #A1A6B2;
}
.ansi-white-intense-bg {
  background-color: #A1A6B2;
}
.ansi-default-inverse-fg {
  color: #FFFFFF;
}
.ansi-default-inverse-bg {
  background-color: #000000;
}
.ansi-bold {
  font-weight: bold;
}
.ansi-underline {
  text-decoration: underline;
}
/* The following styles are deprecated an will be removed in a future version */
.ansibold {
  font-weight: bold;
}
.ansi-inverse {
  outline: 0.5px dotted;
}
/* use dark versions for foreground, to improve visibility */
.ansiblack {
  color: black;
}
.ansired {
  color: darkred;
}
.ansigreen {
  color: darkgreen;
}
.ansiyellow {
  color: #c4a000;
}
.ansiblue {
  color: darkblue;
}
.ansipurple {
  color: darkviolet;
}
.ansicyan {
  color: steelblue;
}
.ansigray {
  color: gray;
}
/* and light for background, for the same reason */
.ansibgblack {
  background-color: black;
}
.ansibgred {
  background-color: red;
}
.ansibggreen {
  background-color: green;
}
.ansibgyellow {
  background-color: yellow;
}
.ansibgblue {
  background-color: blue;
}
.ansibgpurple {
  background-color: magenta;
}
.ansibgcyan {
  background-color: cyan;
}
.ansibggray {
  background-color: gray;
}
div.cell {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  border-radius: 2px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  border-width: 1px;
  border-style: solid;
  border-color: transparent;
  width: 100%;
  padding: 5px;
  /* This acts as a spacer between cells, that is outside the border */
  margin: 0px;
  outline: none;
  position: relative;
  overflow: visible;
}
div.cell:before {
  position: absolute;
  display: block;
  top: -1px;
  left: -1px;
  width: 5px;
  height: calc(100% +  2px);
  content: '';
  background: transparent;
}
div.cell.jupyter-soft-selected {
  border-left-color: #E3F2FD;
  border-left-width: 1px;
  padding-left: 5px;
  border-right-color: #E3F2FD;
  border-right-width: 1px;
  background: #E3F2FD;
}
@media print {
  div.cell.jupyter-soft-selected {
    border-color: transparent;
  }
}
div.cell.selected,
div.cell.selected.jupyter-soft-selected {
  border-color: #ababab;
}
div.cell.selected:before,
div.cell.selected.jupyter-soft-selected:before {
  position: absolute;
  display: block;
  top: -1px;
  left: -1px;
  width: 5px;
  height: calc(100% +  2px);
  content: '';
  background: #42A5F5;
}
@media print {
  div.cell.selected,
  div.cell.selected.jupyter-soft-selected {
    border-color: transparent;
  }
}
.edit_mode div.cell.selected {
  border-color: #66BB6A;
}
.edit_mode div.cell.selected:before {
  position: absolute;
  display: block;
  top: -1px;
  left: -1px;
  width: 5px;
  height: calc(100% +  2px);
  content: '';
  background: #66BB6A;
}
@media print {
  .edit_mode div.cell.selected {
    border-color: transparent;
  }
}
.prompt {
  /* This needs to be wide enough for 3 digit prompt numbers: In[100]: */
  min-width: 14ex;
  /* This padding is tuned to match the padding on the CodeMirror editor. */
  padding: 0.4em;
  margin: 0px;
  font-family: monospace;
  text-align: right;
  /* This has to match that of the the CodeMirror class line-height below */
  line-height: 1.21429em;
  /* Don't highlight prompt number selection */
  -webkit-touch-callout: none;
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  /* Use default cursor */
  cursor: default;
}
@media (max-width: 540px) {
  .prompt {
    text-align: left;
  }
}
div.inner_cell {
  min-width: 0;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
/* input_area and input_prompt must match in top border and margin for alignment */
div.input_area {
  border: 1px solid #cfcfcf;
  border-radius: 2px;
  background: #f7f7f7;
  line-height: 1.21429em;
}
/* This is needed so that empty prompt areas can collapse to zero height when there
   is no content in the output_subarea and the prompt. The main purpose of this is
   to make sure that empty JavaScript output_subareas have no height. */
div.prompt:empty {
  padding-top: 0;
  padding-bottom: 0;
}
div.unrecognized_cell {
  padding: 5px 5px 5px 0px;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
div.unrecognized_cell .inner_cell {
  border-radius: 2px;
  padding: 5px;
  font-weight: bold;
  color: red;
  border: 1px solid #cfcfcf;
  background: #eaeaea;
}
div.unrecognized_cell .inner_cell a {
  color: inherit;
  text-decoration: none;
}
div.unrecognized_cell .inner_cell a:hover {
  color: inherit;
  text-decoration: none;
}
@media (max-width: 540px) {
  div.unrecognized_cell > div.prompt {
    display: none;
  }
}
div.code_cell {
  /* avoid page breaking on code cells when printing */
}
@media print {
  div.code_cell {
    page-break-inside: avoid;
  }
}
/* any special styling for code cells that are currently running goes here */
div.input {
  page-break-inside: avoid;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
@media (max-width: 540px) {
  div.input {
    /* Old browsers */
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-box-align: stretch;
    display: -moz-box;
    -moz-box-orient: vertical;
    -moz-box-align: stretch;
    display: box;
    box-orient: vertical;
    box-align: stretch;
    /* Modern browsers */
    display: flex;
    flex-direction: column;
    align-items: stretch;
  }
}
/* input_area and input_prompt must match in top border and margin for alignment */
div.input_prompt {
  color: #303F9F;
  border-top: 1px solid transparent;
}
div.input_area > div.highlight {
  margin: 0.4em;
  border: none;
  padding: 0px;
  background-color: transparent;
}
div.input_area > div.highlight > pre {
  margin: 0px;
  border: none;
  padding: 0px;
  background-color: transparent;
}
/* The following gets added to the <head> if it is detected that the user has a
 * monospace font with inconsistent normal/bold/italic height.  See
 * notebookmain.js.  Such fonts will have keywords vertically offset with
 * respect to the rest of the text.  The user should select a better font.
 * See: https://github.com/ipython/ipython/issues/1503
 *
 * .CodeMirror span {
 *      vertical-align: bottom;
 * }
 */
.CodeMirror {
  line-height: 1.21429em;
  /* Changed from 1em to our global default */
  font-size: 14px;
  height: auto;
  /* Changed to auto to autogrow */
  background: none;
  /* Changed from white to allow our bg to show through */
}
.CodeMirror-scroll {
  /*  The CodeMirror docs are a bit fuzzy on if overflow-y should be hidden or visible.*/
  /*  We have found that if it is visible, vertical scrollbars appear with font size changes.*/
  overflow-y: hidden;
  overflow-x: auto;
}
.CodeMirror-lines {
  /* In CM2, this used to be 0.4em, but in CM3 it went to 4px. We need the em value because */
  /* we have set a different line-height and want this to scale with that. */
  /* Note that this should set vertical padding only, since CodeMirror assumes
       that horizontal padding will be set on CodeMirror pre */
  padding: 0.4em 0;
}
.CodeMirror-linenumber {
  padding: 0 8px 0 4px;
}
.CodeMirror-gutters {
  border-bottom-left-radius: 2px;
  border-top-left-radius: 2px;
}
.CodeMirror pre {
  /* In CM3 this went to 4px from 0 in CM2. This sets horizontal padding only,
    use .CodeMirror-lines for vertical */
  padding: 0 0.4em;
  border: 0;
  border-radius: 0;
}
.CodeMirror-cursor {
  border-left: 1.4px solid black;
}
@media screen and (min-width: 2138px) and (max-width: 4319px) {
  .CodeMirror-cursor {
    border-left: 2px solid black;
  }
}
@media screen and (min-width: 4320px) {
  .CodeMirror-cursor {
    border-left: 4px solid black;
  }
}
/*

Original style from softwaremaniacs.org (c) Ivan Sagalaev <Maniac@SoftwareManiacs.Org>
Adapted from GitHub theme

*/
.highlight-base {
  color: #000;
}
.highlight-variable {
  color: #000;
}
.highlight-variable-2 {
  color: #1a1a1a;
}
.highlight-variable-3 {
  color: #333333;
}
.highlight-string {
  color: #BA2121;
}
.highlight-comment {
  color: #408080;
  font-style: italic;
}
.highlight-number {
  color: #080;
}
.highlight-atom {
  color: #88F;
}
.highlight-keyword {
  color: #008000;
  font-weight: bold;
}
.highlight-builtin {
  color: #008000;
}
.highlight-error {
  color: #f00;
}
.highlight-operator {
  color: #AA22FF;
  font-weight: bold;
}
.highlight-meta {
  color: #AA22FF;
}
/* previously not defined, copying from default codemirror */
.highlight-def {
  color: #00f;
}
.highlight-string-2 {
  color: #f50;
}
.highlight-qualifier {
  color: #555;
}
.highlight-bracket {
  color: #997;
}
.highlight-tag {
  color: #170;
}
.highlight-attribute {
  color: #00c;
}
.highlight-header {
  color: blue;
}
.highlight-quote {
  color: #090;
}
.highlight-link {
  color: #00c;
}
/* apply the same style to codemirror */
.cm-s-ipython span.cm-keyword {
  color: #008000;
  font-weight: bold;
}
.cm-s-ipython span.cm-atom {
  color: #88F;
}
.cm-s-ipython span.cm-number {
  color: #080;
}
.cm-s-ipython span.cm-def {
  color: #00f;
}
.cm-s-ipython span.cm-variable {
  color: #000;
}
.cm-s-ipython span.cm-operator {
  color: #AA22FF;
  font-weight: bold;
}
.cm-s-ipython span.cm-variable-2 {
  color: #1a1a1a;
}
.cm-s-ipython span.cm-variable-3 {
  color: #333333;
}
.cm-s-ipython span.cm-comment {
  color: #408080;
  font-style: italic;
}
.cm-s-ipython span.cm-string {
  color: #BA2121;
}
.cm-s-ipython span.cm-string-2 {
  color: #f50;
}
.cm-s-ipython span.cm-meta {
  color: #AA22FF;
}
.cm-s-ipython span.cm-qualifier {
  color: #555;
}
.cm-s-ipython span.cm-builtin {
  color: #008000;
}
.cm-s-ipython span.cm-bracket {
  color: #997;
}
.cm-s-ipython span.cm-tag {
  color: #170;
}
.cm-s-ipython span.cm-attribute {
  color: #00c;
}
.cm-s-ipython span.cm-header {
  color: blue;
}
.cm-s-ipython span.cm-quote {
  color: #090;
}
.cm-s-ipython span.cm-link {
  color: #00c;
}
.cm-s-ipython span.cm-error {
  color: #f00;
}
.cm-s-ipython span.cm-tab {
  background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAMCAYAAAAkuj5RAAAAAXNSR0IArs4c6QAAAGFJREFUSMft1LsRQFAQheHPowAKoACx3IgEKtaEHujDjORSgWTH/ZOdnZOcM/sgk/kFFWY0qV8foQwS4MKBCS3qR6ixBJvElOobYAtivseIE120FaowJPN75GMu8j/LfMwNjh4HUpwg4LUAAAAASUVORK5CYII=);
  background-position: right;
  background-repeat: no-repeat;
}
div.output_wrapper {
  /* this position must be relative to enable descendents to be absolute within it */
  position: relative;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  z-index: 1;
}
/* class for the output area when it should be height-limited */
div.output_scroll {
  /* ideally, this would be max-height, but FF barfs all over that */
  height: 24em;
  /* FF needs this *and the wrapper* to specify full width, or it will shrinkwrap */
  width: 100%;
  overflow: auto;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 2px 8px rgba(0, 0, 0, 0.8);
  box-shadow: inset 0 2px 8px rgba(0, 0, 0, 0.8);
  display: block;
}
/* output div while it is collapsed */
div.output_collapsed {
  margin: 0px;
  padding: 0px;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
div.out_prompt_overlay {
  height: 100%;
  padding: 0px 0.4em;
  position: absolute;
  border-radius: 2px;
}
div.out_prompt_overlay:hover {
  /* use inner shadow to get border that is computed the same on WebKit/FF */
  -webkit-box-shadow: inset 0 0 1px #000;
  box-shadow: inset 0 0 1px #000;
  background: rgba(240, 240, 240, 0.5);
}
div.output_prompt {
  color: #D84315;
}
/* This class is the outer container of all output sections. */
div.output_area {
  padding: 0px;
  page-break-inside: avoid;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
div.output_area .MathJax_Display {
  text-align: left !important;
}
div.output_area .rendered_html table {
  margin-left: 0;
  margin-right: 0;
}
div.output_area .rendered_html img {
  margin-left: 0;
  margin-right: 0;
}
div.output_area img,
div.output_area svg {
  max-width: 100%;
  height: auto;
}
div.output_area img.unconfined,
div.output_area svg.unconfined {
  max-width: none;
}
div.output_area .mglyph > img {
  max-width: none;
}
/* This is needed to protect the pre formating from global settings such
   as that of bootstrap */
.output {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
@media (max-width: 540px) {
  div.output_area {
    /* Old browsers */
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-box-align: stretch;
    display: -moz-box;
    -moz-box-orient: vertical;
    -moz-box-align: stretch;
    display: box;
    box-orient: vertical;
    box-align: stretch;
    /* Modern browsers */
    display: flex;
    flex-direction: column;
    align-items: stretch;
  }
}
div.output_area pre {
  margin: 0;
  padding: 1px 0 1px 0;
  border: 0;
  vertical-align: baseline;
  color: black;
  background-color: transparent;
  border-radius: 0;
}
/* This class is for the output subarea inside the output_area and after
   the prompt div. */
div.output_subarea {
  overflow-x: auto;
  padding: 0.4em;
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
  max-width: calc(100% - 14ex);
}
div.output_scroll div.output_subarea {
  overflow-x: visible;
}
/* The rest of the output_* classes are for special styling of the different
   output types */
/* all text output has this class: */
div.output_text {
  text-align: left;
  color: #000;
  /* This has to match that of the the CodeMirror class line-height below */
  line-height: 1.21429em;
}
/* stdout/stderr are 'text' as well as 'stream', but execute_result/error are *not* streams */
div.output_stderr {
  background: #fdd;
  /* very light red background for stderr */
}
div.output_latex {
  text-align: left;
}
/* Empty output_javascript divs should have no height */
div.output_javascript:empty {
  padding: 0;
}
.js-error {
  color: darkred;
}
/* raw_input styles */
div.raw_input_container {
  line-height: 1.21429em;
  padding-top: 5px;
}
pre.raw_input_prompt {
  /* nothing needed here. */
}
input.raw_input {
  font-family: monospace;
  font-size: inherit;
  color: inherit;
  width: auto;
  /* make sure input baseline aligns with prompt */
  vertical-align: baseline;
  /* padding + margin = 0.5em between prompt and cursor */
  padding: 0em 0.25em;
  margin: 0em 0.25em;
}
input.raw_input:focus {
  box-shadow: none;
}
p.p-space {
  margin-bottom: 10px;
}
div.output_unrecognized {
  padding: 5px;
  font-weight: bold;
  color: red;
}
div.output_unrecognized a {
  color: inherit;
  text-decoration: none;
}
div.output_unrecognized a:hover {
  color: inherit;
  text-decoration: none;
}
.rendered_html {
  color: #000;
  /* any extras will just be numbers: */
}
.rendered_html em {
  font-style: italic;
}
.rendered_html strong {
  font-weight: bold;
}
.rendered_html u {
  text-decoration: underline;
}
.rendered_html :link {
  text-decoration: underline;
}
.rendered_html :visited {
  text-decoration: underline;
}
.rendered_html h1 {
  font-size: 185.7%;
  margin: 1.08em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h2 {
  font-size: 157.1%;
  margin: 1.27em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h3 {
  font-size: 128.6%;
  margin: 1.55em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h4 {
  font-size: 100%;
  margin: 2em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h5 {
  font-size: 100%;
  margin: 2em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
  font-style: italic;
}
.rendered_html h6 {
  font-size: 100%;
  margin: 2em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
  font-style: italic;
}
.rendered_html h1:first-child {
  margin-top: 0.538em;
}
.rendered_html h2:first-child {
  margin-top: 0.636em;
}
.rendered_html h3:first-child {
  margin-top: 0.777em;
}
.rendered_html h4:first-child {
  margin-top: 1em;
}
.rendered_html h5:first-child {
  margin-top: 1em;
}
.rendered_html h6:first-child {
  margin-top: 1em;
}
.rendered_html ul:not(.list-inline),
.rendered_html ol:not(.list-inline) {
  padding-left: 2em;
}
.rendered_html ul {
  list-style: disc;
}
.rendered_html ul ul {
  list-style: square;
  margin-top: 0;
}
.rendered_html ul ul ul {
  list-style: circle;
}
.rendered_html ol {
  list-style: decimal;
}
.rendered_html ol ol {
  list-style: upper-alpha;
  margin-top: 0;
}
.rendered_html ol ol ol {
  list-style: lower-alpha;
}
.rendered_html ol ol ol ol {
  list-style: lower-roman;
}
.rendered_html ol ol ol ol ol {
  list-style: decimal;
}
.rendered_html * + ul {
  margin-top: 1em;
}
.rendered_html * + ol {
  margin-top: 1em;
}
.rendered_html hr {
  color: black;
  background-color: black;
}
.rendered_html pre {
  margin: 1em 2em;
  padding: 0px;
  background-color: #fff;
}
.rendered_html code {
  background-color: #eff0f1;
}
.rendered_html p code {
  padding: 1px 5px;
}
.rendered_html pre code {
  background-color: #fff;
}
.rendered_html pre,
.rendered_html code {
  border: 0;
  color: #000;
  font-size: 100%;
}
.rendered_html blockquote {
  margin: 1em 2em;
}
.rendered_html table {
  margin-left: auto;
  margin-right: auto;
  border: none;
  border-collapse: collapse;
  border-spacing: 0;
  color: black;
  font-size: 12px;
  table-layout: fixed;
}
.rendered_html thead {
  border-bottom: 1px solid black;
  vertical-align: bottom;
}
.rendered_html tr,
.rendered_html th,
.rendered_html td {
  text-align: right;
  vertical-align: middle;
  padding: 0.5em 0.5em;
  line-height: normal;
  white-space: normal;
  max-width: none;
  border: none;
}
.rendered_html th {
  font-weight: bold;
}
.rendered_html tbody tr:nth-child(odd) {
  background: #f5f5f5;
}
.rendered_html tbody tr:hover {
  background: rgba(66, 165, 245, 0.2);
}
.rendered_html * + table {
  margin-top: 1em;
}
.rendered_html p {
  text-align: left;
}
.rendered_html * + p {
  margin-top: 1em;
}
.rendered_html img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.rendered_html * + img {
  margin-top: 1em;
}
.rendered_html img,
.rendered_html svg {
  max-width: 100%;
  height: auto;
}
.rendered_html img.unconfined,
.rendered_html svg.unconfined {
  max-width: none;
}
.rendered_html .alert {
  margin-bottom: initial;
}
.rendered_html * + .alert {
  margin-top: 1em;
}
[dir="rtl"] .rendered_html p {
  text-align: right;
}
div.text_cell {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
@media (max-width: 540px) {
  div.text_cell > div.prompt {
    display: none;
  }
}
div.text_cell_render {
  /*font-family: "Helvetica Neue", Arial, Helvetica, Geneva, sans-serif;*/
  outline: none;
  resize: none;
  width: inherit;
  border-style: none;
  padding: 0.5em 0.5em 0.5em 0.4em;
  color: #000;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
a.anchor-link:link {
  text-decoration: none;
  padding: 0px 20px;
  visibility: hidden;
}
h1:hover .anchor-link,
h2:hover .anchor-link,
h3:hover .anchor-link,
h4:hover .anchor-link,
h5:hover .anchor-link,
h6:hover .anchor-link {
  visibility: visible;
}
.text_cell.rendered .input_area {
  display: none;
}
.text_cell.rendered .rendered_html {
  overflow-x: auto;
  overflow-y: hidden;
}
.text_cell.rendered .rendered_html tr,
.text_cell.rendered .rendered_html th,
.text_cell.rendered .rendered_html td {
  max-width: none;
}
.text_cell.unrendered .text_cell_render {
  display: none;
}
.text_cell .dropzone .input_area {
  border: 2px dashed #bababa;
  margin: -1px;
}
.cm-header-1,
.cm-header-2,
.cm-header-3,
.cm-header-4,
.cm-header-5,
.cm-header-6 {
  font-weight: bold;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
.cm-header-1 {
  font-size: 185.7%;
}
.cm-header-2 {
  font-size: 157.1%;
}
.cm-header-3 {
  font-size: 128.6%;
}
.cm-header-4 {
  font-size: 110%;
}
.cm-header-5 {
  font-size: 100%;
  font-style: italic;
}
.cm-header-6 {
  font-size: 100%;
  font-style: italic;
}
/*!
*
* IPython notebook webapp
*
*/
@media (max-width: 767px) {
  .notebook_app {
    padding-left: 0px;
    padding-right: 0px;
  }
}
#ipython-main-app {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  height: 100%;
}
div#notebook_panel {
  margin: 0px;
  padding: 0px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  height: 100%;
}
div#notebook {
  font-size: 14px;
  line-height: 20px;
  overflow-y: hidden;
  overflow-x: auto;
  width: 100%;
  /* This spaces the page away from the edge of the notebook area */
  padding-top: 20px;
  margin: 0px;
  outline: none;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  min-height: 100%;
}
@media not print {
  #notebook-container {
    padding: 15px;
    background-color: #fff;
    min-height: 0;
    -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
    box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  }
}
@media print {
  #notebook-container {
    width: 100%;
  }
}
div.ui-widget-content {
  border: 1px solid #ababab;
  outline: none;
}
pre.dialog {
  background-color: #f7f7f7;
  border: 1px solid #ddd;
  border-radius: 2px;
  padding: 0.4em;
  padding-left: 2em;
}
p.dialog {
  padding: 0.2em;
}
/* Word-wrap output correctly.  This is the CSS3 spelling, though Firefox seems
   to not honor it correctly.  Webkit browsers (Chrome, rekonq, Safari) do.
 */
pre,
code,
kbd,
samp {
  white-space: pre-wrap;
}
#fonttest {
  font-family: monospace;
}
p {
  margin-bottom: 0;
}
.end_space {
  min-height: 100px;
  transition: height .2s ease;
}
.notebook_app > #header {
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
}
@media not print {
  .notebook_app {
    background-color: #EEE;
  }
}
kbd {
  border-style: solid;
  border-width: 1px;
  box-shadow: none;
  margin: 2px;
  padding-left: 2px;
  padding-right: 2px;
  padding-top: 1px;
  padding-bottom: 1px;
}
.jupyter-keybindings {
  padding: 1px;
  line-height: 24px;
  border-bottom: 1px solid gray;
}
.jupyter-keybindings input {
  margin: 0;
  padding: 0;
  border: none;
}
.jupyter-keybindings i {
  padding: 6px;
}
.well code {
  background-color: #ffffff;
  border-color: #ababab;
  border-width: 1px;
  border-style: solid;
  padding: 2px;
  padding-top: 1px;
  padding-bottom: 1px;
}
/* CSS for the cell toolbar */
.celltoolbar {
  border: thin solid #CFCFCF;
  border-bottom: none;
  background: #EEE;
  border-radius: 2px 2px 0px 0px;
  width: 100%;
  height: 29px;
  padding-right: 4px;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
  /* Old browsers */
  -webkit-box-pack: end;
  -moz-box-pack: end;
  box-pack: end;
  /* Modern browsers */
  justify-content: flex-end;
  display: -webkit-flex;
}
@media print {
  .celltoolbar {
    display: none;
  }
}
.ctb_hideshow {
  display: none;
  vertical-align: bottom;
}
/* ctb_show is added to the ctb_hideshow div to show the cell toolbar.
   Cell toolbars are only shown when the ctb_global_show class is also set.
*/
.ctb_global_show .ctb_show.ctb_hideshow {
  display: block;
}
.ctb_global_show .ctb_show + .input_area,
.ctb_global_show .ctb_show + div.text_cell_input,
.ctb_global_show .ctb_show ~ div.text_cell_render {
  border-top-right-radius: 0px;
  border-top-left-radius: 0px;
}
.ctb_global_show .ctb_show ~ div.text_cell_render {
  border: 1px solid #cfcfcf;
}
.celltoolbar {
  font-size: 87%;
  padding-top: 3px;
}
.celltoolbar select {
  display: block;
  width: 100%;
  height: 32px;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
  width: inherit;
  font-size: inherit;
  height: 22px;
  padding: 0px;
  display: inline-block;
}
.celltoolbar select:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
.celltoolbar select::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.celltoolbar select:-ms-input-placeholder {
  color: #999;
}
.celltoolbar select::-webkit-input-placeholder {
  color: #999;
}
.celltoolbar select::-ms-expand {
  border: 0;
  background-color: transparent;
}
.celltoolbar select[disabled],
.celltoolbar select[readonly],
fieldset[disabled] .celltoolbar select {
  background-color: #eeeeee;
  opacity: 1;
}
.celltoolbar select[disabled],
fieldset[disabled] .celltoolbar select {
  cursor: not-allowed;
}
textarea.celltoolbar select {
  height: auto;
}
select.celltoolbar select {
  height: 30px;
  line-height: 30px;
}
textarea.celltoolbar select,
select[multiple].celltoolbar select {
  height: auto;
}
.celltoolbar label {
  margin-left: 5px;
  margin-right: 5px;
}
.tags_button_container {
  width: 100%;
  display: flex;
}
.tag-container {
  display: flex;
  flex-direction: row;
  flex-grow: 1;
  overflow: hidden;
  position: relative;
}
.tag-container > * {
  margin: 0 4px;
}
.remove-tag-btn {
  margin-left: 4px;
}
.tags-input {
  display: flex;
}
.cell-tag:last-child:after {
  content: "";
  position: absolute;
  right: 0;
  width: 40px;
  height: 100%;
  /* Fade to background color of cell toolbar */
  background: linear-gradient(to right, rgba(0, 0, 0, 0), #EEE);
}
.tags-input > * {
  margin-left: 4px;
}
.cell-tag,
.tags-input input,
.tags-input button {
  display: block;
  width: 100%;
  height: 32px;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
  box-shadow: none;
  width: inherit;
  font-size: inherit;
  height: 22px;
  line-height: 22px;
  padding: 0px 4px;
  display: inline-block;
}
.cell-tag:focus,
.tags-input input:focus,
.tags-input button:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
.cell-tag::-moz-placeholder,
.tags-input input::-moz-placeholder,
.tags-input button::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.cell-tag:-ms-input-placeholder,
.tags-input input:-ms-input-placeholder,
.tags-input button:-ms-input-placeholder {
  color: #999;
}
.cell-tag::-webkit-input-placeholder,
.tags-input input::-webkit-input-placeholder,
.tags-input button::-webkit-input-placeholder {
  color: #999;
}
.cell-tag::-ms-expand,
.tags-input input::-ms-expand,
.tags-input button::-ms-expand {
  border: 0;
  background-color: transparent;
}
.cell-tag[disabled],
.tags-input input[disabled],
.tags-input button[disabled],
.cell-tag[readonly],
.tags-input input[readonly],
.tags-input button[readonly],
fieldset[disabled] .cell-tag,
fieldset[disabled] .tags-input input,
fieldset[disabled] .tags-input button {
  background-color: #eeeeee;
  opacity: 1;
}
.cell-tag[disabled],
.tags-input input[disabled],
.tags-input button[disabled],
fieldset[disabled] .cell-tag,
fieldset[disabled] .tags-input input,
fieldset[disabled] .tags-input button {
  cursor: not-allowed;
}
textarea.cell-tag,
textarea.tags-input input,
textarea.tags-input button {
  height: auto;
}
select.cell-tag,
select.tags-input input,
select.tags-input button {
  height: 30px;
  line-height: 30px;
}
textarea.cell-tag,
textarea.tags-input input,
textarea.tags-input button,
select[multiple].cell-tag,
select[multiple].tags-input input,
select[multiple].tags-input button {
  height: auto;
}
.cell-tag,
.tags-input button {
  padding: 0px 4px;
}
.cell-tag {
  background-color: #fff;
  white-space: nowrap;
}
.tags-input input[type=text]:focus {
  outline: none;
  box-shadow: none;
  border-color: #ccc;
}
.completions {
  position: absolute;
  z-index: 110;
  overflow: hidden;
  border: 1px solid #ababab;
  border-radius: 2px;
  -webkit-box-shadow: 0px 6px 10px -1px #adadad;
  box-shadow: 0px 6px 10px -1px #adadad;
  line-height: 1;
}
.completions select {
  background: white;
  outline: none;
  border: none;
  padding: 0px;
  margin: 0px;
  overflow: auto;
  font-family: monospace;
  font-size: 110%;
  color: #000;
  width: auto;
}
.completions select option.context {
  color: #286090;
}
#kernel_logo_widget .current_kernel_logo {
  display: none;
  margin-top: -1px;
  margin-bottom: -1px;
  width: 32px;
  height: 32px;
}
[dir="rtl"] #kernel_logo_widget {
  float: left !important;
  float: left;
}
.modal .modal-body .move-path {
  display: flex;
  flex-direction: row;
  justify-content: space;
  align-items: center;
}
.modal .modal-body .move-path .server-root {
  padding-right: 20px;
}
.modal .modal-body .move-path .path-input {
  flex: 1;
}
#menubar {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  margin-top: 1px;
}
#menubar .navbar {
  border-top: 1px;
  border-radius: 0px 0px 2px 2px;
  margin-bottom: 0px;
}
#menubar .navbar-toggle {
  float: left;
  padding-top: 7px;
  padding-bottom: 7px;
  border: none;
}
#menubar .navbar-collapse {
  clear: left;
}
[dir="rtl"] #menubar .navbar-toggle {
  float: right;
}
[dir="rtl"] #menubar .navbar-collapse {
  clear: right;
}
[dir="rtl"] #menubar .navbar-nav {
  float: right;
}
[dir="rtl"] #menubar .nav {
  padding-right: 0px;
}
[dir="rtl"] #menubar .navbar-nav > li {
  float: right;
}
[dir="rtl"] #menubar .navbar-right {
  float: left !important;
}
[dir="rtl"] ul.dropdown-menu {
  text-align: right;
  left: auto;
}
[dir="rtl"] ul#new-menu.dropdown-menu {
  right: auto;
  left: 0;
}
.nav-wrapper {
  border-bottom: 1px solid #e7e7e7;
}
i.menu-icon {
  padding-top: 4px;
}
[dir="rtl"] i.menu-icon.pull-right {
  float: left !important;
  float: left;
}
ul#help_menu li a {
  overflow: hidden;
  padding-right: 2.2em;
}
ul#help_menu li a i {
  margin-right: -1.2em;
}
[dir="rtl"] ul#help_menu li a {
  padding-left: 2.2em;
}
[dir="rtl"] ul#help_menu li a i {
  margin-right: 0;
  margin-left: -1.2em;
}
[dir="rtl"] ul#help_menu li a i.pull-right {
  float: left !important;
  float: left;
}
.dropdown-submenu {
  position: relative;
}
.dropdown-submenu > .dropdown-menu {
  top: 0;
  left: 100%;
  margin-top: -6px;
  margin-left: -1px;
}
[dir="rtl"] .dropdown-submenu > .dropdown-menu {
  right: 100%;
  margin-right: -1px;
}
.dropdown-submenu:hover > .dropdown-menu {
  display: block;
}
.dropdown-submenu > a:after {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  display: block;
  content: "\f0da";
  float: right;
  color: #333333;
  margin-top: 2px;
  margin-right: -10px;
}
.dropdown-submenu > a:after.fa-pull-left {
  margin-right: .3em;
}
.dropdown-submenu > a:after.fa-pull-right {
  margin-left: .3em;
}
.dropdown-submenu > a:after.pull-left {
  margin-right: .3em;
}
.dropdown-submenu > a:after.pull-right {
  margin-left: .3em;
}
[dir="rtl"] .dropdown-submenu > a:after {
  float: left;
  content: "\f0d9";
  margin-right: 0;
  margin-left: -10px;
}
.dropdown-submenu:hover > a:after {
  color: #262626;
}
.dropdown-submenu.pull-left {
  float: none;
}
.dropdown-submenu.pull-left > .dropdown-menu {
  left: -100%;
  margin-left: 10px;
}
#notification_area {
  float: right !important;
  float: right;
  z-index: 10;
}
[dir="rtl"] #notification_area {
  float: left !important;
  float: left;
}
.indicator_area {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
}
[dir="rtl"] .indicator_area {
  float: left !important;
  float: left;
}
#kernel_indicator {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
  border-left: 1px solid;
}
#kernel_indicator .kernel_indicator_name {
  padding-left: 5px;
  padding-right: 5px;
}
[dir="rtl"] #kernel_indicator {
  float: left !important;
  float: left;
  border-left: 0;
  border-right: 1px solid;
}
#modal_indicator {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
}
[dir="rtl"] #modal_indicator {
  float: left !important;
  float: left;
}
#readonly-indicator {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
  margin-top: 2px;
  margin-bottom: 0px;
  margin-left: 0px;
  margin-right: 0px;
  display: none;
}
.modal_indicator:before {
  width: 1.28571429em;
  text-align: center;
}
.edit_mode .modal_indicator:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f040";
}
.edit_mode .modal_indicator:before.fa-pull-left {
  margin-right: .3em;
}
.edit_mode .modal_indicator:before.fa-pull-right {
  margin-left: .3em;
}
.edit_mode .modal_indicator:before.pull-left {
  margin-right: .3em;
}
.edit_mode .modal_indicator:before.pull-right {
  margin-left: .3em;
}
.command_mode .modal_indicator:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: ' ';
}
.command_mode .modal_indicator:before.fa-pull-left {
  margin-right: .3em;
}
.command_mode .modal_indicator:before.fa-pull-right {
  margin-left: .3em;
}
.command_mode .modal_indicator:before.pull-left {
  margin-right: .3em;
}
.command_mode .modal_indicator:before.pull-right {
  margin-left: .3em;
}
.kernel_idle_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f10c";
}
.kernel_idle_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_idle_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_idle_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_idle_icon:before.pull-right {
  margin-left: .3em;
}
.kernel_busy_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f111";
}
.kernel_busy_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_busy_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_busy_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_busy_icon:before.pull-right {
  margin-left: .3em;
}
.kernel_dead_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f1e2";
}
.kernel_dead_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_dead_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_dead_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_dead_icon:before.pull-right {
  margin-left: .3em;
}
.kernel_disconnected_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f127";
}
.kernel_disconnected_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_disconnected_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_disconnected_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_disconnected_icon:before.pull-right {
  margin-left: .3em;
}
.notification_widget {
  color: #777;
  z-index: 10;
  background: rgba(240, 240, 240, 0.5);
  margin-right: 4px;
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
.notification_widget:focus,
.notification_widget.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
.notification_widget:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.notification_widget:active,
.notification_widget.active,
.open > .dropdown-toggle.notification_widget {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.notification_widget:active:hover,
.notification_widget.active:hover,
.open > .dropdown-toggle.notification_widget:hover,
.notification_widget:active:focus,
.notification_widget.active:focus,
.open > .dropdown-toggle.notification_widget:focus,
.notification_widget:active.focus,
.notification_widget.active.focus,
.open > .dropdown-toggle.notification_widget.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
.notification_widget:active,
.notification_widget.active,
.open > .dropdown-toggle.notification_widget {
  background-image: none;
}
.notification_widget.disabled:hover,
.notification_widget[disabled]:hover,
fieldset[disabled] .notification_widget:hover,
.notification_widget.disabled:focus,
.notification_widget[disabled]:focus,
fieldset[disabled] .notification_widget:focus,
.notification_widget.disabled.focus,
.notification_widget[disabled].focus,
fieldset[disabled] .notification_widget.focus {
  background-color: #fff;
  border-color: #ccc;
}
.notification_widget .badge {
  color: #fff;
  background-color: #333;
}
.notification_widget.warning {
  color: #fff;
  background-color: #f0ad4e;
  border-color: #eea236;
}
.notification_widget.warning:focus,
.notification_widget.warning.focus {
  color: #fff;
  background-color: #ec971f;
  border-color: #985f0d;
}
.notification_widget.warning:hover {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.notification_widget.warning:active,
.notification_widget.warning.active,
.open > .dropdown-toggle.notification_widget.warning {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.notification_widget.warning:active:hover,
.notification_widget.warning.active:hover,
.open > .dropdown-toggle.notification_widget.warning:hover,
.notification_widget.warning:active:focus,
.notification_widget.warning.active:focus,
.open > .dropdown-toggle.notification_widget.warning:focus,
.notification_widget.warning:active.focus,
.notification_widget.warning.active.focus,
.open > .dropdown-toggle.notification_widget.warning.focus {
  color: #fff;
  background-color: #d58512;
  border-color: #985f0d;
}
.notification_widget.warning:active,
.notification_widget.warning.active,
.open > .dropdown-toggle.notification_widget.warning {
  background-image: none;
}
.notification_widget.warning.disabled:hover,
.notification_widget.warning[disabled]:hover,
fieldset[disabled] .notification_widget.warning:hover,
.notification_widget.warning.disabled:focus,
.notification_widget.warning[disabled]:focus,
fieldset[disabled] .notification_widget.warning:focus,
.notification_widget.warning.disabled.focus,
.notification_widget.warning[disabled].focus,
fieldset[disabled] .notification_widget.warning.focus {
  background-color: #f0ad4e;
  border-color: #eea236;
}
.notification_widget.warning .badge {
  color: #f0ad4e;
  background-color: #fff;
}
.notification_widget.success {
  color: #fff;
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.notification_widget.success:focus,
.notification_widget.success.focus {
  color: #fff;
  background-color: #449d44;
  border-color: #255625;
}
.notification_widget.success:hover {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.notification_widget.success:active,
.notification_widget.success.active,
.open > .dropdown-toggle.notification_widget.success {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.notification_widget.success:active:hover,
.notification_widget.success.active:hover,
.open > .dropdown-toggle.notification_widget.success:hover,
.notification_widget.success:active:focus,
.notification_widget.success.active:focus,
.open > .dropdown-toggle.notification_widget.success:focus,
.notification_widget.success:active.focus,
.notification_widget.success.active.focus,
.open > .dropdown-toggle.notification_widget.success.focus {
  color: #fff;
  background-color: #398439;
  border-color: #255625;
}
.notification_widget.success:active,
.notification_widget.success.active,
.open > .dropdown-toggle.notification_widget.success {
  background-image: none;
}
.notification_widget.success.disabled:hover,
.notification_widget.success[disabled]:hover,
fieldset[disabled] .notification_widget.success:hover,
.notification_widget.success.disabled:focus,
.notification_widget.success[disabled]:focus,
fieldset[disabled] .notification_widget.success:focus,
.notification_widget.success.disabled.focus,
.notification_widget.success[disabled].focus,
fieldset[disabled] .notification_widget.success.focus {
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.notification_widget.success .badge {
  color: #5cb85c;
  background-color: #fff;
}
.notification_widget.info {
  color: #fff;
  background-color: #5bc0de;
  border-color: #46b8da;
}
.notification_widget.info:focus,
.notification_widget.info.focus {
  color: #fff;
  background-color: #31b0d5;
  border-color: #1b6d85;
}
.notification_widget.info:hover {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.notification_widget.info:active,
.notification_widget.info.active,
.open > .dropdown-toggle.notification_widget.info {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.notification_widget.info:active:hover,
.notification_widget.info.active:hover,
.open > .dropdown-toggle.notification_widget.info:hover,
.notification_widget.info:active:focus,
.notification_widget.info.active:focus,
.open > .dropdown-toggle.notification_widget.info:focus,
.notification_widget.info:active.focus,
.notification_widget.info.active.focus,
.open > .dropdown-toggle.notification_widget.info.focus {
  color: #fff;
  background-color: #269abc;
  border-color: #1b6d85;
}
.notification_widget.info:active,
.notification_widget.info.active,
.open > .dropdown-toggle.notification_widget.info {
  background-image: none;
}
.notification_widget.info.disabled:hover,
.notification_widget.info[disabled]:hover,
fieldset[disabled] .notification_widget.info:hover,
.notification_widget.info.disabled:focus,
.notification_widget.info[disabled]:focus,
fieldset[disabled] .notification_widget.info:focus,
.notification_widget.info.disabled.focus,
.notification_widget.info[disabled].focus,
fieldset[disabled] .notification_widget.info.focus {
  background-color: #5bc0de;
  border-color: #46b8da;
}
.notification_widget.info .badge {
  color: #5bc0de;
  background-color: #fff;
}
.notification_widget.danger {
  color: #fff;
  background-color: #d9534f;
  border-color: #d43f3a;
}
.notification_widget.danger:focus,
.notification_widget.danger.focus {
  color: #fff;
  background-color: #c9302c;
  border-color: #761c19;
}
.notification_widget.danger:hover {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.notification_widget.danger:active,
.notification_widget.danger.active,
.open > .dropdown-toggle.notification_widget.danger {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.notification_widget.danger:active:hover,
.notification_widget.danger.active:hover,
.open > .dropdown-toggle.notification_widget.danger:hover,
.notification_widget.danger:active:focus,
.notification_widget.danger.active:focus,
.open > .dropdown-toggle.notification_widget.danger:focus,
.notification_widget.danger:active.focus,
.notification_widget.danger.active.focus,
.open > .dropdown-toggle.notification_widget.danger.focus {
  color: #fff;
  background-color: #ac2925;
  border-color: #761c19;
}
.notification_widget.danger:active,
.notification_widget.danger.active,
.open > .dropdown-toggle.notification_widget.danger {
  background-image: none;
}
.notification_widget.danger.disabled:hover,
.notification_widget.danger[disabled]:hover,
fieldset[disabled] .notification_widget.danger:hover,
.notification_widget.danger.disabled:focus,
.notification_widget.danger[disabled]:focus,
fieldset[disabled] .notification_widget.danger:focus,
.notification_widget.danger.disabled.focus,
.notification_widget.danger[disabled].focus,
fieldset[disabled] .notification_widget.danger.focus {
  background-color: #d9534f;
  border-color: #d43f3a;
}
.notification_widget.danger .badge {
  color: #d9534f;
  background-color: #fff;
}
div#pager {
  background-color: #fff;
  font-size: 14px;
  line-height: 20px;
  overflow: hidden;
  display: none;
  position: fixed;
  bottom: 0px;
  width: 100%;
  max-height: 50%;
  padding-top: 8px;
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  /* Display over codemirror */
  z-index: 100;
  /* Hack which prevents jquery ui resizable from changing top. */
  top: auto !important;
}
div#pager pre {
  line-height: 1.21429em;
  color: #000;
  background-color: #f7f7f7;
  padding: 0.4em;
}
div#pager #pager-button-area {
  position: absolute;
  top: 8px;
  right: 20px;
}
div#pager #pager-contents {
  position: relative;
  overflow: auto;
  width: 100%;
  height: 100%;
}
div#pager #pager-contents #pager-container {
  position: relative;
  padding: 15px 0px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
div#pager .ui-resizable-handle {
  top: 0px;
  height: 8px;
  background: #f7f7f7;
  border-top: 1px solid #cfcfcf;
  border-bottom: 1px solid #cfcfcf;
  /* This injects handle bars (a short, wide = symbol) for 
        the resize handle. */
}
div#pager .ui-resizable-handle::after {
  content: '';
  top: 2px;
  left: 50%;
  height: 3px;
  width: 30px;
  margin-left: -15px;
  position: absolute;
  border-top: 1px solid #cfcfcf;
}
.quickhelp {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
  line-height: 1.8em;
}
.shortcut_key {
  display: inline-block;
  width: 21ex;
  text-align: right;
  font-family: monospace;
}
.shortcut_descr {
  display: inline-block;
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
span.save_widget {
  height: 30px;
  margin-top: 4px;
  display: flex;
  justify-content: flex-start;
  align-items: baseline;
  width: 50%;
  flex: 1;
}
span.save_widget span.filename {
  height: 100%;
  line-height: 1em;
  margin-left: 16px;
  border: none;
  font-size: 146.5%;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  border-radius: 2px;
}
span.save_widget span.filename:hover {
  background-color: #e6e6e6;
}
[dir="rtl"] span.save_widget.pull-left {
  float: right !important;
  float: right;
}
[dir="rtl"] span.save_widget span.filename {
  margin-left: 0;
  margin-right: 16px;
}
span.checkpoint_status,
span.autosave_status {
  font-size: small;
  white-space: nowrap;
  padding: 0 5px;
}
@media (max-width: 767px) {
  span.save_widget {
    font-size: small;
    padding: 0 0 0 5px;
  }
  span.checkpoint_status,
  span.autosave_status {
    display: none;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  span.checkpoint_status {
    display: none;
  }
  span.autosave_status {
    font-size: x-small;
  }
}
.toolbar {
  padding: 0px;
  margin-left: -5px;
  margin-top: 2px;
  margin-bottom: 5px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
.toolbar select,
.toolbar label {
  width: auto;
  vertical-align: middle;
  margin-right: 2px;
  margin-bottom: 0px;
  display: inline;
  font-size: 92%;
  margin-left: 0.3em;
  margin-right: 0.3em;
  padding: 0px;
  padding-top: 3px;
}
.toolbar .btn {
  padding: 2px 8px;
}
.toolbar .btn-group {
  margin-top: 0px;
  margin-left: 5px;
}
.toolbar-btn-label {
  margin-left: 6px;
}
#maintoolbar {
  margin-bottom: -3px;
  margin-top: -8px;
  border: 0px;
  min-height: 27px;
  margin-left: 0px;
  padding-top: 11px;
  padding-bottom: 3px;
}
#maintoolbar .navbar-text {
  float: none;
  vertical-align: middle;
  text-align: right;
  margin-left: 5px;
  margin-right: 0px;
  margin-top: 0px;
}
.select-xs {
  height: 24px;
}
[dir="rtl"] .btn-group > .btn,
.btn-group-vertical > .btn {
  float: right;
}
.pulse,
.dropdown-menu > li > a.pulse,
li.pulse > a.dropdown-toggle,
li.pulse.open > a.dropdown-toggle {
  background-color: #F37626;
  color: white;
}
/**
 * Primary styles
 *
 * Author: Jupyter Development Team
 */
/** WARNING IF YOU ARE EDITTING THIS FILE, if this is a .css file, It has a lot
 * of chance of beeing generated from the ../less/[samename].less file, you can
 * try to get back the less file by reverting somme commit in history
 **/
/*
 * We'll try to get something pretty, so we
 * have some strange css to have the scroll bar on
 * the left with fix button on the top right of the tooltip
 */
@-moz-keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}
@-webkit-keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}
@-moz-keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
@-webkit-keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
/*properties of tooltip after "expand"*/
.bigtooltip {
  overflow: auto;
  height: 200px;
  -webkit-transition-property: height;
  -webkit-transition-duration: 500ms;
  -moz-transition-property: height;
  -moz-transition-duration: 500ms;
  transition-property: height;
  transition-duration: 500ms;
}
/*properties of tooltip before "expand"*/
.smalltooltip {
  -webkit-transition-property: height;
  -webkit-transition-duration: 500ms;
  -moz-transition-property: height;
  -moz-transition-duration: 500ms;
  transition-property: height;
  transition-duration: 500ms;
  text-overflow: ellipsis;
  overflow: hidden;
  height: 80px;
}
.tooltipbuttons {
  position: absolute;
  padding-right: 15px;
  top: 0px;
  right: 0px;
}
.tooltiptext {
  /*avoid the button to overlap on some docstring*/
  padding-right: 30px;
}
.ipython_tooltip {
  max-width: 700px;
  /*fade-in animation when inserted*/
  -webkit-animation: fadeOut 400ms;
  -moz-animation: fadeOut 400ms;
  animation: fadeOut 400ms;
  -webkit-animation: fadeIn 400ms;
  -moz-animation: fadeIn 400ms;
  animation: fadeIn 400ms;
  vertical-align: middle;
  background-color: #f7f7f7;
  overflow: visible;
  border: #ababab 1px solid;
  outline: none;
  padding: 3px;
  margin: 0px;
  padding-left: 7px;
  font-family: monospace;
  min-height: 50px;
  -moz-box-shadow: 0px 6px 10px -1px #adadad;
  -webkit-box-shadow: 0px 6px 10px -1px #adadad;
  box-shadow: 0px 6px 10px -1px #adadad;
  border-radius: 2px;
  position: absolute;
  z-index: 1000;
}
.ipython_tooltip a {
  float: right;
}
.ipython_tooltip .tooltiptext pre {
  border: 0;
  border-radius: 0;
  font-size: 100%;
  background-color: #f7f7f7;
}
.pretooltiparrow {
  left: 0px;
  margin: 0px;
  top: -16px;
  width: 40px;
  height: 16px;
  overflow: hidden;
  position: absolute;
}
.pretooltiparrow:before {
  background-color: #f7f7f7;
  border: 1px #ababab solid;
  z-index: 11;
  content: "";
  position: absolute;
  left: 15px;
  top: 10px;
  width: 25px;
  height: 25px;
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  -o-transform: rotate(45deg);
}
ul.typeahead-list i {
  margin-left: -10px;
  width: 18px;
}
[dir="rtl"] ul.typeahead-list i {
  margin-left: 0;
  margin-right: -10px;
}
ul.typeahead-list {
  max-height: 80vh;
  overflow: auto;
}
ul.typeahead-list > li > a {
  /** Firefox bug **/
  /* see https://github.com/jupyter/notebook/issues/559 */
  white-space: normal;
}
ul.typeahead-list  > li > a.pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .typeahead-list {
  text-align: right;
}
.cmd-palette .modal-body {
  padding: 7px;
}
.cmd-palette form {
  background: white;
}
.cmd-palette input {
  outline: none;
}
.no-shortcut {
  min-width: 20px;
  color: transparent;
}
[dir="rtl"] .no-shortcut.pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .command-shortcut.pull-right {
  float: left !important;
  float: left;
}
.command-shortcut:before {
  content: "(command mode)";
  padding-right: 3px;
  color: #777777;
}
.edit-shortcut:before {
  content: "(edit)";
  padding-right: 3px;
  color: #777777;
}
[dir="rtl"] .edit-shortcut.pull-right {
  float: left !important;
  float: left;
}
#find-and-replace #replace-preview .match,
#find-and-replace #replace-preview .insert {
  background-color: #BBDEFB;
  border-color: #90CAF9;
  border-style: solid;
  border-width: 1px;
  border-radius: 0px;
}
[dir="ltr"] #find-and-replace .input-group-btn + .form-control {
  border-left: none;
}
[dir="rtl"] #find-and-replace .input-group-btn + .form-control {
  border-right: none;
}
#find-and-replace #replace-preview .replace .match {
  background-color: #FFCDD2;
  border-color: #EF9A9A;
  border-radius: 0px;
}
#find-and-replace #replace-preview .replace .insert {
  background-color: #C8E6C9;
  border-color: #A5D6A7;
  border-radius: 0px;
}
#find-and-replace #replace-preview {
  max-height: 60vh;
  overflow: auto;
}
#find-and-replace #replace-preview pre {
  padding: 5px 10px;
}
.terminal-app {
  background: #EEE;
}
.terminal-app #header {
  background: #fff;
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
}
.terminal-app .terminal {
  width: 100%;
  float: left;
  font-family: monospace;
  color: white;
  background: black;
  padding: 0.4em;
  border-radius: 2px;
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.4);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.4);
}
.terminal-app .terminal,
.terminal-app .terminal dummy-screen {
  line-height: 1em;
  font-size: 14px;
}
.terminal-app .terminal .xterm-rows {
  padding: 10px;
}
.terminal-app .terminal-cursor {
  color: black;
  background: white;
}
.terminal-app #terminado-container {
  margin-top: 20px;
}
/*# sourceMappingURL=style.min.css.map */
    </style>
<style type="text/css">
    .highlight .hll { background-color: #ffffcc }
.highlight  { background: #f8f8f8; }
.highlight .c { color: #408080; font-style: italic } /* Comment */
.highlight .err { border: 1px solid #FF0000 } /* Error */
.highlight .k { color: #008000; font-weight: bold } /* Keyword */
.highlight .o { color: #666666 } /* Operator */
.highlight .ch { color: #408080; font-style: italic } /* Comment.Hashbang */
.highlight .cm { color: #408080; font-style: italic } /* Comment.Multiline */
.highlight .cp { color: #BC7A00 } /* Comment.Preproc */
.highlight .cpf { color: #408080; font-style: italic } /* Comment.PreprocFile */
.highlight .c1 { color: #408080; font-style: italic } /* Comment.Single */
.highlight .cs { color: #408080; font-style: italic } /* Comment.Special */
.highlight .gd { color: #A00000 } /* Generic.Deleted */
.highlight .ge { font-style: italic } /* Generic.Emph */
.highlight .gr { color: #FF0000 } /* Generic.Error */
.highlight .gh { color: #000080; font-weight: bold } /* Generic.Heading */
.highlight .gi { color: #00A000 } /* Generic.Inserted */
.highlight .go { color: #888888 } /* Generic.Output */
.highlight .gp { color: #000080; font-weight: bold } /* Generic.Prompt */
.highlight .gs { font-weight: bold } /* Generic.Strong */
.highlight .gu { color: #800080; font-weight: bold } /* Generic.Subheading */
.highlight .gt { color: #0044DD } /* Generic.Traceback */
.highlight .kc { color: #008000; font-weight: bold } /* Keyword.Constant */
.highlight .kd { color: #008000; font-weight: bold } /* Keyword.Declaration */
.highlight .kn { color: #008000; font-weight: bold } /* Keyword.Namespace */
.highlight .kp { color: #008000 } /* Keyword.Pseudo */
.highlight .kr { color: #008000; font-weight: bold } /* Keyword.Reserved */
.highlight .kt { color: #B00040 } /* Keyword.Type */
.highlight .m { color: #666666 } /* Literal.Number */
.highlight .s { color: #BA2121 } /* Literal.String */
.highlight .na { color: #7D9029 } /* Name.Attribute */
.highlight .nb { color: #008000 } /* Name.Builtin */
.highlight .nc { color: #0000FF; font-weight: bold } /* Name.Class */
.highlight .no { color: #880000 } /* Name.Constant */
.highlight .nd { color: #AA22FF } /* Name.Decorator */
.highlight .ni { color: #999999; font-weight: bold } /* Name.Entity */
.highlight .ne { color: #D2413A; font-weight: bold } /* Name.Exception */
.highlight .nf { color: #0000FF } /* Name.Function */
.highlight .nl { color: #A0A000 } /* Name.Label */
.highlight .nn { color: #0000FF; font-weight: bold } /* Name.Namespace */
.highlight .nt { color: #008000; font-weight: bold } /* Name.Tag */
.highlight .nv { color: #19177C } /* Name.Variable */
.highlight .ow { color: #AA22FF; font-weight: bold } /* Operator.Word */
.highlight .w { color: #bbbbbb } /* Text.Whitespace */
.highlight .mb { color: #666666 } /* Literal.Number.Bin */
.highlight .mf { color: #666666 } /* Literal.Number.Float */
.highlight .mh { color: #666666 } /* Literal.Number.Hex */
.highlight .mi { color: #666666 } /* Literal.Number.Integer */
.highlight .mo { color: #666666 } /* Literal.Number.Oct */
.highlight .sa { color: #BA2121 } /* Literal.String.Affix */
.highlight .sb { color: #BA2121 } /* Literal.String.Backtick */
.highlight .sc { color: #BA2121 } /* Literal.String.Char */
.highlight .dl { color: #BA2121 } /* Literal.String.Delimiter */
.highlight .sd { color: #BA2121; font-style: italic } /* Literal.String.Doc */
.highlight .s2 { color: #BA2121 } /* Literal.String.Double */
.highlight .se { color: #BB6622; font-weight: bold } /* Literal.String.Escape */
.highlight .sh { color: #BA2121 } /* Literal.String.Heredoc */
.highlight .si { color: #BB6688; font-weight: bold } /* Literal.String.Interpol */
.highlight .sx { color: #008000 } /* Literal.String.Other */
.highlight .sr { color: #BB6688 } /* Literal.String.Regex */
.highlight .s1 { color: #BA2121 } /* Literal.String.Single */
.highlight .ss { color: #19177C } /* Literal.String.Symbol */
.highlight .bp { color: #008000 } /* Name.Builtin.Pseudo */
.highlight .fm { color: #0000FF } /* Name.Function.Magic */
.highlight .vc { color: #19177C } /* Name.Variable.Class */
.highlight .vg { color: #19177C } /* Name.Variable.Global */
.highlight .vi { color: #19177C } /* Name.Variable.Instance */
.highlight .vm { color: #19177C } /* Name.Variable.Magic */
.highlight .il { color: #666666 } /* Literal.Number.Integer.Long */
    </style>


<style type="text/css">
/* Overrides of notebook CSS for static HTML export */
body {
  overflow: visible;
  padding: 8px;
}

div#notebook {
  overflow: visible;
  border-top: none;
}@media print {
  div.cell {
    display: block;
    page-break-inside: avoid;
  } 
  div.output_wrapper { 
    display: block;
    page-break-inside: avoid; 
  }
  div.output { 
    display: block;
    page-break-inside: avoid; 
  }
}
</style>

<!-- Custom stylesheet, it must be in the same directory as the html file -->
<link rel="stylesheet" href="custom.css">

<!-- Loading mathjax macro -->
<!-- Load mathjax -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/latest.js?config=TeX-AMS_HTML"></script>
    <!-- MathJax configuration -->
    <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
        tex2jax: {
            inlineMath: [ ['$','$'], ["\\(","\\)"] ],
            displayMath: [ ['$$','$$'], ["\\[","\\]"] ],
            processEscapes: true,
            processEnvironments: true
        },
        // Center justify equations in code and markdown cells. Elsewhere
        // we use CSS to left justify single line equations in code cells.
        displayAlign: 'center',
        "HTML-CSS": {
            styles: {'.MathJax_Display': {"margin": 0}},
            linebreaks: { automatic: true }
        }
    });
    




</script>
    <!-- End of mathjax configuration -->
    
    <link rel="stylesheet" href="/gunzip_final/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="/gunzip_final/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="/gunzip_final/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="/gunzip_final/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/gunzip_final/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="/gunzip_final/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="/gunzip_final/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="/gunzip_final/plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    
    
    </head>
    
    
    
    
<body class="hold-transition sidebar-mini layout-fixed">
  <div tabindex="-1" id="notebook" class="border-box-sizing">
    <div class="container" id="notebook-container">
<!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/gunzip_final/index3.do" class="brand-link">
      <img src="/gunzip_final/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">군만두</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="/gunzip_final/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">만두집 군집주행 관제</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/gunzip_final/index.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>군집주행 실시간 현황</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/gunzip_final/index2.do" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>교통사고 데이터 분석</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/gunzip_final/index3.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>통계 데이터</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/gunzip_final/index6.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>위험 지수</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/gunzip_final/index4.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>MongoDB Server Log</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/gunzip_final/index5.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>MongoDB Car Log</p>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
 

<div class="content-wrapper">
<h1><b>1. 2007-2019년(13년) 교통사고 데이터 분석</b></h1>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[1]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">import</span> <span class="nn">pandas</span> <span class="k">as</span> <span class="nn">pd</span>
<span class="n">data</span> <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">read_csv</span><span class="p">(</span><span class="s2">&quot;./accident_hwamul_csv.csv&quot;</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">data</span><span class="p">)</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;원본 특성:</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">,</span> <span class="nb">list</span><span class="p">(</span><span class="n">data</span><span class="o">.</span><span class="n">columns</span><span class="p">),</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">)</span>
<span class="n">data_dummies</span> <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">get_dummies</span><span class="p">(</span><span class="n">data</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;get_dummies 후의 특성:</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">,</span> <span class="nb">list</span><span class="p">(</span><span class="n">data_dummies</span><span class="o">.</span><span class="n">columns</span><span class="p">))</span>

<span class="n">display</span><span class="p">(</span><span class="n">data_dummies</span><span class="o">.</span><span class="n">head</span><span class="p">())</span>

<span class="n">features</span> <span class="o">=</span> <span class="n">data_dummies</span><span class="o">.</span><span class="n">loc</span><span class="p">[:,</span> <span class="p">[</span><span class="s1">&#39;가해운전자 연령&#39;</span><span class="p">,</span><span class="s1">&#39;요일_금요일&#39;</span><span class="p">,</span> <span class="s1">&#39;요일_목요일&#39;</span><span class="p">,</span> <span class="s1">&#39;요일_수요일&#39;</span><span class="p">,</span> <span class="s1">&#39;요일_월요일&#39;</span><span class="p">,</span> <span class="s1">&#39;요일_일요일&#39;</span><span class="p">,</span> <span class="s1">&#39;요일_토요일&#39;</span><span class="p">,</span> <span class="s1">&#39;요일_화요일&#39;</span><span class="p">,</span> <span class="s1">&#39;기상상태_눈&#39;</span><span class="p">,</span> <span class="s1">&#39;기상상태_맑음&#39;</span><span class="p">,</span> <span class="s1">&#39;기상상태_비&#39;</span><span class="p">,</span> <span class="s1">&#39;기상상태_안개&#39;</span><span class="p">,</span> <span class="s1">&#39;기상상태_흐림&#39;</span><span class="p">,</span> <span class="s1">&#39;가해운전자 성별_남&#39;</span><span class="p">,</span> <span class="s1">&#39;가해운전자 성별_여&#39;</span><span class="p">,</span> <span class="s1">&#39;시간대_야간&#39;</span><span class="p">,</span> <span class="s1">&#39;시간대_주간&#39;</span><span class="p">,</span> <span class="s1">&#39;월_10월&#39;</span><span class="p">,</span> <span class="s1">&#39;월_11월&#39;</span><span class="p">,</span> <span class="s1">&#39;월_12월&#39;</span><span class="p">,</span> <span class="s1">&#39;월_1월&#39;</span><span class="p">,</span> <span class="s1">&#39;월_2월&#39;</span><span class="p">,</span> <span class="s1">&#39;월_3월&#39;</span><span class="p">,</span> <span class="s1">&#39;월_4월&#39;</span><span class="p">,</span> <span class="s1">&#39;월_5월&#39;</span><span class="p">,</span> <span class="s1">&#39;월_6월&#39;</span><span class="p">,</span> <span class="s1">&#39;월_7월&#39;</span><span class="p">,</span> <span class="s1">&#39;월_8월&#39;</span><span class="p">,</span> <span class="s1">&#39;월_9월&#39;</span><span class="p">]]</span>

<span class="n">X</span> <span class="o">=</span> <span class="n">features</span><span class="o">.</span><span class="n">values</span>
<span class="n">y</span> <span class="o">=</span> <span class="n">data_dummies</span><span class="p">[</span><span class="s1">&#39;도로위험도&#39;</span><span class="p">]</span><span class="o">.</span><span class="n">values</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;X.shape: </span><span class="si">{}</span><span class="s2"> y.shape: </span><span class="si">{}</span><span class="s2">&quot;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="n">X</span><span class="o">.</span><span class="n">shape</span><span class="p">,</span> <span class="n">y</span><span class="o">.</span><span class="n">shape</span><span class="p">))</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>        요일 기상상태 가해운전자 성별  가해운전자 연령 시간대    월  도로위험도
0      금요일   맑음        남        45  야간   1월  0.033
1      수요일   맑음        남        58  주간   2월  0.068
2      월요일   맑음        남        48  주간   2월  1.168
3      목요일   맑음        남        37  주간   3월  0.068
4      화요일   맑음        남        49  주간   4월  0.136
...    ...  ...      ...       ...  ..  ...    ...
11353  화요일   맑음        남        59  주간  12월  0.068
11354  화요일   맑음        남        60  주간  12월  0.068
11355  토요일   맑음        남        64  주간  12월  0.305
11356  토요일   맑음        남        66  주간  12월  0.068
11357  화요일   맑음        남        71  주간  12월  0.169

[11358 rows x 7 columns]
원본 특성:
 [&#39;요일&#39;, &#39;기상상태&#39;, &#39;가해운전자 성별&#39;, &#39;가해운전자 연령&#39;, &#39;시간대&#39;, &#39;월&#39;, &#39;도로위험도&#39;] 

get_dummies 후의 특성:
 [&#39;가해운전자 연령&#39;, &#39;도로위험도&#39;, &#39;요일_금요일&#39;, &#39;요일_목요일&#39;, &#39;요일_수요일&#39;, &#39;요일_월요일&#39;, &#39;요일_일요일&#39;, &#39;요일_토요일&#39;, &#39;요일_화요일&#39;, &#39;기상상태_눈&#39;, &#39;기상상태_맑음&#39;, &#39;기상상태_비&#39;, &#39;기상상태_안개&#39;, &#39;기상상태_흐림&#39;, &#39;가해운전자 성별_남&#39;, &#39;가해운전자 성별_여&#39;, &#39;시간대_야간&#39;, &#39;시간대_주간&#39;, &#39;월_10월&#39;, &#39;월_11월&#39;, &#39;월_12월&#39;, &#39;월_1월&#39;, &#39;월_2월&#39;, &#39;월_3월&#39;, &#39;월_4월&#39;, &#39;월_5월&#39;, &#39;월_6월&#39;, &#39;월_7월&#39;, &#39;월_8월&#39;, &#39;월_9월&#39;]
</pre>
</div>
</div>

<div class="output_area">

    <div class="prompt"></div>



<div class="output_html rendered_html output_subarea ">
<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>가해운전자 연령</th>
      <th>도로위험도</th>
      <th>요일_금요일</th>
      <th>요일_목요일</th>
      <th>요일_수요일</th>
      <th>요일_월요일</th>
      <th>요일_일요일</th>
      <th>요일_토요일</th>
      <th>요일_화요일</th>
      <th>기상상태_눈</th>
      <th>...</th>
      <th>월_12월</th>
      <th>월_1월</th>
      <th>월_2월</th>
      <th>월_3월</th>
      <th>월_4월</th>
      <th>월_5월</th>
      <th>월_6월</th>
      <th>월_7월</th>
      <th>월_8월</th>
      <th>월_9월</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>45</td>
      <td>0.033</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>...</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>58</td>
      <td>0.068</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>...</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>2</th>
      <td>48</td>
      <td>1.168</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>...</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>37</td>
      <td>0.068</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>...</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>4</th>
      <td>49</td>
      <td>0.136</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>...</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
    </tr>
  </tbody>
</table>
<p>5 rows × 30 columns</p>
</div>
</div>

</div>

<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>X.shape: (11358, 29) y.shape: (11358,)
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[2]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">from</span> <span class="nn">sklearn.model_selection</span> <span class="kn">import</span> <span class="n">train_test_split</span>
<span class="kn">from</span> <span class="nn">sklearn.linear_model</span> <span class="kn">import</span> <span class="n">LinearRegression</span>
<span class="n">X_train</span><span class="p">,</span> <span class="n">X_test</span><span class="p">,</span> <span class="n">y_train</span><span class="p">,</span> <span class="n">y_test</span> <span class="o">=</span> <span class="n">train_test_split</span><span class="p">(</span><span class="n">X</span><span class="p">,</span> <span class="n">y</span><span class="p">,</span> <span class="n">random_state</span><span class="o">=</span><span class="mi">0</span><span class="p">)</span>

<span class="n">mlr</span> <span class="o">=</span> <span class="n">LinearRegression</span><span class="p">()</span>
<span class="n">mlr</span><span class="o">.</span><span class="n">fit</span><span class="p">(</span><span class="n">X_train</span><span class="p">,</span> <span class="n">y_train</span><span class="p">)</span>

<span class="n">y_predicted</span> <span class="o">=</span> <span class="n">mlr</span><span class="o">.</span><span class="n">predict</span><span class="p">(</span><span class="n">X_test</span><span class="p">)</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;테스트 점수: </span><span class="si">{:.2f}</span><span class="s2">&quot;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="n">mlr</span><span class="o">.</span><span class="n">score</span><span class="p">(</span><span class="n">X_test</span><span class="p">,</span> <span class="n">y_test</span><span class="p">)))</span>


<span class="nb">print</span><span class="p">(</span><span class="n">mlr</span><span class="o">.</span><span class="n">coef_</span><span class="p">)</span>

<span class="kn">import</span> <span class="nn">matplotlib.pyplot</span> <span class="k">as</span> <span class="nn">plt</span>
<span class="n">plt</span><span class="o">.</span><span class="n">scatter</span><span class="p">(</span><span class="n">y_test</span><span class="p">,</span> <span class="n">y_predicted</span><span class="p">,</span> <span class="n">alpha</span><span class="o">=</span><span class="mf">1.0</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">xlabel</span><span class="p">(</span><span class="s2">&quot;Actual point&quot;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">ylabel</span><span class="p">(</span><span class="s2">&quot;Predicted point&quot;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">title</span><span class="p">(</span><span class="s2">&quot;MULTIPLE LINEAR REGRESSION&quot;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>

</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>테스트 점수: 0.01
[ 0.0048503  -0.02545486 -0.03155062 -0.09277879  0.08377288  0.01175605
 -0.09163961  0.14589496 -0.71688191 -0.48895315 -0.13364556  0.72656013
  0.6129205  -0.31395321  0.31395321  0.52967483 -0.52967483  0.01711056
  0.05442098  0.16252902  0.01144138  0.12327365 -0.15457319 -0.08488136
  0.06030074  0.16232323 -0.06835302 -0.08752099 -0.19607101]
</pre>
</div>
</div>

<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
"
>
</div>

</div>

<div class="output_area">

    <div class="prompt"></div>


</div>

<div class="output_area">

    <div class="prompt"></div>



</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[&nbsp;]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span> 
</pre></div>

    </div>
</div>
</div>

</div>
    </div>
  
  <!-- 두 번째 페이지  -->
  <div tabindex="-1" id="notebook" class="border-box-sizing">
    <div class="container" id="notebook-container">

<h1><b>2. 2019년(1년) 교통사고 데이터 분석[전체, 성별]</b></h1>

<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[1]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">import</span> <span class="nn">pandas</span> <span class="k">as</span> <span class="nn">pd</span>
<span class="n">data</span> <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">read_csv</span><span class="p">(</span><span class="s2">&quot;./accident_hwamul_gender_male.csv&quot;</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">data</span><span class="p">)</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;원본 특성:</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">,</span> <span class="nb">list</span><span class="p">(</span><span class="n">data</span><span class="o">.</span><span class="n">columns</span><span class="p">),</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">)</span>
<span class="n">data_dummies</span> <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">get_dummies</span><span class="p">(</span><span class="n">data</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;get_dummies 후의 특성:</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">,</span> <span class="nb">list</span><span class="p">(</span><span class="n">data_dummies</span><span class="o">.</span><span class="n">columns</span><span class="p">))</span>

<span class="n">display</span><span class="p">(</span><span class="n">data_dummies</span><span class="o">.</span><span class="n">head</span><span class="p">())</span>

<span class="n">features</span> <span class="o">=</span> <span class="n">data_dummies</span><span class="o">.</span><span class="n">loc</span><span class="p">[:,</span> <span class="p">[</span><span class="s1">&#39;기상상태_눈&#39;</span><span class="p">,</span> <span class="s1">&#39;기상상태_맑음/흐림&#39;</span><span class="p">,</span> <span class="s1">&#39;기상상태_비&#39;</span><span class="p">,</span> <span class="s1">&#39;기상상태_안개&#39;</span><span class="p">,</span> <span class="s1">&#39;시간대_야간&#39;</span><span class="p">,</span> <span class="s1">&#39;시간대_주간&#39;</span><span class="p">]]</span>

<span class="n">X</span> <span class="o">=</span> <span class="n">features</span><span class="o">.</span><span class="n">values</span>
<span class="n">y</span> <span class="o">=</span> <span class="n">data_dummies</span><span class="p">[</span><span class="s1">&#39;도로위험도&#39;</span><span class="p">]</span><span class="o">.</span><span class="n">values</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;X.shape: </span><span class="si">{}</span><span class="s2"> y.shape: </span><span class="si">{}</span><span class="s2">&quot;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="n">X</span><span class="o">.</span><span class="n">shape</span><span class="p">,</span> <span class="n">y</span><span class="o">.</span><span class="n">shape</span><span class="p">))</span>





<span class="kn">from</span> <span class="nn">sklearn.model_selection</span> <span class="kn">import</span> <span class="n">train_test_split</span>
<span class="kn">from</span> <span class="nn">sklearn.linear_model</span> <span class="kn">import</span> <span class="n">LinearRegression</span>
<span class="n">X_train</span><span class="p">,</span> <span class="n">X_test</span><span class="p">,</span> <span class="n">y_train</span><span class="p">,</span> <span class="n">y_test</span> <span class="o">=</span> <span class="n">train_test_split</span><span class="p">(</span><span class="n">X</span><span class="p">,</span> <span class="n">y</span><span class="p">,</span> <span class="n">random_state</span><span class="o">=</span><span class="mi">42</span><span class="p">)</span>

<span class="n">mlr</span> <span class="o">=</span> <span class="n">LinearRegression</span><span class="p">()</span>
<span class="n">mlr</span><span class="o">.</span><span class="n">fit</span><span class="p">(</span><span class="n">X_train</span><span class="p">,</span> <span class="n">y_train</span><span class="p">)</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;mlr.coef_&quot;</span><span class="p">,</span> <span class="n">mlr</span><span class="o">.</span><span class="n">coef_</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;mlr.intercept_&quot;</span><span class="p">,</span> <span class="n">mlr</span><span class="o">.</span><span class="n">intercept_</span><span class="p">)</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;훈련 세트 점수: </span><span class="si">{:.2f}</span><span class="s2">&quot;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="n">mlr</span><span class="o">.</span><span class="n">score</span><span class="p">(</span><span class="n">X_train</span><span class="p">,</span> <span class="n">y_train</span><span class="p">)))</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;테스트 세트 점수: </span><span class="si">{:.2f}</span><span class="s2">&quot;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="n">mlr</span><span class="o">.</span><span class="n">score</span><span class="p">(</span><span class="n">X_test</span><span class="p">,</span> <span class="n">y_test</span><span class="p">)))</span>




<span class="n">y_predicted</span> <span class="o">=</span> <span class="n">mlr</span><span class="o">.</span><span class="n">predict</span><span class="p">(</span><span class="n">X_test</span><span class="p">)</span>
<span class="kn">import</span> <span class="nn">matplotlib.pyplot</span> <span class="k">as</span> <span class="nn">plt</span>
<span class="n">plt</span><span class="o">.</span><span class="n">scatter</span><span class="p">(</span><span class="n">y_test</span><span class="p">,</span> <span class="n">y_predicted</span><span class="p">,</span> <span class="n">alpha</span><span class="o">=</span><span class="mf">1.0</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">xlabel</span><span class="p">(</span><span class="s2">&quot;Actual point&quot;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">ylabel</span><span class="p">(</span><span class="s2">&quot;Predicted point&quot;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">title</span><span class="p">(</span><span class="s2">&quot;MULTIPLE LINEAR REGRESSION&quot;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>      기상상태 시간대   도로위험도
0    맑음/흐림  야간  0.0033
1    맑음/흐림  주간  0.0033
2    맑음/흐림  주간  0.0033
3        비  주간  0.0033
4    맑음/흐림  야간  0.0033
..     ...  ..     ...
992  맑음/흐림  주간  2.1372
993  맑음/흐림  주간  2.2404
994      비  야간  2.3188
995  맑음/흐림  주간  3.0000
996  맑음/흐림  주간  3.1168

[997 rows x 3 columns]
원본 특성:
 [&#39;기상상태&#39;, &#39;시간대&#39;, &#39;도로위험도&#39;] 

get_dummies 후의 특성:
 [&#39;도로위험도&#39;, &#39;기상상태_눈&#39;, &#39;기상상태_맑음/흐림&#39;, &#39;기상상태_비&#39;, &#39;기상상태_안개&#39;, &#39;시간대_야간&#39;, &#39;시간대_주간&#39;]
</pre>
</div>
</div>

<div class="output_area">

    <div class="prompt"></div>



<div class="output_html rendered_html output_subarea ">
<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>도로위험도</th>
      <th>기상상태_눈</th>
      <th>기상상태_맑음/흐림</th>
      <th>기상상태_비</th>
      <th>기상상태_안개</th>
      <th>시간대_야간</th>
      <th>시간대_주간</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>0.0033</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>0.0033</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>2</th>
      <td>0.0033</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>3</th>
      <td>0.0033</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>4</th>
      <td>0.0033</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
    </tr>
  </tbody>
</table>
</div>
</div>

</div>

<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>X.shape: (997, 6) y.shape: (997,)
mlr.coef_ [ 0.76656821 -0.2104224  -0.19911403 -0.35703179  0.07105309 -0.07105309]
mlr.intercept_ 0.4095786924729624
훈련 세트 점수: 0.04
테스트 세트 점수: 0.03
</pre>
</div>
</div>

<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[3]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">import</span> <span class="nn">pandas</span> <span class="k">as</span> <span class="nn">pd</span>
<span class="n">data</span> <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">read_csv</span><span class="p">(</span><span class="s2">&quot;./accident_hwamul_gender_male.csv&quot;</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">data</span><span class="p">)</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;원본 특성:</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">,</span> <span class="nb">list</span><span class="p">(</span><span class="n">data</span><span class="o">.</span><span class="n">columns</span><span class="p">),</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">)</span>
<span class="n">data_dummies</span> <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">get_dummies</span><span class="p">(</span><span class="n">data</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;get_dummies 후의 특성:</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">,</span> <span class="nb">list</span><span class="p">(</span><span class="n">data_dummies</span><span class="o">.</span><span class="n">columns</span><span class="p">))</span>

<span class="n">display</span><span class="p">(</span><span class="n">data_dummies</span><span class="o">.</span><span class="n">head</span><span class="p">())</span>

<span class="n">features</span> <span class="o">=</span> <span class="n">data_dummies</span><span class="o">.</span><span class="n">loc</span><span class="p">[:,</span> <span class="p">[</span><span class="s1">&#39;기상상태_맑음/흐림&#39;</span><span class="p">,</span> <span class="s1">&#39;시간대_야간&#39;</span><span class="p">,</span> <span class="s1">&#39;시간대_주간&#39;</span><span class="p">]]</span>

<span class="n">X</span> <span class="o">=</span> <span class="n">features</span><span class="o">.</span><span class="n">values</span>
<span class="n">y</span> <span class="o">=</span> <span class="n">data_dummies</span><span class="p">[</span><span class="s1">&#39;도로위험도&#39;</span><span class="p">]</span><span class="o">.</span><span class="n">values</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;X.shape: </span><span class="si">{}</span><span class="s2"> y.shape: </span><span class="si">{}</span><span class="s2">&quot;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="n">X</span><span class="o">.</span><span class="n">shape</span><span class="p">,</span> <span class="n">y</span><span class="o">.</span><span class="n">shape</span><span class="p">))</span>





<span class="kn">from</span> <span class="nn">sklearn.model_selection</span> <span class="kn">import</span> <span class="n">train_test_split</span>
<span class="kn">from</span> <span class="nn">sklearn.linear_model</span> <span class="kn">import</span> <span class="n">LinearRegression</span>
<span class="n">X_train</span><span class="p">,</span> <span class="n">X_test</span><span class="p">,</span> <span class="n">y_train</span><span class="p">,</span> <span class="n">y_test</span> <span class="o">=</span> <span class="n">train_test_split</span><span class="p">(</span><span class="n">X</span><span class="p">,</span> <span class="n">y</span><span class="p">,</span> <span class="n">random_state</span><span class="o">=</span><span class="mi">42</span><span class="p">)</span>

<span class="n">mlr</span> <span class="o">=</span> <span class="n">LinearRegression</span><span class="p">()</span>
<span class="n">mlr</span><span class="o">.</span><span class="n">fit</span><span class="p">(</span><span class="n">X_train</span><span class="p">,</span> <span class="n">y_train</span><span class="p">)</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;mlr.coef_&quot;</span><span class="p">,</span> <span class="n">mlr</span><span class="o">.</span><span class="n">coef_</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;mlr.intercept_&quot;</span><span class="p">,</span> <span class="n">mlr</span><span class="o">.</span><span class="n">intercept_</span><span class="p">)</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;훈련 세트 점수: </span><span class="si">{:.2f}</span><span class="s2">&quot;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="n">mlr</span><span class="o">.</span><span class="n">score</span><span class="p">(</span><span class="n">X_train</span><span class="p">,</span> <span class="n">y_train</span><span class="p">)))</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;테스트 세트 점수: </span><span class="si">{:.2f}</span><span class="s2">&quot;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="n">mlr</span><span class="o">.</span><span class="n">score</span><span class="p">(</span><span class="n">X_test</span><span class="p">,</span> <span class="n">y_test</span><span class="p">)))</span>




<span class="n">y_predicted</span> <span class="o">=</span> <span class="n">mlr</span><span class="o">.</span><span class="n">predict</span><span class="p">(</span><span class="n">X_test</span><span class="p">)</span>
<span class="kn">import</span> <span class="nn">matplotlib.pyplot</span> <span class="k">as</span> <span class="nn">plt</span>
<span class="n">plt</span><span class="o">.</span><span class="n">scatter</span><span class="p">(</span><span class="n">y_test</span><span class="p">,</span> <span class="n">y_predicted</span><span class="p">,</span> <span class="n">alpha</span><span class="o">=</span><span class="mf">1.0</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">xlabel</span><span class="p">(</span><span class="s2">&quot;Actual point&quot;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">ylabel</span><span class="p">(</span><span class="s2">&quot;Predicted point&quot;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">title</span><span class="p">(</span><span class="s2">&quot;MULTIPLE LINEAR REGRESSION&quot;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>      기상상태 시간대   도로위험도
0    맑음/흐림  야간  0.0033
1    맑음/흐림  주간  0.0033
2    맑음/흐림  주간  0.0033
3        비  주간  0.0033
4    맑음/흐림  야간  0.0033
..     ...  ..     ...
992  맑음/흐림  주간  2.1372
993  맑음/흐림  주간  2.2404
994      비  야간  2.3188
995  맑음/흐림  주간  3.0000
996  맑음/흐림  주간  3.1168

[997 rows x 3 columns]
원본 특성:
 [&#39;기상상태&#39;, &#39;시간대&#39;, &#39;도로위험도&#39;] 

get_dummies 후의 특성:
 [&#39;도로위험도&#39;, &#39;기상상태_눈&#39;, &#39;기상상태_맑음/흐림&#39;, &#39;기상상태_비&#39;, &#39;기상상태_안개&#39;, &#39;시간대_야간&#39;, &#39;시간대_주간&#39;]
</pre>
</div>
</div>

<div class="output_area">

    <div class="prompt"></div>



<div class="output_html rendered_html output_subarea ">
<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>도로위험도</th>
      <th>기상상태_눈</th>
      <th>기상상태_맑음/흐림</th>
      <th>기상상태_비</th>
      <th>기상상태_안개</th>
      <th>시간대_야간</th>
      <th>시간대_주간</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>0.0033</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>0.0033</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>2</th>
      <td>0.0033</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>3</th>
      <td>0.0033</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>4</th>
      <td>0.0033</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
    </tr>
  </tbody>
</table>
</div>
</div>

</div>

<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>X.shape: (997, 3) y.shape: (997,)
mlr.coef_ [-2.25704583e-02  1.46093125e+14  1.46093125e+14]
mlr.intercept_ -146093124521800.97
훈련 세트 점수: 0.03
테스트 세트 점수: 0.03
</pre>
</div>
</div>

<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[4]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">import</span> <span class="nn">pandas</span> <span class="k">as</span> <span class="nn">pd</span>
<span class="n">data</span> <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">read_csv</span><span class="p">(</span><span class="s2">&quot;./accident_hwamul.csv&quot;</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">data</span><span class="p">)</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;원본 특성:</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">,</span> <span class="nb">list</span><span class="p">(</span><span class="n">data</span><span class="o">.</span><span class="n">columns</span><span class="p">),</span> <span class="s2">&quot;</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">)</span>
<span class="n">data_dummies</span> <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">get_dummies</span><span class="p">(</span><span class="n">data</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;get_dummies 후의 특성:</span><span class="se">\n</span><span class="s2">&quot;</span><span class="p">,</span> <span class="nb">list</span><span class="p">(</span><span class="n">data_dummies</span><span class="o">.</span><span class="n">columns</span><span class="p">))</span>

<span class="n">display</span><span class="p">(</span><span class="n">data_dummies</span><span class="o">.</span><span class="n">head</span><span class="p">())</span>

<span class="n">features</span> <span class="o">=</span> <span class="n">data_dummies</span><span class="o">.</span><span class="n">loc</span><span class="p">[:,</span> <span class="p">[</span><span class="s1">&#39;기상상태_눈&#39;</span><span class="p">,</span> <span class="s1">&#39;기상상태_맑음/흐림&#39;</span><span class="p">,</span> <span class="s1">&#39;기상상태_비&#39;</span><span class="p">,</span> <span class="s1">&#39;기상상태_안개&#39;</span><span class="p">,</span> <span class="s1">&#39;시간대_야간&#39;</span><span class="p">,</span> <span class="s1">&#39;시간대_주간&#39;</span><span class="p">]]</span>

<span class="n">X</span> <span class="o">=</span> <span class="n">features</span><span class="o">.</span><span class="n">values</span>
<span class="n">y</span> <span class="o">=</span> <span class="n">data_dummies</span><span class="p">[</span><span class="s1">&#39;도로위험도&#39;</span><span class="p">]</span><span class="o">.</span><span class="n">values</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;X.shape: </span><span class="si">{}</span><span class="s2"> y.shape: </span><span class="si">{}</span><span class="s2">&quot;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="n">X</span><span class="o">.</span><span class="n">shape</span><span class="p">,</span> <span class="n">y</span><span class="o">.</span><span class="n">shape</span><span class="p">))</span>





<span class="kn">from</span> <span class="nn">sklearn.model_selection</span> <span class="kn">import</span> <span class="n">train_test_split</span>
<span class="kn">from</span> <span class="nn">sklearn.linear_model</span> <span class="kn">import</span> <span class="n">LinearRegression</span>
<span class="n">X_train</span><span class="p">,</span> <span class="n">X_test</span><span class="p">,</span> <span class="n">y_train</span><span class="p">,</span> <span class="n">y_test</span> <span class="o">=</span> <span class="n">train_test_split</span><span class="p">(</span><span class="n">X</span><span class="p">,</span> <span class="n">y</span><span class="p">,</span> <span class="n">random_state</span><span class="o">=</span><span class="mi">42</span><span class="p">)</span>

<span class="n">mlr</span> <span class="o">=</span> <span class="n">LinearRegression</span><span class="p">()</span>
<span class="n">mlr</span><span class="o">.</span><span class="n">fit</span><span class="p">(</span><span class="n">X_train</span><span class="p">,</span> <span class="n">y_train</span><span class="p">)</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;mlr.coef_&quot;</span><span class="p">,</span> <span class="n">mlr</span><span class="o">.</span><span class="n">coef_</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;mlr.intercept_&quot;</span><span class="p">,</span> <span class="n">mlr</span><span class="o">.</span><span class="n">intercept_</span><span class="p">)</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;훈련 세트 점수: </span><span class="si">{:.2f}</span><span class="s2">&quot;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="n">mlr</span><span class="o">.</span><span class="n">score</span><span class="p">(</span><span class="n">X_train</span><span class="p">,</span> <span class="n">y_train</span><span class="p">)))</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;테스트 세트 점수: </span><span class="si">{:.2f}</span><span class="s2">&quot;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="n">mlr</span><span class="o">.</span><span class="n">score</span><span class="p">(</span><span class="n">X_test</span><span class="p">,</span> <span class="n">y_test</span><span class="p">)))</span>




<span class="n">y_predicted</span> <span class="o">=</span> <span class="n">mlr</span><span class="o">.</span><span class="n">predict</span><span class="p">(</span><span class="n">X_test</span><span class="p">)</span>
<span class="kn">import</span> <span class="nn">matplotlib.pyplot</span> <span class="k">as</span> <span class="nn">plt</span>
<span class="n">plt</span><span class="o">.</span><span class="n">scatter</span><span class="p">(</span><span class="n">y_test</span><span class="p">,</span> <span class="n">y_predicted</span><span class="p">,</span> <span class="n">alpha</span><span class="o">=</span><span class="mf">1.0</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">xlabel</span><span class="p">(</span><span class="s2">&quot;Actual point&quot;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">ylabel</span><span class="p">(</span><span class="s2">&quot;Predicted point&quot;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">title</span><span class="p">(</span><span class="s2">&quot;MULTIPLE LINEAR REGRESSION&quot;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>       기상상태 시간대   도로위험도
0     맑음/흐림  주간  0.2336
1     맑음/흐림  주간  0.0136
2     맑음/흐림  주간  0.0136
3     맑음/흐림  주간  1.0000
4     맑음/흐림  주간  0.1234
...     ...  ..     ...
1000  맑음/흐림  주간  0.0068
1001  맑음/흐림  주간  0.0068
1002  맑음/흐림  주간  0.0068
1003  맑음/흐림  주간  0.0068
1004  맑음/흐림  주간  0.1168

[1005 rows x 3 columns]
원본 특성:
 [&#39;기상상태&#39;, &#39;시간대&#39;, &#39;도로위험도&#39;] 

get_dummies 후의 특성:
 [&#39;도로위험도&#39;, &#39;기상상태_눈&#39;, &#39;기상상태_맑음/흐림&#39;, &#39;기상상태_비&#39;, &#39;기상상태_안개&#39;, &#39;시간대_야간&#39;, &#39;시간대_주간&#39;]
</pre>
</div>
</div>

<div class="output_area">

    <div class="prompt"></div>



<div class="output_html rendered_html output_subarea ">
<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>도로위험도</th>
      <th>기상상태_눈</th>
      <th>기상상태_맑음/흐림</th>
      <th>기상상태_비</th>
      <th>기상상태_안개</th>
      <th>시간대_야간</th>
      <th>시간대_주간</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>0.2336</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>1</th>
      <td>0.0136</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>2</th>
      <td>0.0136</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>3</th>
      <td>1.0000</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <th>4</th>
      <td>0.1234</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>1</td>
    </tr>
  </tbody>
</table>
</div>
</div>

</div>

<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>X.shape: (1005, 6) y.shape: (1005,)
mlr.coef_ [-1.33744846e+13 -1.33744846e+13 -1.33744846e+13 -1.33744846e+13
  8.80830379e+11  8.80830379e+11]
mlr.intercept_ 12493654247378.986
훈련 세트 점수: 0.06
테스트 세트 점수: -0.01
</pre>
</div>
</div>

<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[&nbsp;]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span> 
</pre></div>

    </div>
</div>
</div>

</div>
    </div>
  </div>
  
  </div>
</body>

 


</html>
