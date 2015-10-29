// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.umeng.socialize.bean.CustomPlatform;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.view.controller.c;
import com.umeng.socialize.view.wigets.a;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view:
//            ce, cg, ch

class cf extends a
{

    final ce a;
    private final List b;
    private final c c;

    cf(ce ce1, List list, c c1)
    {
        a = ce1;
        b = list;
        c = c1;
        super();
    }

    static ce a(cf cf1)
    {
        return cf1.a;
    }

    public int a()
    {
        if (b == null)
        {
            return 0;
        } else
        {
            return b.size();
        }
    }

    public View a(int i, ViewGroup viewgroup)
    {
        SnsPlatform snsplatform = (SnsPlatform)b.get(i);
        Object obj;
        if (snsplatform instanceof CustomPlatform)
        {
            CustomPlatform customplatform = (CustomPlatform)snsplatform;
            obj = customplatform.mShowWord;
            if (customplatform != null && customplatform.mTag != null && customplatform.mTag.equalsIgnoreCase("com.umeng.socialize.mail"))
            {
                viewgroup = "\u90AE\u4EF6";
            } else
            {
                viewgroup = ((ViewGroup) (obj));
                if (customplatform != null)
                {
                    viewgroup = ((ViewGroup) (obj));
                    if (customplatform.mTag != null)
                    {
                        viewgroup = ((ViewGroup) (obj));
                        if (customplatform.mTag.equalsIgnoreCase("com.umeng.socialize.sms"))
                        {
                            viewgroup = "\u77ED\u4FE1";
                        }
                    }
                }
            }
            if (customplatform.mIcon == -1 && customplatform.mTag.equalsIgnoreCase("com.umeng.socialize.mail"))
            {
                customplatform.mIcon = ResContainer.getResourceId(com.umeng.socialize.view.ce.a(a), com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_gmail");
                obj = viewgroup;
            } else
            {
                obj = viewgroup;
                if (customplatform.mIcon == -1)
                {
                    obj = viewgroup;
                    if (customplatform.mTag.equalsIgnoreCase("com.umeng.socialize.sms"))
                    {
                        customplatform.mIcon = ResContainer.getResourceId(com.umeng.socialize.view.ce.a(a), com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_sms");
                        obj = viewgroup;
                    }
                }
            }
        } else
        {
            obj = snsplatform.mShowWord;
        }
        viewgroup = View.inflate(com.umeng.socialize.view.ce.a(a), ResContainer.getResourceId(com.umeng.socialize.view.ce.a(a), com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_shareboard_item"), null);
        ((ImageView)viewgroup.findViewById(ResContainer.getResourceId(com.umeng.socialize.view.ce.a(a), com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_shareboard_image"))).setImageResource(snsplatform.mIcon);
        ((TextView)viewgroup.findViewById(ResContainer.getResourceId(com.umeng.socialize.view.ce.a(a), com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_shareboard_pltform_name"))).setText(((CharSequence) (obj)));
        obj = new cg(this);
        viewgroup.setOnClickListener(new ch(this, snsplatform, c, ((com.umeng.socialize.controller.listener.SocializeListeners.DirectShareListener) (obj))));
        viewgroup.setFocusable(true);
        return viewgroup;
    }

    public Object a(int i)
    {
        if (b == null)
        {
            return null;
        } else
        {
            return (SnsPlatform)b.get(i);
        }
    }
}
