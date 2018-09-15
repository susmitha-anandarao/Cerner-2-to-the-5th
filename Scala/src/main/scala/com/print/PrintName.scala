package com.print

import akka.actor.{Actor, ActorLogging}

case class PrintMessage(text: String)

class PrintName extends Actor with ActorLogging {

  override def receive: Receive = {
    case PrintMessage(text) =>
      printMessage(text)
  }

  private def printMessage(text: String) = log.info("Hello " + text)

}
