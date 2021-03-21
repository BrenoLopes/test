package br.balladesh.samplebin2dec.controllers.app

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping

@Controller
class HomeController {

  @RequestMapping(value = ["/**/{path:[^.]*]}"])
  fun redirect(@PathVariable path: String): String {
    return "forward:/"
  }

}