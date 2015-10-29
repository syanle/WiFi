// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import java.util.List;

// Referenced classes of package com.baidu.location:
//            ax, n, f, an, 
//            aq, au, BDGeofence

public class GeofenceClient
    implements ax, n
{
    public static interface OnAddBDGeofencesResultListener
    {

        public abstract void onAddBDGeofencesResult(int i, String s);
    }

    public static interface OnGeofenceTriggerListener
    {

        public abstract void onGeofenceExit(String s);

        public abstract void onGeofenceTrigger(String s);
    }

    public static interface OnRemoveBDGeofencesResultListener
    {

        public abstract void onRemoveBDGeofencesByRequestIdsResult(int i, String as[]);
    }

    private class a extends Handler
    {

        final GeofenceClient a;

        public void handleMessage(Message message)
        {
            Bundle bundle = message.getData();
            message.what;
            JVM INSTR lookupswitch 3: default 44
        //                       1: 65
        //                       208: 45
        //                       209: 73;
               goto _L1 _L2 _L3 _L4
_L1:
            return;
_L3:
            if (bundle != null)
            {
                message = bundle.getString("geofence_id");
                GeofenceClient._mthdo(a, message);
                return;
            }
            continue; /* Loop/switch isn't completed */
_L2:
            GeofenceClient._mthdo(a);
            return;
_L4:
            if (bundle != null)
            {
                message = bundle.getString("geofence_id");
                GeofenceClient._mthif(a, message);
                return;
            }
            if (true) goto _L1; else goto _L5
_L5:
        }

        private a()
        {
            a = GeofenceClient.this;
            super();
        }

        a(_cls1 _pcls1)
        {
            this();
        }
    }


    public static final String BUNDLE_FOR_GEOFENCE_ID = "geofence_id";
    private static final int bj = 1;
    private static long bn = 0x1b7740L;
    private Context bf;
    private OnGeofenceTriggerListener bg;
    private ServiceConnection bh;
    private Messenger bi;
    private Messenger bk;
    private boolean bl;
    private a bm;

    public GeofenceClient(Context context)
    {
        bl = false;
        bk = null;
        bm = new a(null);
        bi = new Messenger(bm);
        bh = new _cls1();
        bf = context;
    }

    protected static long d()
    {
        return bn;
    }

    static void _mthdo(GeofenceClient geofenceclient)
    {
        geofenceclient._mthvoid();
    }

    static void _mthdo(GeofenceClient geofenceclient, String s)
    {
        geofenceclient._mthfor(s);
    }

    private void _mthfor(String s)
    {
        if (bg != null)
        {
            bg.onGeofenceTrigger(s);
        }
    }

    static Messenger _mthif(GeofenceClient geofenceclient)
    {
        return geofenceclient.bk;
    }

    static Messenger _mthif(GeofenceClient geofenceclient, Messenger messenger)
    {
        geofenceclient.bk = messenger;
        return messenger;
    }

    static void _mthif(GeofenceClient geofenceclient, String s)
    {
        geofenceclient._mthint(s);
    }

    static boolean _mthif(GeofenceClient geofenceclient, boolean flag)
    {
        geofenceclient.bl = flag;
        return flag;
    }

    private void _mthint(String s)
    {
        if (bg != null)
        {
            bg.onGeofenceExit(s);
        }
    }

    private void _mthlong()
    {
        try
        {
            Message message = Message.obtain(null, 207);
            message.replyTo = bi;
            bk.send(message);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void _mthvoid()
    {
        if (bl)
        {
            return;
        }
        Intent intent = new Intent(bf, com/baidu/location/f);
        intent.putExtra("interval", bn);
        try
        {
            bf.bindService(intent, bh, 1);
            return;
        }
        catch (Exception exception)
        {
            bl = false;
        }
    }

    public void addBDGeofence(BDGeofence bdgeofence, OnAddBDGeofencesResultListener onaddbdgeofencesresultlistener)
        throws NullPointerException, IllegalArgumentException, IllegalStateException
    {
        an.a(bdgeofence, "geofence is null");
        if (bdgeofence != null)
        {
            an._mthif(bdgeofence instanceof aq, "BDGeofence must be created using BDGeofence.Builder");
        }
        au._mthfor(bf)._mthif((aq)bdgeofence, onaddbdgeofencesresultlistener);
    }

    public boolean isStarted()
    {
        return bl;
    }

    public void registerGeofenceTriggerListener(OnGeofenceTriggerListener ongeofencetriggerlistener)
    {
        if (bg == null)
        {
            bg = ongeofencetriggerlistener;
        }
    }

    public void removeBDGeofences(List list, OnRemoveBDGeofencesResultListener onremovebdgeofencesresultlistener)
        throws NullPointerException, IllegalArgumentException
    {
        au._mthfor(bf)._mthif(list, onremovebdgeofencesresultlistener);
    }

    public void setInterval(long l)
    {
        if (l > bn)
        {
            bn = l;
        }
    }

    public void start()
        throws NullPointerException
    {
        an.a(bg, "OnGeofenceTriggerListener not register!");
        bm.obtainMessage(1).sendToTarget();
    }

    public void startGeofenceScann()
    {
        if (!bl)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        Message message = Message.obtain(null, 206);
        message.replyTo = bi;
        bk.send(message);
        return;
        Exception exception;
        exception;
    }

    public void stop()
    {
        _mthlong();
    }


    private class _cls1
        implements ServiceConnection
    {

        final GeofenceClient a;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            GeofenceClient._mthif(a, new Messenger(ibinder));
            if (GeofenceClient._mthif(a) == null)
            {
                return;
            } else
            {
                GeofenceClient._mthif(a, true);
                a.startGeofenceScann();
                return;
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            GeofenceClient._mthif(a, null);
            GeofenceClient._mthif(a, false);
        }

        _cls1()
        {
            a = GeofenceClient.this;
            super();
        }
    }

}
