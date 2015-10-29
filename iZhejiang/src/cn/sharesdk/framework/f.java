// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            Platform, PlatformDb, a, ShareSDK, 
//            CustomPlatform, h, g, PlatformActionListener

public class f
{

    private Platform a;
    private Context b;
    private PlatformDb c;
    private a d;
    private int e;
    private int f;
    private boolean g;
    private boolean h;
    private boolean i;

    public f(Platform platform, Context context)
    {
        h = true;
        a = platform;
        b = context;
        String s = platform.getName();
        c = new PlatformDb(context, s, platform.getVersion());
        a(s);
        d = new a();
    }

    static boolean a(f f1)
    {
        return f1.j();
    }

    static Platform b(f f1)
    {
        return f1.a;
    }

    private boolean j()
    {
        boolean flag = false;
        if (!ShareSDK.a())
        {
            return true;
        }
        if (ShareSDK.b())
        {
            String s = a(a.getPlatformId(), "covert_url", ((String) (null)));
            if (s != null)
            {
                s.trim();
            }
            if (!"false".equals(s))
            {
                flag = true;
            }
            h = flag;
            a.setNetworkDevinfo();
            return true;
        }
        Object obj = new HashMap();
        if (!ShareSDK.a(((HashMap) (obj))))
        {
            return false;
        }
        boolean flag1;
        if (!ShareSDK.b(((HashMap) (obj))))
        {
            obj = (new Hashon()).fromHashMap(((HashMap) (obj)));
            if (ShareSDK.isDebug())
            {
                System.err.println((new StringBuilder()).append("Failed to parse network dev-info: ").append(((String) (obj))).toString());
            }
            break MISSING_BLOCK_LABEL_197;
        }
        try
        {
            obj = a(a.getPlatformId(), "covert_url", ((String) (null)));
        }
        catch (Throwable throwable)
        {
            Ln.w(throwable);
            return false;
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        ((String) (obj)).trim();
        if (!"false".equals(obj))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        h = flag1;
        a.setNetworkDevinfo();
        return true;
        return false;
    }

    private String k()
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (!"TencentWeibo".equals(a.getName())) goto _L2; else goto _L1
_L1:
        Ln.e("user id %s ==>>", new Object[] {
            g().getUserName()
        });
        stringbuilder.append(Data.urlEncode(g().getUserName(), "utf-8"));
_L3:
        stringbuilder.append("|").append(Data.urlEncode(g().get("secretType"), "utf-8"));
        stringbuilder.append("|").append(Data.urlEncode(g().get("gender"), "utf-8"));
        stringbuilder.append("|").append(Data.urlEncode(g().get("birthday"), "utf-8"));
        stringbuilder.append("|").append(Data.urlEncode(g().get("educationJSONArrayStr"), "utf-8"));
        stringbuilder.append("|").append(Data.urlEncode(g().get("workJSONArrayStr"), "utf-8"));
_L4:
        return stringbuilder.toString();
_L2:
        stringbuilder.append(Data.urlEncode(g().getUserId(), "utf-8"));
          goto _L3
        Throwable throwable;
        throwable;
        Ln.w(throwable);
          goto _L4
    }

    public int a()
    {
        return e;
    }

    public String a(int l, String s, String s1)
    {
label0:
        {
            String s2 = ShareSDK.a(l, s);
            if (!TextUtils.isEmpty(s2))
            {
                s = s2;
                if (!"null".equals(s2))
                {
                    break label0;
                }
            }
            s = a.getDevinfo(a.getName(), s1);
        }
        return s;
    }

    public String a(Bitmap bitmap)
    {
        return ShareSDK.a(bitmap);
    }

    public String a(String s, boolean flag)
    {
        long l = System.currentTimeMillis();
        if (!h)
        {
            Ln.e((new StringBuilder()).append("getShortLintk use time: ").append(System.currentTimeMillis() - l).toString(), new Object[0]);
            return s;
        }
        if (TextUtils.isEmpty(s))
        {
            Ln.e((new StringBuilder()).append("getShortLintk use time: ").append(System.currentTimeMillis() - l).toString(), new Object[0]);
            return s;
        } else
        {
            s = ShareSDK.a(s, flag, a.getPlatformId(), k());
            Ln.e((new StringBuilder()).append("getShortLintk use time: ").append(System.currentTimeMillis() - l).toString(), new Object[0]);
            return s;
        }
    }

    public void a(int l, int i1, String s)
    {
        c(2, ((Object) (new Object[] {
            Integer.valueOf(l), Integer.valueOf(i1), s
        })));
    }

    public void a(int l, Object obj)
    {
        d.a(a, l, obj);
    }

    public void a(Platform.ShareParams shareparams)
    {
        if (shareparams == null)
        {
            if (d != null)
            {
                d.onError(a, 9, new NullPointerException());
            }
            return;
        } else
        {
            c(9, shareparams);
            return;
        }
    }

