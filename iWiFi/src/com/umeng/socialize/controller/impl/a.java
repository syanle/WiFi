// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.bean.LIKESTATUS;
import com.umeng.socialize.bean.MultiStatus;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SNSPair;
import com.umeng.socialize.bean.SnsAccount;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMComment;
import com.umeng.socialize.bean.UMFriend;
import com.umeng.socialize.bean.UMShareMsg;
import com.umeng.socialize.bean.UMToken;
import com.umeng.socialize.common.SocializeConstants;
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socialize.net.a.e;
import com.umeng.socialize.net.aa;
import com.umeng.socialize.net.ab;
import com.umeng.socialize.net.ac;
import com.umeng.socialize.net.b;
import com.umeng.socialize.net.c;
import com.umeng.socialize.net.d;
import com.umeng.socialize.net.f;
import com.umeng.socialize.net.g;
import com.umeng.socialize.net.h;
import com.umeng.socialize.net.i;
import com.umeng.socialize.net.j;
import com.umeng.socialize.net.k;
import com.umeng.socialize.net.l;
import com.umeng.socialize.net.m;
import com.umeng.socialize.net.o;
import com.umeng.socialize.net.p;
import com.umeng.socialize.net.q;
import com.umeng.socialize.net.r;
import com.umeng.socialize.net.s;
import com.umeng.socialize.net.t;
import com.umeng.socialize.net.u;
import com.umeng.socialize.net.v;
import com.umeng.socialize.net.w;
import com.umeng.socialize.net.x;
import com.umeng.socialize.net.y;
import com.umeng.socialize.net.z;
import java.util.Iterator;
import java.util.List;

public class a
{

    private static int b = 0;
    private static final String c = "installed";
    private static final String d = "umsocial_uid";
    protected SocializeEntity a;

    public a(SocializeEntity socializeentity)
    {
        a = socializeentity;
    }

    private int a(Context context, LIKESTATUS likestatus)
    {
        context = (new com.umeng.socialize.net.a.a()).a(new h(context, a, likestatus));
        if (context != null)
        {
            if (((e) (context)).n == 200)
            {
                a.changeILike();
            }
            return ((e) (context)).n;
        } else
        {
            return -102;
        }
    }

    private boolean a(UMToken umtoken)
    {
        return umtoken != null && !TextUtils.isEmpty(umtoken.getToken()) && !TextUtils.isEmpty(umtoken.mPaltform) && !TextUtils.isEmpty(umtoken.mUsid) && (!umtoken.mPaltform.equals(SHARE_MEDIA.QZONE.toString()) && !umtoken.mPaltform.equals(SHARE_MEDIA.TENCENT.toString()) || !TextUtils.isEmpty(umtoken.getOpenId()));
    }

