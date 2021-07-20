config.load_autoconfig()

c.content.blocking.method = "both"
c.content.notifications.enabled = False
c.editor.command = ["alacritty", "-e", "nvim", "{}"]
c.statusbar.show = "in-mode"

c.fonts.default_family = "Hack"

config.bind('H', 'tab-prev')
config.bind('L', 'tab-next')
config.bind('gH', 'tab-move -')
config.bind('gL', 'tab-move +')

config.bind('J', 'forward')
config.bind('K', 'back')
config.unbind('gJ')
config.unbind('gK')

config.bind('gh', 'open')
config.bind(',m', 'hint links spawn vlc {hint-url}')
config.bind(',M', 'spawn vlc {url}')
config.bind('tt', 'config-cycle tabs.show always never')

config.source('gruvbox.py')

