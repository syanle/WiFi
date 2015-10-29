// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.swing;

import java.io.PrintStream;
import java.util.List;
import javax.swing.table.AbstractTableModel;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.XPath;

// Referenced classes of package org.dom4j.swing:
//            XMLTableDefinition

public class XMLTableModel extends AbstractTableModel
{

    private XMLTableDefinition definition;
    private List rows;
    private Object source;

    public XMLTableModel(Document document, Object obj)
    {
        this(XMLTableDefinition.load(document), obj);
    }

    public XMLTableModel(Element element, Object obj)
    {
        this(XMLTableDefinition.load(element), obj);
    }

    public XMLTableModel(XMLTableDefinition xmltabledefinition, Object obj)
    {
        definition = xmltabledefinition;
        source = obj;
    }

    public Class getColumnClass(int i)
    {
        return definition.getColumnClass(i);
    }

    public int getColumnCount()
    {
        return definition.getColumnCount();
    }

    public String getColumnName(int i)
    {
        XPath xpath = definition.getColumnNameXPath(i);
        if (xpath != null)
        {
            System.out.println("Evaluating column xpath: " + xpath + " value: " + xpath.valueOf(source));
            return xpath.valueOf(source);
        } else
        {
            return definition.getColumnName(i);
        }
    }

    public XMLTableDefinition getDefinition()
    {
        return definition;
    }

    public int getRowCount()
    {
        return getRows().size();
    }

    public Object getRowValue(int i)
    {
        return getRows().get(i);
    }

    public List getRows()
    {
        if (rows == null)
        {
            rows = definition.getRowXPath().selectNodes(source);
        }
        return rows;
    }

    public Object getSource()
    {
        return source;
    }

    public Object getValueAt(int i, int j)
    {
        Object obj;
        try
        {
            obj = getRowValue(i);
            obj = definition.getValueAt(obj, j);
        }
        catch (Exception exception)
        {
            handleException(exception);
            return null;
        }
        return obj;
    }

    protected void handleException(Exception exception)
    {
        System.out.println("Caught: " + exception);
    }

    public void setDefinition(XMLTableDefinition xmltabledefinition)
    {
        definition = xmltabledefinition;
    }

    public void setSource(Object obj)
    {
        source = obj;
        rows = null;
    }
}
