// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.TitleLayout;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;

// Referenced classes of package cn.sharesdk.framework.authorize:
//            a, AuthorizeAdapter, RegisterView, h, 
//            AuthorizeHelper, j, AuthorizeListener

public class g extends cn.sharesdk.framework.authorize.a
    implements android.os.Handler.Callback, ResizeLayout.OnResizeListener
{
    private static class a
        implements Interpolator
    {

        private float a[] = {
            0.0F, 0.02692683F, 0.05384701F, 0.08075392F, 0.1076409F, 0.1345013F, 0.1613285F, 0.188116F, 0.214857F, 0.241545F, 
            0.2681734F, 0.2947356F, 0.3212251F, 0.3476354F, 0.3739598F, 0.4001921F, 0.4263255F, 0.4523538F, 0.4782705F, 0.5040691F, 
            0.5297434F, 0.555287F, 0.5806936F, 0.6059569F, 0.6310707F, 0.6560287F, 0.6808249F, 0.7054532F, 0.7299073F, 0.7541814F, 
            0.7782694F, 0.8021654F, 0.8258634F, 0.8493577F, 0.8726424F, 0.8957118F, 0.9185602F, 0.941182F, 0.9635715F, 0.9857233F, 
            1.007632F, 1.029292F, 1.050698F, 1.071845F, 1.092727F, 1.11334F, 1.133677F, 1.153736F, 1.173509F, 1.192993F, 
            1.18934F, 1.172811F, 1.156547F, 1.140553F, 1.124833F, 1.109391F, 1.09423F, 1.079354F, 1.064767F, 1.050473F, 
            1.036474F, 1.022775F, 1.009379F, 0.996289F, 0.9835081F, 0.9710398F, 0.958887F, 0.9470527F, 0.93554F, 0.9243516F, 
            0.9134902F, 0.9029586F, 0.9048271F, 0.9114033F, 0.9177547F, 0.9238795F, 0.9297765F, 0.9354441F, 0.9408808F, 0.9460853F, 
            0.9510565F, 0.955793F, 0.9602937F, 0.9645574F, 0.9685832F, 0.9723699F, 0.9759167F, 0.9792228F, 0.9822872F, 0.9851093F, 
            0.9876884F, 0.9900237F, 0.9921147F, 0.993961F, 0.995562F, 0.9969173F, 0.9980267F, 0.9988899F, 0.9995065F, 0.9998766F, 
            1.0F
        };

        public float getInterpolation(float f)
        {
            byte byte0 = 100;
            int k = (int)(100F * f);
            int i = k;
            if (k < 0)
            {
                i = 0;
            }
            if (i > 100)
            {
                i = byte0;
            }
            return a[i];
        }

        private a()
        {
        }

        a(h h1)
        {
            this();
        }
    }


    protected AuthorizeListener b;
    private AuthorizeAdapter c;
    private RegisterView d;
    private WebView e;

    public g()
    {
    }

    static Activity a(g g1)
    {
        return g1.activity;
    }

    static Activity b(g g1)
    {
        return g1.activity;
    }

    private AuthorizeAdapter c()
    {
        ActivityInfo activityinfo = activity.getPackageManager().getActivityInfo(activity.getComponentName(), 128);
        if (activityinfo.metaData == null || activityinfo.metaData.isEmpty())
        {
            break MISSING_BLOCK_LABEL_122;
        }
        Object obj;
        String s;
        try
        {
            s = activityinfo.metaData.getString("AuthorizeAdapter");
        }
        catch (Throwable throwable)
        {
            Ln.w(throwable);
            return null;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        obj = s;
        if (s.length() > 0)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        s = activityinfo.metaData.getString("Adapter");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        obj = s;
        if (s.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        obj = Class.forName(((String) (obj))).newInstance();
        if (!(obj instanceof AuthorizeAdapter))
        {
            return null;
        }
        obj = (AuthorizeAdapter)obj;
        return ((AuthorizeAdapter) (obj));
        return null;
        return null;
    }

    public void OnResize(int i, int k, int l, int i1)
    {
        if (c != null)
        {
            c.onResize(i, k, l, i1);
        }
    }

    public void a(AuthorizeListener authorizelistener)
    {
        b = authorizelistener;
    }

    protected RegisterView b()
    {
        RegisterView registerview = new RegisterView(activity);
        registerview.a().setOnClickListener(new h(this));
        e = registerview.b();
        Object obj = e.getSettings();
        ((WebSettings) (obj)).setBuiltInZoomControls(true);
        ((WebSettings) (obj)).setJavaScriptEnabled(true);
        e.setVerticalScrollBarEnabled(false);
        e.setHorizontalScrollBarEnabled(false);
        obj = a.getAuthorizeWebviewClient(this);
        e.setWebViewClient(((android.webkit.WebViewClient) (obj)));
        (new j(this)).start();
        return registerview;
    }

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 2 2: default 24
    //                   2 26;
           goto _L1 _L2
_L1:
        return false;
_L2:
        if (message.arg1 == 1)
        {
            message = a.getAuthorizeListener();
            if (message != null)
            {
                message.onError(new Throwable((new StringBuilder()).append("Network error (platform: ").append(a.getPlatform().getName()).append(")").toString()));
            }
        } else
        {
            message = (String)message.obj;
            if (TextUtils.isEmpty(message))
            {
                finish();
                message = a.getAuthorizeListener();
                if (message != null)
                {
                    message.onError(new Throwable((new StringBuilder()).append("Authorize URL is empty (platform: ").append(a.getPlatform().getName()).append(")").toString()));
                }
            } else
            {
                e.loadUrl(message);
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void onCreate()
    {
        if (d == null)
        {
            d = b();
            d.a(this);
            d.a(c.isNotitle());
            c.setBodyView(d.d());
            c.setWebView(d.b());
            Object obj = d.c();
            c.setTitleView(((TitleLayout) (obj)));
            String s = a.getPlatform().getName();
            c.setPlatformName(a.getPlatform().getName());
            try
            {
                int i = R.getStringRes(getContext(), s);
                ((TitleLayout) (obj)).getTvTitle().setText(i);
            }
            catch (Throwable throwable1)
            {
                try
                {
                    int k = R.getStringRes(getContext(), "weibo_oauth_regiseter");
                    ((TitleLayout) (obj)).getTvTitle().setText(k);
                }
                catch (Throwable throwable)
                {
                    Ln.e(throwable1);
                }
            }
        }
        c.onCreate();
        if (c != null && !c.isPopUpAnimationDisable())
        {
            obj = new ScaleAnimation(0.0F, 1.0F, 0.0F, 1.0F, 1, 0.5F, 1, 0.5F);
            ((ScaleAnimation) (obj)).setDuration(550L);
            ((ScaleAnimation) (obj)).setInterpolator(new a(null));
            d.setAnimation(((android.view.animation.Animation) (obj)));
        }
        activity.setContentView(d);
    }

    public void onDestroy()
    {
        if (c != null)
        {
            c.onDestroy();
        }
    }

    public boolean onFinish()
    {
        if (c != null)
        {
            return c.onFinish();
        } else
        {
            return super.onFinish();
        }
    }

    public boolean onKeyEvent(int i, KeyEvent keyevent)
    {
        boolean flag = false;
        if (c != null)
        {
            flag = c.onKeyEvent(i, keyevent);
        }
        if (!flag && i == 4 && keyevent.getAction() == 0)
        {
            AuthorizeListener authorizelistener = a.getAuthorizeListener();
            if (authorizelistener != null)
            {
                authorizelistener.onCancel();
            }
        }
        if (flag)
        {
            return true;
        } else
        {
            return super.onKeyEvent(i, keyevent);
        }
    }

    public void onPause()
    {
        if (c != null)
        {
            c.onPause();
        }
    }

    public void onRestart()
    {
        if (c != null)
        {
            c.onRestart();
        }
    }

    public void onResume()
    {
        if (c != null)
        {
            c.onResume();
        }
    }

    public void onStart()
    {
        if (c != null)
        {
            c.onStart();
        }
    }

    public void onStop()
    {
        if (c != null)
        {
            c.onStop();
        }
    }

    public void setActivity(Activity activity)
    {
        super.setActivity(activity);
        if (c == null)
        {
            c = c();
            if (c == null)
            {
                c = new AuthorizeAdapter();
            }
        }
        c.setActivity(activity);
    }
}
