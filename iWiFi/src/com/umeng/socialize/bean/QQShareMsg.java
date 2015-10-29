// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.net.utils.SocializeNetUtils;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.bean:
//            n

public class QQShareMsg
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new n();
    private static final String h = "QQShareMsg";
    private static Map i = new HashMap();
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;

    protected QQShareMsg(Parcel parcel)
    {
        a = "";
        b = "";
        c = "http://www.umeng.com/social";
        d = "http://www.umeng.com/social";
        e = "";
        f = "";
        g = "";
        a = parcel.readString();
        g = parcel.readString();
        b = parcel.readString();
        c = parcel.readString();
        e = parcel.readString();
    }

    public QQShareMsg(String s, String s1)
    {
        this(s, "", s1);
    }

    public QQShareMsg(String s, String s1, String s2)
    {
        this(s, s1, "", s2);
    }

    public QQShareMsg(String s, String s1, String s2, String s3)
    {
        a = "";
        b = "";
        c = "http://www.umeng.com/social";
        d = "http://www.umeng.com/social";
        e = "";
        f = "";
        g = "";
        a = s;
        g = s1;
        b = s2;
        c = s3;
    }

    private boolean h(String s)
    {
        return !TextUtils.isEmpty(s) && SocializeNetUtils.startWithHttp(s);
    }

    public String a()
    {
        return a;
    }

    public void a(String s)
    {
        a = s;
    }

    public String b()
    {
        return b;
    }

    public void b(String s)
    {
        b = s;
    }

    public String c()
    {
        return c;
    }

    public void c(String s)
    {
        if (h(s))
        {
            c = s;
        }
    }

    public void d()
    {
        c = "";
    }

    public void d(String s)
    {
        if (h(s))
        {
            d = s;
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public String e()
    {
        return d;
    }

    public void e(String s)
    {
        g = s;
    }

    public String f()
    {
        return g;
    }

    public void f(String s)
    {
        e = s;
    }

    public String g()
    {
        return e;
    }

    public void g(String s)
    {
        f = s;
    }

    public String h()
    {
        return f;
    }

    public boolean i()
    {
        boolean flag1 = true;
        boolean flag = flag1;
        if (TextUtils.isEmpty(a))
        {
            flag = flag1;
            if (TextUtils.isEmpty(g))
            {
                flag = flag1;
                if (!h(b))
                {
                    flag = false;
                    Log.d("QQShareMsg", "\u9519\u8BEF\u63D0\u793A : UMQQSsoHandler\u7684title,summary,imageurl\u5FC5\u987B\u8BBE\u7F6E\u5176\u4E2D\u4E00\u4E2A!!!");
                }
            }
        }
        return flag;
    }

    public void j()
    {
        c = "";
        g = "";
        b = "";
    }

    public Map k()
    {
        return i;
    }

    public String toString()
    {
        return (new StringBuilder("Title : ")).append(a).append(", Summary : ").append(g).append(", ImageUrl : ").append(b).append(", TargetUrl : ").append(c).append(", ContentUrl : ").append(d).toString();
    }

    public void writeToParcel(Parcel parcel, int l)
    {
        parcel.writeString(a);
        parcel.writeString(g);
        parcel.writeString(b);
        parcel.writeString(c);
        parcel.writeString(e);
    }

}
