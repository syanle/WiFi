// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.widget.RadioButton;
import android.widget.Toast;
import com.pubinfo.izhejiang.fragment.ApplicationFragment;
import com.pubinfo.izhejiang.fragment.AroundFragment;
import com.pubinfo.izhejiang.fragment.MyFragment;
import com.pubinfo.izhejiang.fragment.SsidFragment;
import com.umeng.analytics.MobclickAgent;
import net.youmi.android.AdManager;
import net.youmi.android.offers.OffersBrowserConfig;
import net.youmi.android.offers.OffersManager;

public class MainActivity extends Activity
{

    private Fragment applicationFragment;
    private RadioButton application_bt;
    private Fragment aroundFragment;
    private RadioButton around_bt;
    int around_tag;
    FragmentManager fgManager;
    private Fragment helpFragment;
    private RadioButton help_bt;
    private int i;
    Fragment mCurrFragment;
    private Fragment myFragment;
    private RadioButton my_bt;
    long nowTime;
    android.view.View.OnClickListener onClickListener;
    private Fragment ssidFragment;
    private RadioButton ssid_bt;
    long startTime;
    int tag;

    public MainActivity()
    {
        i = 0;
        startTime = 0L;
        nowTime = 0L;
        around_tag = 0;
        onClickListener = new android.view.View.OnClickListener() {

            final MainActivity this$0;

            public void onClick(View view)
            {
                view.getId();
                JVM INSTR tableswitch 2131361815 2131361818: default 36
            //                           2131361815 37
            //                           2131361816 99
            //                           2131361817 161
            //                           2131361818 223;
                   goto _L1 _L2 _L3 _L4 _L5
_L1:
                return;
_L2:
                if (tag != 1)
                {
                    ssidFragment = new SsidFragment();
                    changeFrament(ssidFragment, null, "ssidFragment");
                    changeRadioButtonImage(view.getId());
                    tag = 1;
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L3:
                if (tag != 3)
                {
                    aroundFragment = new AroundFragment();
                    changeFrament(aroundFragment, null, "aroundFragment");
                    changeRadioButtonImage(view.getId());
                    tag = 3;
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L4:
                if (tag != 4)
                {
                    applicationFragment = new ApplicationFragment();
                    changeFrament(applicationFragment, null, "applicationFragment");
                    changeRadioButtonImage(view.getId());
                    tag = 4;
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L5:
                if (tag != 5)
                {
                    myFragment = new MyFragment();
                    changeFrament(myFragment, null, "myFragment");
                    changeRadioButtonImage(view.getId());
                    tag = 5;
                    return;
                }
                if (true) goto _L1; else goto _L6
_L6:
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        };
    }

    private void switchContent(Fragment fragment, String s)
    {
        if (mCurrFragment != fragment)
        {
            s = fgManager.beginTransaction();
            if (!fragment.isAdded() && mCurrFragment.isAdded())
            {
                s.hide(mCurrFragment).add(0x7f0a0015, fragment).commit();
            } else
            if (!fragment.isAdded() && !mCurrFragment.isAdded())
            {
                changeFrament(fragment, null, null);
            } else
            {
                s.hide(mCurrFragment).show(fragment).commit();
            }
        }
        mCurrFragment = fragment;
    }

    public void changeFrament(Fragment fragment, Bundle bundle, String s)
    {
        int j = 0;
        int k = fgManager.getBackStackEntryCount();
        do
        {
            if (j >= k)
            {
                FragmentTransaction fragmenttransaction = fgManager.beginTransaction();
                fragment.setArguments(bundle);
                fragmenttransaction.add(0x7f0a0015, fragment, s);
                fragmenttransaction.addToBackStack(s);
                fragmenttransaction.commitAllowingStateLoss();
                return;
            }
            fgManager.popBackStack(null, 1);
            j++;
        } while (true);
    }

    public void changeImage(int ai[], int ai1[], int ai2[], int j)
    {
        int k = 0;
        do
        {
            if (k >= ai.length)
            {
                return;
            }
            if (k != j)
            {
                ((RadioButton)findViewById(ai2[k])).setBackgroundResource(ai[k]);
            } else
            {
                ((RadioButton)findViewById(ai2[k])).setBackgroundResource(ai1[k]);
            }
            k++;
        } while (true);
    }

    public void changeRadioButtonImage(int j)
    {
        int ai[] = new int[4];
        int[] _tmp = ai;
        ai[0] = 0x7f020121;
        ai[1] = 0x7f02011b;
        ai[2] = 0x7f020119;
        ai[3] = 0x7f02011f;
        int ai1[] = new int[4];
        int[] _tmp1 = ai1;
        ai1[0] = 0x7f020120;
        ai1[1] = 0x7f02011a;
        ai1[2] = 0x7f020118;
        ai1[3] = 0x7f02011e;
        int ai2[] = new int[4];
        int[] _tmp2 = ai2;
        ai2[0] = 0x7f0a0017;
        ai2[1] = 0x7f0a0018;
        ai2[2] = 0x7f0a0019;
        ai2[3] = 0x7f0a001a;
        switch (j)
        {
        default:
            return;

        case 2131361815: 
            changeImage(ai, ai1, ai2, 0);
            return;

        case 2131361816: 
            changeImage(ai, ai1, ai2, 1);
            return;

        case 2131361817: 
            changeImage(ai, ai1, ai2, 2);
            return;

        case 2131361818: 
            changeImage(ai, ai1, ai2, 3);
            break;
        }
    }

    public void init()
    {
        nowTime = System.currentTimeMillis();
        Object obj = getSharedPreferences("LoginSucess", 0);
        android.content.SharedPreferences.Editor editor = ((SharedPreferences) (obj)).edit();
        startTime = ((SharedPreferences) (obj)).getLong("logintime", 0L);
        obj = Long.valueOf(showTimeCount(nowTime - startTime));
        if (((Long) (obj)).longValue() > 30L || ((Long) (obj)).longValue() == 30L)
        {
            if (startTime != 0L)
            {
                editor.clear();
                editor.commit();
            }
        } else
        {
            editor.putLong("logintime", startTime);
            editor.commit();
        }
        ssid_bt = (RadioButton)findViewById(0x7f0a0017);
        around_bt = (RadioButton)findViewById(0x7f0a0018);
        application_bt = (RadioButton)findViewById(0x7f0a0019);
        my_bt = (RadioButton)findViewById(0x7f0a001a);
        ssid_bt.setOnClickListener(onClickListener);
        around_bt.setOnClickListener(onClickListener);
        application_bt.setOnClickListener(onClickListener);
        my_bt.setOnClickListener(onClickListener);
        ssidFragment = new SsidFragment();
        mCurrFragment = ssidFragment;
        tag = 1;
        changeFrament(ssidFragment, null, "ssidFragment");
        ssid_bt.setBackgroundResource(0x7f020120);
        AdManager.getInstance(this).init("4dbf0078cae5a3c9", "e6140d9f31e5654b");
        AdManager.getInstance(this).setUserDataCollect(true);
        OffersManager.getInstance(this).onAppLaunch();
        OffersBrowserConfig.setBrowserTitleText("\u5E94\u7528");
        OffersBrowserConfig.setBrowserTitleBackgroundColor(0xff18a39e);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030001);
        fgManager = getFragmentManager();
        init();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0b0000, menu);
        return true;
    }

    public boolean onKeyDown(int j, KeyEvent keyevent)
    {
        if (j == 4)
        {
            if (i == 0)
            {
                Toast.makeText(this, "\u518D\u70B9\u51FB\u4E00\u6B21\u5C06\u9000\u51FA\u7A0B\u5E8F", 0).show();
                i = i + 1;
                return false;
            } else
            {
                finish();
                return false;
            }
        } else
        {
            return super.onKeyDown(j, keyevent);
        }
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        if ((0x4000000 & intent.getFlags()) != 0)
        {
            ssidFragment = new SsidFragment();
            changeFrament(ssidFragment, null, "ssidFragment");
            changeRadioButtonImage(0x7f0a0017);
            tag = 1;
        }
    }

    public void onPause()
    {
        super.onPause();
        MobclickAgent.onPause(this);
    }

    public void onResume()
    {
        super.onResume();
        MobclickAgent.onResume(this);
    }

    public long showTimeCount(long l)
    {
        return l / 0x5265c00L;
    }








}
