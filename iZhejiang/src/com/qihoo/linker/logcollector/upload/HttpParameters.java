// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.qihoo.linker.logcollector.upload;

import android.text.TextUtils;
import java.util.ArrayList;

public class HttpParameters
{

    private ArrayList mKeys;
    private ArrayList mValues;

    public HttpParameters()
    {
        mKeys = new ArrayList();
        mValues = new ArrayList();
    }

    private int getLocation(String s)
    {
        if (mKeys.contains(s))
        {
            return mKeys.indexOf(s);
        } else
        {
            return -1;
        }
    }

    public void add(String s, int i)
    {
        mKeys.add(s);
        mValues.add(String.valueOf(i));
    }

    public void add(String s, long l)
    {
        mKeys.add(s);
        mValues.add(String.valueOf(l));
    }

    public void add(String s, String s1)
    {
        if (!TextUtils.isEmpty(s) && !TextUtils.isEmpty(s1))
        {
            mKeys.add(s);
            mValues.add(s1);
        }
    }

    public void addAll(HttpParameters httpparameters)
    {
        int i = 0;
        do
        {
            if (i >= httpparameters.size())
            {
                return;
            }
            add(httpparameters.getKey(i), httpparameters.getValue(i));
            i++;
        } while (true);
    }

    public void clear()
    {
        mKeys.clear();
        mValues.clear();
    }

    public String getKey(int i)
    {
        if (i >= 0 && i < mKeys.size())
        {
            return (String)mKeys.get(i);
        } else
        {
            return "";
        }
    }

    public String getValue(int i)
    {
        if (i >= 0 && i < mKeys.size())
        {
            return (String)mValues.get(i);
        } else
        {
            return null;
        }
    }

    public String getValue(String s)
    {
        int i = getLocation(s);
        if (i >= 0 && i < mKeys.size())
        {
            return (String)mValues.get(i);
        } else
        {
            return null;
        }
    }

    public void remove(int i)
    {
        if (i < mKeys.size())
        {
            mKeys.remove(i);
            mValues.remove(i);
        }
    }

    public void remove(String s)
    {
        int i = mKeys.indexOf(s);
        if (i >= 0)
        {
            mKeys.remove(i);
            mValues.remove(i);
        }
    }

    public int size()
    {
        return mKeys.size();
    }
}
