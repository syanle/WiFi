// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import com.mob.tools.utils.Ln;
import java.util.HashMap;

// Referenced classes of package com.mob.tools:
//            FakeActivity

public class MobUIShell extends Activity
{

    private static HashMap executors = new HashMap();
    private FakeActivity executor;

    public MobUIShell()
    {
    }

    public static String registerExecutor(FakeActivity fakeactivity)
    {
        return registerExecutor(String.valueOf(System.currentTimeMillis()), fakeactivity);
    }

    public static String registerExecutor(String s, FakeActivity fakeactivity)
    {
        executors.put(s, fakeactivity);
        return s;
    }

    public void finish()
    {
        if (executor != null && executor.onFinish())
        {
            return;
        } else
        {
            super.finish();
            return;
        }
    }

    public FakeActivity getExecutor()
    {
        return executor;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (executor != null)
        {
            executor.onActivityResult(i, j, intent);
        }
        super.onActivityResult(i, j, intent);
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        if (executor != null)
        {
            executor.onConfigurationChanged(configuration);
        }
    }

    protected void onCreate(Bundle bundle)
    {
        Object obj = getIntent();
        String s = ((Intent) (obj)).getStringExtra("launch_time");
        String s1 = ((Intent) (obj)).getStringExtra("executor_name");
        executor = (FakeActivity)executors.remove(s);
        if (executor == null)
        {
            obj = ((Intent) (obj)).getScheme();
            executor = (FakeActivity)executors.remove(obj);
            if (executor == null)
            {
                Ln.e(new RuntimeException((new StringBuilder()).append("Executor lost! launchTime = ").append(s).append(", executorName: ").append(s1).toString()));
                super.onCreate(bundle);
                finish();
                return;
            }
        }
        Ln.i((new StringBuilder()).append("MobUIShell found executor: ").append(executor.getClass()).toString(), new Object[0]);
        executor.setActivity(this);
        super.onCreate(bundle);
        executor.onCreate();
    }

    protected void onDestroy()
    {
        if (executor != null)
        {
            executor.sendResult();
            executor.onDestroy();
        }
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag = false;
        if (executor != null)
        {
            flag = executor.onKeyEvent(i, keyevent);
        }
        if (flag)
        {
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        boolean flag = false;
        if (executor != null)
        {
            flag = executor.onKeyEvent(i, keyevent);
        }
        if (flag)
        {
            return true;
        } else
        {
            return super.onKeyUp(i, keyevent);
        }
    }

    protected void onNewIntent(Intent intent)
    {
        if (executor == null)
        {
            super.onNewIntent(intent);
            return;
        } else
        {
            executor.onNewIntent(intent);
            return;
        }
    }

    protected void onPause()
    {
        if (executor != null)
        {
            executor.onPause();
        }
        super.onPause();
    }

    protected void onRestart()
    {
        if (executor != null)
        {
            executor.onRestart();
        }
        super.onRestart();
    }

    protected void onResume()
    {
        if (executor != null)
        {
            executor.onResume();
        }
        super.onResume();
    }

    protected void onStart()
    {
        if (executor != null)
        {
            executor.onStart();
        }
        super.onStart();
    }

    protected void onStop()
    {
        if (executor != null)
        {
            executor.onStop();
        }
        super.onStop();
    }

    public void setContentView(int i)
    {
        setContentView(LayoutInflater.from(this).inflate(i, null));
    }

    public void setContentView(View view)
    {
        if (view != null)
        {
            super.setContentView(view);
            if (executor != null)
            {
                executor.setContentView(view);
                return;
            }
        }
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (view != null)
        {
            if (layoutparams == null)
            {
                super.setContentView(view);
            } else
            {
                super.setContentView(view, layoutparams);
            }
            if (executor != null)
            {
                executor.setContentView(view);
                return;
            }
        }
    }

    static 
    {
        Ln.d("===============================", new Object[0]);
        String s = "2015-04-28".replace("-0", "-").replace("-", ".");
        Ln.d((new StringBuilder()).append("MobTools ").append(s).toString(), new Object[0]);
        Ln.d("===============================", new Object[0]);
    }
}
