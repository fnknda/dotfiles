config.load_autoconfig()

c.editor.command = ["alacritty", "-e", "nvim", "{}"]
c.statusbar.show = "in-mode"
c.tabs.show = "switching"
config.set("colors.webpage.darkmode.enabled", True)
config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')

config.source('gruvbox.py')

