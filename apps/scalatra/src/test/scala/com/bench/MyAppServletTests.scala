package com.bench

import org.scalatra.test.scalatest._

class MyAppServletTests extends ScalatraFunSuite {

  addServlet(classOf[MyAppServlet], "/*")

  test("GET / on MyAppServlet should return status 200") {
    get("/") {
      status should equal (200)
    }
  }

}
