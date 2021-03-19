config.load_autoconfig()

c.content.blocking.method = "both"
c.content.notifications = False
c.editor.command = ["alacritty", "-e", "nvim", "{}"]
c.statusbar.show = "in-mode"
c.tabs.show = "switching"

config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')

config.source('gruvbox.py')

