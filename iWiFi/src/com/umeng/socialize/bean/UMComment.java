// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.umeng.socialize.net.utils.a;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.umeng.socialize.bean:
//            BaseMsg, aj, Gender, UMLocation

public class UMComment extends BaseMsg
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new aj();
    private static boolean b = false;
    private static List c;
    public long mDt;
    public Gender mGender;
    public String mSignature;
    public String mUid;
    public String mUname;
    public String mUserIcon;

    public UMComment()
    {
    }

    private UMComment(Parcel parcel)
    {
        super(parcel);
        mUserIcon = parcel.readString();
        mUid = parcel.readString();
        mUname = parcel.readString();
        mSignature = parcel.readString();
        mDt = parcel.readLong();
    }

    UMComment(Parcel parcel, UMComment umcomment)
    {
        this(parcel);
    }

    public static UMComment parseJson(JSONObject jsonobject)
    {
        UMComment umcomment;
        if (jsonobject == null)
        {
            return null;
        }
        umcomment = new UMComment();
label0:
        {
            if (jsonobject.has("uname"))
            {
                umcomment.mUname = jsonobject.getString("uname");
            }
            if (jsonobject.has("ic"))
            {
                umcomment.mUserIcon = jsonobject.getString("ic");
            }
            if (jsonobject.has("uid"))
            {
                umcomment.mUid = jsonobject.getString("uid");
            }
            if (jsonobject.has(a.s))
            {
                umcomment.mText = jsonobject.getString(a.s);
            }
            if (jsonobject.has("dt"))
            {
                umcomment.mDt = jsonobject.getLong("dt");
            }
            if (jsonobject.has("gender"))
            {
                int i = jsonobject.optInt("gender", 0);
                umcomment.mGender = Gender.convertToEmun((new StringBuilder()).append(i).toString());
            }
            if (b)
            {
                jsonobject = (Double[])c.get((new Random()).nextInt(c.size()));
                umcomment.mLocation = new UMLocation(jsonobject[0].doubleValue(), jsonobject[1].doubleValue());
                break label0;
            }
            try
            {
                if (jsonobject.has(a.t))
                {
                    umcomment.mLocation = UMLocation.build(jsonobject.getString(a.t));
                }
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject) { }
        }
        return umcomment;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeString(mUserIcon);
        parcel.writeString(mUid);
        parcel.writeString(mUname);
        parcel.writeString(mSignature);
        parcel.writeLong(mDt);
        String s;
        if (mGender == null)
        {
            s = "";
        } else
        {
            s = mGender.toString();
        }
        parcel.writeString(s);
    }

    static 
    {
        c = new ArrayList();
        c.add(new Double[] {
            Double.valueOf(39.909736234537192D), Double.valueOf(116.3671875D)
        });
        c.add(new Double[] {
            Double.valueOf(34.5D), Double.valueOf(112.916667D)
        });
        c.add(new Double[] {
            Double.valueOf(30.891465D), Double.valueOf(111.345027D)
        });
        c.add(new Double[] {
            Double.valueOf(41.257503D), Double.valueOf(114.834788D)
        });
        c.add(new Double[] {
            Double.valueOf(43.97681D), Double.valueOf(117.475441D)
        });
        c.add(new Double[] {
            Double.valueOf(22.596615D), Double.valueOf(114.304495D)
        });
        c.add(new Double[] {
            Double.valueOf(27.175000000000001D), Double.valueOf(78.042221999999995D)
        });
        c.add(new Double[] {
            Double.valueOf(40.689166999999998D), Double.valueOf(74.044443999999999D)
        });
    }
}
