// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.text.TextUtils;

// Referenced classes of package com.baidu.location:
//            aq

public interface BDGeofence
{
    public static final class Builder
    {

        private int a;
        private String _flddo;
        private double _fldfor;
        private long _fldif;
        private String _fldint;
        private boolean _fldnew;
        private double _fldtry;

        public BDGeofence build()
        {
            if (TextUtils.isEmpty(_flddo))
            {
                throw new IllegalArgumentException("BDGeofence name not set.");
            }
            if (!_fldnew)
            {
                throw new IllegalArgumentException("BDGeofence region not set.");
            }
            if (_fldif == 0x8000000000000000L)
            {
                throw new IllegalArgumentException("BDGeofence Expiration not set.");
            }
            if (TextUtils.isEmpty(_fldint))
            {
                throw new IllegalArgumentException("BDGeofence CoordType not set.");
            } else
            {
                return new aq(_flddo, _fldtry, _fldfor, a, _fldif, _fldint);
            }
        }

        public Builder setCircularRegion(double d, double d1, int i)
        {
            _fldnew = true;
            _fldtry = d;
            _fldfor = d1;
            a = 1;
            return this;
        }

        public Builder setCoordType(String s)
        {
            _fldint = s;
            return this;
        }

        public Builder setExpirationDruation(long l)
        {
            if (l < 0L)
            {
                _fldif = -1L;
                return this;
            } else
            {
                _fldif = l;
                return this;
            }
        }

        public Builder setGeofenceId(String s)
        {
            _flddo = s;
            return this;
        }

        public Builder()
        {
            _flddo = null;
            _fldnew = false;
            _fldif = 0x8000000000000000L;
        }
    }


    public static final String COORD_TYPE_BD09 = "bd09";
    public static final String COORD_TYPE_BD09LL = "bd09ll";
    public static final String COORD_TYPE_GCJ = "gcj02";
    public static final int GEOFENCE_TRANSITION_ENTER = 1;
    public static final int RADIUS_TYPE_SMALL = 1;

    public abstract String getGeofenceId();
}
