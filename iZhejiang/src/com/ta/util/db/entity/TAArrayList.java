// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.db.entity;

import com.ta.common.TAStringUtils;
import java.util.ArrayList;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public class TAArrayList extends ArrayList
{

    private static final long serialVersionUID = 1L;

    public TAArrayList()
    {
    }

    public volatile boolean add(Object obj)
    {
        return add((NameValuePair)obj);
    }

    public boolean add(String s, String s1)
    {
        return add(((NameValuePair) (new BasicNameValuePair(s, s1))));
    }

    public boolean add(NameValuePair namevaluepair)
    {
        if (!TAStringUtils.isEmpty(namevaluepair.getValue()))
        {
            return super.add(namevaluepair);
        } else
        {
            return false;
        }
    }
}
