var updateConfiguration = function(config) {
    window.SelfRefactoringToken = config.koboldToken;
    window.SelfRefactoringServerUrl = config.koboldServer;
};

browser.storage.local.get("config").then(data => {
    var config = data.config;
    updateConfiguration(config);
});

browser.storage.onChanged.addListener((change, area) => {
    if (area == "local" && change.config.newValue) {
        updateConfiguration(change.config.newValue);
    }
});
