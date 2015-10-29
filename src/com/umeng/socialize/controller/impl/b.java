// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import com.umeng.socialize.bean.MultiStatus;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SNSPair;
import com.umeng.socialize.bean.SnsAccount;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMComment;
import com.umeng.socialize.bean.UMShareMsg;
import com.umeng.socialize.bean.UMToken;
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socialize.net.ab;
import com.umeng.socialize.net.e;
import com.umeng.socialize.net.g;
import com.umeng.socialize.net.m;
import com.umeng.socialize.net.q;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            a

public class b extends a
{

    public b(SocializeEntity socializeentity)
    {
        super(socializeentity);
        a = socializeentity;
    }

    public int a(Context context, SHARE_MEDIA share_media)
    {
        if (i(context))
        {
            return super.a(context, share_media);
        } else
        {
            return -104;
        }
    }

    public int a(Context context, SnsAccount snsaccount)
    {
        if (i(context))
        {
            return super.a(context, snsaccount);
        } else
        {
            return -104;
        }
    }

    public int a(Context context, UMComment umcomment, SNSPair asnspair[])
    {
        if (i(context))
        {
            return super.a(context, umcomment, asnspair);
        } else
        {
            return -104;
        }
    }

    public int a(Context context, UMToken umtoken)
    {
        if (i(context))
        {
            return super.a(context, umtoken);
        } else
        {
            return -104;
        }
    }

    public transient MultiStatus a(Context context, SNSPair snspair, String as[])
    {
        if (i(context))
        {
            snspair = super.a(context, snspair, as);
            context = snspair;
            if (snspair == null)
            {
                context = new MultiStatus(-102);
            }
            return context;
        } else
        {
            return new MultiStatus(-104);
        }
    }

    public MultiStatus a(Context context, SNSPair asnspair[], UMShareMsg umsharemsg)
    {
        if (i(context))
        {
            asnspair = super.a(context, asnspair, umsharemsg);
            context = asnspair;
            if (asnspair == null)
            {
                context = new MultiStatus(-102);
            }
            return context;
        } else
        {
            return new MultiStatus(-104);
        }
    }

    public ab a(Context context, SNSPair snspair)
    {
        if (i(context))
        {
            return super.a(context, snspair);
        } else
        {
            return null;
        }
    }

    public e a(Context context, long l)
        throws SocializeException
    {
        if (i(context))
        {
            return super.a(context, l);
        } else
        {
            return null;
        }
    }

    public q a(Context context, SHARE_MEDIA share_media, String s)
        throws SocializeException
    {
        if (i(context))
        {
            return super.a(context, share_media, s);
        } else
        {
            return null;
        }
    }

    public String a(Context context, UMediaObject umediaobject, String s)
    {
        if (i(context))
        {
            return super.a(context, umediaobject, s);
        } else
        {
            return null;
        }
    }

    public int b(Context context)
    {
        if (i(context))
        {
            return super.b(context);
        } else
        {
            return -104;
        }
    }

    public int b(Context context, SHARE_MEDIA share_media)
    {
        if (i(context))
        {
            return super.b(context, share_media);
        } else
        {
            return -104;
        }
    }

    public int c(Context context)
    {
        if (i(context))
        {
            return super.c(context);
        } else
        {
            return super.c(context);
        }
    }

    public int d(Context context)
    {
        if (i(context))
        {
            return super.d(context);
        } else
        {
            return super.d(context);
        }
    }

    public m e(Context context)
        throws SocializeException
    {
        if (i(context))
        {
            return super.e(context);
        } else
        {
            return null;
        }
    }

    public int f(Context context)
    {
        if (i(context))
        {
            return super.f(context);
        } else
        {
            return -104;
        }
    }

    public g g(Context context)
    {
        if (i(context))
        {
            return super.g(context);
        } else
        {
            return null;
        }
    }

    public SocializeEntity getEntity()
    {
        return super.getEntity();
    }

    public int h(Context context)
    {
        if (i(context))
        {
            return super.h(context);
        } else
        {
            return -102;
        }
    }

    public boolean i(Context context)
    {
        if (!a.mInitialized)
        {
            a(context);
        }
        return a.mInitialized;
    }
}
