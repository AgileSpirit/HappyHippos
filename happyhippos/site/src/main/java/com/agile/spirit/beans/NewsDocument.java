package com.agile.spirit.beans;

import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageSetBean;
import org.hippoecm.hst.content.beans.standard.HippoHtml;

import java.util.Calendar;

@Node(jcrType = "happyhippos:newsdocument")
public class NewsDocument extends BaseDocument {

  public String getTitle() {
    return getProperty("happyhippos:title");
  }

  public String getSummary() {
    return getProperty("happyhippos:summary");
  }

  public Calendar getDate() {
    return getProperty("happyhippos:date");
  }

  public HippoHtml getHtml() {
    return getHippoHtml("happyhippos:body");
  }

  /**
   * Get the imageset of the newspage
   *
   * @return the imageset of the newspage
   */
  public HippoGalleryImageSetBean getImage() {
    return getLinkedBean("happyhippos:image", HippoGalleryImageSetBean.class);
  }


}
