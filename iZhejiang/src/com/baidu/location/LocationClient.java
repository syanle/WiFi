// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.baidu.location:
//            n, ax, LocationClientOption, z, 
//            BDLocation, BDLocationListener, c, f, 
//            BDErrorReport, BDNotifyListener, v

public final class LocationClient
    implements n, ax
{
    private class a extends Handler
    {

        final LocationClient a;

        public void handleMessage(Message message)
        {
            message.what;
            JVM INSTR lookupswitch 19: default 168
        //                       1: 228
        //                       2: 236
        //                       3: 174
        //                       4: 252
        //                       5: 192
        //                       6: 201
        //                       7: 173
        //                       8: 183
        //                       9: 210
        //                       10: 219
        //                       11: 244
        //                       12: 261
        //                       21: 315
        //                       26: 326
        //                       27: 337
        //                       54: 269
        //                       55: 292
        //                       204: 355
        //                       205: 346;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20
_L1:
            super.handleMessage(message);
_L8:
            return;
_L4:
            LocationClient._mthfor(a, message);
            return;
_L9:
            LocationClient._mthdo(a, message);
            return;
_L6:
            LocationClient._mthif(a, message);
            return;
_L7:
            LocationClient._mthcase(a, message);
            return;
_L10:
            LocationClient._mthbyte(a, message);
            return;
_L11:
            LocationClient._mthnew(a, message);
            return;
_L2:
            LocationClient._mthdo(a);
            return;
_L3:
            LocationClient._mthtry(a);
            return;
_L12:
            LocationClient._mthcase(a);
            return;
_L5:
            LocationClient._mthint(a, message);
            return;
_L13:
            LocationClient._mthint(a);
            return;
_L17:
            if (!LocationClient._mthelse(a)._fldgoto) goto _L8; else goto _L21
_L21:
            LocationClient._mthfor(a, true);
            return;
_L18:
            if (!LocationClient._mthelse(a)._fldgoto) goto _L8; else goto _L22
_L22:
            LocationClient._mthfor(a, false);
            return;
_L14:
            LocationClient._mthif(a, message, 21);
            return;
_L15:
            LocationClient._mthif(a, message, 26);
            return;
_L16:
            LocationClient._mthtry(a, message);
            return;
_L20:
            LocationClient._mthdo(a, true);
            return;
_L19:
            LocationClient._mthdo(a, false);
            return;
        }

        private a()
        {
            a = LocationClient.this;
            super();
        }

        a(_cls1 _pcls1)
        {
            this();
        }
    }

    private class b
        implements Runnable
    {

        final LocationClient a;

        public void run()
        {
label0:
            {
                synchronized (LocationClient._mthfor(a))
                {
                    LocationClient._mthint(a, false);
                    if (LocationClient._mthchar(a) != null && LocationClient._mthnew(a) != null)
                    {
                        break label0;
                    }
                }
                return;
            }
            if (LocationClient._mthgoto(a) != null && LocationClient._mthgoto(a).size() >= 1)
            {
                break MISSING_BLOCK_LABEL_74;
            }
            obj;
            JVM INSTR monitorexit ;
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
            LocationClient._mthbyte(a).obtainMessage(4).sendToTarget();
            obj;
            JVM INSTR monitorexit ;
        }

        private b()
        {
            a = LocationClient.this;
            super();
        }

        b(_cls1 _pcls1)
        {
            this();
        }
    }


    private static final int j1 = 11;
    private static final int j4 = 4;
    private static final int jB = 3;
    private static final int jC = 8;
    private static final int jF = 9;
    private static final int jH = 7;
    private static final int jO = 5;
    private static final int jP = 12;
    private static final int jR = 6;
    private static final int jS = 2;
    private static final int jo = 10;
    private static final String jq = "baidu_location_Client";
    private static final int jt = 1;
    private static final int jx = 1000;
    private BDLocation j0;
    private String j2;
    private String j3;
    private ArrayList j5;
    private boolean jA;
    private BDLocationListener jD;
    private boolean jE;
    private boolean jG;
    private boolean jI;
    private final Messenger jJ;
    private Context jK;
    private Messenger jL;
    private long jM;
    private LocationClientOption jN;
    private Boolean jQ;
    private boolean jT;
    private long jU;
    private long jV;
    private ServiceConnection jW;
    private String jX;
    private boolean jY;
    private boolean jZ;
    private boolean jn;
    private a jp;
    private final Object jr;
    private BDErrorReport js;
    private b ju;
    private Boolean jv;
    private z jw;
    private long jy;
    private Boolean jz;

    public LocationClient(Context context)
    {
        jU = 0L;
        j3 = null;
        jN = new LocationClientOption();
        jT = false;
        jK = null;
        jL = null;
        jp = new a(null);
        jJ = new Messenger(jp);
        j5 = null;
        j0 = null;
        jE = false;
        jY = false;
        jG = false;
        ju = null;
        jn = false;
        jr = new Object();
        jM = 0L;
        jV = 0L;
        jw = null;
        jZ = false;
        jD = null;
        j2 = null;
        jA = false;
        jz = Boolean.valueOf(false);
        jv = Boolean.valueOf(false);
        jQ = Boolean.valueOf(true);
        jW = new _cls1();
        jy = 0L;
        js = null;
        jK = context;
        jN = new LocationClientOption();
        jw = new z(jK, this);
    }

    public LocationClient(Context context, LocationClientOption locationclientoption)
    {
        jU = 0L;
        j3 = null;
        jN = new LocationClientOption();
        jT = false;
        jK = null;
        jL = null;
        jp = new a(null);
        jJ = new Messenger(jp);
        j5 = null;
        j0 = null;
        jE = false;
        jY = false;
        jG = false;
        ju = null;
        jn = false;
        jr = new Object();
        jM = 0L;
        jV = 0L;
        jw = null;
        jZ = false;
        jD = null;
        j2 = null;
        jA = false;
        jz = Boolean.valueOf(false);
        jv = Boolean.valueOf(false);
        jQ = Boolean.valueOf(true);
        jW = new _cls1();
        jy = 0L;
        js = null;
        jK = context;
        jN = locationclientoption;
        jw = new z(jK, this);
    }

    static a _mthbyte(LocationClient locationclient)
    {
        return locationclient.jp;
    }

    static void _mthbyte(LocationClient locationclient, Message message)
    {
        locationclient.l(message);
    }

    private void cA()
    {
        if (jL == null)
        {
            return;
        }
        Message message = Message.obtain(null, 22);
        try
        {
            message.replyTo = jJ;
            jL.send(message);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    private void cB()
    {
        Message message = Message.obtain(null, 28);
        try
        {
            message.replyTo = jJ;
            jL.send(message);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    static void _mthcase(LocationClient locationclient)
    {
        locationclient.cA();
    }

    static void _mthcase(LocationClient locationclient, Message message)
    {
        locationclient.m(message);
    }

    static Messenger _mthchar(LocationClient locationclient)
    {
        return locationclient.jL;
    }

    private void _mthchar(int i)
    {
label0:
        {
            if (jE || jN._fldgoto && j0.getLocType() == 61 || j0.getLocType() == 66 || j0.getLocType() == 67 || jA)
            {
                for (Iterator iterator = j5.iterator(); iterator.hasNext(); ((BDLocationListener)iterator.next()).onReceiveLocation(j0)) { }
                if (j0.getLocType() != 66 && j0.getLocType() != 67)
                {
                    break label0;
                }
            }
            return;
        }
        jE = false;
        jV = System.currentTimeMillis();
    }

    private Bundle cw()
    {
        if (jN == null)
        {
            return null;
        } else
        {
            Bundle bundle = new Bundle();
            bundle.putInt("num", jN._fldlong);
            bundle.putFloat("distance", jN.c);
            bundle.putBoolean("extraInfo", jN.e);
            return bundle;
        }
    }

    private Bundle cx()
    {
        if (jN == null)
        {
            return null;
        } else
        {
            Bundle bundle = new Bundle();
            bundle.putString("packName", j3);
            bundle.putString("prodName", jN._fldif);
            bundle.putString("coorType", jN._flddo);
            bundle.putString("addrType", jN._fldelse);
            bundle.putBoolean("openGPS", jN._fldfor);
            bundle.putBoolean("location_change_notify", jN._fldgoto);
            bundle.putInt("scanSpan", jN._fldint);
            bundle.putInt("timeOut", jN.d);
            bundle.putInt("priority", jN.h);
            bundle.putBoolean("map", jz.booleanValue());
            bundle.putBoolean("import", jv.booleanValue());
            bundle.putBoolean("needDirect", jN.g);
            return bundle;
        }
    }

    private void cy()
    {
        if (jT)
        {
            return;
        }
        c._mthchar();
        j3 = jK.getPackageName();
        j2 = (new StringBuilder()).append(j3).append("_bdls_v2.9").toString();
        getAccessKey();
        Intent intent = new Intent(jK, com/baidu/location/f);
        try
        {
            intent.putExtra("debug_dev", jI);
        }
        catch (Exception exception1) { }
        if (jN == null)
        {
            jN = new LocationClientOption();
        }
        if (jN.getLocationMode() == LocationClientOption.LocationMode.Device_Sensors)
        {
            jN.setIsNeedAddress(false);
        }
        intent.putExtra("cache_exception", jN.b);
        intent.putExtra("kill_process", jN._fldchar);
        try
        {
            jK.bindService(intent, jW, 1);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        jT = false;
    }

    private void cz()
    {
        if (!jT || jL == null)
        {
            return;
        }
        Message message = Message.obtain(null, 12);
        message.replyTo = jJ;
        try
        {
            jL.send(message);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
        }
        try
        {
            jK.unbindService(jW);
        }
        catch (Exception exception) { }
        synchronized (jr)
        {
            try
            {
                if (jG)
                {
                    jp.removeCallbacks(ju);
                    jG = false;
                }
            }
            catch (Exception exception2) { }
        }
        jw.be();
        jL = null;
        c._mthcase();
        jA = false;
        jT = false;
        return;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    static void _mthdo(LocationClient locationclient)
    {
        locationclient.cy();
    }

    static void _mthdo(LocationClient locationclient, Message message)
    {
        locationclient.s(message);
    }

    static void _mthdo(LocationClient locationclient, boolean flag)
    {
        locationclient._mthgoto(flag);
    }

    static LocationClientOption _mthelse(LocationClient locationclient)
    {
        return locationclient.jN;
    }

    private boolean _mthelse(int i)
    {
        if (jL == null || !jT)
        {
            return false;
        }
        try
        {
            Message message = Message.obtain(null, i);
            jL.send(message);
        }
        catch (Exception exception)
        {
            return false;
        }
        return true;
    }

    static Object _mthfor(LocationClient locationclient)
    {
        return locationclient.jr;
    }

    static void _mthfor(LocationClient locationclient, Message message)
    {
        locationclient.n(message);
    }

    static boolean _mthfor(LocationClient locationclient, boolean flag)
    {
        locationclient.jn = flag;
        return flag;
    }

    static ArrayList _mthgoto(LocationClient locationclient)
    {
        return locationclient.j5;
    }

    private void _mthgoto(boolean flag)
    {
        if (js != null)
        {
            js.onReportResult(flag);
        }
        js = null;
        jy = 0L;
    }

    static Messenger _mthif(LocationClient locationclient, Messenger messenger)
    {
        locationclient.jL = messenger;
        return messenger;
    }

    static Boolean _mthif(LocationClient locationclient)
    {
        return locationclient.jQ;
    }

    static Boolean _mthif(LocationClient locationclient, Boolean boolean1)
    {
        locationclient.jQ = boolean1;
        return boolean1;
    }

    private void _mthif(Message message, int i)
    {
        message = message.getData();
        message.setClassLoader(com/baidu/location/BDLocation.getClassLoader());
        j0 = (BDLocation)message.getParcelable("locStr");
        if (j0.getLocType() == 61)
        {
            jM = System.currentTimeMillis();
        }
        _mthchar(i);
    }

    static void _mthif(LocationClient locationclient, Message message)
    {
        locationclient.r(message);
    }

    static void _mthif(LocationClient locationclient, Message message, int i)
    {
        locationclient._mthif(message, i);
    }

    static boolean _mthif(LocationClient locationclient, boolean flag)
    {
        locationclient.jT = flag;
        return flag;
    }

    static void _mthint(LocationClient locationclient)
    {
        locationclient.cB();
    }

    static void _mthint(LocationClient locationclient, Message message)
    {
        locationclient.o(message);
    }

    static boolean _mthint(LocationClient locationclient, boolean flag)
    {
        locationclient.jG = flag;
        return flag;
    }

    private void l(Message message)
    {
        if (message == null || message.obj == null)
        {
            return;
        } else
        {
            message = (BDNotifyListener)message.obj;
            jw._mthdo(message);
            return;
        }
    }

    static Bundle _mthlong(LocationClient locationclient)
    {
        return locationclient.cx();
    }

    private void m(Message message)
    {
        if (message != null && message.obj != null)
        {
            message = (BDLocationListener)message.obj;
            if (j5 != null && j5.contains(message))
            {
                j5.remove(message);
                return;
            }
        }
    }

    private void n(Message message)
    {
_L2:
        return;
        if (message == null || message.obj == null || jN.equals(message = (LocationClientOption)message.obj)) goto _L2; else goto _L1
_L1:
        if (jN._fldint == ((LocationClientOption) (message))._fldint)
        {
            break MISSING_BLOCK_LABEL_137;
        }
        synchronized (jr)
        {
            if (jG)
            {
                jp.removeCallbacks(ju);
                jG = false;
            }
            if (((LocationClientOption) (message))._fldint >= 1000 && !jG)
            {
                if (ju == null)
                {
                    ju = new b(null);
                }
                jp.postDelayed(ju, ((LocationClientOption) (message))._fldint);
                jG = true;
            }
        }
_L4:
        jN = new LocationClientOption(message);
        if (jL == null) goto _L2; else goto _L3
_L3:
        try
        {
            message = Message.obtain(null, 15);
            message.replyTo = jJ;
            message.setData(cx());
            jL.send(message);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            message.printStackTrace();
        }
        return;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        try
        {
            throw exception1;
        }
        catch (Exception exception) { }
          goto _L4
    }

    static Messenger _mthnew(LocationClient locationclient)
    {
        return locationclient.jJ;
    }

    static void _mthnew(LocationClient locationclient, Message message)
    {
        locationclient.q(message);
    }

    private void o(Message message)
    {
        if (jL == null)
        {
            return;
        }
        if ((System.currentTimeMillis() - jM > 3000L || !jN._fldgoto) && (!jA || System.currentTimeMillis() - jV > 20000L))
        {
            Message message1 = Message.obtain(null, 22);
            try
            {
                message1.replyTo = jJ;
                message1.arg1 = message.arg1;
                jL.send(message1);
                jU = System.currentTimeMillis();
                jE = true;
            }
            // Misplaced declaration of an exception variable
            catch (Message message)
            {
                message.printStackTrace();
            }
        }
        synchronized (jr)
        {
            if (jN != null && jN._fldint >= 1000 && !jG)
            {
                if (ju == null)
                {
                    ju = new b(null);
                }
                jp.postDelayed(ju, jN._fldint);
                jG = true;
            }
        }
        return;
        exception;
        message;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void p(Message message)
    {
        message = message.getData();
        message.setClassLoader(com/baidu/location/BDLocation.getClassLoader());
        message = (BDLocation)message.getParcelable("locStr");
        if (jD == null || jN != null && jN.a() && message.getLocType() == 65)
        {
            return;
        } else
        {
            jD.onReceiveLocation(message);
            return;
        }
    }

    private void q(Message message)
    {
        if (message == null || message.obj == null)
        {
            return;
        } else
        {
            message = (BDNotifyListener)message.obj;
            jw._mthfor(message);
            return;
        }
    }

    private void r(Message message)
    {
        if (message == null || message.obj == null)
        {
            return;
        }
        message = (BDLocationListener)message.obj;
        if (j5 == null)
        {
            j5 = new ArrayList();
        }
        j5.add(message);
    }

    private void s(Message message)
    {
        if (message == null || message.obj == null)
        {
            return;
        } else
        {
            jD = (BDLocationListener)message.obj;
            return;
        }
    }

    static void _mthtry(LocationClient locationclient)
    {
        locationclient.cz();
    }

    static void _mthtry(LocationClient locationclient, Message message)
    {
        locationclient.p(message);
    }

    public void cancleError()
    {
        _mthelse(202);
    }

    public String getAccessKey()
    {
        jX = v.a(jK);
        if (TextUtils.isEmpty(jX))
        {
            throw new IllegalStateException("please setting key from Manifest.xml");
        } else
        {
            return String.format("KEY=%s;SHA1=%s", new Object[] {
                jX, v._mthif(jK)
            });
        }
    }

    public BDLocation getLastKnownLocation()
    {
        return j0;
    }

    public LocationClientOption getLocOption()
    {
        return jN;
    }

    public String getVersion()
    {
        return "4.2";
    }

    public boolean isStarted()
    {
        return jT;
    }

    public boolean notifyError()
    {
        return _mthelse(201);
    }

    public void registerLocationListener(BDLocationListener bdlocationlistener)
    {
        if (bdlocationlistener == null)
        {
            throw new IllegalStateException("please set a non-null listener");
        } else
        {
            Message message = jp.obtainMessage(5);
            message.obj = bdlocationlistener;
            message.sendToTarget();
            return;
        }
    }

    public void registerNotify(BDNotifyListener bdnotifylistener)
    {
        Message message = jp.obtainMessage(9);
        message.obj = bdnotifylistener;
        message.sendToTarget();
    }

    public void registerNotifyLocationListener(BDLocationListener bdlocationlistener)
    {
        Message message = jp.obtainMessage(8);
        message.obj = bdlocationlistener;
        message.sendToTarget();
    }

    public void removeNotifyEvent(BDNotifyListener bdnotifylistener)
    {
        Message message = jp.obtainMessage(10);
        message.obj = bdnotifylistener;
        message.sendToTarget();
    }

    public int reportErrorWithInfo(BDErrorReport bderrorreport)
    {
        if (jL == null || !jT)
        {
            return 1;
        }
        if (bderrorreport == null)
        {
            return 2;
        }
        if (System.currentTimeMillis() - jy < 50000L && js != null)
        {
            return 4;
        }
        Bundle bundle = bderrorreport.getErrorInfo();
        if (bundle == null)
        {
            return 3;
        }
        try
        {
            Message message = Message.obtain(null, 203);
            message.replyTo = jJ;
            message.setData(bundle);
            jL.send(message);
        }
        // Misplaced declaration of an exception variable
        catch (BDErrorReport bderrorreport)
        {
            return 1;
        }
        js = bderrorreport;
        jy = System.currentTimeMillis();
        return 0;
    }

    public int requestLocation()
    {
        if (jL == null || jJ == null)
        {
            return 1;
        }
        if (j5 == null || j5.size() < 1)
        {
            return 2;
        }
        if (System.currentTimeMillis() - jU < 1000L)
        {
            return 6;
        } else
        {
            Message message = jp.obtainMessage(4);
            message.arg1 = 1;
            message.sendToTarget();
            return 0;
        }
    }

    public void requestNotifyLocation()
    {
        jp.obtainMessage(11).sendToTarget();
    }

    public int requestOfflineLocation()
    {
        if (jL == null || jJ == null)
        {
            return 1;
        }
        if (j5 == null || j5.size() < 1)
        {
            return 2;
        } else
        {
            jp.obtainMessage(12).sendToTarget();
            return 0;
        }
    }

    public void setDebug(boolean flag)
    {
        jI = flag;
    }

    public void setForBaiduMap(boolean flag)
    {
        jz = Boolean.valueOf(flag);
    }

    public void setLocOption(LocationClientOption locationclientoption)
    {
        if (locationclientoption != null) goto _L2; else goto _L1
_L1:
        LocationClientOption locationclientoption1 = new LocationClientOption();
_L4:
        locationclientoption = jp.obtainMessage(3);
        locationclientoption.obj = locationclientoption1;
        locationclientoption.sendToTarget();
        return;
_L2:
        switch (locationclientoption.h)
        {
        default:
            locationclientoption1 = locationclientoption;
            break;

        case 1: // '\001'
            locationclientoption1 = locationclientoption;
            if (locationclientoption._fldint != 0)
            {
                locationclientoption1 = locationclientoption;
                if (locationclientoption._fldint < 1000)
                {
                    Log.w("baidu_location_service", String.format("scanSpan time %d less than 1 second, location services may not star", new Object[] {
                        Integer.valueOf(locationclientoption._fldint)
                    }));
                    locationclientoption1 = locationclientoption;
                }
            }
            break;

        case 3: // '\003'
            if (locationclientoption._fldint != 0 && locationclientoption._fldint < 1000)
            {
                Log.w("baidu_location_service", String.format("scanSpan time %d less than 1 second, location services may not star", new Object[] {
                    Integer.valueOf(locationclientoption._fldint)
                }));
                locationclientoption1 = locationclientoption;
            } else
            {
                locationclientoption1 = locationclientoption;
                if (locationclientoption._fldint == 0)
                {
                    locationclientoption._fldint = 1000;
                    locationclientoption1 = locationclientoption;
                }
            }
            break;

        case 2: // '\002'
            locationclientoption1 = locationclientoption;
            if (locationclientoption._fldint > 1000)
            {
                locationclientoption1 = locationclientoption;
                if (locationclientoption._fldint < 3000)
                {
                    locationclientoption._fldint = 3000;
                    Log.w("baidu_location_service", String.format("scanSpan time %d less than 3 second, location services may not star", new Object[] {
                        Integer.valueOf(locationclientoption._fldint)
                    }));
                    locationclientoption1 = locationclientoption;
                }
            }
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void start()
    {
        jp.obtainMessage(1).sendToTarget();
    }

    public void stop()
    {
        cz();
    }

    public void unRegisterLocationListener(BDLocationListener bdlocationlistener)
    {
        if (bdlocationlistener == null)
        {
            throw new IllegalStateException("please set a non-null listener");
        } else
        {
            Message message = jp.obtainMessage(6);
            message.obj = bdlocationlistener;
            message.sendToTarget();
            return;
        }
    }

    public boolean updateLocation(Location location)
    {
        if (jL == null || jJ == null || location == null)
        {
            return false;
        }
        try
        {
            Message message = Message.obtain(null, 57);
            message.obj = location;
            jL.send(message);
        }
        // Misplaced declaration of an exception variable
        catch (Location location)
        {
            location.printStackTrace();
        }
        return true;
    }

    private class _cls1
        implements ServiceConnection
    {

        final LocationClient a;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            LocationClient._mthif(a, new Messenger(ibinder));
            if (LocationClient._mthchar(a) != null)
            {
                LocationClient._mthif(a, true);
                Log.d("baidu_location_client", "baidu location connected ...");
                try
                {
                    componentname = Message.obtain(null, 11);
                    componentname.replyTo = LocationClient._mthnew(a);
                    componentname.setData(LocationClient._mthlong(a));
                    LocationClient._mthchar(a).send(componentname);
                    LocationClient._mthif(a, true);
                    if (LocationClient._mthelse(a) != null)
                    {
                        if (!LocationClient._mthif(a).booleanValue());
                        LocationClient._mthbyte(a).obtainMessage(4).sendToTarget();
                        return;
                    }
                }
                // Misplaced declaration of an exception variable
                catch (ComponentName componentname)
                {
                    return;
                }
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            LocationClient._mthif(a, null);
            LocationClient._mthif(a, false);
        }

        _cls1()
        {
            a = LocationClient.this;
            super();
        }
    }

}
