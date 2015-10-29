// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import com.cat.data.UserInfoData;
import com.cat.parase.UserInfoParser;
import com.cat.tools.APPConf;
import com.pubinfo.izhejiang.LoginActivity;
import com.pubinfo.izhejiang.PersonInfomationActivity;
import com.pubinfo.izhejiang.PushMessageActivity;
import com.pubinfo.izhejiang.controller.MyFun;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

public class MyFragment extends MyFun
{
    public class MyThread extends Thread
    {

        final MyFragment this$0;

        public void run()
        {
            try
            {
                if (CreatFileSdcard())
                {
                    byte abyte0[] = MyFragment.readImage(faceurl);
                    FileOutputStream fileoutputstream = new FileOutputStream(new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString()));
                    fileoutputstream.write(abyte0);
                    fileoutputstream.close();
                    listHandler.sendEmptyMessage(3);
                }
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }

        public MyThread()
        {
            this$0 = MyFragment.this;
            super();
        }
    }


    public static final int MY_LOGIN = 2;
    public static final int PERSON_INFO = 3;
    public static final int PUSH_LIST = 4;
    boolean btn_click;
    String city;
    String connecttimes;
    String countrycode2;
    String email;
    String face;
    String facenew;
    String faceurl;
    String grade;
    String isnewpush;
    ImageView iv_pushmsg;
    private Handler listHandler;
    LinearLayout ll_left;
    LinearLayout ll_right;
    String nick;
    android.view.View.OnClickListener onClickListener;
    String point;
    RelativeLayout rl_login;
    RelativeLayout rl_logo;
    TextView tv_jifen;
    TextView tv_level;
    TextView tv_login;
    TextView tv_nick;
    TextView tv_times;
    String username;
    protected WifiManager wifiMgr;

