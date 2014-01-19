package com.agile.spirit.beans;

import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoDocument;
import org.hippoecm.hst.content.beans.standard.HippoItem;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

@Node(jcrType = "happyhippos:homepagedocument")
public class HomePageDocument extends HippoDocument {

  public static final Logger log = LoggerFactory.getLogger(HomePageDocument.class);

  public String getTitle() {
    return getProperty("happyhippos:title");
  }

  public List<BannerCompound> getBanners() {
    List<BannerCompound> result = getChildBeans(BannerCompound.class);
    log.info("Number of banners = " + result.size());
    return result;
  }

}
