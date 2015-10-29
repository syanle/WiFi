// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.Editable;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import cn.com.chinatelecom.ctpass.aidl.ServiceAIDL;
import com.cat.data.NFC;
import com.cat.parase.NFCParser;
import com.pubinfo.izhejiang.controller.NFCDemoFun;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class NFCDemo extends NFCDemoFun
    implements android.view.View.OnClickListener
{

    String AppID;
    String Random;
    String SeqID;
    Button btn_get_phone;
    private Context context;
    EditText et1;
    EditText et2;
    EditText et3;
    EditText et4;
    private ServiceAIDL mCTPassAIDLService;
    private cn.com.chinatelecom.ctpass.aidl.AIDLCallback.Stub mCallback;
    ServiceConnection mServiceConnection;
    TextView miWifi20_output;
    private WifiManager wifiMgr;

    public NFCDemo()
    {
        wifiMgr = null;
        mCallback = new cn.com.chinatelecom.ctpass.aidl.AIDLCallback.Stub() {

            final NFCDemo this$0;

            public void connectCTPassServiceCallBack(String s)
            {
                try
                {
                    Log.d("--callback:--", (new StringBuilder(" callback:")).append(s).toString());
                    if (s.contains("00"))
                    {
                        s = mCTPassAIDLService.getCTPassToken(AppID, SeqID, Random);
                        runOnUiThread(s. new Runnable() {

                            final _cls1 this$1;
                            private final String val$s;

                            public void run()
                            {
                                et4.setText(s);
                            }

            
            {
                this$1 = final__pcls1;
                s = String.this;
                super();
            }
                        });
                        showOutputText((new StringBuilder("result:00  s:")).append(s).toString());
                        Log.d("--s--", (new StringBuilder("s:")).append(s).toString());
                        AppID = et1.getText().toString();
                        SeqID = et2.getText().toString();
                        Random = et3.getText().toString();
                        long l = System.currentTimeMillis();
                        String s1 = (new SimpleDateFormat("yyyyMMddHHmmss")).format(new Date(l));
                        getCTPassResult(AppID, SeqID, Random, "0", s1, s, context);
                    }
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (String s)
                {
                    return;
                }
            }


            
            {
                this$0 = NFCDemo.this;
                super();
            }
        };
        mServiceConnection = new ServiceConnection() {

            final NFCDemo this$0;

            public void onServiceConnected(ComponentName componentname, IBinder ibinder)
            {
                Log.d("--ServiceConnected--", "onServiceConnected");
                mCTPassAIDLService = cn.com.chinatelecom.ctpass.aidl.ServiceAIDL.Stub.asInterface(ibinder);
                try
                {
                    if (mCTPassAIDLService != null)
                    {
                        mCTPassAIDLService.registerCallback(mCallback);
                    }
                    componentname = mCTPassAIDLService;
                }
                // Misplaced declaration of an exception variable
                catch (ComponentName componentname)
                {
                    return;
                }
                if (componentname == null)
                {
                    break MISSING_BLOCK_LABEL_72;
                }
                mCTPassAIDLService.connectCTPassService();
                return;
                componentname;
                componentname.printStackTrace();
                return;
            }

            public void onServiceDisconnected(ComponentName componentname)
            {
                Log.d("--ServiceDisconnected--", "onServiceDisconnected");
            }

            
            {
                this$0 = NFCDemo.this;
                super();
            }
        };
    }

    private void getCTPassService()
    {
        Intent intent = new Intent();
        intent.setAction("cn.com.chinatelecom.ctpass.service");
        startService(intent);
        bindService(intent, mServiceConnection, 1);
    }

    private void showOutputText(final String str)
    {
        runOnUiThread(new Runnable() {

            final NFCDemo this$0;
            private final String val$str;

            public void run()
            {
                miWifi20_output.setText(str);
                miWifi20_output.setBackgroundColor(0xff0000ff);
                miWifi20_output.invalidate();
            }

            
            {
                this$0 = NFCDemo.this;
                str = s;
                super();
            }
        });
    }

    public void doCTPassErr(String s)
    {
        showOutputText(s);
    }

    public void doCTPassResultErr(String s)
    {
        showOutputText(s);
    }

    public void doCTPassResultSucc(String s)
    {
        showOutputText(s);
    }

    public void doCTPassSucc(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        Object obj;
        try
        {
            obj = NFCParser.NFCparser(s);
            if (!s.contains("OK"))
            {
                showOutputText(s);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        showMsgToast(s);
        s = (List)obj;
        AppID = ((NFC)s.get(0)).getAppid();
        SeqID = ((NFC)s.get(0)).getSeqid();
        Random = ((NFC)s.get(0)).getRandom();
        et1.setText(AppID);
        et2.setText(SeqID);
        et3.setText(Random);
        getCTPassService();
        return;
        showOutputText(s);
        return;
    }

    public String getLocalMacAddress()
    {
        if (wifiMgr == null)
        {
            wifiMgr = (WifiManager)context.getSystemService("wifi");
        }
        return wifiMgr.getConnectionInfo().getMacAddress();
    }

    public void onClick(View view)
    {
        if (view.equals(btn_get_phone))
        {
            getCTPass(getApplicationContext());
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030022);
        context = this;
        miWifi20_output = (TextView)findViewById(0x7f0a008f);
        miWifi20_output.setText("\u8F93\u51FA\uFF1A");
        et1 = (EditText)findViewById(0x7f0a00ae);
        et2 = (EditText)findViewById(0x7f0a00af);
        et3 = (EditText)findViewById(0x7f0a00b0);
        et4 = (EditText)findViewById(0x7f0a00b1);
        btn_get_phone = (Button)findViewById(0x7f0a00b2);
        btn_get_phone.setOnClickListener(this);
    }






}
