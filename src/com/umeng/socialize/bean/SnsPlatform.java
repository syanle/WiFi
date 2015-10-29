// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import android.text.TextUtils;

// Referenced classes of package com.umeng.socialize.bean:
//            SnsAccount

public class SnsPlatform
{

    private String a;
    public SnsAccount mAccount;
    public boolean mBind;
    public int mGrayIcon;
    public int mIcon;
    public int mIndex;
    public String mKeyword;
    public boolean mOauth;
    public String mShowWord;
    public String mUsid;

    public SnsPlatform()
    {
        a = "Default Analytic Descriptor";
    }

    public String getEntityDescriptor()
    {
        return a;
    }

    public void setEntityDescriptor(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            a = s;
        }
    }
}
