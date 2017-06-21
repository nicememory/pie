# -*- coding:UTF-8 -*-
import pyglet

window = pyglet.window.Window(fullscreen=False, resizable=True)
fps_display = pyglet.window.FPSDisplay(window)
label = pyglet.text.Label('Good morning!',
                        font_name='宋体',
                        font_size=48,
                        x=window.width//2, y=window.height//2,
                        anchor_x='center', anchor_y='center')

image = pyglet.resource.image('kitten.jpg')

@window.event
def on_draw():
    window.clear()
    image.blit(0, 0)
    label.draw()
    fps_display.label.draw()

pyglet.app.run()

