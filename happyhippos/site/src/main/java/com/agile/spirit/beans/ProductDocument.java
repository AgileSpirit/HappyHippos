package com.agile.spirit.beans;

import org.hippoecm.hst.content.beans.Node;

import java.util.Calendar;

@Node(jcrType = "happyhippos:productdocument")
public class ProductDocument extends BaseDocument {

  public String getTitle() {
    return getProperty("happyhippos:title");
  }

  public String getDescription() {
    return getProperty("happyhippos:description");
  }

  public Calendar getDate() {
    return getProperty("happyhippos:date");
  }

}
