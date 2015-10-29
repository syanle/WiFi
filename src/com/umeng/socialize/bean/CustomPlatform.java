// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;


// Referenced classes of package com.umeng.socialize.bean:
//            SnsPlatform

public class CustomPlatform extends SnsPlatform
{

    public com.umeng.socialize.controller.listener.SocializeListeners.OnCustomPlatformClickListener mClickListener;
    public String mTag;

    public CustomPlatform(String s, int i)
    {
        mShowWord = s;
        mIcon = i;
        mKeyword = s;
    }

    public CustomPlatform(String s, String s1, int i)
    {
        mShowWord = s1;
        mIcon = i;
        mKeyword = s;
    }

    public String toString()
    {
        return (new StringBuilder("CustomPlatform [tag=")).append(mTag).append(", keyword=").append(mKeyword).append(", showWord=").append(mShowWord).append(", icon=").append(mIcon).append(", grayIcon=").append(mGrayIcon).append(", oauth=").append(mOauth).append(", bind=").append(mBind).append(", usid=").append(mUsid).append(", account=").append(mAccount).append("]").toString();
    }
}
