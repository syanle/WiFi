// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.LocalDB;
import com.mob.tools.utils.R;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package cn.sharesdk.framework.statistics:
//            a

public class NewAppReceiver extends BroadcastReceiver
    implements android.os.Handler.Callback
{
    private static class a
    {

        private LocalDB a;

        public ArrayList a()
        {
            Object obj = a.getObject("buffered_apps");
            if (obj == null)
            {
                return new ArrayList();
            } else
            {
                return (ArrayList)obj;
            }
        }

        public void a(long l)
        {
            a.putLong("buffered_apps_time", Long.valueOf(l));
        }

        public void a(ArrayList arraylist)
        {
            a.putObject("buffered_apps", arraylist);
        }

        public long b()
        {
            return a.getLong("buffered_apps_time");
        }

        public a(Context context)
        {
            Object obj = DeviceHelper.getInstance(context);
            context = R.getCachePath(context, null);
            if (((DeviceHelper) (obj)).getSdcardState())
            {
                obj = new File(((DeviceHelper) (obj)).getSdcardPath(), "ShareSDK");
                if (((File) (obj)).exists())
                {
                    a = new LocalDB();
                    context = new File(((File) (obj)), ".ba");
                    a.open(context.getAbsolutePath());
                    return;
                }
            }
            try
            {
                a = new LocalDB();
                context = new File(context, ".ba");
                if (!context.getParentFile().exists())
                {
                    context.getParentFile().mkdirs();
                }
                a.open(context.getAbsolutePath());
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Ln.e(context);
            }
            if (a == null)
            {
                a = new LocalDB();
            }
            return;
        }
    }

    private static class b extends Thread
    {

        private Context a;
        private a b;

        private ArrayList a(HashMap hashmap)
        {
            ArrayList arraylist = new ArrayList();
            for (hashmap = hashmap.entrySet().iterator(); hashmap.hasNext(); arraylist.add(((java.util.Map.Entry)hashmap.next()).getValue())) { }
            return arraylist;
        }

        private HashMap a(ArrayList arraylist)
        {
            HashMap hashmap = new HashMap();
            arraylist = arraylist.iterator();
            do
            {
                if (!arraylist.hasNext())
                {
                    break;
                }
                HashMap hashmap1 = (HashMap)arraylist.next();
                String s = (String)hashmap1.get("pkg");
                if (!TextUtils.isEmpty(s))
                {
                    hashmap.put(s, hashmap1);
                }
            } while (true);
            return hashmap;
        }

        public static void a(Context context)
        {
            (new b(context)).start();
        }

        public void run()
        {
            DeviceHelper devicehelper;
            Object obj1;
            devicehelper = DeviceHelper.getInstance(a);
            ArrayList arraylist = devicehelper.getInstalledApp(false);
            ArrayList arraylist1 = b.a();
            b.a(arraylist);
            obj1 = a(arraylist);
            Object obj = a(arraylist1);
            Iterator iterator = arraylist1.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                String s = (String)((HashMap)iterator.next()).get("pkg");
                if (!TextUtils.isEmpty(s))
                {
                    ((HashMap) (obj1)).remove(s);
                }
            } while (true);
            iterator = arraylist.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                String s1 = (String)((HashMap)iterator.next()).get("pkg");
                if (!TextUtils.isEmpty(s1))
                {
                    ((HashMap) (obj)).remove(s1);
                }
            } while (true);
            obj1 = a(((HashMap) (obj1)));
            obj = a(((HashMap) (obj)));
            boolean flag;
            if (System.currentTimeMillis() - b.b() >= 0x9a7ec800L)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag && arraylist1.size() > 0) goto _L2; else goto _L1
_L1:
            b.a(System.currentTimeMillis());
            try
            {
                cn.sharesdk.framework.statistics.a.a(a).a("APPS_ALL", arraylist);
            }
            catch (Throwable throwable1)
            {
                Ln.e(throwable1);
            }
