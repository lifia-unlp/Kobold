
browser.storage.local.get("config").then(data => {
    var config = data.config;
    if (config) {
        document.getElementById("kobold-token").value = config.koboldToken;
        document.getElementById("kobold-server").value = config.koboldServer;
    }
});

var saveConfiguration = function() {
    var config = {};
    config.koboldToken = document.getElementById("kobold-token").value;
    config.koboldServer = document.getElementById("kobold-server").value;
    browser.storage.local.set({ config });
};

document.getElementById("submit-button").addEventListener("click", event => {
    saveConfiguration();
});
