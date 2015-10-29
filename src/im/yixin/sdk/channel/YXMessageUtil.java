// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.channel;

import im.yixin.algorithm.MD5;

public class YXMessageUtil
{

    public YXMessageUtil()
    {
    }

    public static final byte[] generateCheckSum(String s, String s1)
    {
        StringBuffer stringbuffer = new StringBuffer();
        if (s != null)
        {
            stringbuffer.append(s);
        }
        stringbuffer.append(10000L);
        stringbuffer.append(s1);
        stringbuffer.append("wDERqmMcFVCpTr");
        return MD5.getMessageDigest(stringbuffer.toString().substring(1, 9).getBytes()).getBytes();
    }

    public static final boolean isBlank(String s)
    {
        return s == null || s.trim().length() < 1;
    }
}
