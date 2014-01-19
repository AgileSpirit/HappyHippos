package com.agile.spirit.beans;

import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageSetBean;
import org.hippoecm.hst.content.beans.standard.HippoHtml;

@Node(jcrType = "happyhippos:moviedocument")
public class MovieDocument extends BaseDocument {

  public String getTitle() {
    return getProperty("happyhippos:title");
  }

  public Integer getYear() {
    return getProperty("happyhippos:year");
  }

  public String getSummary() {
    return getProperty("happyhippos:summary");
  }

  public HippoHtml getDescription() {
    return getHippoHtml("happyhippos:description");
  }

  /**
   * Get the imageset of the newspage
   *
   * @return the imageset of the newspage
   */
  public HippoGalleryImageSetBean getPoster() {
    return getLinkedBean("happyhippos:poster", HippoGalleryImageSetBean.class);
  }

}
