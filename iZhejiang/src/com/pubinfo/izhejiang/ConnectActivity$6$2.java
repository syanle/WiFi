// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.widget.TextView;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            ConnectActivity

class this._cls1
    implements Runnable
{

    final is._cls0 this$1;

    public void run()
    {
        String s = showTimeCount(System.currentTimeMillis() - startTime);
        tv2.setText(s);
        long l = SystemClock.uptimeMillis();
        ConnectActivity.access$9(_fld0).postAtTime(ConnectActivity.access$10(_fld0), l + (1000L - l % 1000L));
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/pubinfo/izhejiang/ConnectActivity$6

/* anonymous class */
    class ConnectActivity._cls6
        implements android.os.Handler.Callback
    {

        final ConnectActivity this$0;

        public boolean handleMessage(Message message)
        {
            message.what;
            JVM INSTR tableswitch 2 6: default 40
        //                       2 42
        //                       3 61
        //                       4 132
        //                       5 374
        //                       6 610;
               goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
            return true;
_L2:
            showMsgToast(getString(0x7f060031));
            continue; /* Loop/switch isn't completed */
_L3:
            message = ComData.getInstance().getpError();
            if (message == null || message.size() <= 0) goto _L8; else goto _L7
_L7:
            int i = 0;
_L10:
            if (i < message.size()) goto _L9; else goto _L8
_L8:
            ComData.getInstance().setpError(null);
            continue; /* Loop/switch isn't completed */
_L9:
            String s = ((PublicError)message.get(i)).getMessage();
            showMsgToast(s);
            i++;
            if (true) goto _L10; else goto _L4
_L4:
            if ((new StringBuilder("\"")).append(ssidclick).append("\"").toString().equals(ssidconnect) || ssidclick.equals(ssidconnect))
            {
                message = getSharedPreferences("ConnectTime", 0);
                startTime = message.getLong("startTime", 0L);
                message = message.getString("ssid", "");
                if (startTime == 0L || !ssidclick.equals(message))
                {
                    tv2.setText("00:00:00");
                    ConnectActivity.access$8(ConnectActivity.this, new Handler());
                    startTime = System.currentTimeMillis();
                    message = getSharedPreferences("ConnectTime", 0).edit();
                    message.putLong("startTime", startTime);
                    message.putString("ssid", ssidclick);
                    message.commit();
                    ConnectActivity.access$11(ConnectActivity.this, new ConnectActivity._cls6._cls1());
                    ConnectActivity.access$10(ConnectActivity.this).run();
                } else
                {
                    ConnectActivity.access$8(ConnectActivity.this, new Handler());
                    ConnectActivity.access$11(ConnectActivity.this, new ConnectActivity._cls6._cls2());
                    ConnectActivity.access$10(ConnectActivity.this).run();
                }
            } else
            {
                tv2.setText("00:00:00");
                ConnectActivity.access$8(ConnectActivity.this, new Handler());
                startTime = System.currentTimeMillis();
                message = getSharedPreferences("ConnectTime", 0).edit();
                message.putLong("startTime", startTime);
                message.putString("ssid", ssidclick);
                message.commit();
                ConnectActivity.access$11(ConnectActivity.this, new ConnectActivity._cls6._cls3());
                ConnectActivity.access$10(ConnectActivity.this).run();
            }
_L5:
            message = ComData.getInstance().getpError();
            if (message != null && message.size() > 0 && ((PublicError)message.get(0)).getCode().equals("260"))
            {
                showMsgToast(((PublicError)message.get(0)).getMessage());
            }
            ComData.getInstance().setpError(null);
            continue; /* Loop/switch isn't completed */
_L6:
            ConnectActivity.access$12(ConnectActivity.this).sendEmptyMessage(4);
            setStatus(0x7f020029, getString(0x7f060014), getString(0x7f060017), 0, type, logourl);
            if (true) goto _L1; else goto _L11
_L11:
        }


            
            {
                this$0 = ConnectActivity.this;
                super();
            }

        // Unreferenced inner class com/pubinfo/izhejiang/ConnectActivity$6$1

/* anonymous class */
        class ConnectActivity._cls6._cls1
            implements Runnable
        {

            final ConnectActivity._cls6 this$1;

            public void run()
            {
                String s = showTimeCount(System.currentTimeMillis() - startTime);
                tv2.setText(s);
                long l = SystemClock.uptimeMillis();
                ConnectActivity.access$9(this$0).postAtTime(ConnectActivity.access$10(this$0), l + (1000L - l % 1000L));
            }

                    
                    {
                        this$1 = ConnectActivity._cls6.this;
                        super();
                    }
        }


        // Unreferenced inner class com/pubinfo/izhejiang/ConnectActivity$6$3

/* anonymous class */
        class ConnectActivity._cls6._cls3
            implements Runnable
        {

            final ConnectActivity._cls6 this$1;

            public void run()
            {
                String s = showTimeCount(System.currentTimeMillis() - startTime);
                tv2.setText(s);
                long l = SystemClock.uptimeMillis();
                ConnectActivity.access$9(this$0).postAtTime(ConnectActivity.access$10(this$0), l + (1000L - l % 1000L));
            }

                    
                    {
                        this$1 = ConnectActivity._cls6.this;
                        super();
                    }
        }

    }

}
