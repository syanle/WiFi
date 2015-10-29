// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.util;

import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.QName;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXParseException;

public class XMLErrorHandler
    implements ErrorHandler
{

    protected static final QName ERROR_QNAME = QName.get("error");
    protected static final QName FATALERROR_QNAME = QName.get("fatalError");
    protected static final QName WARNING_QNAME = QName.get("warning");
    private QName errorQName;
    private Element errors;
    private QName fatalErrorQName;
    private QName warningQName;

    public XMLErrorHandler()
    {
        errorQName = ERROR_QNAME;
        fatalErrorQName = FATALERROR_QNAME;
        warningQName = WARNING_QNAME;
        errors = DocumentHelper.createElement("errors");
    }

    public XMLErrorHandler(Element element)
    {
        errorQName = ERROR_QNAME;
        fatalErrorQName = FATALERROR_QNAME;
        warningQName = WARNING_QNAME;
        errors = element;
    }

    protected void addException(Element element, SAXParseException saxparseexception)
    {
        element.addAttribute("column", Integer.toString(saxparseexception.getColumnNumber()));
        element.addAttribute("line", Integer.toString(saxparseexception.getLineNumber()));
        String s = saxparseexception.getPublicId();
        if (s != null && s.length() > 0)
        {
            element.addAttribute("publicID", s);
        }
        s = saxparseexception.getSystemId();
        if (s != null && s.length() > 0)
        {
            element.addAttribute("systemID", s);
        }
        element.addText(saxparseexception.getMessage());
    }

    public void error(SAXParseException saxparseexception)
    {
        addException(errors.addElement(errorQName), saxparseexception);
    }

    public void fatalError(SAXParseException saxparseexception)
    {
        addException(errors.addElement(fatalErrorQName), saxparseexception);
    }

    public QName getErrorQName()
    {
        return errorQName;
    }

    public Element getErrors()
    {
        return errors;
    }

    public QName getFatalErrorQName()
    {
        return fatalErrorQName;
    }

    public QName getWarningQName()
    {
        return warningQName;
    }

    public void setErrorQName(QName qname)
    {
        errorQName = qname;
    }

    public void setErrors(Element element)
    {
        errors = element;
    }

    public void setFatalErrorQName(QName qname)
    {
        fatalErrorQName = qname;
    }

    public void setWarningQName(QName qname)
    {
        warningQName = qname;
    }

    public void warning(SAXParseException saxparseexception)
    {
        addException(errors.addElement(warningQName), saxparseexception);
    }

}
