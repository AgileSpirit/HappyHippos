package com.agile.spirit.beans;

import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.*;

@Node(jcrType = "happyhippos:bannercompound")
public class BannerCompound extends HippoItem {

  public String getTitle() {
    return getProperty("happyhippos:title");
  }

  public String getText() {
    return getProperty("happyhippos:text");
  }

  /**
   * Get the imageset of the newspage
   *
   * @return the imageset of the newspage
   */
  public HippoGalleryImageSetBean getImage() {
    return getLinkedBean("happyhippos:image", HippoGalleryImageSetBean.class);
  }

  public HippoBean getLink() {
    return getLinkedBean("happyhippos:link", HippoBean.class);
  }

}
