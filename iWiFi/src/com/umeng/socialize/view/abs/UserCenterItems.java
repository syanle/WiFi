// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.umeng.socialize.bean.SnsAccount;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeConstants;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socom.net.p;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.umeng.socialize.view.abs:
//            an, ao, ap, aq, 
//            ar, as, SocializeAlertDialog, at, 
//            av, aw, au

public interface UserCenterItems
{
    public static abstract class a
    {

        public View a;
        private Context b;
        private ImageView c;
        private TextView d;
        private TextView e;

        private void b()
        {
            a = View.inflate(b, ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_full_alert_dialog_item"), null);
            c = (ImageView)a.findViewById(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_full_alert_dialog_item_icon"));
            d = (TextView)a.findViewById(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_full_alert_dialog_item_text"));
            e = (TextView)a.findViewById(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_full_alert_dialog_item_status"));
            a.setOnClickListener(new an(this));
        }

        public abstract void a();

        public void a(SnsPlatform snsplatform)
        {
            int i = ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_default_avatar");
            if (snsplatform != null && snsplatform.mBind)
            {
                SnsAccount snsaccount = snsplatform.mAccount;
                if (snsaccount != null)
                {
                    if (!TextUtils.isEmpty(snsaccount.getAccountIconUrl()))
                    {
                        p.a(b, c, snsaccount.getAccountIconUrl(), false, null, null, SocializeConstants.ROUNDER_ICON);
                    } else
                    {
                        c.setImageResource(i);
                    }
                    d.setText(snsaccount.getUserName());
                } else
                {
                    d.setText("");
                    c.setImageResource(i);
                }
                e.setText(snsplatform.mShowWord);
                return;
            } else
            {
                c.setImageResource(i);
                d.setText("\u533F\u540D\u8BC4\u8BBA");
                e.setText("");
                return;
            }
        }

        public a(Context context, SnsPlatform snsplatform)
        {
            b = context;
            b();
            a(snsplatform);
        }
    }

    public static abstract class b
    {

        public static final int b = 1;
        public static final int c = 2;
        public static final int d = 3;
        private Dialog a;
        private Context e;
        private SnsPlatform f;
        private int g;
        private View h;
        private boolean i;
        private boolean j;
        private android.app.AlertDialog.Builder k;

        static int a(b b1)
        {
            return b1.g;
        }

        private Dialog a(Context context)
        {
            k = (new android.app.AlertDialog.Builder(context)).setCancelable(false).setPositiveButton("\u662F", new ao(this)).setNegativeButton("\u5426", new ap(this)).setOnCancelListener(new aq(this));
            return k.create();
        }

        static void a(b b1, boolean flag)
        {
            b1.i = flag;
        }

        private Dialog b(Context context)
        {
            h = View.inflate(context, ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_base_alert_dialog_button"), null);
            Button button = (Button)h.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_alert_button"));
            View view = View.inflate(context, ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_base_alert_dialog_button"), null);
            Button button1 = (Button)view.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_alert_button"));
            button1.setText("\u53D6\u6D88");
            button1.setBackgroundResource(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_button_grey_blue"));
            button1.setOnClickListener(new ar(this));
            button.setOnClickListener(new as(this));
            context = new SocializeAlertDialog.a(context);
            context.b(h, null);
            context.b(view, null);
            context = (SocializeAlertDialog)context.a();
            context.a(new at(this));
            return context;
        }

        static SnsPlatform b(b b1)
        {
            return b1.f;
        }

        static boolean c(b b1)
        {
            return b1.i;
        }

        static Dialog d(b b1)
        {
            return b1.a;
        }

        public abstract void a(SnsPlatform snsplatform);

        public void a(SnsPlatform snsplatform, int l)
        {
            f = snsplatform;
            if (g == l) goto _L2; else goto _L1
_L1:
            g = l;
            l;
            JVM INSTR tableswitch 1 3: default 44
        //                       1 53
        //                       2 149
        //                       3 245;
               goto _L2 _L3 _L4 _L5
_L2:
            SocializeUtils.safeShowDialog(a, false);
            return;
_L3:
            if (j)
            {
                a = k.setMessage((new StringBuilder("\u4F60\u786E\u5B9A\u7ED1\u5B9A")).append(snsplatform.mShowWord).append("?").toString()).create();
            } else
            {
                snsplatform = (Button)h.findViewById(ResContainer.getResourceId(e, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_alert_button"));
                snsplatform.setText("\u7ED1\u5B9A");
                snsplatform.setBackgroundResource(ResContainer.getResourceId(e, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_button_white_blue"));
            }
            continue; /* Loop/switch isn't completed */
_L4:
            if (j)
            {
                a = k.setMessage((new StringBuilder("\u4F60\u786E\u5B9A\u89E3\u9664")).append(snsplatform.mShowWord).append("\u7ED1\u5B9A?").toString()).create();
            } else
            {
                snsplatform = (Button)h.findViewById(ResContainer.getResourceId(e, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_alert_button"));
                snsplatform.setText("\u89E3\u9664\u7ED1\u5B9A");
                snsplatform.setBackgroundResource(ResContainer.getResourceId(e, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_button_red_blue"));
            }
            continue; /* Loop/switch isn't completed */
_L5:
            if (j)
            {
                a = k.setMessage((new StringBuilder("\u4F60\u786E\u5B9A\u89E3\u9664")).append(snsplatform.mShowWord).append("\u6388\u6743?").toString()).create();
            } else
            {
                snsplatform = (Button)h.findViewById(ResContainer.getResourceId(e, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_alert_button"));
                snsplatform.setText("\u89E3\u9664\u6388\u6743");
                snsplatform.setBackgroundResource(ResContainer.getResourceId(e, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_button_red_blue"));
            }
            if (true) goto _L2; else goto _L6
_L6:
        }

        protected void a(SnsPlatform snsplatform, boolean flag)
        {
        }

        public abstract void b(SnsPlatform snsplatform);

        public abstract void c(SnsPlatform snsplatform);

        protected void d(SnsPlatform snsplatform)
        {
            i = false;
        }

        public b(Context context)
        {
            f = null;
            i = false;
            j = false;
            e = context;
            j = SocializeUtils.isFloatWindowStyle(context);
            if (!j)
            {
                a = b(e);
                return;
            } else
            {
                a = a(e);
                return;
            }
        }
    }

    public static abstract class c
    {

        public Dialog a;
        private Context b;
        private List c;
        private Map d;
        private View e;

        private void b()
        {
            SocializeAlertDialog.a a1 = new SocializeAlertDialog.a(b);
            Object obj = c.iterator();
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    e = View.inflate(b, ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_base_alert_dialog_button"), null);
                    obj = (Button)e.findViewById(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_alert_button"));
                    ((Button) (obj)).setText("\u4F7F\u7528\u533F\u540D\u8D26\u53F7");
                    ((Button) (obj)).setBackgroundResource(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_button_white_blue"));
                    ((Button) (obj)).setOnClickListener(new av(this));
                    a1.a(e, null);
                    obj = View.inflate(b, ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_base_alert_dialog_button"), null);
                    Button button = (Button)((View) (obj)).findViewById(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_alert_button"));
                    button.setText("\u53D6\u6D88");
                    button.setBackgroundResource(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_button_grey_blue"));
                    button.setOnClickListener(new aw(this));
                    a1.b(((View) (obj)), null);
                    a = a1.a();
                    return;
                }
                SnsPlatform snsplatform = (SnsPlatform)((Iterator) (obj)).next();
                View view = View.inflate(b, ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_base_alert_dialog_button"), null);
                Button button1 = (Button)view.findViewById(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_alert_button"));
                button1.setText((new StringBuilder("\u4F7F\u7528")).append(snsplatform.mShowWord).append("\u8D26\u53F7").toString());
                button1.setBackgroundResource(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_button_white_blue"));
                button1.setOnClickListener(new au(this, snsplatform));
                a1.a(view, null);
                d.put(snsplatform, view);
            } while (true);
        }

        public void a()
        {
            e.setVisibility(8);
            if (a.isShowing()) goto _L2; else goto _L1
_L1:
            Iterator iterator;
            boolean flag;
            iterator = d.keySet().iterator();
            flag = false;
_L6:
            if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
            if (!flag)
            {
                break; /* Loop/switch isn't completed */
            }
            SocializeUtils.safeShowDialog(a, false);
_L2:
            return;
_L4:
            SnsPlatform snsplatform = (SnsPlatform)iterator.next();
            if (!snsplatform.mBind && snsplatform.mOauth)
            {
                ((View)d.get(snsplatform)).setVisibility(0);
            } else
            {
                ((View)d.get(snsplatform)).setVisibility(8);
            }
            if (snsplatform.mBind)
            {
                e.setVisibility(0);
            }
            if (snsplatform.mOauth)
            {
                flag = true;
            }
            if (true) goto _L6; else goto _L5
_L5:
            Toast.makeText(b, "\u8BF7\u5148\u6388\u6743\u5206\u4EAB\u5E73\u53F0.", 1).show();
            return;
        }

        public abstract void a(SnsPlatform snsplatform);

        public c(Context context, List list)
        {
            b = context;
            c = list;
            d = new HashMap();
            b();
        }
    }

}
