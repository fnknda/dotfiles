config.load_autoconfig()

c.content.blocking.method = "both"
c.content.notifications = False
c.editor.command = ["alacritty", "-e", "nvim", "{}"]
c.statusbar.show = "in-mode"
c.tabs.show = "switching"

config.bind('H', 'tab-prev')
config.bind('L', 'tab-next')
config.bind('gH', 'tab-move -')
config.bind('gL', 'tab-move +')

config.bind('J', 'forward')
config.bind('K', 'back')
config.unbind('gJ')
config.unbind('gK')

config.bind('gh', 'open')

config.source('gruvbox.py')