    public int a(Context context)
    {
        boolean flag;
        flag = true;
        if (b == -1)
        {
            synchronized (context.getSharedPreferences("umeng_socialize", 0))
            {
                b = ((SharedPreferences) (obj)).getInt("installed", 1);
            }
        }
        if (TextUtils.isEmpty(SocializeConstants.UID))
        {
            SocializeConstants.UID = context.getSharedPreferences("umeng_socialize", 0).getString("umsocial_uid", "");
            Log.i("com.umeng.socialize", "set  field UID from preference.");
        }
        obj = new com.umeng.socialize.net.a.a();
        SocializeEntity socializeentity = a;
        SocializeEntity socializeentity1;
        int i1;
        if (b == 0)
        {
            i1 = 0;
        } else
        {
            i1 = 1;
        }
        obj = (b)((com.umeng.socialize.net.a.a) (obj)).a(new com.umeng.socialize.net.a(context, socializeentity, i1));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_437;
        }
        if (b == 1)
        {
            synchronized (context.getSharedPreferences("umeng_socialize", 0).edit())
            {
                ((android.content.SharedPreferences.Editor) (obj1)).putInt("installed", 0);
                ((android.content.SharedPreferences.Editor) (obj1)).commit();
                b = 0;
            }
        }
        if (((b) (obj)).n != 200) goto _L2; else goto _L1
_L1:
        if (TextUtils.isEmpty(SocializeConstants.UID) || !SocializeConstants.UID.equals(((b) (obj)).h))
        {
            Log.i("com.umeng.socialize", (new StringBuilder("update UID src=")).append(SocializeConstants.UID).append(" dest=").append(((b) (obj)).h).toString());
            SocializeConstants.UID = ((b) (obj)).h;
            synchronized (context.getSharedPreferences("umeng_socialize", 0).edit())
            {
                context.putString("umsocial_uid", SocializeConstants.UID);
                context.commit();
            }
        }
        obj1 = a;
        obj1;
        JVM INSTR monitorenter ;
        a.setCommentCount(((b) (obj)).b);
        a.mEntityKey = ((b) (obj)).e;
        a.mSessionID = ((b) (obj)).d;
        if (((b) (obj)).f != 0)
        {
            flag = false;
        }
        a.setNew(flag);
        socializeentity1 = a;
        if (((b) (obj)).g != 0)
        {
            break MISSING_BLOCK_LABEL_425;
        }
        context = LIKESTATUS.UNLIKE;
_L3:
        socializeentity1.setIlikey(context);
        a.setLikeCount(((b) (obj)).c);
        a.setPv(((b) (obj)).a);
        a.setShareCount(((b) (obj)).j);
        a.mInitialized = true;
_L2:
        return ((b) (obj)).n;
        context;
        obj;
        JVM INSTR monitorexit ;
        throw context;
        context;
        obj1;
        JVM INSTR monitorexit ;
        throw context;
        exception;
        context;
        JVM INSTR monitorexit ;
        throw exception;
        context = LIKESTATUS.LIKE;
          goto _L3
        context;
        obj1;
        JVM INSTR monitorexit ;
        throw context;
        return -103;
    }

    public int a(Context context, SHARE_MEDIA share_media)
    {
        context = (new com.umeng.socialize.net.a.a()).a(new i(context, a, share_media));
        if (context != null)
        {
            return ((e) (context)).n;
        } else
        {
            return -102;
        }
    }

    public int a(Context context, SnsAccount snsaccount)
    {
        context = (new com.umeng.socialize.net.a.a()).a(new ac(context, a, snsaccount));
        if (context == null)
        {
            return -103;
        } else
        {
            return ((e) (context)).n;
        }
    }

    public int a(Context context, UMComment umcomment, SNSPair asnspair[])
    {
        context = (new com.umeng.socialize.net.a.a()).a(new c(context, a, umcomment, asnspair));
        if (context != null)
        {
            return ((e) (context)).n;
        } else
        {
            return -103;
        }
    }

    public int a(Context context, UMToken umtoken)
    {
        if (a(umtoken))
        {
            context = (new com.umeng.socialize.net.a.a()).a(new k(context, a, umtoken));
            if (context != null)
            {
                return ((e) (context)).n;
            } else
            {
                return -102;
            }
        } else
        {
            return -105;
        }
    }

    public transient MultiStatus a(Context context, SNSPair snspair, String as[])
    {
        if (snspair == null || TextUtils.isEmpty(snspair.mUsid) || snspair.mPaltform == null || as == null || as.length == 0)
        {
            return new MultiStatus(-105);
        }
        context = new r(context, a, snspair, as);
        context = (s)(new com.umeng.socialize.net.a.a()).a(context);
        if (context == null)
        {
            return new MultiStatus(-103);
        } else
        {
            snspair = new MultiStatus(((s) (context)).n);
            snspair.setInfoCode(((s) (context)).a);
            return snspair;
        }
    }

    public MultiStatus a(Context context, SNSPair asnspair[], UMShareMsg umsharemsg)
    {
        if (umsharemsg == null)
        {
            return new MultiStatus(-102);
        }
        String s1 = umsharemsg.mWeiBoId;
        if (asnspair == null || asnspair.length < 1)
        {
            return new MultiStatus(-105);
        }
        if (!TextUtils.isEmpty(s1))
        {
            context = (new com.umeng.socialize.net.a.a()).a(new v(context, a, asnspair[0].mPaltform, asnspair[0].mUsid, umsharemsg));
            if (context == null)
            {
                return new MultiStatus(-103);
            } else
            {
                return new MultiStatus(((e) (context)).n);
            }
        }
        context = (u)(new com.umeng.socialize.net.a.a()).a(new t(context, a, asnspair, umsharemsg));
        if (context == null)
        {
            return new MultiStatus(-103);
        } else
        {
            asnspair = new MultiStatus(((u) (context)).n);
            asnspair.setPlatformCode(((u) (context)).a);
            return asnspair;
        }
    }

    public ab a(Context context, SNSPair snspair)
    {
        return (ab)(new com.umeng.socialize.net.a.a()).a(new aa(context, a, snspair));
    }

    public com.umeng.socialize.net.e a(Context context, long l1)
        throws SocializeException
    {
        context = (com.umeng.socialize.net.e)(new com.umeng.socialize.net.a.a()).a(new d(context, a, l1));
        if (context == null)
        {
            throw new SocializeException(-103, "Response is null...");
        }
        if (((com.umeng.socialize.net.e) (context)).n != 200)
        {
            throw new SocializeException(((com.umeng.socialize.net.e) (context)).n, ((com.umeng.socialize.net.e) (context)).m);
        } else
        {
            return context;
        }
    }

    public q a(Context context, SHARE_MEDIA share_media, String s1)
        throws SocializeException
    {
        context = (q)(new com.umeng.socialize.net.a.a()).a(new p(context, a, share_media, s1));
        if (context == null)
        {
            throw new SocializeException(-103, "Response is null...");
        }
        if (((q) (context)).n != 200)
        {
            throw new SocializeException(((q) (context)).n, ((q) (context)).m);
        }
        if (((q) (context)).a == null) goto _L2; else goto _L1
_L1:
        share_media = ((q) (context)).a.iterator();
_L5:
        if (share_media.hasNext()) goto _L3; else goto _L2
_L2:
        return context;
_L3:
        ((UMFriend)share_media.next()).setUsid(s1);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public String a(Context context, UMediaObject umediaobject, String s1)
    {
        context = (z)(new com.umeng.socialize.net.a.a()).a(new y(context, a, umediaobject, s1));
        if (context != null)
        {
            return ((z) (context)).a;
        } else
        {
            return null;
        }
    }

    public int b(Context context)
    {
        LIKESTATUS likestatus;
        if (a.getLikeStatus() == LIKESTATUS.LIKE)
        {
            likestatus = LIKESTATUS.UNLIKE;
        } else
        {
            likestatus = LIKESTATUS.LIKE;
        }
        return a(context, likestatus);
    }

    public int b(Context context, SHARE_MEDIA share_media)
    {
        context = (new com.umeng.socialize.net.a.a()).a(new o(context, a, share_media));
        if (context != null)
        {
            return ((e) (context)).n;
        } else
        {
            return -102;
        }
    }

    public int c(Context context)
    {
        return a(context, LIKESTATUS.LIKE);
    }

    public int d(Context context)
    {
        return a(context, LIKESTATUS.UNLIKE);
    }

    public m e(Context context)
        throws SocializeException
    {
        context = (m)(new com.umeng.socialize.net.a.a()).a(new l(context, a));
        if (context == null)
        {
            throw new SocializeException(-103, "Response is null...");
        }
        if (((m) (context)).n != 200)
        {
            throw new SocializeException(((m) (context)).n, ((m) (context)).m);
        } else
        {
            return context;
        }
    }

    public int f(Context context)
    {
        context = (new com.umeng.socialize.net.a.a()).a(new j(context, a));
        if (context != null)
        {
            return ((e) (context)).n;
        } else
        {
            return -103;
        }
    }

    public g g(Context context)
    {
        return (g)(new com.umeng.socialize.net.a.a()).a(new f(context, a));
    }

    public SocializeEntity getEntity()
    {
        return a;
    }

    public int h(Context context)
    {
        context = (x)(new com.umeng.socialize.net.a.a()).a(new w(context, a));
        if (context != null)
        {
            return ((x) (context)).n;
        } else
        {
            return -102;
        }
    }

    static 
    {
        b = -1;
    }
}
