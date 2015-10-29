// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.sina.weibo;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.a.a;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.b;
import cn.sharesdk.framework.authorize.f;
import cn.sharesdk.framework.authorize.g;
import cn.sharesdk.framework.e;
import com.mob.tools.network.KVPair;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;
import com.mob.tools.utils.UIHandler;
import java.io.File;
import java.net.FileNameMap;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package cn.sharesdk.sina.weibo:
//            j, k, f, h

public class i extends e
{

    private static i b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g[];
    private a h;

    private i(Platform platform)
    {
        super(platform);
        h = cn.sharesdk.framework.a.a.a();
    }

    static Platform a(i l)
    {
        return l.a;
    }

    public static i a(Platform platform)
    {
        cn/sharesdk/sina/weibo/i;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new i(platform);
        }
        platform = b;
        cn/sharesdk/sina/weibo/i;
        JVM INSTR monitorexit ;
        return platform;
        platform;
        throw platform;
    }

    private HashMap a(String s, float f1, float f2)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new KVPair("source", c));
        arraylist.add(new KVPair("access_token", f));
        arraylist.add(new KVPair("status", s));
        arraylist.add(new KVPair("long", String.valueOf(f1)));
        arraylist.add(new KVPair("lat", String.valueOf(f2)));
        s = h.b("https://api.weibo.com/2/statuses/update.json", arraylist, "/2/statuses/update.json", c());
        if (s != null)
        {
            return (new Hashon()).fromJson(s);
        } else
        {
            return null;
        }
    }

    private HashMap a(String s, String s1, float f1, float f2)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new KVPair("source", c));
        arraylist.add(new KVPair("access_token", f));
        arraylist.add(new KVPair("status", s));
        arraylist.add(new KVPair("long", String.valueOf(f1)));
        arraylist.add(new KVPair("lat", String.valueOf(f2)));
        arraylist.add(new KVPair("url", s1));
        s = h.b("https://api.weibo.com/2/statuses/upload_url_text.json", arraylist, "/2/statuses/upload_url_text.json", c());
        if (s != null)
        {
            return (new Hashon()).fromJson(s);
        } else
        {
            return null;
        }
    }

    static void a(i l, AuthorizeListener authorizelistener)
    {
        l.b(authorizelistener);
    }

    private HashMap b(String s, String s1, float f1, float f2)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new KVPair("source", c));
        arraylist.add(new KVPair("access_token", f));
        arraylist.add(new KVPair("status", s1));
        arraylist.add(new KVPair("long", String.valueOf(f1)));
        arraylist.add(new KVPair("lat", String.valueOf(f2)));
        s = new KVPair("pic", s);
        s = h.a("https://api.weibo.com/2/statuses/upload.json", arraylist, s, "/2/statuses/upload.json", c());
        if (s != null)
        {
            return (new Hashon()).fromJson(s);
        } else
        {
            return null;
        }
    }

    public String a(Context context, String s)
    {
        context = new ArrayList();
        context.add(new KVPair("client_id", c));
        context.add(new KVPair("client_secret", d));
        context.add(new KVPair("redirect_uri", e));
        context.add(new KVPair("grant_type", "authorization_code"));
        context.add(new KVPair("code", s));
        context = h.b("https://api.weibo.com/oauth2/access_token", context, "/oauth2/access_token", c());
        ShareSDK.logApiEvent("/oauth2/access_token", c());
        return context;
    }

    public HashMap a(int l, int i1, String s)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new KVPair("source", c));
        boolean flag = true;
        try
        {
            R.parseLong(s);
        }
        catch (Throwable throwable)
        {
            flag = false;
        }
        if (flag)
        {
            arraylist.add(new KVPair("uid", s));
        } else
        {
            arraylist.add(new KVPair("screen_name", s));
        }
        arraylist.add(new KVPair("count", String.valueOf(l)));
        arraylist.add(new KVPair("page", String.valueOf(i1)));
        s = h.a("https://api.weibo.com/2/statuses/user_timeline.json", arraylist, "/2/statuses/user_timeline.json", c());
        if (s != null)
        {
            return (new Hashon()).fromJson(s);
        } else
        {
            return null;
        }
    }

    public HashMap a(String s, String s1, String s2, float f1, float f2)
    {
        if (TextUtils.isEmpty(s) && TextUtils.isEmpty(s1) && TextUtils.isEmpty(s2))
        {
            throw new Throwable("weibo content can not be null!");
        }
        if (!TextUtils.isEmpty(s2))
        {
            return b(s2, s, f1, f2);
        }
        if (!TextUtils.isEmpty(s1))
        {
            return a(s, s1, f1, f2);
        } else
        {
            return a(s, f1, f2);
        }
    }

    public HashMap a(String s, String s1, HashMap hashmap, HashMap hashmap1)
    {
        if (s1 != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        ArrayList arraylist = new ArrayList();
        if (hashmap != null && hashmap.size() > 0)
        {
            java.util.Map.Entry entry;
            for (hashmap = hashmap.entrySet().iterator(); hashmap.hasNext(); arraylist.add(new KVPair((String)entry.getKey(), String.valueOf(entry.getValue()))))
            {
                entry = (java.util.Map.Entry)hashmap.next();
            }

        }
        arraylist.add(new KVPair("source", c));
        if (f != null)
        {
            arraylist.add(new KVPair("access_token", f));
        }
        if (hashmap1 != null && hashmap1.size() > 0)
        {
            hashmap1 = hashmap1.entrySet().iterator();
            for (hashmap = null; hashmap1.hasNext(); hashmap = new KVPair((String)hashmap.getKey(), hashmap.getValue()))
            {
                hashmap = (java.util.Map.Entry)hashmap1.next();
            }

        } else
        {
            hashmap = null;
        }
        if (!"GET".equals(s1.toUpperCase())) goto _L4; else goto _L3
_L3:
        s = (new NetworkHelper()).httpGet(s, arraylist, null, null);
_L8:
        if (s != null && s.length() > 0)
        {
            return (new Hashon()).fromJson(s);
        }
          goto _L5
_L4:
        if (!"POST".equals(s1.toUpperCase()))
        {
            break MISSING_BLOCK_LABEL_300;
        }
        s = (new NetworkHelper()).httpPost(s, arraylist, hashmap, null, null);
          goto _L6
        s;
        Ln.e(s);
        s = null;
_L6:
        if (true) goto _L8; else goto _L7
_L7:
_L5:
        if (true) goto _L1; else goto _L9
_L9:
    }

    public void a(AuthorizeListener authorizelistener, boolean flag)
    {
        if (flag)
        {
            b(authorizelistener);
            return;
        } else
        {
            a(((cn.sharesdk.framework.authorize.SSOListener) (new j(this, authorizelistener))));
            return;
        }
    }

    public void a(String s)
    {
        e = s;
    }

    public void a(String s, cn.sharesdk.framework.Platform.ShareParams shareparams, PlatformActionListener platformactionlistener)
    {
        Object obj;
label0:
        {
label1:
            {
                String s3 = shareparams.getImagePath();
                obj = shareparams.getImageUrl();
                String s1 = s3;
                if (TextUtils.isEmpty(s3))
                {
                    s1 = s3;
                    if (!TextUtils.isEmpty(((CharSequence) (obj))))
                    {
                        obj = new File(BitmapHelper.downloadBitmap(a.getContext(), ((String) (obj))));
                        s1 = s3;
                        if (((File) (obj)).exists())
                        {
                            s1 = ((File) (obj)).getAbsolutePath();
                        }
                    }
                }
                obj = new Intent("android.intent.action.SEND");
                ((Intent) (obj)).putExtra("android.intent.extra.TEXT", s);
                if (TextUtils.isEmpty(s1))
                {
                    break MISSING_BLOCK_LABEL_369;
                }
                s = new File(s1);
                if (!s.exists())
                {
                    break label0;
                }
                if (s1.startsWith("/data/"))
                {
                    File file = new File(R.getCachePath(a.getContext(), "images"), (new StringBuilder()).append(System.currentTimeMillis()).append(s.getName()).toString());
                    String s4 = file.getAbsolutePath();
                    file.createNewFile();
                    if (R.copyFile(s1, s4))
                    {
                        s = file;
                    }
                }
                ((Intent) (obj)).putExtra("android.intent.extra.STREAM", Uri.fromFile(s));
                s1 = URLConnection.getFileNameMap().getContentTypeFor(s1);
                if (s1 != null)
                {
                    s = s1;
                    if (s1.length() > 0)
                    {
                        break label1;
                    }
                }
                s = "image/*";
            }
            ((Intent) (obj)).setType(s);
        }
_L1:
        String s2;
        HashMap hashmap;
        if (b())
        {
            ((Intent) (obj)).setPackage("com.sina.weibo");
        } else
        {
            ((Intent) (obj)).setClassName("com.sina.weibo", "com.sina.weibo.EditActivity");
        }
        ((Intent) (obj)).addFlags(0x10000000);
        a.getContext().startActivity(((Intent) (obj)));
        s = DeviceHelper.getInstance(a.getContext());
        s2 = a.getContext().getPackageName();
        hashmap = new HashMap();
        hashmap.put("ShareParams", shareparams);
        if (TextUtils.isEmpty(s.getTopTaskPackageName()))
        {
            if (platformactionlistener != null && platformactionlistener != null)
            {
                platformactionlistener.onComplete(a, 9, hashmap);
            }
            return;
        } else
        {
            UIHandler.sendEmptyMessageDelayed(0, 2000L, new k(this, s, s2, platformactionlistener, hashmap));
            return;
        }
        ((Intent) (obj)).setType("text/plain");
          goto _L1
    }

    public void a(String s, String s1)
    {
        c = s;
        d = s1;
    }

    public void a(String as[])
    {
        g = as;
    }

    public boolean a()
    {
        boolean flag = false;
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setPackage("com.sina.weibo");
        intent.setType("image/*");
        if (a.getContext().getPackageManager().resolveActivity(intent, 0) != null)
        {
            flag = true;
        }
        return flag;
    }

    public HashMap b(int l, int i1, String s)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new KVPair("source", c));
        if (f != null)
        {
            arraylist.add(new KVPair("access_token", f));
        }
        boolean flag = true;
        try
        {
            R.parseLong(s);
        }
        catch (Throwable throwable)
        {
            flag = false;
        }
        if (flag)
        {
            arraylist.add(new KVPair("uid", s));
        } else
        {
            arraylist.add(new KVPair("screen_name", s));
        }
        arraylist.add(new KVPair("count", String.valueOf(l)));
        arraylist.add(new KVPair("cursor", String.valueOf(i1 * l)));
        s = h.a("https://api.weibo.com/2/friendships/friends.json", arraylist, "/2/friendships/friends.json", c());
        if (s != null)
        {
            return (new Hashon()).fromJson(s);
        } else
        {
            return null;
        }
    }

    public void b(String s)
    {
        f = s;
    }

    public boolean b()
    {
        boolean flag = false;
        int l = a.getContext().getPackageManager().getPackageInfo("com.sina.weibo", 0).versionCode;
        Ln.i((new StringBuilder()).append("sinaweibo client versionCode ==>> ").append(l).toString(), new Object[0]);
_L2:
        if (l >= 1914)
        {
            flag = true;
        }
        return flag;
        Throwable throwable;
        throwable;
        l = 0;
_L3:
        Ln.e(throwable);
        if (true) goto _L2; else goto _L1
_L1:
        throwable;
          goto _L3
    }

    public HashMap c(String s)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new KVPair("source", c));
        if (f != null)
        {
            arraylist.add(new KVPair("access_token", f));
        }
        boolean flag = true;
        try
        {
            R.parseLong(s);
        }
        catch (Throwable throwable)
        {
            flag = false;
        }
        if (flag)
        {
            arraylist.add(new KVPair("uid", s));
        } else
        {
            arraylist.add(new KVPair("screen_name", s));
        }
        s = h.a("https://api.weibo.com/2/users/show.json", arraylist, "/2/users/show.json", c());
        if (s != null)
        {
            return (new Hashon()).fromJson(s);
        } else
        {
            return null;
        }
    }

    public HashMap d(String s)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new KVPair("source", c));
        arraylist.add(new KVPair("access_token", f));
        boolean flag = true;
        try
        {
            R.parseLong(s);
        }
        catch (Throwable throwable)
        {
            flag = false;
        }
        if (flag)
        {
            arraylist.add(new KVPair("uid", s));
        } else
        {
            arraylist.add(new KVPair("screen_name", s));
        }
        s = h.b("https://api.weibo.com/2/friendships/create.json", arraylist, "/2/friendships/create.json", c());
        if (s != null)
        {
            return (new Hashon()).fromJson(s);
        } else
        {
            return null;
        }
    }

    public String getAuthorizeUrl()
    {
        Object obj = new ArrayList();
        ((ArrayList) (obj)).add(new KVPair("client_id", c));
        ((ArrayList) (obj)).add(new KVPair("response_type", "code"));
        ((ArrayList) (obj)).add(new KVPair("redirect_uri", e));
        if (g != null && g.length > 0)
        {
            ((ArrayList) (obj)).add(new KVPair("scope", TextUtils.join(",", g)));
        }
        ((ArrayList) (obj)).add(new KVPair("display", "mobile"));
        obj = (new StringBuilder()).append("https://api.weibo.com/oauth2/authorize?").append(R.encodeUrl(((ArrayList) (obj)))).toString();
        ShareSDK.logApiEvent("/oauth2/authorize", c());
        return ((String) (obj));
    }

    public b getAuthorizeWebviewClient(g g1)
    {
        return new cn.sharesdk.sina.weibo.f(g1);
    }

    public String getRedirectUri()
    {
        if (TextUtils.isEmpty(e))
        {
            return "https://api.weibo.com/oauth2/default.html";
        } else
        {
            return e;
        }
    }

    public f getSSOProcessor(cn.sharesdk.framework.authorize.e e1)
    {
        e1 = new h(e1);
        e1.a(32973);
        e1.a(c, e, new String[0]);
        return e1;
    }
}
