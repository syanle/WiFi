// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.util.List;

public class PrivacyList
{

    private boolean isActiveList;
    private boolean isDefaultList;
    private List items;
    private String listName;

    protected PrivacyList(boolean flag, boolean flag1, String s, List list)
    {
        isActiveList = flag;
        isDefaultList = flag1;
        listName = s;
        items = list;
    }

    public List getItems()
    {
        return items;
    }

    public boolean isActiveList()
    {
        return isActiveList;
    }

    public boolean isDefaultList()
    {
        return isDefaultList;
    }

    public String toString()
    {
        return listName;
    }
}
