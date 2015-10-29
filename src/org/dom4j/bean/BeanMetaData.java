// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.bean;

import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import org.dom4j.DocumentFactory;
import org.dom4j.QName;

// Referenced classes of package org.dom4j.bean:
//            BeanDocumentFactory, BeanAttributeList, BeanElement

public class BeanMetaData
{

    private static final DocumentFactory DOCUMENT_FACTORY = BeanDocumentFactory.getInstance();
    protected static final Object NULL_ARGS[] = new Object[0];
    private static Map singletonCache = new HashMap();
    private Class beanClass;
    private Map nameMap;
    private PropertyDescriptor propertyDescriptors[];
    private QName qNames[];
    private Method readMethods[];
    private Method writeMethods[];

    public BeanMetaData(Class class1)
    {
        nameMap = new HashMap();
        beanClass = class1;
        int j;
        if (class1 != null)
        {
            try
            {
                propertyDescriptors = Introspector.getBeanInfo(class1).getPropertyDescriptors();
            }
            // Misplaced declaration of an exception variable
            catch (Class class1)
            {
                handleException(class1);
            }
        }
        if (propertyDescriptors == null)
        {
            propertyDescriptors = new PropertyDescriptor[0];
        }
        j = propertyDescriptors.length;
        qNames = new QName[j];
        readMethods = new Method[j];
        writeMethods = new Method[j];
        for (int i = 0; i < j; i++)
        {
            Object obj = propertyDescriptors[i];
            class1 = ((PropertyDescriptor) (obj)).getName();
            QName qname = DOCUMENT_FACTORY.createQName(class1);
            qNames[i] = qname;
            readMethods[i] = ((PropertyDescriptor) (obj)).getReadMethod();
            writeMethods[i] = ((PropertyDescriptor) (obj)).getWriteMethod();
            obj = new Integer(i);
            nameMap.put(class1, obj);
            nameMap.put(qname, obj);
        }

    }

    public static BeanMetaData get(Class class1)
    {
        BeanMetaData beanmetadata1 = (BeanMetaData)singletonCache.get(class1);
        BeanMetaData beanmetadata = beanmetadata1;
        if (beanmetadata1 == null)
        {
            beanmetadata = new BeanMetaData(class1);
            singletonCache.put(class1, beanmetadata);
        }
        return beanmetadata;
    }

    public int attributeCount()
    {
        return propertyDescriptors.length;
    }

    public BeanAttributeList createAttributeList(BeanElement beanelement)
    {
        return new BeanAttributeList(beanelement, this);
    }

    public Object getData(int i, Object obj)
    {
        try
        {
            obj = readMethods[i].invoke(obj, NULL_ARGS);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            handleException(((Exception) (obj)));
            return null;
        }
        return obj;
    }

    public int getIndex(String s)
    {
        s = (Integer)nameMap.get(s);
        if (s != null)
        {
            return s.intValue();
        } else
        {
            return -1;
        }
    }

    public int getIndex(QName qname)
    {
        qname = (Integer)nameMap.get(qname);
        if (qname != null)
        {
            return qname.intValue();
        } else
        {
            return -1;
        }
    }

    public QName getQName(int i)
    {
        return qNames[i];
    }

    protected void handleException(Exception exception)
    {
    }

    public void setData(int i, Object obj, Object obj1)
    {
        try
        {
            writeMethods[i].invoke(obj, new Object[] {
                obj1
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            handleException(((Exception) (obj)));
        }
    }

}
