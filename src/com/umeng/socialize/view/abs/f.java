// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Toast;

// Referenced classes of package com.umeng.socialize.view.abs:
//            SocializeView, SocializeErrorHandler

public abstract class f extends LinearLayout
    implements SocializeView
{

    protected static final String a = "com.umeng.view.SocialView";
    private SocializeErrorHandler b;
    private int c;
    private int d;
    private boolean e;
    private Toast f;

    public f(Context context)
    {
        super(context);
        c = 0;
        d = 0;
        e = false;
    }

    public f(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = 0;
        d = 0;
        e = false;
    }

    protected int a(View view)
    {
        if (!(view instanceof ViewGroup)) goto _L2; else goto _L1
_L1:
        int i1;
        view = (ViewGroup)view;
        i1 = view.getChildCount();
        if (i1 <= 0) goto _L2; else goto _L3
_L3:
        int i;
        int k;
        k = 0;
        i = 0;
_L7:
        if (k < i1) goto _L5; else goto _L4
_L4:
        int l;
        if (i >= d)
        {
            d = i + 1;
            return d;
        }
        i++;
        continue; /* Loop/switch isn't completed */
_L5:
        l = view.getChildAt(k).getId();
        if (l > i)
        {
            i = l;
        }
        k++;
        continue; /* Loop/switch isn't completed */
        if (true) goto _L4; else goto _L2
_L2:
        int j = d + 1;
        d = j;
        return j;
        if (true) goto _L7; else goto _L6
_L6:
    }

    protected void a()
    {
        c = c + 1;
    }

    protected void a(int i, int j)
    {
        if (!e)
        {
            e = true;
            onViewRendered(i, j);
        }
    }

    public void assignId(View view)
    {
        setId(a(view));
    }

    protected boolean b()
    {
        boolean flag;
        if (c > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a();
        return flag;
    }

    protected View c()
    {
        return null;
    }

    protected View d()
    {
        android.view.ViewParent viewparent = getParent();
        if (viewparent instanceof View)
        {
            return (View)viewparent;
        } else
        {
            return this;
        }
    }

    protected void e()
    {
        c = 0;
        d = 0;
    }

    public Activity getActivity()
    {
        Context context = getContext();
        if (context instanceof Activity)
        {
            return (Activity)context;
        } else
        {
            return null;
        }
    }

    public SocializeErrorHandler getErrorHandler()
    {
        return b;
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        a(i, j);
    }

    public void onViewLoad()
    {
        if (getChildCount() > 0)
        {
            removeAllViews();
        }
    }

    public void onViewRendered(int i, int j)
    {
    }

    public void onViewUpdate()
    {
    }

    protected void onWindowVisibilityChanged(int i)
    {
        super.onWindowVisibilityChanged(i);
        StringBuilder stringbuilder = new StringBuilder("onWindowVisibilityChanged    ");
        String s;
        if (i == 0)
        {
            s = "Vis";
        } else
        {
            s = "Hide";
        }
        Log.d("com.umeng.view.SocialView", stringbuilder.append(s).toString());
        if (i == 0)
        {
            if (!b())
            {
                onViewLoad();
                return;
            } else
            {
                onViewUpdate();
                return;
            }
        } else
        {
            e = false;
            return;
        }
    }

    public void setErrorHandler(SocializeErrorHandler socializeerrorhandler)
    {
        b = socializeerrorhandler;
    }

    public void showError(Context context, Exception exception)
    {
        if (b != null)
        {
            b.a(context, exception);
            return;
        } else
        {
            Log.e("com.umeng.view.SocialView", "", exception);
            return;
        }
    }

    public void showErrorToast(Context context, Exception exception)
    {
        if (f != null)
        {
            f.cancel();
        }
        f = Toast.makeText(context, (new StringBuilder("Error: ")).append(exception.getMessage()).toString(), 1);
        f.show();
    }
}
