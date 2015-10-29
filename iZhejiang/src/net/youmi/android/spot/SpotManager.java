// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.io.File;
import net.youmi.android.AdManager;
import net.youmi.android.a.a.e.b.d;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.i.k;
import net.youmi.android.a.b.k.n;
import net.youmi.android.a.c.b.a;
import net.youmi.android.c.a.c;
import net.youmi.android.c.a.f;
import net.youmi.android.c.a.g;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.spot:
//            l, j, SplashView, SpotDialogListener, 
//            k, m, a, n, 
//            o, ExitSpotDialog, ExitSpotListener

public class SpotManager
{

    public static int ANIM_ADVANCE = 0;
    public static int ANIM_NONE = 0;
    public static int ANIM_SIMPLE = 0;
    public static final String CheckTag = "SDKChecking";
    public static final int EXIT_SPOT = 103;
    private static SpotManager I;
    public static final boolean IS_KITKAT;
    public static final int NORMAL_NOTIME_SPOT = 101;
    public static final int NORMAL_SPOT = 100;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 0;
    public static final String PROTOCOLVERSION = "2";
    public static final int SPLASH_SPOT = 102;
    protected static final String a = net.youmi.android.c.a.c.e();
    public static String abtest = "";
    protected static final String b = net.youmi.android.c.a.c.d();
    protected static final String c = net.youmi.android.c.a.c.c();
    protected static String d = c;
    protected static boolean h = false;
    protected static final String k = net.youmi.android.c.a.c.f();
    protected static final String l = net.youmi.android.c.a.c.g();
    protected static long m = 0L;
    protected static boolean n = false;
    private static long q = 0L;
    private static long r = 0L;
    private static long s = 0L;
    private static int t = 0;
    private static int z = 0;
    private int A;
    private int B;
    private ExitSpotDialog C;
    public final String CACHE_PIC_TAG = net.youmi.android.c.a.c.b();
    private int D;
    private int E;
    private int F;
    private String G;
    private int H;
    private Context J;
    private Activity K;
    private net.youmi.android.spot.a L;
    private SplashView M;
    private final BroadcastReceiver N = new l(this);
    protected String e;
    protected String f;
    protected String g;
    protected boolean i;
    protected boolean j;
    private final String o = "androspsid";
    private final String p = "androetstid";
    private final int u = 10;
    private final long v = 2000L;
    private boolean w;
    private boolean x;
    private int y;

    private SpotManager(Context context)
    {
        i = true;
        j = false;
        w = false;
        x = true;
        y = -1;
        A = 3600;
        B = 24;
        D = 0;
        E = 0x1030010;
        F = 0;
        H = -1;
        J = context;
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.SCREEN_OFF");
        intentfilter.addAction("android.intent.action.SCREEN_ON");
        context.getApplicationContext().registerReceiver(N, intentfilter);
        net.youmi.android.spot.j.a(context);
    }

    static Context a(SpotManager spotmanager)
    {
        return spotmanager.J;
    }

