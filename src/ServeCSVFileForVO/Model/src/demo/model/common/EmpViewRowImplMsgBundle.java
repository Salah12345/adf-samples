/* Copyright 2010, 2017, Oracle and/or its affiliates. All rights reserved. */
package demo.model.common;
import oracle.jbo.common.JboResourceBundle;
//  ---------------------------------------------------------------------
//  ---    File generated by Oracle ADF Business Components Design Time.
//  ---    Custom code may be added to this class.
//  ---    Warning: Do not modify method signatures of generated methods.
//  ---------------------------------------------------------------------

public class EmpViewRowImplMsgBundle extends JboResourceBundle  {
  /**
   * 
   *  This is the default constructor (do not remove)
   */
  public EmpViewRowImplMsgBundle() {
  }

  /**
   * 
   * @return an array of key-value pairs.
   */
  public Object[][] getContents() {
    return super.getMergedArray(sMessageStrings, super.getContents());
  }

  static final Object[][] sMessageStrings = {
    {"Ename_LABEL", "Last Name"},
    {"Deptno_LABEL", "Department"},
    {"Empno_LABEL", "Id"},
    {"Comm_LABEL", "Commission"},
    {"Sal_LABEL", "Salary"},
    {"Mgr_LABEL", "Manager Id"}};



}
