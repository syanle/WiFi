// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Looper;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.net.utils.a;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.media:
//            BaseMediaObject, UMImage, UMVideo, UMusic, 
//            UMediaObject, BaseShareContent

public class UMRichMedia extends BaseMediaObject
{
    public static interface OnRichMediaDataListener
    {

        public abstract void onComplete(UMRichMedia umrichmedia);
    }


    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private UMediaObject.MediaType h;
    private byte i[];
    private String j;
    private String k;

    protected UMRichMedia(Parcel parcel)
    {
        super(parcel);
        j = "\u672A\u77E5";
        k = "\u672A\u77E5";
        String s = parcel.readString();
        if (!TextUtils.isEmpty(s))
        {
            h = UMediaObject.MediaType.convertToEmun(s);
        }
        j = parcel.readString();
        k = parcel.readString();
        int l = parcel.readInt();
        if (l > 0)
        {
            byte abyte0[] = new byte[l];
            parcel.readByteArray(abyte0);
            i = abyte0;
        }
    }

    public UMRichMedia(String s, UMediaObject.MediaType mediatype)
    {
        super(s);
        j = "\u672A\u77E5";
        k = "\u672A\u77E5";
        h = mediatype;
    }

    public UMRichMedia(String s, Class class1)
    {
        super(s);
        j = "\u672A\u77E5";
        k = "\u672A\u77E5";
        a(class1);
    }

    public UMRichMedia(byte abyte0[], UMediaObject.MediaType mediatype)
    {
        super("");
        j = "\u672A\u77E5";
        k = "\u672A\u77E5";
        i = abyte0;
        h = mediatype;
    }

    public UMRichMedia(byte abyte0[], Class class1)
    {
        super("");
        j = "\u672A\u77E5";
        k = "\u672A\u77E5";
        i = abyte0;
        a(class1);
    }

    private void a(Class class1)
    {
        if (class1 == com/umeng/socialize/media/UMImage)
        {
            h = UMediaObject.MediaType.IMAGE;
        } else
        {
            if (class1 == com/umeng/socialize/media/UMVideo)
            {
                h = UMediaObject.MediaType.VEDIO;
                return;
            }
            if (class1 == com/umeng/socialize/media/UMusic)
            {
                h = UMediaObject.MediaType.MUSIC;
                return;
            }
        }
    }

    static byte[] a(UMRichMedia umrichmedia)
    {
        return umrichmedia.i;
    }

