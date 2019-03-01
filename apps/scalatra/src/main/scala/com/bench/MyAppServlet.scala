package com.bench

import org.scalatra._
import org.scalatra.json._
import org.json4s.{DefaultFormats, Formats}

case class Foo(name: String, role: String)

class MyAppServlet extends ScalatraServlet with JacksonJsonSupport {
  protected implicit lazy val jsonFormats: Formats = DefaultFormats

  before() {
    contentType = formats("json")
  }

  get("/") {
    Foo("Thiago Lima", "Nerd of TI")
  }

}