    public void a(PlatformActionListener platformactionlistener)
    {
        d.a(platformactionlistener);
    }

    public void a(String s)
    {
        Object obj = ShareSDK.b(s, "Id");
        try
        {
            e = R.parseInt(String.valueOf(obj).trim());
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            if (!(a instanceof CustomPlatform) && ShareSDK.isDebug())
            {
                System.err.println((new StringBuilder()).append(a.getName()).append(" failed to parse Id, this will cause method getId() always returens 0").toString());
            }
        }
        obj = ShareSDK.b(s, "SortId");
        try
        {
            f = R.parseInt(String.valueOf(obj).trim());
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            if (!(a instanceof CustomPlatform) && ShareSDK.isDebug())
            {
                System.err.println((new StringBuilder()).append(a.getName()).append(" failed to parse SortId, this won't cause any problem, don't worry").toString());
            }
        }
        obj = ShareSDK.b(s, "Enable");
        if (obj == null)
        {
            i = true;
            if (!(a instanceof CustomPlatform) && ShareSDK.isDebug())
            {
                System.err.println((new StringBuilder()).append(a.getName()).append(" failed to parse Enable, this will cause platform always be enable").toString());
            }
        } else
        {
            i = "true".equals(((String) (obj)).trim());
        }
        a.initDevInfo(s);
    }

    public void a(String s, int l, int i1)
    {
        c(7, ((Object) (new Object[] {
            Integer.valueOf(l), Integer.valueOf(i1), s
        })));
    }

    public void a(String s, String s1, short word0, HashMap hashmap, HashMap hashmap1)
    {
        c(0xa0000 | word0, ((Object) (new Object[] {
            s, s1, hashmap, hashmap1
        })));
    }

    public void a(boolean flag)
    {
        g = flag;
    }

    public void a(String as[])
    {
        (new h(this, as)).start();
    }

    public int b()
    {
        return f;
    }

    protected void b(int l, Object obj)
    {
        l;
        JVM INSTR tableswitch 1 9: default 52
    //                   1 110
    //                   2 316
    //                   3 52
    //                   4 52
    //                   5 52
    //                   6 131
    //                   7 143
    //                   8 183
    //                   9 208;
           goto _L1 _L2 _L3 _L1 _L1 _L1 _L4 _L5 _L6 _L7
_L1:
        Object aobj[] = (Object[])(Object[])obj;
        obj = String.valueOf(aobj[0]);
        String s = String.valueOf(aobj[1]);
        HashMap hashmap = (HashMap)aobj[2];
        HashMap hashmap2 = (HashMap)aobj[3];
        a.doCustomerProtocol(((String) (obj)), s, l, hashmap, hashmap2);
_L9:
        return;
_L2:
        if (d == null) goto _L9; else goto _L8
_L8:
        d.onComplete(a, 1, null);
        return;
_L4:
        a.follow((String)obj);
        return;
_L5:
        obj = ((Object) ((Object[])(Object[])obj));
        a.timeline(((Integer)obj[0]).intValue(), ((Integer)obj[1]).intValue(), (String)obj[2]);
        return;
_L6:
        Platform platform = a;
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = (String)obj;
        }
        platform.userInfor(((String) (obj)));
        return;
_L7:
        Platform.ShareParams shareparams;
        HashMap hashmap1;
        Field afield[];
        int i1;
        shareparams = (Platform.ShareParams)obj;
        hashmap1 = shareparams.toMap();
        afield = shareparams.getClass().getFields();
        i1 = afield.length;
        l = 0;
_L11:
        while (l < i1) 
        {
            Field field = afield[l];
            if (hashmap1.get(field.getName()) == null)
            {
                field.setAccessible(true);
                try
                {
                    obj = field.get(shareparams);
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    Ln.w(((Throwable) (obj)));
                    obj = null;
                }
                if (obj != null)
                {
                    hashmap1.put(field.getName(), obj);
                }
            }
            l++;
        }
        a.doShare(shareparams);
        return;
_L3:
        obj = ((Object) ((Object[])(Object[])obj));
        a.getFriendList(((Integer)obj[0]).intValue(), ((Integer)obj[1]).intValue(), (String)obj[2]);
        return;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public void b(String s)
    {
        c(6, s);
    }

    public PlatformActionListener c()
    {
        return d.a();
    }

    protected void c(int l, Object obj)
    {
        (new g(this, l, obj)).start();
    }

    public void c(String s)
    {
        c(8, s);
    }

    public String d(String s)
    {
        return ShareSDK.a(s);
    }

    public boolean d()
    {
        return c.isValid();
    }

    public boolean e()
    {
        return g;
    }

    public boolean f()
    {
        return i;
    }

    public PlatformDb g()
    {
        return c;
    }

    public void h()
    {
        c.removeAccount();
    }

    protected PlatformActionListener i()
    {
        return d;
    }
}
