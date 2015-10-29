// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
import android.widget.TextView;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import com.cat.data.UserInfoData;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            MyFragment

class this._cls0 extends Handler
{

    final MyFragment this$0;

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 4: default 36
    //                   1 37
    //                   2 689
    //                   3 707
    //                   4 725;
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
            (new Thread(MyFragment.this)).start();
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
            MyFragment.access$1(MyFragment.this);
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

    Thread()
    {
        this$0 = MyFragment.this;
        super();
    }
}
