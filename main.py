#!/usr/bin/python
# -*- coding: UTF-8 -*-

import sys
import pygame
from pygame.locals import *

class App:
    def __init__(self):
        self._running = True
        self._display_surf = None
        self.size = self.weight, self.height = 1600, 900
                                     
    def on_init(self):
        pygame.init()
        self._display_surf = pygame.display.set_mode(self.size, pygame.HWSURFACE | pygame.DOUBLEBUF)
        self._running = True
                                                                      
    def on_event(self, event):
        if event.type == pygame.QUIT:
            self._running = False
              
    def on_loop(self):
        pass
        
    def on_render(self):
        pass
    
    def on_cleanup(self):
        pygame.quit()
    
    def on_execute(self):
        if self.on_init() == False:
            self._running = False
        
        while( self._running ):
            for event in pygame.event.get():
                self.on_event(event)
            self.on_loop()
            self.on_render()
        self.on_cleanup()

def main(argv):
    print "我要做最好的浏览器！！！"
    theApp = App()
    theApp.on_execute()

if __name__ == '__main__':
    main(sys.argv)