    public static UMRichMedia toUMRichMedia(UMediaObject umediaobject)
    {
        if (umediaobject != null) goto _L2; else goto _L1
_L1:
        Object obj1 = null;
_L4:
        return ((UMRichMedia) (obj1));
_L2:
        Object obj;
        if (!umediaobject.isUrlMedia())
        {
            break; /* Loop/switch isn't completed */
        }
        obj = new UMRichMedia(umediaobject.toUrl(), umediaobject.getMediaType());
        if (umediaobject.getMediaType() == UMediaObject.MediaType.MUSIC)
        {
            if (umediaobject instanceof BaseShareContent)
            {
                obj1 = ((BaseShareContent)umediaobject).getShareMusic();
            } else
            {
                obj1 = (UMusic)umediaobject;
            }
            ((UMRichMedia) (obj)).setAuthor(((UMusic) (obj1)).getAuthor());
            ((UMRichMedia) (obj)).setTitle(((UMusic) (obj1)).getTitle());
        }
_L5:
        obj1 = obj;
        if (obj != null)
        {
            obj1 = obj;
            if (umediaobject != null)
            {
                obj1 = obj;
                if (umediaobject instanceof BaseMediaObject)
                {
                    obj1 = (BaseMediaObject)umediaobject;
                    umediaobject = ((BaseMediaObject) (obj1)).getTitle();
                    obj1 = ((BaseMediaObject) (obj1)).getThumb();
                    ((UMRichMedia) (obj)).setTitle(umediaobject);
                    ((UMRichMedia) (obj)).setThumb(((String) (obj1)));
                    return ((UMRichMedia) (obj));
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
label0:
        {
            if (umediaobject.getMediaType() != UMediaObject.MediaType.IMAGE)
            {
                break label0;
            }
            obj = ((UMImage)umediaobject).toByte();
            if (obj == null)
            {
                break MISSING_BLOCK_LABEL_183;
            }
            obj = new UMRichMedia(((byte []) (obj)), UMediaObject.MediaType.IMAGE);
        }
          goto _L5
        Log.e("com.umeng.socialize", "toUMRichMedia is unsupport this media.");
        obj = null;
          goto _L5
    }

    public static void toUMRichMedia(UMediaObject umediaobject, OnRichMediaDataListener onrichmediadatalistener)
    {
        (new _cls3(umediaobject, onrichmediadatalistener)).execute();
    }

    public String getAuthor()
    {
        return k;
    }

    public UMediaObject.MediaType getMediaType()
    {
        return h;
    }

    public String getTitle()
    {
        return j;
    }

    public boolean isMultiMedia()
    {
        return true;
    }

    public boolean isUrlMedia()
    {
        return !TextUtils.isEmpty(a);
    }

    public void setAuthor(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            k = s;
        }
    }

    public void setTitle(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            j = s;
        }
    }

    public void toByte(UMediaObject.FetchMediaDataListener fetchmediadatalistener)
    {
        if (fetchmediadatalistener == null)
        {
            return;
        }
        fetchmediadatalistener.onStart();
        if (i != null)
        {
            fetchmediadatalistener.onComplete(i);
            return;
        }
        if (!TextUtils.isEmpty(a))
        {
            if (Looper.myLooper() == Looper.getMainLooper())
            {
                (new _cls2(fetchmediadatalistener)).execute(new Void[0]);
                return;
            } else
            {
                fetchmediadatalistener.onComplete(null);
                return;
            }
        } else
        {
            fetchmediadatalistener.onComplete(null);
            return;
        }
    }

    public byte[] toByte()
    {
        return i;
    }

    public String toString()
    {
        if ((new StringBuilder("UMRichMedia [type=")).append(h).append(", data=").append(i).toString() == null)
        {
            return "NULL";
        } else
        {
            return (new StringBuilder("EXIST, title=")).append(j).append(", author=").append(k).append("media_url=").append(a).append(", qzone_title=").append(b).append(", qzone_thumb=").append(c).append("]").toString();
        }
    }

    public String toUrl()
    {
        return a;
    }

    public final Map toUrlExtraParams()
    {
        HashMap hashmap = new HashMap();
        if (isUrlMedia())
        {
            hashmap.put(a.y, a);
            hashmap.put(a.z, getMediaType());
            if (h == UMediaObject.MediaType.MUSIC)
            {
                hashmap.put(a.A, j);
                hashmap.put(a.C, k);
            }
        }
        return hashmap;
    }

    public void writeToParcel(Parcel parcel, int l)
    {
        super.writeToParcel(parcel, l);
        String s;
        if (h == null)
        {
            s = "";
        } else
        {
            s = h.toString();
        }
        parcel.writeString(s);
        parcel.writeString(j);
        parcel.writeString(k);
        if (i == null)
        {
            l = 0;
        } else
        {
            l = i.length;
        }
        parcel.writeInt(l);
        parcel.writeByteArray(i);
    }


    private class _cls3 extends UMAsyncTask
    {

        private final UMediaObject a;
        private final OnRichMediaDataListener b;

        protected UMRichMedia a()
        {
            return UMRichMedia.toUMRichMedia(a);
        }

        protected void a(UMRichMedia umrichmedia)
        {
            if (b != null)
            {
                b.onComplete(umrichmedia);
            }
            Log.d("", "### toUMRichMedia completed.");
        }

        protected Object doInBackground()
        {
            return a();
        }

        protected void onPostExecute(Object obj)
        {
            a((UMRichMedia)obj);
        }

        _cls3(UMediaObject umediaobject, OnRichMediaDataListener onrichmediadatalistener)
        {
            a = umediaobject;
            b = onrichmediadatalistener;
            super();
        }
    }


    private class _cls2 extends AsyncTask
    {

        final UMRichMedia a;
        private final UMediaObject.FetchMediaDataListener b;

        protected void a(byte abyte0[])
        {
            b.onComplete(abyte0);
        }

        protected transient byte[] a(Void avoid[])
        {
            return com.umeng.socialize.media.UMRichMedia.a(a);
        }

        protected transient Object doInBackground(Object aobj[])
        {
            return a((Void[])aobj);
        }

        protected void onPostExecute(Object obj)
        {
            a((byte[])obj);
        }

        _cls2(UMediaObject.FetchMediaDataListener fetchmediadatalistener)
        {
            a = UMRichMedia.this;
            b = fetchmediadatalistener;
            super();
        }
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public UMRichMedia createFromParcel(Parcel parcel)
        {
            return new UMRichMedia(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public UMRichMedia[] newArray(int l)
        {
            return new UMRichMedia[l];
        }

        public volatile Object[] newArray(int l)
        {
            return newArray(l);
        }

        _cls1()
        {
        }
    }

}