    private void a()
    {
        h = a(100);
        Object obj = J.getSharedPreferences(d, 0);
        if (h)
        {
            Object obj1 = net.youmi.android.a.b.b.b.a(net.youmi.android.a.b.b.b.a(e), "ad", null);
            if (obj1 != null && ((JSONArray) (obj1)).length() != 0)
            {
                obj1 = net.youmi.android.a.b.b.b.a(((JSONArray) (obj1)), z, null);
                boolean flag;
                if (obj1 != null)
                {
                    try
                    {
                        JSONObject jsonobject = net.youmi.android.a.b.b.b.a(((JSONObject) (obj1)), "rtg", new JSONObject());
                        if (net.youmi.android.a.b.b.e.a(net.youmi.android.a.b.b.b.a(jsonobject, "uri", "")))
                        {
                            String s1 = net.youmi.android.a.b.b.b.a(jsonobject, "pic", "");
                            net.youmi.android.c.a.g.a(s1);
                            jsonobject.put("uri", net.youmi.android.spot.j.a(net.youmi.android.c.a.g.a(J, s1).getName()));
                            ((JSONObject) (obj1)).put("rtg", jsonobject);
                        }
                        obj = ((SharedPreferences) (obj)).edit();
                        ((android.content.SharedPreferences.Editor) (obj)).putString("androspsid", ((JSONObject) (obj1)).toString());
                        ((android.content.SharedPreferences.Editor) (obj)).commit();
                        f = ((JSONObject) (obj1)).toString();
                    }
                    catch (JSONException jsonexception) { }
                    catch (Throwable throwable) { }
                }
                cacheNextAd();
            }
        } else
        {
            q = ((SharedPreferences) (obj)).getLong("lastSplashShowTime", 0L);
            if (System.currentTimeMillis() - q > (long)(0x36ee80 * B))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                obj = ((SharedPreferences) (obj)).edit();
                ((android.content.SharedPreferences.Editor) (obj)).putString("androspsid", "");
                ((android.content.SharedPreferences.Editor) (obj)).commit();
                a(false, false);
                return;
            }
        }
    }

    private void a(Context context)
    {
        ((Activity)context).setContentView(M.getSplashView());
        a(M, ((SpotDialogListener) (null)));
    }

    private void a(String s1)
    {
        try
        {
            net.youmi.android.a.c.b.a.c("Please check permissions:%s is already added", new Object[] {
                s1
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            return;
        }
    }

    private void a(SpotDialogListener spotdialoglistener, int i1)
    {
        net.youmi.android.a.c.b.a.d((new StringBuilder()).append("splash image data is not ready to show, the ad do not show  tag:").append(i1).toString());
        if (spotdialoglistener != null)
        {
            spotdialoglistener.onShowFailed();
        }
        M.showFail();
    }

    private void a(boolean flag, boolean flag1)
    {
        a(flag, flag1, null, false);
    }

    private void a(boolean flag, boolean flag1, SpotDialogListener spotdialoglistener, boolean flag2)
    {
        if (flag)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        flag = w;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        try
        {
            if (Looper.getMainLooper() == Looper.myLooper())
            {
                (new net.youmi.android.spot.k(this, J, flag1, spotdialoglistener, flag2)).execute(new Void[0]);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (SpotDialogListener spotdialoglistener)
        {
            return;
        }
        (new Handler(Looper.getMainLooper())).post(new m(this, flag1, spotdialoglistener, flag2));
        return;
        spotdialoglistener;
        net.youmi.android.a.c.b.a.b("load data fail,please send the error message to us", spotdialoglistener);
    }

    static boolean a(SpotManager spotmanager, boolean flag)
    {
        spotmanager.x = flag;
        return flag;
    }

    private boolean a(boolean flag)
    {
        if (L != null && L.a())
        {
            long l1 = System.currentTimeMillis();
            if (flag)
            {
                if (l1 - s > 2000L)
                {
                    return L.d();
                } else
                {
                    return true;
                }
            } else
            {
                return L.d();
            }
        } else
        {
            return false;
        }
    }

    private void b()
    {
        try
        {
            if (N != null)
            {
                J.getApplicationContext().unregisterReceiver(N);
            }
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    private void b(Context context, SpotDialogListener spotdialoglistener)
    {
        int i1 = 10;
        if (n)
        {
            return;
        }
        n = true;
        J = context;
        net.youmi.android.a.c.b.a.d("Try to show spot Ads Dialog.");
        if (t == 0)
        {
            t = J.getSharedPreferences(d, 0).getInt("showInterval", 10);
            if (t >= 10)
            {
                i1 = t;
            }
            t = i1;
        }
        h = a(100);
        if (!h)
        {
            net.youmi.android.a.c.b.a.d("no ad data and try to load data");
            a(h, true, spotdialoglistener, false);
            n = false;
            return;
        } else
        {
            a(context, spotdialoglistener);
            return;
        }
    }

    private void b(String s1)
    {
        Log.d("SDKChecking", s1);
    }

    static void b(SpotManager spotmanager)
    {
        spotmanager.a();
    }

    public static boolean checkSpotAdConfig(Context context)
    {
        return net.youmi.android.a.a.g.b.a.d(context);
    }

    public static SpotManager getInstance(Context context)
    {
        if (I != null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        I = new SpotManager(context);
        context = I;
        if (context != null);
_L1:
        if (net.youmi.android.a.c.c.a.b())
        {
            d = c;
        } else
        {
            d = b;
        }
        return I;
        context;
        context.printStackTrace();
        net.youmi.android.a.b.e.b.a(a, context);
          goto _L1
    }

    protected void a(Context context, SpotDialogListener spotdialoglistener)
    {
        if (net.youmi.android.a.b.i.k.b(context) != -1) goto _L2; else goto _L1
_L1:
        net.youmi.android.a.c.b.a.d("network is unavailable ");
        if (spotdialoglistener != null)
        {
            spotdialoglistener.onShowFailed();
        }
        n = false;
_L8:
        return;
_L2:
        long l1;
        if (!x)
        {
            n = false;
            return;
        }
        r = context.getSharedPreferences(d, 0).getLong("lastShowTime", 0L);
        l1 = System.currentTimeMillis() - r;
          goto _L3
_L5:
        s = System.currentTimeMillis();
        Object obj;
        obj = net.youmi.android.a.b.b.b.a(net.youmi.android.a.b.b.b.a(e), "ad", new JSONArray());
        if (((JSONArray) (obj)).length() <= z)
        {
            break MISSING_BLOCK_LABEL_219;
        }
        obj = net.youmi.android.a.b.b.b.a(((JSONArray) (obj)), z, new JSONObject());
_L6:
        L = new net.youmi.android.spot.a(context, ((JSONObject) (obj)), y, spotdialoglistener);
        L.a(H);
        net.youmi.android.a.c.a.a(L);
        return;
_L3:
        if (l1 <= 0L || l1 > (long)(t * 1000)) goto _L5; else goto _L4
_L4:
        net.youmi.android.a.c.b.a.c("Spot ad can only be called once in the %d seconds.", new Object[] {
            Integer.valueOf(t)
        });
        if (spotdialoglistener != null)
        {
            spotdialoglistener.onShowFailed();
        }
        n = false;
        return;
label0:
        {
            if (((JSONArray) (obj)).length() <= 0)
            {
                break label0;
            }
            z = 0;
            obj = net.youmi.android.a.b.b.b.a(((JSONArray) (obj)), z, new JSONObject());
        }
          goto _L6
        try
        {
            net.youmi.android.a.c.b.a.d("Spot data is null");
            n = false;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            n = false;
            return;
        }
        if (spotdialoglistener == null) goto _L8; else goto _L7
_L7:
        spotdialoglistener.onShowFailed();
        return;
    }

    protected void a(SplashView splashview, SpotDialogListener spotdialoglistener)
    {
        if (net.youmi.android.a.b.i.k.b(J) == -1)
        {
            a(spotdialoglistener, -1);
            return;
        }
        try
        {
            splashview.init(f);
            splashview.setSpotListener(spotdialoglistener);
            h = a(100);
            if (splashview.showSplash(h, e, z))
            {
                splashview = J.getSharedPreferences(d, 0).edit();
                splashview.putLong("lastSplashShowTime", System.currentTimeMillis());
                splashview.commit();
            }
            asyncLoadNextSplash();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (SplashView splashview)
        {
            net.youmi.android.a.c.b.a.d("Splash run exception");
        }
    }

    protected boolean a(int i1)
    {
        Object obj;
        long l1;
        boolean flag;
        try
        {
            obj = J.getSharedPreferences(d, 0);
            l1 = ((SharedPreferences) (obj)).getLong("lastRequestTime", 0L);
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.b.e.b.a("ads_", this, throwable);
            throwable.printStackTrace();
            return false;
        }
        i1;
        JVM INSTR tableswitch 100 103: default 295
    //                   100 56
    //                   101 140
    //                   102 206
    //                   103 232;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        break MISSING_BLOCK_LABEL_295;
_L2:
        e = ((SharedPreferences) (obj)).getString("data", "");
        if (System.currentTimeMillis() - l1 > (long)(A * 1000) || net.youmi.android.a.b.b.e.a(e))
        {
            break MISSING_BLOCK_LABEL_295;
        }
        obj = net.youmi.android.a.b.b.b.a(e);
        D = net.youmi.android.a.b.b.b.a(((JSONObject) (obj)), "ad", new JSONArray()).length();
        z = net.youmi.android.a.b.b.b.a(((JSONObject) (obj)), "adNum", 0);
        return true;
_L3:
        e = ((SharedPreferences) (obj)).getString("data", "");
        if (net.youmi.android.a.b.b.e.a(e))
        {
            break MISSING_BLOCK_LABEL_295;
        }
        obj = net.youmi.android.a.b.b.b.a(e);
        D = net.youmi.android.a.b.b.b.a(((JSONObject) (obj)), "ad", new JSONArray()).length();
        z = net.youmi.android.a.b.b.b.a(((JSONObject) (obj)), "adNum", 0);
        return true;
_L4:
        f = ((SharedPreferences) (obj)).getString("androspsid", "");
        if (!net.youmi.android.a.b.b.e.a(f))
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_295;
_L5:
        if (System.currentTimeMillis() - l1 > (long)(A * 1000))
        {
            break MISSING_BLOCK_LABEL_295;
        }
        g = ((SharedPreferences) (obj)).getString("androetstid", "");
        flag = net.youmi.android.a.b.b.e.a(g);
        if (!flag)
        {
            return true;
        }
        return false;
    }

    protected boolean a(Context context, int i1)
    {
        return showExitSpot(context, i1, null);
    }

    protected boolean a(Context context, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        String s4 = d;
        s4;
        JVM INSTR monitorenter ;
        JSONObject jsonobject1;
        int i1;
        jsonobject1 = net.youmi.android.a.b.b.b.a(s1);
        i1 = net.youmi.android.a.b.b.b.a(jsonobject1, "c", -1);
        if (i1 != 0) goto _L2; else goto _L1
_L1:
        SharedPreferences sharedpreferences;
        sharedpreferences = context.getSharedPreferences(d, 0);
        A = net.youmi.android.a.b.b.b.a(jsonobject1, "exp", 3600);
        B = net.youmi.android.a.b.b.b.a(jsonobject1, "sexp", 24);
        if (A <= 0)
        {
            A = 3600;
        }
        t = net.youmi.android.a.b.b.b.a(jsonobject1, "sg", 10);
        jsonobject1.put("adNum", z);
        if (net.youmi.android.c.a.g.a()) goto _L4; else goto _L3
_L3:
        jsonobject1.put("cache", 1);
        net.youmi.android.a.a.e.b.d.a(context).a(CACHE_PIC_TAG, jsonobject1.toString(), A * 1000);
        context = sharedpreferences.edit();
        context.putString("data", jsonobject1.toString());
        context.commit();
        s4;
        JVM INSTR monitorexit ;
        boolean flag = true;
_L16:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L4:
        JSONArray jsonarray = net.youmi.android.a.b.b.b.a(jsonobject1, "ad", null);
        if (jsonarray == null) goto _L6; else goto _L5
_L5:
        if (jsonarray.length() == 0) goto _L6; else goto _L7
_L7:
        JSONObject jsonobject2;
        D = jsonarray.length();
        jsonobject2 = net.youmi.android.a.b.b.b.a(jsonarray, z, null);
        if (jsonobject2 == null) goto _L9; else goto _L8
_L8:
        if (!j || g != null && !g.equals("")) goto _L11; else goto _L10
_L17:
        JSONObject jsonobject;
        String s3;
        jsonobject = net.youmi.android.a.b.b.b.a(jsonobject2, s1, new JSONObject());
        s3 = net.youmi.android.a.b.b.b.a(jsonobject, "pic", "");
        String s2;
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_315;
        }
        s2 = s3;
        if (!s3.equals(""))
        {
            break MISSING_BLOCK_LABEL_355;
        }
        if (s3.equals("rtg"))
        {
            s1 = "blk";
        } else
        {
            s1 = "rtg";
        }
        jsonobject = net.youmi.android.a.b.b.b.a(jsonobject2, s1, new JSONObject());
        s2 = net.youmi.android.a.b.b.b.a(jsonobject, "pic", "");
        net.youmi.android.c.a.g.a(s2);
        jsonobject.put("uri", net.youmi.android.spot.j.a(net.youmi.android.c.a.g.a(context, s2).getName()));
        jsonobject2.put(s1, jsonobject);
        if (!s2.contains(".gif")) goto _L13; else goto _L12
_L12:
        jsonobject2.put("gif", 1);
_L9:
        jsonarray.put(z, jsonobject2);
        jsonobject1.put("ad", jsonarray);
        context = sharedpreferences.edit();
        context.putString("data", jsonobject1.toString());
        context.putInt("showInterval", t);
        e = jsonobject1.toString();
        context.commit();
        if (!i || !net.youmi.android.a.b.b.e.a(f)) goto _L15; else goto _L14
_L14:
        a();
_L19:
        s4;
        JVM INSTR monitorexit ;
        flag = true;
          goto _L16
_L11:
        if (i && (f == null || f.equals("")))
        {
            break MISSING_BLOCK_LABEL_669;
        }
        if (y == 0)
        {
            s1 = "rtg";
        } else
        {
            s1 = "blk";
        }
          goto _L17
_L13:
        jsonobject2.put("gif", 0);
          goto _L9
        context;
        context.printStackTrace();
_L6:
        s4;
        JVM INSTR monitorexit ;
        flag = false;
          goto _L16
_L15:
        if (!j || !net.youmi.android.a.b.b.e.a(g)) goto _L19; else goto _L18
_L18:
        loadExitSpot();
          goto _L19
        context;
        net.youmi.android.a.b.e.b.a("ads_", this, context);
          goto _L6
        context;
        s4;
        JVM INSTR monitorexit ;
        throw context;
        context;
        this;
        JVM INSTR monitorexit ;
        throw context;
_L2:
        net.youmi.android.a.c.b.a.c("Ad request result code:%d, %s", new Object[] {
            Integer.valueOf(i1), net.youmi.android.c.a.f.a(i1)
        });
        s4;
        JVM INSTR monitorexit ;
        flag = false;
          goto _L16
_L10:
        s1 = "blk";
          goto _L17
        s1 = "rtg";
          goto _L17
    }

    public void asyncLoadNextSplash()
    {
        net.youmi.android.a.c.a.a(new net.youmi.android.spot.n(this));
    }

    public void cacheNextAd()
    {
        boolean flag1 = true;
        z++;
        Object obj;
        JSONObject jsonobject;
        boolean flag;
        long l1;
        if (z >= D)
        {
            z = 0;
            flag = true;
        } else
        {
            flag = false;
        }
        obj = J.getSharedPreferences(d, 0);
        l1 = ((SharedPreferences) (obj)).getLong("lastRequestTime", 0L);
        jsonobject = net.youmi.android.a.b.b.b.a(e);
        try
        {
            jsonobject.put("adNum", z);
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        e = jsonobject.toString();
        obj = ((SharedPreferences) (obj)).edit();
        ((android.content.SharedPreferences.Editor) (obj)).putString("data", e);
        ((android.content.SharedPreferences.Editor) (obj)).commit();
        if (System.currentTimeMillis() - l1 <= (long)(A * 1000))
        {
            flag1 = false;
        }
        if (flag && flag1)
        {
            a(false, false);
            return;
        } else
        {
            net.youmi.android.a.c.a.a(new o(this));
            return;
        }
    }

    public void checkPermission(Context context)
    {
        boolean flag;
        boolean flag1;
        flag = true;
        flag1 = false;
        net.youmi.android.a.c.b.a.c("**************SDK required permission checking**************", new Object[] {
            ""
        });
        if (net.youmi.android.a.b.k.k.b(context))
        {
            break MISSING_BLOCK_LABEL_35;
        }
        a("android.permission.INTERNET");
        flag = false;
        if (net.youmi.android.a.b.k.k.c(context))
        {
            break MISSING_BLOCK_LABEL_51;
        }
        a("android.permission.READ_PHONE_STATE");
        flag = false;
        if (net.youmi.android.a.b.k.k.d(context))
        {
            break MISSING_BLOCK_LABEL_67;
        }
        a("android.permission.ACCESS_NETWORK_STATE");
        flag = false;
        if (net.youmi.android.a.b.k.k.g(context))
        {
            break MISSING_BLOCK_LABEL_83;
        }
        a("android.permission.ACCESS_WIFI_STATE");
        flag = false;
        if (net.youmi.android.a.b.k.k.a(context))
        {
            break MISSING_BLOCK_LABEL_99;
        }
        a("android.permission.WRITE_EXTERNAL_STORAGE");
        flag = false;
label0:
        {
            try
            {
                if (net.youmi.android.a.b.k.k.j(context))
                {
                    break label0;
                }
                a("android.permission.GET_TASKS");
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                return;
            }
            flag = flag1;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_134;
        }
        net.youmi.android.a.c.b.a.c("SDK's necessary permission has been add", new Object[] {
            ""
        });
    }

    public void checkSDKProcess(String s1, String s2)
    {
        Object obj;
        String s3;
        String s4;
        b("******************checking begin************************");
        obj = new net.youmi.android.a.c.c.b(J);
        s3 = ((net.youmi.android.a.c.c.b) (obj)).d();
        s4 = ((net.youmi.android.a.c.c.b) (obj)).c();
        if (!net.youmi.android.a.b.b.e.a(s3)) goto _L2; else goto _L1
_L1:
        b("your device's imei is null or empty");
_L4:
        if (net.youmi.android.a.b.b.e.a(s4))
        {
            b("your device's imsi is null or empty");
        }
        if (((net.youmi.android.a.c.c.b) (obj)).e())
        {
            b("you are using an emulator ,please use a real phone to test! ");
        }
        net.youmi.android.a.c.b.a.a(true);
        if (!net.youmi.android.a.b.k.n.a())
        {
            b("SD Card can't read");
        }
        if (!net.youmi.android.a.b.k.n.a(J, 10L))
        {
            b("SD Card can't writed or has no enough Splace");
        }
        if (!net.youmi.android.a.b.i.k.a(J))
        {
            b("network is unavailable");
            return;
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (s3.length() != 15)
        {
            b("your device's imei is not correct");
        }
        if (true) goto _L4; else goto _L3
_L3:
        int i1;
        i1 = net.youmi.android.a.b.i.k.b(J);
        obj = ",network type is ";
        i1;
        JVM INSTR lookupswitch 5: default 216
    //                   -1: 298
    //                   100: 311
    //                   101: 324
    //                   102: 337
    //                   103: 350;
           goto _L5 _L6 _L7 _L8 _L9 _L10
_L5:
        b((new StringBuilder()).append("network type code is ").append(i1).append(" ,and ").append(((String) (obj))).toString());
        b("initing ...");
        AdManager.getInstance(J).testInit(s1, s2, false);
        b("loading resource");
        a(false, true, null, true);
        b("*******************checking complete*************************");
        net.youmi.android.a.c.b.a.a(false);
        return;
_L6:
        obj = ",network type is ".concat("unknow");
        continue; /* Loop/switch isn't completed */
_L7:
        obj = ",network type is ".concat("wifi");
        continue; /* Loop/switch isn't completed */
_L8:
        obj = ",network type is ".concat("2g");
        continue; /* Loop/switch isn't completed */
_L9:
        obj = ",network type is ".concat("3g");
        continue; /* Loop/switch isn't completed */
_L10:
        obj = ",network type is ".concat("4g");
        if (true) goto _L5; else goto _L11
_L11:
    }

    public boolean disMiss()
    {
        return a(true);
    }

    public long getSpotTimeout()
    {
        return m;
    }

    public void initExitSpotStyle(int i1, int j1, String s1)
    {
        if (i1 != 0)
        {
            E = i1;
        }
        F = j1;
        G = s1;
    }

    public void loadExitSpot()
    {
        j = true;
        h = a(100);
        if (h)
        {
            Object obj = net.youmi.android.a.b.b.b.a(net.youmi.android.a.b.b.b.a(e), "ad", null);
            if (obj != null && ((JSONArray) (obj)).length() != 0)
            {
                obj = net.youmi.android.a.b.b.b.a(((JSONArray) (obj)), z, null);
                if (obj != null)
                {
                    try
                    {
                        android.content.SharedPreferences.Editor editor = J.getSharedPreferences(d, 0).edit();
                        editor.putString("androetstid", ((JSONObject) (obj)).toString());
                        editor.commit();
                        g = ((JSONObject) (obj)).toString();
                    }
                    catch (Exception exception)
                    {
                        exception.printStackTrace();
                    }
                }
                j = false;
                cacheNextAd();
            }
            return;
        } else
        {
            net.youmi.android.a.c.b.a.d("no ad data,begin to load data");
            a(false, false);
            return;
        }
    }

    public void loadSplashSpotAds()
    {
        i = true;
        loadSpotAds();
    }

    public void loadSpotAds()
    {
        try
        {
            h = a(100);
            net.youmi.android.a.c.b.a.d("Try to load spot Ads resources.");
            AdManager.getInstance(J).setUserDataCollect(true);
            a(h, false);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public void onDestroy()
    {
        b();
    }

    public boolean onStop()
    {
        return a(false);
    }

    public void reDraw(Context context, int i1)
    {
        if (C != null && C.isShowing())
        {
            C.dismiss();
            a(context, i1);
        }
    }

    public void setAnimationType(int i1)
    {
        if (i1 <= -1 || i1 >= 3)
        {
            i1 = 2;
        }
        H = i1;
    }

    public void setLoading(boolean flag)
    {
        w = flag;
    }

    public void setSpotOrientation(int i1)
    {
        y = i1;
    }

    public void setSpotTimeout(long l1)
    {
        m = l1;
    }

    public void setfinishActivity(Activity activity)
    {
        K = activity;
    }

    public boolean showExitSpot(Context context, int i1, ExitSpotListener exitspotlistener)
    {
        if (a(103))
        {
            break MISSING_BLOCK_LABEL_17;
        }
        net.youmi.android.a.c.b.a.d("no exit spot data");
        return false;
        try
        {
            C = new ExitSpotDialog(context, g, E, F, G, exitspotlistener);
            if (C != null)
            {
                net.youmi.android.a.c.b.a.d("show exit dialog success");
                return C.showDialog(i1);
            }
            net.youmi.android.a.c.b.a.d("show exit dialog fail");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            net.youmi.android.a.c.b.a.a(context);
        }
        return false;
    }

    public void showSplashSpotAds(Context context, Class class1)
    {
        i = true;
        h = a(102);
        M = new SplashView(context, class1);
        if (h)
        {
            a(context);
            return;
        } else
        {
            net.youmi.android.a.c.b.a.c("There is no data that the ad does not show", new Object[] {
                ""
            });
            a(((SpotDialogListener) (null)), 0);
            return;
        }
    }

    public void showSplashSpotAds(Context context, SplashView splashview, SpotDialogListener spotdialoglistener)
    {
        i = true;
        h = a(102);
        M = splashview;
        if (h)
        {
            a(splashview, spotdialoglistener);
            return;
        } else
        {
            net.youmi.android.a.c.b.a.c("There is no data that the ad does not show", new Object[] {
                ""
            });
            a(spotdialoglistener, 0);
            return;
        }
    }

    public void showSpotAds(Context context)
    {
        b(context, null);
    }

    public void showSpotAds(Context context, SpotDialogListener spotdialoglistener)
    {
        b(context, spotdialoglistener);
    }

    static 
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        IS_KITKAT = flag;
        ANIM_NONE = 0;
        ANIM_SIMPLE = 1;
        ANIM_ADVANCE = 2;
    }
}
