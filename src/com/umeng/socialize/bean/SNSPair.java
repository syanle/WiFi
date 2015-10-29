// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import com.umeng.socialize.exception.SocializeException;

public class SNSPair
{

    public String mPaltform;
    public String mUsid;

    public SNSPair(String s, String s1)
    {
        mPaltform = s;
        mUsid = s1;
    }

    public String toFormat()
        throws SocializeException
    {
        if (mPaltform != null)
        {
            if (mUsid == null)
            {
                mUsid = "";
            }
            return (new StringBuilder("{")).append(mPaltform.toString()).append(":").append(mUsid).append("}").toString();
        } else
        {
            throw new SocializeException("can`t format snspair string.");
        }
    }
}
