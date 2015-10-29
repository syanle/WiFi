// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.novell.sasl.client;


class ParsedDirective
{

    public static final int QUOTED_STRING_VALUE = 1;
    public static final int TOKEN_VALUE = 2;
    private String m_name;
    private String m_value;
    private int m_valueType;

    ParsedDirective(String s, String s1, int i)
    {
        m_name = s;
        m_value = s1;
        m_valueType = i;
    }

    String getName()
    {
        return m_name;
    }

    String getValue()
    {
        return m_value;
    }

    int getValueType()
    {
        return m_valueType;
    }
}
