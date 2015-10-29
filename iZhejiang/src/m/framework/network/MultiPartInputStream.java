// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.network;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

public class MultiPartInputStream extends InputStream
{

    private int curIs;
    private ArrayList isList;

    MultiPartInputStream()
    {
        isList = new ArrayList();
    }

    private boolean isEmpty()
    {
        return isList == null || isList.size() <= 0;
    }

    public void addInputStream(InputStream inputstream)
        throws Throwable
    {
        isList.add(inputstream);
    }

    public int available()
        throws IOException
    {
        if (isEmpty())
        {
            return 0;
        } else
        {
            return ((InputStream)isList.get(curIs)).available();
        }
    }

    public void close()
        throws IOException
    {
        Iterator iterator = isList.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ((InputStream)iterator.next()).close();
        } while (true);
    }

    public int read()
        throws IOException
    {
        if (!isEmpty()) goto _L2; else goto _L1
_L1:
        int j = -1;
_L4:
        return j;
_L2:
        int i = ((InputStream)isList.get(curIs)).read();
_L6:
        j = i;
        if (i >= 0) goto _L4; else goto _L3
_L3:
        curIs = curIs + 1;
        j = i;
        if (curIs >= isList.size()) goto _L4; else goto _L5
_L5:
        i = ((InputStream)isList.get(curIs)).read();
          goto _L6
    }

    public int read(byte abyte0[], int i, int j)
        throws IOException
    {
        if (!isEmpty()) goto _L2; else goto _L1
_L1:
        int l = -1;
_L4:
        return l;
_L2:
        int k = ((InputStream)isList.get(curIs)).read(abyte0, i, j);
_L6:
        l = k;
        if (k >= 0) goto _L4; else goto _L3
_L3:
        curIs = curIs + 1;
        l = k;
        if (curIs >= isList.size()) goto _L4; else goto _L5
_L5:
        k = ((InputStream)isList.get(curIs)).read(abyte0, i, j);
          goto _L6
    }

    public long skip(long l)
        throws IOException
    {
        throw new IOException();
    }
}
