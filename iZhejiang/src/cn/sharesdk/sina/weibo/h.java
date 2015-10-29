// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.sina.weibo;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.IBinder;
import android.text.TextUtils;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.authorize.e;
import cn.sharesdk.framework.authorize.f;
import java.lang.reflect.Method;

public class h extends f
    implements ServiceConnection
{

    private String d;
    private String e;
    private String f[];

    public h(e e1)
    {
        super(e1);
    }

    private boolean a(String s, String s1)
    {
        boolean flag = true;
        Intent intent = new Intent();
        intent.setClassName(s, s1);
        intent.putExtra("appKey", d);
        intent.putExtra("redirectUri", e);
        if (f != null && f.length > 0)
        {
            intent.putExtra("scope", TextUtils.join(",", f));
        }
        if (!b(intent))
        {
            return false;
        }
        try
        {
            a.startActivityForResult(intent, b);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            flag = false;
        }
        a.getContext().getApplicationContext().unbindService(this);
        return flag;
    }

    private boolean b(Intent intent)
    {
        intent = a.getContext().getPackageManager().resolveActivity(intent, 0);
        if (intent != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        intent = ((ResolveInfo) (intent)).activityInfo.packageName;
        int i;
        int j;
        boolean flag;
        try
        {
            intent = a.getContext().getPackageManager().getPackageInfo(intent, 64).signatures;
            j = intent.length;
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            return false;
        }
        i = 0;
        if (i >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        flag = "30820295308201fea00302010202044b4ef1bf300d06092a864886f70d010105050030818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c74643020170d3130303131343130323831355a180f32303630303130323130323831355a30818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c746430819f300d06092a864886f70d010101050003818d00308189028181009d367115bc206c86c237bb56c8e9033111889b5691f051b28d1aa8e42b66b7413657635b44786ea7e85d451a12a82a331fced99c48717922170b7fc9bc1040753c0d38b4cf2b22094b1df7c55705b0989441e75913a1a8bd2bc591aa729a1013c277c01c98cbec7da5ad7778b2fad62b85ac29ca28ced588638c98d6b7df5a130203010001300d06092a864886f70d0101050500038181000ad4b4c4dec800bd8fd2991adfd70676fce8ba9692ae50475f60ec468d1b758a665e961a3aedbece9fd4d7ce9295cd83f5f19dc441a065689d9820faedbb7c4a4c4635f5ba1293f6da4b72ed32fb8795f736a20c95cda776402099054fccefb4a1a558664ab8d637288feceba9508aa907fc1fe2b1ae5a0dec954ed831c0bea4".equals(intent[i].toCharsString());
        if (flag)
        {
            return true;
        }
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_83;
_L4:
        break MISSING_BLOCK_LABEL_55;
        if (true) goto _L1; else goto _L5
_L5:
    }

    private void c(Intent intent)
    {
        if (c == null)
        {
            return;
        }
        String s1 = intent.getStringExtra("error");
        String s = s1;
        if (s1 == null)
        {
            s = intent.getStringExtra("error_type");
        }
        if (s == null)
        {
            c.onComplete(intent.getExtras());
            return;
        }
        if (s.equals("access_denied") || s.equals("OAuthAccessDeniedException"))
        {
            c.onCancel();
            return;
        }
        s1 = intent.getStringExtra("error_description");
        intent = s;
        if (s1 != null)
        {
            intent = (new StringBuilder()).append(s).append(": ").append(s1).toString();
        }
        c.onFailed(new Throwable(intent));
    }

    private void d(Intent intent)
    {
        if (intent != null)
        {
            String s = intent.getStringExtra("error");
            int i = intent.getIntExtra("error_code", -1);
            intent = new Throwable((new StringBuilder()).append(s).append(" (").append(i).append(")").toString());
            if (c != null)
            {
                c.onFailed(intent);
            }
        } else
        if (c != null)
        {
            c.onCancel();
            return;
        }
    }

    public void a()
    {
        Intent intent = new Intent();
        intent.setClassName("com.sina.weibo", "com.sina.weibo.business.RemoteSSOService");
        if (!a.getContext().getApplicationContext().bindService(intent, this, 1))
        {
            a.finish();
            if (c != null)
            {
                c.onFailed(new Throwable());
            }
        }
    }

    public void a(int i, int j, Intent intent)
    {
        a.finish();
        if (i != b) goto _L2; else goto _L1
_L1:
        j;
        JVM INSTR tableswitch -1 0: default 40
    //                   -1 41
    //                   0 47;
           goto _L2 _L3 _L4
_L2:
        return;
_L3:
        c(intent);
        return;
_L4:
        d(intent);
        return;
    }

    public void a(String s, String s1, String as[])
    {
        d = s;
        e = s1;
        f = as;
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        componentname = Class.forName("com.sina.sso.RemoteSSO$Stub");
        Object obj = componentname.getMethod("asInterface", new Class[] {
            android/os/IBinder
        });
        ((Method) (obj)).setAccessible(true);
        ibinder = ((IBinder) (((Method) (obj)).invoke(null, new Object[] {
            ibinder
        })));
        obj = componentname.getMethod("getPackageName", new Class[0]);
        ((Method) (obj)).setAccessible(true);
        obj = String.valueOf(((Method) (obj)).invoke(ibinder, new Object[0]));
        componentname = componentname.getMethod("getActivityName", new Class[0]);
        componentname.setAccessible(true);
        if (!a(((String) (obj)), String.valueOf(componentname.invoke(ibinder, new Object[0]))))
        {
            a.finish();
            if (c != null)
            {
                c.onFailed(new Throwable());
            }
        }
_L1:
        return;
        componentname;
        a.finish();
        if (c != null)
        {
            c.onFailed(componentname);
            return;
        }
          goto _L1
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        a.finish();
        if (c != null)
        {
            c.onFailed(new Throwable());
        }
    }
}
