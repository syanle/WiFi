// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.swing;

import java.io.PrintStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.XPath;
import org.jaxen.VariableContext;

// Referenced classes of package org.dom4j.swing:
//            XMLTableColumnDefinition

public class XMLTableDefinition
    implements Serializable, VariableContext
{

    private XMLTableColumnDefinition columnArray[];
    private Map columnNameIndex;
    private List columns;
    private Object rowValue;
    private XPath rowXPath;
    private VariableContext variableContext;

    public XMLTableDefinition()
    {
        columns = new ArrayList();
    }

    public static XMLTableDefinition load(Document document)
    {
        return load(document.getRootElement());
    }

    public static XMLTableDefinition load(Element element)
    {
        XMLTableDefinition xmltabledefinition = new XMLTableDefinition();
        xmltabledefinition.setRowExpression(element.attributeValue("select"));
        for (element = element.elementIterator("column"); element.hasNext();)
        {
            Object obj = (Element)element.next();
            String s = ((Element) (obj)).attributeValue("select");
            String s1 = ((Element) (obj)).getText();
            String s2 = ((Element) (obj)).attributeValue("type", "string");
            obj = ((Element) (obj)).attributeValue("columnNameXPath");
            int i = XMLTableColumnDefinition.parseType(s2);
            if (obj != null)
            {
                xmltabledefinition.addColumnWithXPathName(((String) (obj)), s, i);
            } else
            {
                xmltabledefinition.addColumn(s1, s, i);
            }
        }

        return xmltabledefinition;
    }

    public void addColumn(String s, String s1)
    {
        addColumn(s, s1, 0);
    }

    public void addColumn(String s, String s1, int i)
    {
        addColumn(new XMLTableColumnDefinition(s, createColumnXPath(s1), i));
    }

    public void addColumn(XMLTableColumnDefinition xmltablecolumndefinition)
    {
        clearCaches();
        columns.add(xmltablecolumndefinition);
    }

    public void addColumnWithXPathName(String s, String s1, int i)
    {
        addColumn(new XMLTableColumnDefinition(createColumnXPath(s), createColumnXPath(s1), i));
    }

    public void addNumberColumn(String s, String s1)
    {
        addColumn(s, s1, 2);
    }

    public void addStringColumn(String s, String s1)
    {
        addColumn(s, s1, 1);
    }

    public void clear()
    {
        clearCaches();
        columns.clear();
    }

    protected void clearCaches()
    {
        columnArray = null;
        columnNameIndex = null;
    }

    protected XPath createColumnXPath(String s)
    {
        s = createXPath(s);
        s.setVariableContext(this);
        return s;
    }

    protected XPath createXPath(String s)
    {
        return DocumentHelper.createXPath(s);
    }

    public XMLTableColumnDefinition getColumn(int i)
    {
        if (columnArray == null)
        {
            columnArray = new XMLTableColumnDefinition[columns.size()];
            columns.toArray(columnArray);
        }
        return columnArray[i];
    }

    public XMLTableColumnDefinition getColumn(String s)
    {
        if (columnNameIndex == null)
        {
            columnNameIndex = new HashMap();
            XMLTableColumnDefinition xmltablecolumndefinition;
            for (Iterator iterator = columns.iterator(); iterator.hasNext(); columnNameIndex.put(xmltablecolumndefinition.getName(), xmltablecolumndefinition))
            {
                xmltablecolumndefinition = (XMLTableColumnDefinition)iterator.next();
            }

        }
        return (XMLTableColumnDefinition)columnNameIndex.get(s);
    }

    public Class getColumnClass(int i)
    {
        return getColumn(i).getColumnClass();
    }

    public int getColumnCount()
    {
        return columns.size();
    }

    public String getColumnName(int i)
    {
        return getColumn(i).getName();
    }

    public XPath getColumnNameXPath(int i)
    {
        return getColumn(i).getColumnNameXPath();
    }

    public XPath getColumnXPath(int i)
    {
        return getColumn(i).getXPath();
    }

    public XPath getRowXPath()
    {
        return rowXPath;
    }

    public Object getValueAt(Object obj, int i)
    {
        this;
        JVM INSTR monitorenter ;
        XMLTableColumnDefinition xmltablecolumndefinition = getColumn(i);
        this;
        JVM INSTR monitorenter ;
        rowValue = obj;
        obj = xmltablecolumndefinition.getValue(obj);
        rowValue = null;
        this;
        JVM INSTR monitorexit ;
        this;
        JVM INSTR monitorexit ;
        return obj;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
    }

    public Object getVariableValue(String s, String s1, String s2)
    {
        s = getColumn(s2);
        if (s != null)
        {
            return s.getValue(rowValue);
        } else
        {
            return null;
        }
    }

    protected void handleException(Exception exception)
    {
        System.out.println("Caught: " + exception);
    }

    public void removeColumn(XMLTableColumnDefinition xmltablecolumndefinition)
    {
        clearCaches();
        columns.remove(xmltablecolumndefinition);
    }

    public void setRowExpression(String s)
    {
        setRowXPath(createXPath(s));
    }

    public void setRowXPath(XPath xpath)
    {
        rowXPath = xpath;
    }
}
