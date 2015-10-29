// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import cn.sharesdk.framework.statistics.a;
import com.mob.tools.SSDKHandlerThread;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;
import java.io.InputStream;
import java.io.PrintStream;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

// Referenced classes of package cn.sharesdk.framework:
//            ShareSDK, l, i, Platform, 
//            Service, m, CustomPlatform

public class k extends SSDKHandlerThread
{
    private static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        private static final a d[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(cn/sharesdk/framework/k$a, s);
        }

        public static a[] values()
        {
            return (a[])d.clone();
        }

        static 
        {
            a = new a("IDLE", 0);
            b = new a("INITIALIZING", 1);
            c = new a("READY", 2);
            d = (new a[] {
                a, b, c
            });
        }

        private a(String s, int i1)
        {
            super(s, i1);
        }
    }


    private a a;
    private Context b;
    private HashMap c;
    private ArrayList d;
    private HashMap e;
    private HashMap f;
    private HashMap g;
    private HashMap h;
    private HashMap i;
    private String j;
    private boolean k;
    private String l;
    private boolean m;
    private boolean n;

    public k(Context context)
    {
        super((new StringBuilder()).append("Thread-").append(Math.abs(550)).toString());
        a = cn.sharesdk.framework.a.a;
        b = context.getApplicationContext();
        Ln.setContext(b);
        c = new HashMap();
        d = new ArrayList();
        e = new HashMap();
        f = new HashMap();
        g = new HashMap();
        h = new HashMap();
        i = new HashMap();
    }

    static String a(k k1)
    {
        return k1.j;
    }

    static boolean a(k k1, cn.sharesdk.framework.statistics.a a1, HashMap hashmap, HashMap hashmap1)
    {
        return k1.a(a1, hashmap, hashmap1);
    }

    private boolean a(cn.sharesdk.framework.statistics.a a1, HashMap hashmap, HashMap hashmap1)
    {
        boolean flag1 = false;
        boolean flag;
        if (hashmap.containsKey("error"))
        {
            flag = flag1;
            try
            {
                if (!ShareSDK.isDebug())
                {
                    break MISSING_BLOCK_LABEL_149;
                }
                Log.e("ShareSDK request platform config ==>>", (new Hashon()).fromHashMap(hashmap));
            }
            // Misplaced declaration of an exception variable
            catch (cn.sharesdk.framework.statistics.a a1)
            {
                flag = flag1;
                if (ShareSDK.isDebug())
                {
                    a1.printStackTrace();
                    return false;
                }
                break MISSING_BLOCK_LABEL_149;
            }
            return false;
        }
        if (hashmap.containsKey("res"))
        {
            break MISSING_BLOCK_LABEL_87;
        }
        flag = flag1;
        if (!ShareSDK.isDebug())
        {
            break MISSING_BLOCK_LABEL_149;
        }
        Log.e("ShareSDK platform config result ==>>", "SNS configuration is empty");
        return false;
        hashmap = String.valueOf(hashmap.get("res")).replace("\n", "");
        a1 = a1.b(j, hashmap).trim();
        Ln.i("snsconf returns ===> %s", new Object[] {
            a1
        });
        hashmap1.putAll((new Hashon()).fromJson(a1));
        flag = true;
        return flag;
    }

    private void h()
    {
        HashMap hashmap = c;
        hashmap;
        JVM INSTR monitorenter ;
        c.clear();
        i();
        if (!c.containsKey("ShareSDK")) goto _L2; else goto _L1
_L1:
        Object obj = (HashMap)c.remove("ShareSDK");
        if (obj == null) goto _L2; else goto _L3
_L3:
        if (j == null)
        {
            j = (String)((HashMap) (obj)).get("AppKey");
        }
        if (!((HashMap) (obj)).containsKey("UseVersion"))
        {
            break MISSING_BLOCK_LABEL_99;
        }
        obj = (String)((HashMap) (obj)).get("UseVersion");
_L4:
        l = ((String) (obj));
_L2:
        hashmap;
        JVM INSTR monitorexit ;
        return;
        obj;
        hashmap;
        JVM INSTR monitorexit ;
        throw obj;
        obj = "latest";
          goto _L4
    }

    private void i()
    {
        XmlPullParser xmlpullparser;
        XmlPullParserFactory xmlpullparserfactory = XmlPullParserFactory.newInstance();
        xmlpullparserfactory.setNamespaceAware(true);
        xmlpullparser = xmlpullparserfactory.newPullParser();
        Object obj = b.getAssets().open("ShareSDK.xml");
_L6:
        int i1;
        xmlpullparser.setInput(((InputStream) (obj)), "utf-8");
        i1 = xmlpullparser.getEventType();
_L4:
        if (i1 == 1)
        {
            break; /* Loop/switch isn't completed */
        }
        if (i1 != 2)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        String s;
        HashMap hashmap;
        int j1;
        s = xmlpullparser.getName();
        hashmap = new HashMap();
        j1 = xmlpullparser.getAttributeCount();
        i1 = 0;
_L2:
        if (i1 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        hashmap.put(xmlpullparser.getAttributeName(i1), xmlpullparser.getAttributeValue(i1).trim());
        i1++;
        if (true) goto _L2; else goto _L1
        obj;
        Ln.e(((Throwable) (obj)));
        obj = b.getAssets().open("ShareSDK.conf");
        continue; /* Loop/switch isn't completed */
_L1:
        c.put(s, hashmap);
        i1 = xmlpullparser.next();
        if (true) goto _L4; else goto _L3
_L3:
        try
        {
            ((InputStream) (obj)).close();
            return;
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
        }
        return;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void j()
    {
        (new l(this)).start();
    }

    private void k()
    {
        d.clear();
        ArrayList arraylist = (new i()).a(b);
        if (arraylist != null)
        {
            d.addAll(arraylist);
        }
        HashMap hashmap = e;
        hashmap;
        JVM INSTR monitorenter ;
        Object obj = f;
        obj;
        JVM INSTR monitorenter ;
        Platform platform;
        for (Iterator iterator = d.iterator(); iterator.hasNext(); e.put(platform.getName(), Integer.valueOf(platform.getPlatformId())))
        {
            platform = (Platform)iterator.next();
            f.put(Integer.valueOf(platform.getPlatformId()), platform.getName());
        }

        break MISSING_BLOCK_LABEL_132;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        hashmap;
        JVM INSTR monitorexit ;
        throw obj;
        obj;
        JVM INSTR monitorexit ;
        hashmap;
        JVM INSTR monitorexit ;
    }

    private void l()
    {
        (new i()).a(b, j, handler, k, c());
    }

    public String a(int i1, String s)
    {
        synchronized (h)
        {
            s = (new i()).a(i1, s, h);
        }
        return s;
        s;
        hashmap;
        JVM INSTR monitorexit ;
        throw s;
    }

    public String a(Bitmap bitmap)
    {
        if (a.c != a)
        {
            return null;
        } else
        {
            return (new i()).a(b, bitmap);
        }
    }

    public String a(String s, boolean flag, int i1, String s1)
    {
        if (a.c != a)
        {
            return s;
        } else
        {
            return (new i()).a(b, j, s, flag, i1, s1);
        }
    }

    public void a(int i1)
    {
        NetworkHelper.connectionTimeout = i1;
    }

    public void a(int i1, int j1)
    {
        synchronized (h)
        {
            (new i()).a(i1, j1, h);
        }
        return;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(int i1, Platform platform)
    {
        (new i()).a(i1, platform);
    }

    public void a(Class class1)
    {
label0:
        {
            synchronized (i)
            {
                if (!i.containsKey(Integer.valueOf(class1.hashCode())))
                {
                    break label0;
                }
            }
            return;
        }
        Service service = (Service)class1.newInstance();
        i.put(Integer.valueOf(class1.hashCode()), service);
        service.a(b);
        service.a(j);
        service.onBind();
_L1:
        hashmap;
        JVM INSTR monitorexit ;
        return;
        class1;
        hashmap;
        JVM INSTR monitorexit ;
        throw class1;
        class1;
        Ln.e(class1);
          goto _L1
    }

    public void a(String s)
    {
        j = s;
    }

    public void a(String s, int i1)
    {
        (new i()).a(s, i1);
    }

    public void a(String s, String s1)
    {
        synchronized (c)
        {
            s = (HashMap)c.get(s);
            c.put(s1, s);
        }
        return;
        s;
        hashmap;
        JVM INSTR monitorexit ;
        throw s;
    }

    public void a(String s, HashMap hashmap)
    {
        HashMap hashmap2 = c;
        hashmap2;
        JVM INSTR monitorenter ;
        HashMap hashmap1 = (HashMap)c.get(s);
        if (hashmap1 != null)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        hashmap1 = new HashMap();
        hashmap1;
        JVM INSTR monitorenter ;
        hashmap = hashmap.entrySet().iterator();
_L2:
        String s1;
        Object obj;
        do
        {
            if (!hashmap.hasNext())
            {
                break MISSING_BLOCK_LABEL_117;
            }
            obj = (java.util.Map.Entry)hashmap.next();
            s1 = (String)((java.util.Map.Entry) (obj)).getKey();
            obj = ((java.util.Map.Entry) (obj)).getValue();
        } while (obj == null);
        hashmap1.put(s1, String.valueOf(obj));
        if (true) goto _L2; else goto _L1
_L1:
        s;
        hashmap1;
        JVM INSTR monitorexit ;
        throw s;
        s;
        hashmap2;
        JVM INSTR monitorexit ;
        throw s;
        hashmap1;
        JVM INSTR monitorexit ;
        c.put(s, hashmap1);
        hashmap2;
        JVM INSTR monitorexit ;
    }

    public void a(boolean flag)
    {
        k = flag;
    }

    public boolean a(HashMap hashmap)
    {
        if (a.c != a)
        {
            if (ShareSDK.isDebug())
            {
                System.err.println("Statistics module unopened");
            }
            return false;
        }
        cn.sharesdk.framework.statistics.a a1 = cn.sharesdk.framework.statistics.a.a(b);
        boolean flag1 = a(a1, a1.f(j), hashmap);
        if (flag1)
        {
            n = true;
            (new m(this, a1)).start();
            return flag1;
        }
        boolean flag = flag1;
        String s;
        try
        {
            s = a1.g(j);
        }
        // Misplaced declaration of an exception variable
        catch (HashMap hashmap)
        {
            if (ShareSDK.isDebug())
            {
                hashmap.printStackTrace();
            }
            n = false;
            return flag;
        }
        flag = flag1;
        a1.a(j, s);
        flag = flag1;
        flag1 = a(a1, (new Hashon()).fromJson(s), hashmap);
        flag = flag1;
        n = true;
        return flag1;
    }

    public Platform[] a()
    {
        long l1;
label0:
        {
            l1 = System.currentTimeMillis();
            synchronized (d)
            {
                if (a != cn.sharesdk.framework.a.a)
                {
                    break label0;
                }
            }
            return null;
        }
        a a1;
        a a2;
        a1 = a;
        a2 = a.b;
        if (a1 != a2)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        d.wait();
_L1:
        arraylist;
        JVM INSTR monitorexit ;
        arraylist = new ArrayList();
        Iterator iterator = d.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Platform platform = (Platform)iterator.next();
            if (platform != null && platform.b())
            {
                platform.a();
                arraylist.add(platform);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_122;
        Throwable throwable;
        throwable;
        Ln.e(throwable);
          goto _L1
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
        Iterator iterator1 = g.entrySet().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            Platform platform1 = (Platform)((java.util.Map.Entry)iterator1.next()).getValue();
            if (platform1 != null && platform1.b())
            {
                arraylist.add(platform1);
            }
        } while (true);
        if (arraylist.size() <= 0)
        {
            return null;
        }
        Platform aplatform[] = new Platform[arraylist.size()];
        for (int i1 = 0; i1 < aplatform.length; i1++)
        {
            aplatform[i1] = (Platform)arraylist.get(i1);
        }

        Ln.i("sort list use time: %s", new Object[] {
            Long.valueOf(System.currentTimeMillis() - l1)
        });
        return aplatform;
    }

    public Platform b(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        Platform aplatform[];
        return null;
_L2:
        if ((aplatform = a()) != null)
        {
            int j1 = aplatform.length;
            int i1 = 0;
            while (i1 < j1) 
            {
                Platform platform = aplatform[i1];
                if (s.equals(platform.getName()))
                {
                    return platform;
                }
                i1++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public String b()
    {
        String s;
        try
        {
            s = (new i()).a();
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
            return "2.6.0";
        }
        return s;
    }

    public String b(String s, String s1)
    {
        HashMap hashmap = c;
        hashmap;
        JVM INSTR monitorenter ;
        s = (HashMap)c.get(s);
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        hashmap;
        JVM INSTR monitorexit ;
        return null;
        s = (String)s.get(s1);
        hashmap;
        JVM INSTR monitorexit ;
        return s;
        s;
        hashmap;
        JVM INSTR monitorexit ;
        throw s;
    }

    public void b(int i1)
    {
        NetworkHelper.readTimout = i1;
    }

    public void b(Class class1)
    {
        synchronized (i)
        {
            int i1 = class1.hashCode();
            if (i.containsKey(Integer.valueOf(i1)))
            {
                ((Service)i.get(Integer.valueOf(i1))).onUnbind();
                i.remove(Integer.valueOf(i1));
            }
        }
        return;
        class1;
        hashmap;
        JVM INSTR monitorexit ;
        throw class1;
    }

    public void b(boolean flag)
    {
        m = flag;
    }

    public boolean b(HashMap hashmap)
    {
        boolean flag;
        synchronized (h)
        {
            h.clear();
            flag = (new i()).a(hashmap, h);
        }
        return flag;
        hashmap;
        hashmap1;
        JVM INSTR monitorexit ;
        throw hashmap;
    }

    public int c()
    {
        int i1;
        try
        {
            i1 = (new i()).b();
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
            return 51;
        }
        return i1;
    }

    public int c(String s)
    {
        HashMap hashmap = e;
        hashmap;
        JVM INSTR monitorenter ;
        int i1;
        if (!e.containsKey(s))
        {
            break MISSING_BLOCK_LABEL_37;
        }
        i1 = ((Integer)e.get(s)).intValue();
        return i1;
        hashmap;
        JVM INSTR monitorexit ;
        return 0;
        s;
        hashmap;
        JVM INSTR monitorexit ;
        throw s;
    }

    public Service c(Class class1)
    {
        hashmap;
        JVM INSTR monitorenter ;
        Service service;
        synchronized (i)
        {
            service = (Service)class1.cast(i.get(Integer.valueOf(class1.hashCode())));
        }
        return service;
        Throwable throwable;
        throwable;
        if (ShareSDK.isDebug())
        {
            System.err.println((new StringBuilder()).append(class1.getName()).append(" has not registered").toString());
        }
        Ln.e(throwable);
        hashmap;
        JVM INSTR monitorexit ;
        return null;
        class1;
        hashmap;
        JVM INSTR monitorexit ;
        throw class1;
    }

    public String c(int i1)
    {
        String s;
        synchronized (f)
        {
            s = (String)f.get(Integer.valueOf(i1));
        }
        return s;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String d(String s)
    {
        if (a.c != a)
        {
            return null;
        } else
        {
            return (new i()).a(b, s);
        }
    }

    public void d(Class class1)
    {
        HashMap hashmap = g;
        hashmap;
        JVM INSTR monitorenter ;
label0:
        {
            if (!g.containsKey(Integer.valueOf(class1.hashCode())))
            {
                break label0;
            }
            return;
        }
        CustomPlatform customplatform;
        customplatform = (CustomPlatform)class1.getConstructor(new Class[] {
            android/content/Context
        }).newInstance(new Object[] {
            b
        });
        g.put(Integer.valueOf(class1.hashCode()), customplatform);
        class1 = e;
        class1;
        JVM INSTR monitorenter ;
        HashMap hashmap1 = f;
        hashmap1;
        JVM INSTR monitorenter ;
        if (customplatform == null)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        if (customplatform.b())
        {
            f.put(Integer.valueOf(customplatform.getPlatformId()), customplatform.getName());
            e.put(customplatform.getName(), Integer.valueOf(customplatform.getPlatformId()));
        }
        hashmap1;
        JVM INSTR monitorexit ;
        class1;
        JVM INSTR monitorexit ;
_L1:
        hashmap;
        JVM INSTR monitorexit ;
        return;
        hashmap;
        JVM INSTR monitorexit ;
        throw class1;
        Exception exception;
        exception;
        hashmap1;
        JVM INSTR monitorexit ;
        throw exception;
        exception;
        class1;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        // Misplaced declaration of an exception variable
        catch (Class class1) { }
        finally { }
        Ln.e(class1);
          goto _L1
    }

    public boolean d()
    {
        return m;
    }

    public void e(Class class1)
    {
        int i1 = class1.hashCode();
        synchronized (g)
        {
            g.remove(Integer.valueOf(i1));
        }
        return;
        exception;
        class1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean e()
    {
        return k;
    }

    public boolean f()
    {
label0:
        {
            synchronized (h)
            {
                if (h == null || h.size() <= 0)
                {
                    break label0;
                }
            }
            return true;
        }
        boolean flag = n;
        hashmap;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void g()
    {
        try
        {
            R.clearCache(b);
            return;
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
        }
    }

    protected void onMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            a = cn.sharesdk.framework.a.a;
            break;
        }
        handler.getLooper().quit();
    }

    protected void onStart(Message message)
    {
        message = d;
        message;
        JVM INSTR monitorenter ;
        k();
        l();
        a = a.c;
        d.notify();
        j();
_L1:
        return;
        Object obj;
        obj;
        Ln.e(((Throwable) (obj)));
          goto _L1
        obj;
        message;
        JVM INSTR monitorexit ;
        throw obj;
    }

    protected void onStop(Message message)
    {
        message = i;
        message;
        JVM INSTR monitorenter ;
        for (Iterator iterator = i.entrySet().iterator(); iterator.hasNext(); ((Service)((java.util.Map.Entry)iterator.next()).getValue()).onUnbind()) { }
        break MISSING_BLOCK_LABEL_57;
        Exception exception;
        exception;
        message;
        JVM INSTR monitorexit ;
        throw exception;
        i.clear();
        message;
        JVM INSTR monitorexit ;
        synchronized (g)
        {
            g.clear();
        }
        try
        {
            (new i()).b(b);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            Ln.e(message);
        }
        break MISSING_BLOCK_LABEL_108;
        exception1;
        message;
        JVM INSTR monitorexit ;
        throw exception1;
        handler.getLooper().quit();
        a = cn.sharesdk.framework.a.a;
        return;
    }

    public void startThread()
    {
        a = a.b;
        h();
        super.startThread();
    }
}
