// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.socialize.controller.RequestType;
import com.umeng.socialize.controller.impl.c;
import com.umeng.socialize.media.BaseMediaObject;
import com.umeng.socialize.media.SimpleShareContent;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socom.util.StatisticsDataUtils;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.bean:
//            ShareType, SocializeConfig, SHARE_MEDIA, LIKESTATUS, 
//            UMShareMsg

public class SocializeEntity
{

    public static String mAppName = "";
    private static Map n = new HashMap();
    private int a;
    private int b;
    private int c;
    private int d;
    private boolean e;
    private String f;
    private LIKESTATUS g;
    private Map h;
    private String i;
    private SocializeConfig j;
    private RequestType k;
    private UMShareMsg l;
    private ShareType m;
    public String mCustomID;
    public String mDescriptor;
    public String mEntityKey;
    public boolean mInitialized;
    public String mSessionID;
    private boolean o;

    public SocializeEntity(String s, RequestType requesttype)
    {
        mEntityKey = "-1";
        mSessionID = "";
        mInitialized = false;
        h = new HashMap();
        j = null;
        l = null;
        m = ShareType.NORMAL;
        o = false;
        mDescriptor = s;
        k = requesttype;
        c.d.put((new StringBuilder(String.valueOf(s))).append(requesttype).toString(), this);
    }

    private SHARE_MEDIA a()
    {
        return SocializeConfig.getSelectedPlatfrom();
    }

    public static String buildPoolKey(String s, RequestType requesttype)
    {
        return (new StringBuilder(String.valueOf(s))).append(requesttype.toString()).toString();
    }

    public static SocializeEntity cloneNew(SocializeEntity socializeentity, RequestType requesttype)
    {
        requesttype = new SocializeEntity(socializeentity.mDescriptor, requesttype);
        requesttype.mEntityKey = socializeentity.mEntityKey;
        requesttype.mSessionID = socializeentity.mSessionID;
        requesttype.mCustomID = socializeentity.mCustomID;
        requesttype.a = socializeentity.a;
        requesttype.b = socializeentity.a;
        requesttype.c = socializeentity.c;
        requesttype.d = socializeentity.d;
        requesttype.e = socializeentity.e;
        requesttype.f = socializeentity.f;
        requesttype.g = socializeentity.g;
        requesttype.mInitialized = socializeentity.mInitialized;
        return requesttype;
    }

    public static String getAppWebSite(SHARE_MEDIA share_media)
    {
        share_media = (String)n.get(share_media);
        if (!TextUtils.isEmpty(share_media))
        {
            return share_media;
        } else
        {
            return (String)n.get(SHARE_MEDIA.GENERIC);
        }
    }

    public static void setAppWebSite(SHARE_MEDIA share_media, String s)
    {
        n.put(share_media, s);
    }

    public void addOauthData(Context context, SHARE_MEDIA share_media, int i1)
    {
        try
        {
            StatisticsDataUtils.addOauthData(context, share_media, i1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    public void addShakeStatisticsData(Context context)
    {
        try
        {
            StatisticsDataUtils.saveSharkStatisticsData(context);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    public void addStatisticsData(Context context, SHARE_MEDIA share_media, int i1)
    {
        try
        {
            StatisticsDataUtils.addStatisticsData(context, share_media, i1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    public void changeILike()
    {
        this;
        JVM INSTR monitorenter ;
        if (g != LIKESTATUS.LIKE) goto _L2; else goto _L1
_L1:
        c = c - 1;
        g = LIKESTATUS.UNLIKE;
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        c = c + 1;
        g = LIKESTATUS.LIKE;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void cleanStatisticsData(Context context, boolean flag)
    {
        try
        {
            StatisticsDataUtils.cleanStatisticsData(context, flag);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    public int getCommentCount()
    {
        return b;
    }

    public SocializeConfig getEntityConfig()
    {
        return j;
    }

    public int getLikeCount()
    {
        return c;
    }

    public LIKESTATUS getLikeStatus()
    {
        return g;
    }

    public BaseMediaObject getMedia(Class class1)
    {
        Object obj = a();
        obj = (UMediaObject)h.get(obj);
        if (obj != null && class1 != null && obj.getClass().equals(class1))
        {
            return (BaseMediaObject)obj;
        } else
        {
            return null;
        }
    }

    public UMediaObject getMedia()
    {
        return getMedia(a());
    }

    public UMediaObject getMedia(SHARE_MEDIA share_media)
    {
        UMediaObject umediaobject = (UMediaObject)h.get(share_media);
        share_media = umediaobject;
        if (umediaobject == null)
        {
            share_media = (UMediaObject)h.get(SHARE_MEDIA.GENERIC);
        }
        return share_media;
    }

    public String getNickName()
    {
        return f;
    }

    public Map getOauthStatisticsData()
    {
        Map map;
        try
        {
            map = StatisticsDataUtils.getOauthStatisticsData();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return new HashMap();
        }
        return map;
    }

    public int getPv()
    {
        return a;
    }

    public RequestType getRequestType()
    {
        return k;
    }

    public String getShareContent()
    {
        String s = i;
        Object obj = a();
        obj = (UMediaObject)h.get(obj);
        if (obj != null && (obj instanceof SimpleShareContent))
        {
            obj = ((SimpleShareContent)obj).getShareContent();
            if (!TextUtils.isEmpty(((CharSequence) (obj))))
            {
                return ((String) (obj));
            }
        }
        return s;
    }

    public int getShareCount()
    {
        return d;
    }

    public UMShareMsg getShareMsg()
    {
        return l;
    }

    public ShareType getShareType()
    {
        return m;
    }

    public Map getSharkStatisticsData(Context context)
    {
        try
        {
            context = StatisticsDataUtils.getSharkStatisticsData(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return new HashMap();
        }
        return context;
    }

    public Map getStatisticsData()
    {
        Map map;
        try
        {
            map = StatisticsDataUtils.getStatisticsData();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return new HashMap();
        }
        return map;
    }

    public void incrementCc()
    {
        this;
        JVM INSTR monitorenter ;
        b = b + 1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void incrementSc()
    {
        this;
        JVM INSTR monitorenter ;
        d = d + 1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean isFireCallback()
    {
        return o;
    }

    public boolean isNew()
    {
        return e;
    }

    public void setCommentCount(int i1)
    {
        b = i1;
    }

    public void setConfig(SocializeConfig socializeconfig)
    {
        j = socializeconfig;
    }

    public void setFireCallback(boolean flag)
    {
        o = flag;
    }

    public void setIlikey(LIKESTATUS likestatus)
    {
        g = likestatus;
    }

    public void setLikeCount(int i1)
    {
        c = i1;
    }

    public void setMedia(UMediaObject umediaobject)
    {
        SHARE_MEDIA share_media = SHARE_MEDIA.GENERIC;
        if (umediaobject != null)
        {
            share_media = umediaobject.getTargetPlatform();
        }
        if (h.containsKey(share_media))
        {
            h.remove(share_media);
        }
        h.put(share_media, umediaobject);
    }

    public void setNew(boolean flag)
    {
        e = flag;
    }

    public void setNickName(String s)
    {
        f = s;
    }

    public void setPv(int i1)
    {
        a = i1;
    }

    public void setShareContent(String s)
    {
        i = s;
    }

    public void setShareCount(int i1)
    {
        d = i1;
    }

    public void setShareMsg(UMShareMsg umsharemsg)
    {
        l = umsharemsg;
    }

    public void setShareType(ShareType sharetype)
    {
        m = sharetype;
    }

}
