package com.agile.spirit.beans;

import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageSetBean;
import org.hippoecm.hst.content.beans.standard.HippoHtml;

import java.util.Calendar;

@Node(jcrType = "happyhippos:speciesdocument")
public class SpeciesDocument extends BaseDocument {

  public String getName() {
    return getProperty("happyhippos:name");
  }

  public String getScientificName() {
    return getProperty("happyhippos:scientificname");
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
  public HippoGalleryImageSetBean getImage() {
    return getLinkedBean("happyhippos:image", HippoGalleryImageSetBean.class);
  }


}
