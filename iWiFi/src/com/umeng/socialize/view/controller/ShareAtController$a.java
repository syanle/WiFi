// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.controller;

import com.umeng.socialize.bean.UMFriend;
import java.util.Comparator;

// Referenced classes of package com.umeng.socialize.view.controller:
//            ShareAtController

private class <init>
    implements Comparator
{

    final ShareAtController a;

    public int a(UMFriend umfriend, UMFriend umfriend1)
    {
        umfriend = umfriend.getPinyin();
        umfriend1 = umfriend1.getPinyin();
        return ((com.umeng.socialize.bean.ntroller.a) (umfriend)).a.charAt(0) - ((com.umeng.socialize.bean.ntroller.a) (umfriend1)).a.charAt(0);
    }

    public int compare(Object obj, Object obj1)
    {
        return a((UMFriend)obj, (UMFriend)obj1);
    }

    private (ShareAtController shareatcontroller)
    {
        a = shareatcontroller;
        super();
    }

    a(ShareAtController shareatcontroller, a a1)
    {
        this(shareatcontroller);
    }
}