_L4:
            if (((ArrayList) (obj)).size() <= 0)
            {
                break MISSING_BLOCK_LABEL_278;
            }
            Ln.d((new StringBuilder()).append("================== upload new removes: ").append(devicehelper.getPackageName()).toString(), new Object[0]);
            cn.sharesdk.framework.statistics.a.a(a).a("UNINSTALL", ((ArrayList) (obj)));
            return;
_L2:
            if (((ArrayList) (obj1)).size() > 0)
            {
                Ln.d((new StringBuilder()).append("================== upload new apps: ").append(devicehelper.getPackageName()).toString(), new Object[0]);
                try
                {
                    cn.sharesdk.framework.statistics.a.a(a).a("APPS_INCR", ((ArrayList) (obj1)));
                }
                catch (Throwable throwable2)
                {
                    Ln.e(throwable2);
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
            Throwable throwable;
            throwable;
            Ln.e(throwable);
            return;
        }

        private b(Context context)
        {
            a = context;
            b = new a(context);
        }
    }


    private static final String a[] = {
        "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED", "android.intent.action.PACKAGE_REPLACED"
    };
    private static NewAppReceiver b;
    private Context c;
    private IntentFilter d[] = {
        new IntentFilter(), new IntentFilter()
    };
    private Handler e;

    private NewAppReceiver(Context context)
    {
        int i = 0;
        super();
        c = context;
        d[0].addAction("cn.sharesdk.START_UP");
        context = a;
        for (int j = context.length; i < j; i++)
        {
            String s = context[i];
            d[1].addAction(s);
        }

        d[1].addDataScheme("package");
        e = new Handler(this);
        e.sendEmptyMessage(1);
    }

    public static void a()
    {
        cn/sharesdk/framework/statistics/NewAppReceiver;
        JVM INSTR monitorenter ;
        NewAppReceiver newappreceiver = b;
        if (newappreceiver == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        b.c.unregisterReceiver(b);
_L2:
        cn/sharesdk/framework/statistics/NewAppReceiver;
        JVM INSTR monitorexit ;
        return;
        Object obj;
        obj;
        Ln.w(((Throwable) (obj)));
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        throw obj;
    }

    public static void a(Context context)
    {
        cn/sharesdk/framework/statistics/NewAppReceiver;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new NewAppReceiver(context);
        }
        a();
        IntentFilter aintentfilter[];
        int j;
        aintentfilter = b.d;
        j = aintentfilter.length;
        int i = 0;
_L2:
        IntentFilter intentfilter;
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        intentfilter = aintentfilter[i];
        context.registerReceiver(b, intentfilter);
        i++;
        if (true) goto _L2; else goto _L1
        context;
        Ln.w(context);
_L1:
        cn/sharesdk/framework/statistics/NewAppReceiver;
        JVM INSTR monitorexit ;
        return;
        context;
        throw context;
    }

    private boolean a(String s)
    {
        boolean flag1 = false;
        String as[] = a;
        int j = as.length;
        int i = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (i < j)
                {
                    if (!as[i].equals(s))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            i++;
        } while (true);
    }

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 1: default 24
    //                   1 26;
           goto _L1 _L2
_L1:
        return false;
_L2:
        b.a(c);
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void onReceive(Context context, Intent intent)
    {
        String s;
        s = null;
        if (intent != null)
        {
            s = intent.getAction();
        }
        if (!"cn.sharesdk.START_UP".equals(s)) goto _L2; else goto _L1
_L1:
        context = DeviceHelper.getInstance(context).getPackageName();
        intent = intent.getStringExtra("packageName");
        if (intent == null || !intent.equals(context)) goto _L4; else goto _L3
_L3:
        boolean flag = true;
_L6:
        if (flag)
        {
            Ln.d((new StringBuilder()).append("========= receive broadcast: ").append(s).toString(), new Object[0]);
            e.removeMessages(1);
            e.sendEmptyMessageDelayed(1, 60000L);
        }
        return;
_L2:
        if (a(s))
        {
            flag = true;
            continue; /* Loop/switch isn't completed */
        }
_L4:
        flag = false;
        if (true) goto _L6; else goto _L5
_L5:
    }

}
