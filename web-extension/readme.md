# Kobold event interception web-extension

In order to work, Kobold needs to incercept and record events that take place while using your web application. This is achieved via interception code that is injected in all of your application's web pages. 

This web-extension, once installed in your browser (Chrome of Firefox only), will intercet UI events in all pages from all sites. Interception behaviour will stop once you uninstall the web-extension and restart your browser.

This web-extension captures events and reports them to a remote server. You can configure the address of the server (i.e. your own) in the options page. 

Event reports must be associated to a Kobold project token. You can set the token in the options page. You can obtain your token in the "tracking code" tab in your Kobold account. 

## Building the web-extension

This extension depends on external libraries such as jQuery, and the Webextension-polyfill. Dependencies can be installed via npm. 

Run ```npm install``` in the web-extension folder to install dependencies. 

## Distributing and installing the web-extension

In order to work, the web-extension need to be installed in your web-browser. At the moment, the extension only works with Chrome and Firefox. 

Everything you need to install the web-extension is inside the web-extension folder. Copy the content of this folder to your target machines and install the plugin via the normal methods of your target browser. 



