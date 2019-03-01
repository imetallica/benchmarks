package com.bench

import org.scalatra._
import org.scalatra.json._
import org.json4s.{DefaultFormats, Formats}
import org.scalatra.FutureSupport

import scala.concurrent.{ExecutionContext, Future}

case class AsyncFoo(name: String, role: String)

class MyAppAsyncServlet extends ScalatraServlet with JacksonJsonSupport with FutureSupport {
  protected implicit lazy val jsonFormats: Formats = DefaultFormats
  protected implicit def executor = ExecutionContext.global

  before() {
    contentType = formats("json")
  }

  get("/") {
    Future {
      AsyncFoo("Thiago Lima", "Nerd of TI")
    }
  }

}
