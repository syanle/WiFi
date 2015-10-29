// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.c.a;


public class f
{

    public static String a(int i)
    {
        byte byte0 = -1;
        try
        {
            i = Math.abs(i);
        }
        catch (Throwable throwable)
        {
            i = byte0;
        }
        switch (i)
        {
        default:
            return "Please check your networks first.If you have any questions, please contact us.";

        case 3208: 
            return "\u8BE5\u8BBE\u5907\u5C1A\u672A\u767B\u8BB0\u3002";

        case 2007: 
            return "\u6682\u65E0\u5E7F\u544A\u3002";

        case 1000: 
        case 1002: 
            return "app\u4E0D\u5B58\u5728\u3002";

        case 1100: 
            return "\u5305\u540D\u672A\u7ED1\u5B9A\u3002";

        case 1200: 
            return "app\u72B6\u6001\u5F02\u5E38\u3002";

        case 1201: 
            return "app\u8FD8\u6CA1\u6709\u63D0\u4EA4\u5BA1\u6838\u3002";

        case 1202: 
            return "app\u5728\u5C01\u6740\u72B6\u6001\u4E2D\u3002";

        case 1203: 
            return "app\u6682\u672A\u901A\u8FC7\u5BA1\u6838\u3002";

        case 1004: 
            return "\u8BE5app\u4E0E\u5F00\u53D1\u7CFB\u7EDF\u4E0D\u5BF9\u5E94\u3002";
        }
    }
}
