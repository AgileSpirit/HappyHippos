package com.agile.spirit.components;

import org.hippoecm.hst.component.support.bean.BaseHstComponent;
import org.hippoecm.hst.core.component.HstComponentException;
import org.hippoecm.hst.core.component.HstRequest;
import org.hippoecm.hst.core.component.HstResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Footer extends BaseHstComponent {

  public static final Logger log = LoggerFactory.getLogger(Footer.class);

  @Override
  public void doBeforeRender(final HstRequest request, final HstResponse response) throws HstComponentException {
  }

}
