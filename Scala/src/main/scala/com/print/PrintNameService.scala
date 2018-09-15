package com.print

import akka.http.scaladsl.model.StatusCodes
import org.squbs.unicomplex.RouteDefinition
import akka.http.scaladsl.marshallers.sprayjson.SprayJsonSupport._
import spray.json.DefaultJsonProtocol._

/**
  * Micro service example for cerner_2^5_2018
  */
class PrintNameService extends RouteDefinition {

  implicit val printMessageFormat = jsonFormat1(PrintMessage)

  val route = {
    post {
      path("print_message") {
        entity(as[PrintMessage]) { message =>
          context.system.actorSelection("user/print_name/print_name_actor") ! message
          complete(StatusCodes.OK)
        }
      }
    }
  }

}
