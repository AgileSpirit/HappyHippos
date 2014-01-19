package com.agile.spirit.beans;

import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.*;

@Node(jcrType = "happyhippos:banner")
public class BannerCompound extends BaseDocument {

  public String getTitle() {
    return getProperty("happyhippos:title");
  }

  public String getSummary() {
    return getProperty("happyhippos:summary");
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