    public MyFragment()
    {
        listHandler = null;
        wifiMgr = null;
        btn_click = true;
        onClickListener = new android.view.View.OnClickListener() {

            final MyFragment this$0;

            public void onClick(View view)
            {
                view.getId();
                JVM INSTR lookupswitch 3: default 40
            //                           2131361912: 41
            //                           2131361941: 77
            //                           2131361943: 122;
                   goto _L1 _L2 _L3 _L4
_L1:
                return;
_L2:
                view = new Intent(getActivity(), com/pubinfo/izhejiang/LoginActivity);
                view.putExtra("Activity", "MyFragment");
                startActivityForResult(view, 2);
                return;
_L3:
                if (btn_click)
                {
                    view = new Intent(getActivity(), com/pubinfo/izhejiang/PushMessageActivity);
                    startActivityForResult(view, 4);
                    btn_click = false;
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L4:
                if (btn_click)
                {
                    view = new Intent(getActivity(), com/pubinfo/izhejiang/PersonInfomationActivity);
                    startActivityForResult(view, 3);
                    btn_click = false;
                    return;
                }
                if (true) goto _L1; else goto _L5
_L5:
            }

            
            {
                this$0 = MyFragment.this;
                super();
            }
        };
    }

    private void getUserInfo()
    {
        SharedPreferences sharedpreferences = getActivity().getSharedPreferences("LoginSucess", 0);
        username = sharedpreferences.getString("username", "");
        countrycode2 = sharedpreferences.getString("countrycode", "");
        if (username.equals(""))
        {
            rl_logo.setBackgroundDrawable(null);
            rl_logo.setBackgroundResource(0x7f02003e);
            ll_left.setVisibility(8);
            ll_right.setVisibility(8);
            rl_login.setClickable(true);
            rl_login.setBackgroundResource(0x7f02006b);
            tv_login.setVisibility(0);
            tv_nick.setVisibility(8);
        } else
        if (isAdded())
        {
            rl_login.setClickable(false);
            rl_login.setBackgroundDrawable(null);
            tv_login.setVisibility(8);
            ll_left.setVisibility(0);
            ll_right.setVisibility(0);
            tv_nick.setVisibility(0);
            getUserInfo(username, countrycode2, ((android.content.Context) (getActivity())));
            return;
        }
    }

    private void init()
    {
        SharedPreferences sharedpreferences = getActivity().getSharedPreferences("MyFragment", 0);
        face = sharedpreferences.getString("face", "");
        nick = sharedpreferences.getString("nick", "");
        faceurl = sharedpreferences.getString("faceurl", "");
        point = sharedpreferences.getString("point", "");
        grade = sharedpreferences.getString("grade", "");
        connecttimes = sharedpreferences.getString("connecttimes", "");
        isnewpush = sharedpreferences.getString("isnewpush", "");
        if (nick.equals("null") || nick.equals(""))
        {
            tv_nick.setText(username);
        } else
        {
            tv_nick.setText(nick);
        }
        if (!grade.equals("null") && !grade.equals(""))
        {
            tv_level.setText(grade);
        }
        if (!point.equals("null") && !point.equals(""))
        {
            tv_jifen.setText(point);
        }
        if (!connecttimes.equals("null") && !connecttimes.equals(""))
        {
            tv_times.setText(connecttimes);
        }
        if (isnewpush.equals("1"))
        {
            iv_pushmsg.setBackgroundDrawable(null);
            iv_pushmsg.setImageResource(0x7f0200ab);
        } else
        {
            iv_pushmsg.setBackgroundDrawable(null);
            iv_pushmsg.setImageResource(0x7f0200aa);
        }
        chosePhoto();
    }

    private void initialHandler()
    {
        listHandler = new Handler() {

            final MyFragment this$0;

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1 4: default 36
            //                           1 37
            //                           2 689
            //                           3 707
            //                           4 725;
                   goto _L1 _L2 _L3 _L4 _L5
_L1:
                return;
_L2:
                if (!isAdded() || ((message = ComData.getInstance().getUserInfoData()) == null || message.size() <= 0))
                {
                    continue; /* Loop/switch isn't completed */
                }
                facenew = ((UserInfoData)message.get(0)).getFace();
                faceurl = ((UserInfoData)message.get(0)).getFaceurl();
                point = ((UserInfoData)message.get(0)).getPoint();
                grade = ((UserInfoData)message.get(0)).getGrade();
                nick = ((UserInfoData)message.get(0)).getNick();
                email = ((UserInfoData)message.get(0)).getEmail();
                connecttimes = ((UserInfoData)message.get(0)).getConnecttimes();
                isnewpush = ((UserInfoData)message.get(0)).getIsnewpush();
                message = getActivity().getSharedPreferences("MyFragment", 0);
                face = message.getString("face", "");
                if (nick.equals("null") || nick.equals(""))
                {
                    tv_nick.setText(username);
                } else
                {
                    tv_nick.setText(nick);
                }
                tv_level.setText(grade);
                tv_jifen.setText(point);
                tv_times.setText(connecttimes);
                if (isnewpush.equals("1"))
                {
                    iv_pushmsg.setBackgroundDrawable(null);
                    iv_pushmsg.setImageResource(0x7f0200ab);
                } else
                {
                    iv_pushmsg.setBackgroundDrawable(null);
                    iv_pushmsg.setImageResource(0x7f0200aa);
                }
                if (facenew.equals("null") || facenew.equals(""))
                {
                    chosePhoto();
                } else
                if (facenew.equals(face))
                {
                    chosePhoto();
                } else
                if (isAdded())
                {
                    (new MyThread()).start();
                }
                message = getActivity().getSharedPreferences("MyFragment", 0).edit();
                message.putString("face", face);
                message.putString("faceurl", faceurl);
                message.putString("point", point);
                message.putString("grade", grade);
                message.putString("nick", nick);
                message.putString("email", email);
                message.putString("connecttimes", connecttimes);
                message.putString("isnewpush", isnewpush);
                message.commit();
                return;
_L3:
                if (isAdded())
                {
                    init();
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L4:
                if (isAdded())
                {
                    chosePhoto();
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L5:
                message = ComData.getInstance().getpError();
                if (message != null && message.size() > 0)
                {
                    int i = 0;
                    while (i < message.size()) 
                    {
                        ((PublicError)message.get(i)).getMessage();
                        isAdded();
                        i++;
                    }
                }
                if (true) goto _L1; else goto _L6
_L6:
            }

            
            {
                this$0 = MyFragment.this;
                super();
            }
        };
    }

    public static byte[] readImage(String s)
        throws Exception
    {
        s = (HttpURLConnection)(new URL(s)).openConnection();
        s.setRequestMethod("GET");
        s.setConnectTimeout(5000);
        return readStream(s.getInputStream());
    }

    public static byte[] readStream(InputStream inputstream)
        throws Exception
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        byte abyte0[] = new byte[1024];
        do
        {
            int i = inputstream.read(abyte0);
            if (i == -1)
            {
                bytearrayoutputstream.close();
                inputstream.close();
                return bytearrayoutputstream.toByteArray();
            }
            bytearrayoutputstream.write(abyte0, 0, i);
        } while (true);
    }

    public boolean CreatFileSdcard()
    {
        if (!Environment.getExternalStorageState().equals("mounted"))
        {
            return false;
        }
        File file = new File(APPConf.PHOTO_SAVE_PATH);
        if (!file.exists())
        {
            file.mkdir();
        }
        file = new File(APPConf.PHOTO_SAVE2_PATH);
        if (!file.exists())
        {
            file.mkdir();
        }
        return true;
    }

    public void chosePhoto()
    {
        if ((new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString())).exists())
        {
            Object obj = new android.graphics.BitmapFactory.Options();
            obj.inSampleSize = 3;
            obj = new BitmapDrawable(null, BitmapFactory.decodeFile((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString(), ((android.graphics.BitmapFactory.Options) (obj))));
            rl_logo.setBackgroundDrawable(null);
            rl_logo.setBackgroundDrawable(((android.graphics.drawable.Drawable) (obj)));
        }
    }

    public void doUserInfoErr(String s)
    {
        listHandler.sendEmptyMessage(2);
    }

    public void doUserInfoSucc(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        Object obj;
        try
        {
            obj = UserInfoParser.Userinfoparaser(s);
            if (!s.contains("OK"))
            {
                ComData.getInstance().setpError((List)obj);
                listHandler.sendEmptyMessage(2);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        ComData.getInstance().setUserInfoData((List)obj);
        listHandler.sendEmptyMessage(1);
        return;
        listHandler.sendEmptyMessage(2);
        return;
    }

    public String getLocalMacAddress()
    {
        if (wifiMgr == null)
        {
            wifiMgr = (WifiManager)getActivity().getSystemService("wifi");
        }
        return wifiMgr.getConnectionInfo().getMacAddress();
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if (i != 2) goto _L2; else goto _L1
_L1:
        if (intent == null) goto _L4; else goto _L3
_L3:
        username = intent.getExtras().getString("username");
        countrycode2 = intent.getExtras().getString("countrycode");
        getUserInfo();
_L2:
        if (i != 3) goto _L6; else goto _L5
_L5:
        btn_click = true;
        if (intent == null) goto _L8; else goto _L7
_L7:
        Object obj = intent.getExtras().getString("tag");
        if (!((String) (obj)).equals("zhuxiao")) goto _L10; else goto _L9
_L9:
        obj = getActivity().getSharedPreferences("MyFragment", 0).edit();
        ((android.content.SharedPreferences.Editor) (obj)).clear();
        ((android.content.SharedPreferences.Editor) (obj)).commit();
        tv_level.setText("\u2014 \u2014");
        tv_jifen.setText("\u2014 \u2014");
        tv_times.setText("\u2014 \u2014");
_L11:
        getUserInfo();
_L6:
        if (i == 4)
        {
            btn_click = true;
            getUserInfo();
        }
        super.onActivityResult(i, j, intent);
_L4:
        return;
_L10:
        if (((String) (obj)).equals("back"))
        {
            username = intent.getExtras().getString("username");
            countrycode2 = intent.getExtras().getString("countrycode");
        }
        if (true) goto _L11; else goto _L8
_L8:
        getUserInfo();
        return;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        layoutinflater = layoutinflater.inflate(0x7f03001d, viewgroup, false);
        getActivity().getWindow().setFormat(-3);
        if (isAdded())
        {
            initialHandler();
        }
        iv_pushmsg = (ImageView)layoutinflater.findViewById(0x7f0a0096);
        rl_logo = (RelativeLayout)layoutinflater.findViewById(0x7f0a006e);
        tv_level = (TextView)layoutinflater.findViewById(0x7f0a007a);
        tv_jifen = (TextView)layoutinflater.findViewById(0x7f0a009b);
        tv_times = (TextView)layoutinflater.findViewById(0x7f0a009f);
        tv_nick = (TextView)layoutinflater.findViewById(0x7f0a0099);
        tv_login = (TextView)layoutinflater.findViewById(0x7f0a0098);
        rl_login = (RelativeLayout)layoutinflater.findViewById(0x7f0a0078);
        ll_left = (LinearLayout)layoutinflater.findViewById(0x7f0a0095);
        ll_right = (LinearLayout)layoutinflater.findViewById(0x7f0a0097);
        rl_login.setOnClickListener(onClickListener);
        ll_left.setOnClickListener(onClickListener);
        ll_right.setOnClickListener(onClickListener);
        getUserInfo();
        return layoutinflater;
    }


}
