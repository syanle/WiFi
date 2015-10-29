// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.tools;

import java.util.ArrayList;

public class XMLData
{
    public static class XMLAttributes
    {

        public String name;
        public String value;

        public XMLAttributes()
        {
        }
    }


    public ArrayList attributes;
    public String characters;
    public String nextTag;
    public String preTag;
    public String tagName;

    public XMLData()
    {
        tagName = null;
        characters = null;
        preTag = null;
        nextTag = null;
        attributes = null;
    }

    public static XMLAttributes newPullData()
    {
        return new XMLAttributes();
    }
}
