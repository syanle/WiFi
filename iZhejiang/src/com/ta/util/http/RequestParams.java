// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.http;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

// Referenced classes of package com.ta.util.http:
//            SimpleMultipartEntity

public class RequestParams
{
    private static class FileWrapper
    {

        public String contentType;
        public String fileName;
        public InputStream inputStream;

        public String getFileName()
        {
            if (fileName != null)
            {
                return fileName;
            } else
            {
                return "nofilename";
            }
        }

        public FileWrapper(InputStream inputstream, String s, String s1)
        {
            inputStream = inputstream;
            fileName = s;
            contentType = s1;
        }
    }


    private static String ENCODING = "UTF-8";
    protected HashMap fileParams;
    protected HashMap urlParams;
    protected HashMap urlParamsWithArray;

    public RequestParams()
    {
        init();
    }

    public RequestParams(String s, String s1)
    {
        init();
        put(s, s1);
    }

    public RequestParams(Map map)
    {
        init();
        map = map.entrySet().iterator();
        do
        {
            if (!map.hasNext())
            {
                return;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)map.next();
            put((String)entry.getKey(), (String)entry.getValue());
        } while (true);
    }

    public transient RequestParams(Object aobj[])
    {
        init();
        int j = aobj.length;
        if (j % 2 != 0)
        {
            throw new IllegalArgumentException("Supplied arguments must be even");
        }
        int i = 0;
        do
        {
            if (i >= j)
            {
                return;
            }
            put(String.valueOf(aobj[i]), String.valueOf(aobj[i + 1]));
            i += 2;
        } while (true);
    }

    private void init()
    {
        urlParams = new HashMap();
        fileParams = new HashMap();
        urlParamsWithArray = new HashMap();
    }

    public HttpEntity getEntity()
    {
        if (fileParams.isEmpty()) goto _L2; else goto _L1
_L1:
        Object obj;
        Iterator iterator;
        obj = new SimpleMultipartEntity();
        iterator = urlParams.entrySet().iterator();
_L10:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        iterator = urlParamsWithArray.entrySet().iterator();
_L7:
        if (iterator.hasNext()) goto _L6; else goto _L5
_L5:
        int i;
        int j;
        i = 0;
        j = fileParams.entrySet().size();
        iterator = fileParams.entrySet().iterator();
_L8:
        if (!iterator.hasNext())
        {
            return ((HttpEntity) (obj));
        }
        break MISSING_BLOCK_LABEL_202;
_L4:
        java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
        ((SimpleMultipartEntity) (obj)).addPart((String)entry.getKey(), (String)entry.getValue());
        continue; /* Loop/switch isn't completed */
_L6:
        java.util.Map.Entry entry1 = (java.util.Map.Entry)iterator.next();
        Iterator iterator1 = ((ArrayList)entry1.getValue()).iterator();
        while (iterator1.hasNext()) 
        {
            String s = (String)iterator1.next();
            ((SimpleMultipartEntity) (obj)).addPart((String)entry1.getKey(), s);
        }
          goto _L7
        java.util.Map.Entry entry2 = (java.util.Map.Entry)iterator.next();
        FileWrapper filewrapper = (FileWrapper)entry2.getValue();
        if (filewrapper.inputStream != null)
        {
            boolean flag;
            if (i == j - 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (filewrapper.contentType != null)
            {
                ((SimpleMultipartEntity) (obj)).addPart((String)entry2.getKey(), filewrapper.getFileName(), filewrapper.inputStream, filewrapper.contentType, flag);
            } else
            {
                ((SimpleMultipartEntity) (obj)).addPart((String)entry2.getKey(), filewrapper.getFileName(), filewrapper.inputStream, flag);
            }
        }
        i++;
          goto _L8
_L2:
        obj = new UrlEncodedFormEntity(getParamsList(), ENCODING);
        return ((HttpEntity) (obj));
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        unsupportedencodingexception.printStackTrace();
        return null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    protected String getParamString()
    {
        return URLEncodedUtils.format(getParamsList(), ENCODING);
    }

    protected List getParamsList()
    {
        LinkedList linkedlist;
        Iterator iterator;
        linkedlist = new LinkedList();
        iterator = urlParams.entrySet().iterator();
_L3:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        iterator = urlParamsWithArray.entrySet().iterator();
_L4:
        if (!iterator.hasNext())
        {
            return linkedlist;
        }
        break MISSING_BLOCK_LABEL_99;
_L2:
        java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
        linkedlist.add(new BasicNameValuePair((String)entry.getKey(), (String)entry.getValue()));
          goto _L3
        java.util.Map.Entry entry1 = (java.util.Map.Entry)iterator.next();
        Iterator iterator1 = ((ArrayList)entry1.getValue()).iterator();
        while (iterator1.hasNext()) 
        {
            String s = (String)iterator1.next();
            linkedlist.add(new BasicNameValuePair((String)entry1.getKey(), s));
        }
          goto _L4
    }

    public void put(String s, File file)
        throws FileNotFoundException
    {
        put(s, ((InputStream) (new FileInputStream(file))), file.getName());
    }

    public void put(String s, InputStream inputstream)
    {
        put(s, inputstream, null);
    }

    public void put(String s, InputStream inputstream, String s1)
    {
        put(s, inputstream, s1, null);
    }

    public void put(String s, InputStream inputstream, String s1, String s2)
    {
        if (s != null && inputstream != null)
        {
            fileParams.put(s, new FileWrapper(inputstream, s1, s2));
        }
    }

    public void put(String s, String s1)
    {
        if (s != null && s1 != null)
        {
            urlParams.put(s, s1);
        }
    }

    public void put(String s, ArrayList arraylist)
    {
        if (s != null && arraylist != null)
        {
            urlParamsWithArray.put(s, arraylist);
        }
    }

    public void remove(String s)
    {
        urlParams.remove(s);
        fileParams.remove(s);
        urlParamsWithArray.remove(s);
    }

    public String toString()
    {
        StringBuilder stringbuilder;
        Iterator iterator;
        stringbuilder = new StringBuilder();
        iterator = urlParams.entrySet().iterator();
_L5:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        iterator = fileParams.entrySet().iterator();
_L6:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        iterator = urlParamsWithArray.entrySet().iterator();
_L7:
        if (!iterator.hasNext())
        {
            return stringbuilder.toString();
        }
        break MISSING_BLOCK_LABEL_196;
_L2:
        java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
        if (stringbuilder.length() > 0)
        {
            stringbuilder.append("&");
        }
        stringbuilder.append((String)entry.getKey());
        stringbuilder.append("=");
        stringbuilder.append((String)entry.getValue());
          goto _L5
_L4:
        java.util.Map.Entry entry1 = (java.util.Map.Entry)iterator.next();
        if (stringbuilder.length() > 0)
        {
            stringbuilder.append("&");
        }
        stringbuilder.append((String)entry1.getKey());
        stringbuilder.append("=");
        stringbuilder.append("FILE");
          goto _L6
        java.util.Map.Entry entry2 = (java.util.Map.Entry)iterator.next();
        if (stringbuilder.length() > 0)
        {
            stringbuilder.append("&");
        }
        ArrayList arraylist = (ArrayList)entry2.getValue();
        Iterator iterator1 = arraylist.iterator();
        while (iterator1.hasNext()) 
        {
            String s = (String)iterator1.next();
            if (arraylist.indexOf(s) != 0)
            {
                stringbuilder.append("&");
            }
            stringbuilder.append((String)entry2.getKey());
            stringbuilder.append("=");
            stringbuilder.append(s);
        }
          goto _L7
    }

}
