package com.agile.spirit.beans;

import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoHtml;

@Node(jcrType = "happyhippos:textdocument")
public class TextDocument extends BaseDocument {

  public String getTitle() {
    return getProperty("happyhippos:title");
  }

  public String getSummary() {
    return getProperty("happyhippos:summary");
  }

  public HippoHtml getHtml() {
    return getHippoHtml("happyhippos:body");
  }

}
