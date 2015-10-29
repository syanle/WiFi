// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.controller;

import android.content.Context;
import android.os.Handler;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.UMFriend;
import com.umeng.socialize.controller.RequestType;
import com.umeng.socialize.controller.UMServiceFactory;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.db.OauthHelper;
import com.umeng.socialize.db.b;
import com.umeng.socom.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view.controller:
//            a, b

public class ShareAtController
{
    public static interface ASyncLifeListener
    {

        public abstract void a();

        public abstract void a(List list);

        public abstract void b();

        public abstract void b(List list);

        public abstract void c(List list);
    }

    private class a
        implements Comparator
    {

        final ShareAtController a;

        public int a(UMFriend umfriend, UMFriend umfriend1)
        {
            umfriend = umfriend.getPinyin();
            umfriend1 = umfriend1.getPinyin();
            return ((com.umeng.socialize.bean.UMFriend.a) (umfriend)).b.charAt(0) - ((com.umeng.socialize.bean.UMFriend.a) (umfriend1)).b.charAt(0);
        }

        public int compare(Object obj, Object obj1)
        {
            return a((UMFriend)obj, (UMFriend)obj1);
        }

        private a()
        {
            a = ShareAtController.this;
            super();
        }

        a(a a1)
        {
            this();
        }
    }


    private static final int a = 5;
    private static final String b = com/umeng/socialize/view/controller/ShareAtController.getName();
    private static final int c = 1;
    private static final int d = 2;
    private static final int e = 3;
    private String f;
    private String g;
    private Context h;
    private SHARE_MEDIA i;
    private UMSocialService j;
    private b k;
    private List l;
    private List m;
    private Handler n;
    private ASyncLifeListener o;

    public ShareAtController(Context context, SHARE_MEDIA share_media, String s)
    {
        g = s;
        h = context;
        i = share_media;
        f = OauthHelper.getUsid(h, share_media);
        n = new com.umeng.socialize.view.controller.a(this);
        j = UMServiceFactory.getUMSocialService(g, RequestType.SOCIAL);
        k = new b(h);
    }

    static List a(ShareAtController shareatcontroller)
    {
        return shareatcontroller.l;
    }

    static List a(ShareAtController shareatcontroller, String s)
    {
        return shareatcontroller.a(s);
    }

    private List a(String s)
    {
        s = k.a(s);
        if (s != null)
        {
            try
            {
                System.setProperty("java.util.Arrays.useLegacyMergeSort", "true");
                Collections.sort(s, new a(null));
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Log.b(b, "unsort friends.", s);
                return new ArrayList();
            }
        }
        return s;
    }

    static void a(ShareAtController shareatcontroller, List list)
    {
        shareatcontroller.l = list;
    }

    private boolean a(char c1)
    {
        return '@' < c1 && c1 < '[';
    }

    static ASyncLifeListener b(ShareAtController shareatcontroller)
    {
        return shareatcontroller.o;
    }

    private List b(String s)
    {
        return k.a(s, 5);
    }

    static String c()
    {
        return b;
    }

    static String c(ShareAtController shareatcontroller)
    {
        return shareatcontroller.f;
    }

    static Handler d(ShareAtController shareatcontroller)
    {
        return shareatcontroller.n;
    }

    static b e(ShareAtController shareatcontroller)
    {
        return shareatcontroller.k;
    }

    static Context f(ShareAtController shareatcontroller)
    {
        return shareatcontroller.h;
    }

    public void a()
    {
        m = b(f);
        if (o != null)
        {
            o.b(m);
        }
        l = a(f);
        if (l == null || l.size() == 0)
        {
            l = null;
            b();
        } else
        if (o != null)
        {
            o.c(l);
            return;
        }
    }

    public void a(UMFriend umfriend)
    {
        if (umfriend != null)
        {
            k.a(umfriend);
        }
    }

    public void a(ASyncLifeListener asynclifelistener)
    {
        o = asynclifelistener;
    }

    public void b()
    {
        com.umeng.socialize.view.controller.b b1 = new com.umeng.socialize.view.controller.b(this);
        j.getFriends(h, b1, i);
    }

}
