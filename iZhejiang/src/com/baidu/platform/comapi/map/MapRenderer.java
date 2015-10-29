// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.map;

import java.util.Iterator;
import java.util.List;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

// Referenced classes of package com.baidu.platform.comapi.map:
//            f, h, z

public class MapRenderer
    implements android.opengl.GLSurfaceView.Renderer
{
    public static interface a
    {

        public abstract void t();
    }


    private static final String d = com/baidu/platform/comapi/map/MapRenderer.getSimpleName();
    public int a;
    public int b;
    public int c;
    private int e;
    private a f;
    private final f g;

    public MapRenderer(f f1, a a1)
    {
        f = a1;
        g = f1;
    }

    private void a(GL10 gl10)
    {
        gl10.glClear(16640);
        gl10.glClearColor(0.85F, 0.8F, 0.8F, 0.0F);
    }

    private boolean a()
    {
        return e != 0;
    }

    private static native void nativeInit(int i);

    private static native int nativeRender(int i);

    private static native void nativeResize(int i, int j, int k);

    public void a(int i)
    {
        e = i;
    }

    public void onDrawFrame(GL10 gl10)
    {
        if (!a())
        {
            a(gl10);
        } else
        {
            if (c <= 1)
            {
                nativeResize(e, a, b);
                c = c + 1;
            }
            f.t();
            int i = nativeRender(e);
            for (Iterator iterator = g.c.iterator(); iterator.hasNext(); gl10.glColor4f(0.96F, 0.95F, 0.94F, 1.0F))
            {
                h h1 = (h)iterator.next();
                z z1 = g.p();
                gl10.glPushMatrix();
                gl10.glRotatef(z1.c, 1.0F, 0.0F, 0.0F);
                gl10.glRotatef(z1.b, 0.0F, 0.0F, 1.0F);
                h1.a(gl10, z1);
                gl10.glPopMatrix();
            }

            gl10 = g;
            if (i == 1)
            {
                gl10.requestRender();
                return;
            }
            if (gl10.getRenderMode() != 0)
            {
                gl10.setRenderMode(0);
                return;
            }
        }
    }

    public void onSurfaceChanged(GL10 gl10, int i, int j)
    {
        if (e != 0)
        {
            nativeResize(e, i, j);
        }
    }

    public void onSurfaceCreated(GL10 gl10, EGLConfig eglconfig)
    {
        nativeInit(e);
        if (!a())
        {
            return;
        } else
        {
            f.t();
            return;
        }
    }

}
