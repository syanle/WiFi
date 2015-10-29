// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SnsAccount;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeUser;
import com.umeng.socialize.db.OauthHelper;
import com.umeng.socialize.db.c;
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socialize.net.m;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, c, b

class j extends UMAsyncTask
{

    final com.umeng.socialize.controller.impl.c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.FetchUserListener b;
    private final b c;
    private final Context d;

    j(com.umeng.socialize.controller.impl.c c1, com.umeng.socialize.controller.listener.SocializeListeners.FetchUserListener fetchuserlistener, b b1, Context context)
    {
        a = c1;
        b = fetchuserlistener;
        c = b1;
        d = context;
        super();
    }

    private void a(Context context, SocializeUser socializeuser)
    {
        if (socializeuser.mAccounts == null) goto _L2; else goto _L1
_L1:
        Object obj;
        Iterator iterator;
        obj = OauthHelper.getAuthenticatedPlatform(context);
        iterator = socializeuser.mAccounts.iterator();
_L6:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        if (((Map) (obj)).size() > 0)
        {
            SnsAccount snsaccount;
            Exception exception;
            SHARE_MEDIA share_media;
            boolean flag1;
            for (obj = ((Map) (obj)).keySet().iterator(); ((Iterator) (obj)).hasNext(); OauthHelper.remove(context, (SHARE_MEDIA)((Iterator) (obj)).next()))
            {
                break MISSING_BLOCK_LABEL_232;
            }

        }
_L2:
        if (socializeuser.mLoginAccount != null)
        {
            socializeuser = SHARE_MEDIA.convertToEmun(socializeuser.mLoginAccount.getPlatform());
            flag1 = false;
            boolean flag;
            if (com.umeng.socialize.db.c.c(context))
            {
                obj = com.umeng.socialize.db.c.b(context);
                flag = flag1;
                if (socializeuser != null)
                {
                    flag = flag1;
                    if (socializeuser != obj)
                    {
                        flag = true;
                    }
                }
            } else
            {
                flag = true;
            }
            if (flag)
            {
                com.umeng.socialize.db.c.a(context, socializeuser.toString());
            }
        }
        return;
_L4:
        snsaccount = (SnsAccount)iterator.next();
        if (TextUtils.isEmpty(snsaccount.getUsid()))
        {
            continue; /* Loop/switch isn't completed */
        }
        share_media = SHARE_MEDIA.convertToEmun(snsaccount.getPlatform());
        if (share_media == null)
        {
            break MISSING_BLOCK_LABEL_188;
        }
        if (!OauthHelper.isAuthenticated(context, share_media))
        {
            OauthHelper.setUsid(context, share_media, snsaccount.getUsid());
        }
        if (share_media != null)
        {
            try
            {
                if (((Map) (obj)).containsKey(share_media))
                {
                    ((Map) (obj)).remove(share_media);
                }
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                Log.w(com.umeng.socialize.controller.impl.c.a(), "Sync user center failed..", exception);
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected m a()
    {
        m m1;
        Exception exception;
        try
        {
            m1 = c.e(d);
        }
        catch (SocializeException socializeexception)
        {
            Log.e(com.umeng.socialize.controller.impl.c.a(), socializeexception.toString());
            return null;
        }
        if (m1 == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        if (m1.a != null && a.getConfig().isSyncUserInfo())
        {
            a(d, m1.a);
        }
        return m1;
        exception;
        Log.w(com.umeng.socialize.controller.impl.c.a(), "Sync user center failed..", exception);
        return m1;
    }

    protected void a(m m1)
    {
label0:
        {
            super.onPostExecute(m1);
            if (b != null)
            {
                if (m1 == null)
                {
                    break label0;
                }
                b.onComplete(m1.n, m1.a);
            }
            return;
        }
        b.onComplete(-102, null);
    }

    protected Object doInBackground()
    {
        return a();
    }

    protected void onPostExecute(Object obj)
    {
        a((m)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        if (b != null)
        {
            b.onStart();
        }
    }
}
