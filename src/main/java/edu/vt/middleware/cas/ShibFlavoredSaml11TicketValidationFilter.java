package edu.vt.middleware.cas;

import javax.servlet.http.HttpServletRequest;
import org.jasig.cas.client.util.CommonUtils;
import org.jasig.cas.client.validation.Saml11TicketValidationFilter;

public class ShibFlavoredSaml11TicketValidationFilter extends Saml11TicketValidationFilter  {
  @Override
  protected String retrieveTicketFromRequest(final HttpServletRequest request) {
    return CommonUtils.safeGetParameter(request, "ticket");
  }
}
