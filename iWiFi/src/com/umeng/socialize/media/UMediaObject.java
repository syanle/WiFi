// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcelable;
import com.umeng.socialize.bean.SHARE_MEDIA;
import java.util.Map;

public interface UMediaObject
    extends Parcelable
{
    public static interface FetchMediaDataListener
    {

        public abstract void onComplete(byte abyte0[]);

        public abstract void onStart();
    }

    public static class MediaType extends Enum
    {

        public static final MediaType IMAGE;
        public static final MediaType MUSIC;
        public static final MediaType TEXT;
        public static final MediaType TEXT_IMAGE;
        public static final MediaType VEDIO;
        public static final MediaType WEBPAGE;
        private static final MediaType a[];

        public static MediaType convertToEmun(String s)
        {
            MediaType amediatype[];
            int i;
            int j;
            amediatype = values();
            j = amediatype.length;
            i = 0;
_L6:
            if (i < j) goto _L2; else goto _L1
_L1:
            MediaType mediatype = null;
_L4:
            return mediatype;
_L2:
            MediaType mediatype1;
            mediatype1 = amediatype[i];
            mediatype = mediatype1;
            if (mediatype1.toString().equals(s)) goto _L4; else goto _L3
_L3:
            i++;
            if (true) goto _L6; else goto _L5
_L5:
        }

        public static MediaType valueOf(String s)
        {
            return (MediaType)Enum.valueOf(com/umeng/socialize/media/UMediaObject$MediaType, s);
        }

        public static MediaType[] values()
        {
            MediaType amediatype[] = a;
            int i = amediatype.length;
            MediaType amediatype1[] = new MediaType[i];
            System.arraycopy(amediatype, 0, amediatype1, 0, i);
            return amediatype1;
        }

        static 
        {
            class _cls1 extends MediaType
            {

                public String toString()
                {
                    return "0";
                }

                _cls1(String s, int i)
                {
                    super(s, i, null);
                }
            }

            IMAGE = new _cls1("IMAGE", 0);
            class _cls2 extends MediaType
            {

                public String toString()
                {
                    return "1";
                }

                _cls2(String s, int i)
                {
                    super(s, i, null);
                }
            }

            VEDIO = new _cls2("VEDIO", 1);
            class _cls3 extends MediaType
            {

                public String toString()
                {
                    return "2";
                }

                _cls3(String s, int i)
                {
                    super(s, i, null);
                }
            }

            MUSIC = new _cls3("MUSIC", 2);
            class _cls4 extends MediaType
            {

                public String toString()
                {
                    return "3";
                }

                _cls4(String s, int i)
                {
                    super(s, i, null);
                }
            }

            TEXT = new _cls4("TEXT", 3);
            class _cls5 extends MediaType
            {

                public String toString()
                {
                    return "4";
                }

                _cls5(String s, int i)
                {
                    super(s, i, null);
                }
            }

            TEXT_IMAGE = new _cls5("TEXT_IMAGE", 4);
            class _cls6 extends MediaType
            {

                public String toString()
                {
                    return "5";
                }

                _cls6(String s, int i)
                {
                    super(s, i, null);
                }
            }

            WEBPAGE = new _cls6("WEBPAGE", 5);
            a = (new MediaType[] {
                IMAGE, VEDIO, MUSIC, TEXT, TEXT_IMAGE, WEBPAGE
            });
        }

        private MediaType(String s, int i)
        {
            super(s, i);
        }

        MediaType(String s, int i, MediaType mediatype)
        {
            this(s, i);
        }
    }


    public abstract MediaType getMediaType();

    public abstract SHARE_MEDIA getTargetPlatform();

    public abstract boolean isMultiMedia();

    public abstract boolean isUrlMedia();

    public abstract void toByte(FetchMediaDataListener fetchmediadatalistener);

    public abstract byte[] toByte();

    public abstract String toUrl();

    public abstract Map toUrlExtraParams();
}
