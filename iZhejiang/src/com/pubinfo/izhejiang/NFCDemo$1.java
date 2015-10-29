// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.text.Editable;
import android.util.Log;
import android.widget.EditText;
import cn.com.chinatelecom.ctpass.aidl.ServiceAIDL;
import java.text.SimpleDateFormat;
import java.util.Date;

// Referenced classes of package com.pubinfo.izhejiang:
//            NFCDemo

class ck.Stub extends cn.com.chinatelecom.ctpass.aidl.ck.Stub
{

    final NFCDemo this$0;

    public void connectCTPassServiceCallBack(final String s)
    {
        try
        {
            Log.d("--callback:--", (new StringBuilder(" callback:")).append(s).toString());
            if (s.contains("00"))
            {
                s = NFCDemo.access$0(NFCDemo.this).getCTPassToken(AppID, SeqID, Random);
                runOnUiThread(new Runnable() {

                    final NFCDemo._cls1 this$1;
                    private final String val$s;

                    public void run()
                    {
                        et4.setText(s);
                    }

            
            {
                this$1 = NFCDemo._cls1.this;
                s = s1;
                super();
            }
                });
                NFCDemo.access$1(NFCDemo.this, (new StringBuilder("result:00  s:")).append(s).toString());
                Log.d("--s--", (new StringBuilder("s:")).append(s).toString());
                AppID = et1.getText().toString();
                SeqID = et2.getText().toString();
                Random = et3.getText().toString();
                long l = System.currentTimeMillis();
                String s1 = (new SimpleDateFormat("yyyyMMddHHmmss")).format(new Date(l));
                NFCDemo.access$3(NFCDemo.this, AppID, SeqID, Random, "0", s1, s, NFCDemo.access$2(NFCDemo.this));
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (final String s)
        {
            return;
        }
    }


    _cls1.val.s()
    {
        this$0 = NFCDemo.this;
        super();
    }
}
