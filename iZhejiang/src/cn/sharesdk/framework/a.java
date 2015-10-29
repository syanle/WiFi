// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.text.TextUtils;
import cn.sharesdk.framework.statistics.b;
import cn.sharesdk.framework.statistics.b.f;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.Ln;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            PlatformActionListener, Platform, PlatformDb, b, 
//            c, CustomPlatform

public class a
    implements PlatformActionListener
{

    private PlatformActionListener a;

    a()
    {
    }

    static PlatformActionListener a(a a1)
    {
        return a1.a;
    }

    static PlatformActionListener a(a a1, PlatformActionListener platformactionlistener)
    {
        a1.a = platformactionlistener;
        return platformactionlistener;
    }

    private String a(Platform platform)
    {
        platform = platform.getDb();
        try
        {
            platform = a(((PlatformDb) (platform)), new String[] {
                "nickname", "icon", "gender", "snsUserUrl", "resume", "secretType", "secret", "birthday", "followerCount", "favouriteCount", 
                "shareCount", "snsregat", "snsUserLevel", "educationJSONArrayStr", "workJSONArrayStr"
            });
        }
        // Misplaced declaration of an exception variable
        catch (Platform platform)
        {
            Ln.e(platform);
            return null;
        }
        return platform;
    }

    private String a(PlatformDb platformdb, String as[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        StringBuilder stringbuilder1 = new StringBuilder();
        int k = as.length;
        int i = 0;
        int j = 0;
        while (i < k) 
        {
            String s = as[i];
            if (j > 0)
            {
                stringbuilder1.append('|');
                stringbuilder.append('|');
            }
            j++;
            s = platformdb.get(s);
            if (!TextUtils.isEmpty(s))
            {
                stringbuilder.append(s);
                stringbuilder1.append(Data.urlEncode(s, "utf-8"));
            }
            i++;
        }
        Ln.e((new StringBuilder()).append("======UserData: ").append(stringbuilder.toString()).toString(), new Object[0]);
        return stringbuilder1.toString();
    }

    static String a(a a1, Platform platform)
    {
        return a1.a(platform);
    }

    private void a(Platform platform, int i, HashMap hashmap)
    {
        a = new cn.sharesdk.framework.b(this, a, i, hashmap);
        platform.showUser(null);
    }

    private String b(Platform platform)
    {
        platform = platform.getDb();
        try
        {
            platform = a(platform, new String[] {
                "gender", "birthday", "secretType", "educationJSONArrayStr", "workJSONArrayStr"
            });
        }
        // Misplaced declaration of an exception variable
        catch (Platform platform)
        {
            Ln.e(platform);
            return null;
        }
        return platform;
    }

    private void b(Platform platform, int i, HashMap hashmap)
    {
        Object obj;
        HashMap hashmap1;
        if (hashmap != null)
        {
            obj = (Platform.ShareParams)hashmap.remove("ShareParams");
        } else
        {
            obj = null;
        }
        try
        {
            hashmap1 = (HashMap)hashmap.clone();
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
            throwable = hashmap;
        }
        if (obj != null)
        {
            f f1 = new f();
            f1.o = ((Platform.ShareParams) (obj)).getCustomFlag();
            String s;
            if ("TencentWeibo".equals(platform.getName()))
            {
                s = platform.getDb().get("name");
            } else
            {
                s = platform.getDb().getUserId();
            }
            f1.b = s;
            f1.a = platform.getPlatformId();
            obj = platform.filterShareContent(((Platform.ShareParams) (obj)), hashmap1);
            if (obj != null)
            {
                f1.c = ((cn.sharesdk.framework.statistics.b.f.a) (obj)).a;
                f1.d = ((cn.sharesdk.framework.statistics.b.f.a) (obj));
            }
            f1.n = b(platform);
            cn.sharesdk.framework.statistics.b.a(platform.getContext()).a(f1);
        }
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_160;
        }
        a.onComplete(platform, i, hashmap);
        return;
        platform;
        Ln.w(platform);
        return;
    }

    PlatformActionListener a()
    {
        return a;
    }

    void a(Platform platform, int i, Object obj)
    {
        a = new c(this, a, i, obj);
        platform.doAuthorize(null);
    }

    void a(PlatformActionListener platformactionlistener)
    {
        a = platformactionlistener;
    }

    public void onCancel(Platform platform, int i)
    {
        if (a != null)
        {
            a.onCancel(platform, i);
        }
    }

    public void onComplete(Platform platform, int i, HashMap hashmap)
    {
        if (!(platform instanceof CustomPlatform)) goto _L2; else goto _L1
_L1:
        if (a != null)
        {
            a.onComplete(platform, i, hashmap);
        }
_L4:
        return;
_L2:
        switch (i)
        {
        default:
            if (a != null)
            {
                a.onComplete(platform, i, hashmap);
                return;
            }
            break;

        case 1: // '\001'
            a(platform, i, hashmap);
            return;

        case 9: // '\t'
            b(platform, i, hashmap);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onError(Platform platform, int i, Throwable throwable)
    {
        if (a != null)
        {
            a.onError(platform, i, throwable);
        }
    }
}
