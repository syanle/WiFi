// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package com.google.protobuf:
//            MessageLite, CodedOutputStream, ByteString, UninitializedMessageException, 
//            ExtensionRegistryLite, CodedInputStream, InvalidProtocolBufferException

public abstract class AbstractMessageLite
    implements MessageLite
{
    public static abstract class Builder
        implements MessageLite.Builder
    {

        protected static void addAll(Iterable iterable, Collection collection)
        {
            for (Iterator iterator = iterable.iterator(); iterator.hasNext();)
            {
                if (iterator.next() == null)
                {
                    throw new NullPointerException();
                }
            }

            if (iterable instanceof Collection)
            {
                collection.addAll((Collection)iterable);
            } else
            {
                iterable = iterable.iterator();
                while (iterable.hasNext()) 
                {
                    collection.add(iterable.next());
                }
            }
        }

        protected static UninitializedMessageException newUninitializedMessageException(MessageLite messagelite)
        {
            return new UninitializedMessageException(messagelite);
        }

        public abstract Builder clone();

        public volatile MessageLite.Builder clone()
        {
            return clone();
        }

        public volatile Object clone()
            throws CloneNotSupportedException
        {
            return clone();
        }

        public boolean mergeDelimitedFrom(InputStream inputstream)
            throws IOException
        {
            return mergeDelimitedFrom(inputstream, ExtensionRegistryLite.getEmptyRegistry());
        }

        public boolean mergeDelimitedFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            int i = inputstream.read();
            if (i == -1)
            {
                return false;
            } else
            {
                mergeFrom(new a(inputstream, CodedInputStream.readRawVarint32(i, inputstream)), extensionregistrylite);
                return true;
            }
        }

        public Builder mergeFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            try
            {
                bytestring = bytestring.newCodedInput();
                mergeFrom(((CodedInputStream) (bytestring)));
                bytestring.checkLastTagWas(0);
            }
            // Misplaced declaration of an exception variable
            catch (ByteString bytestring)
            {
                throw bytestring;
            }
            // Misplaced declaration of an exception variable
            catch (ByteString bytestring)
            {
                throw new RuntimeException("Reading from a ByteString threw an IOException (should never happen).", bytestring);
            }
            return this;
        }

        public Builder mergeFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            try
            {
                bytestring = bytestring.newCodedInput();
                mergeFrom(((CodedInputStream) (bytestring)), extensionregistrylite);
                bytestring.checkLastTagWas(0);
            }
            // Misplaced declaration of an exception variable
            catch (ByteString bytestring)
            {
                throw bytestring;
            }
            // Misplaced declaration of an exception variable
            catch (ByteString bytestring)
            {
                throw new RuntimeException("Reading from a ByteString threw an IOException (should never happen).", bytestring);
            }
            return this;
        }

        public Builder mergeFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return mergeFrom(codedinputstream, ExtensionRegistryLite.getEmptyRegistry());
        }

        public abstract Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException;

        public Builder mergeFrom(InputStream inputstream)
            throws IOException
        {
            inputstream = CodedInputStream.newInstance(inputstream);
            mergeFrom(((CodedInputStream) (inputstream)));
            inputstream.checkLastTagWas(0);
            return this;
        }

        public Builder mergeFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            inputstream = CodedInputStream.newInstance(inputstream);
            mergeFrom(((CodedInputStream) (inputstream)), extensionregistrylite);
            inputstream.checkLastTagWas(0);
            return this;
        }

        public Builder mergeFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return mergeFrom(abyte0, 0, abyte0.length);
        }

        public Builder mergeFrom(byte abyte0[], int i, int j)
            throws InvalidProtocolBufferException
        {
            try
            {
                abyte0 = CodedInputStream.newInstance(abyte0, i, j);
                mergeFrom(((CodedInputStream) (abyte0)));
                abyte0.checkLastTagWas(0);
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw abyte0;
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", abyte0);
            }
            return this;
        }

        public Builder mergeFrom(byte abyte0[], int i, int j, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            try
            {
                abyte0 = CodedInputStream.newInstance(abyte0, i, j);
                mergeFrom(((CodedInputStream) (abyte0)), extensionregistrylite);
                abyte0.checkLastTagWas(0);
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw abyte0;
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", abyte0);
            }
            return this;
        }

        public Builder mergeFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return mergeFrom(abyte0, 0, abyte0.length, extensionregistrylite);
        }

        public volatile MessageLite.Builder mergeFrom(ByteString bytestring)
            throws InvalidProtocolBufferException
        {
            return mergeFrom(bytestring);
        }

        public volatile MessageLite.Builder mergeFrom(ByteString bytestring, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return mergeFrom(bytestring, extensionregistrylite);
        }

        public volatile MessageLite.Builder mergeFrom(CodedInputStream codedinputstream)
            throws IOException
        {
            return mergeFrom(codedinputstream);
        }

        public volatile MessageLite.Builder mergeFrom(CodedInputStream codedinputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(codedinputstream, extensionregistrylite);
        }

        public volatile MessageLite.Builder mergeFrom(InputStream inputstream)
            throws IOException
        {
            return mergeFrom(inputstream);
        }

        public volatile MessageLite.Builder mergeFrom(InputStream inputstream, ExtensionRegistryLite extensionregistrylite)
            throws IOException
        {
            return mergeFrom(inputstream, extensionregistrylite);
        }

        public volatile MessageLite.Builder mergeFrom(byte abyte0[])
            throws InvalidProtocolBufferException
        {
            return mergeFrom(abyte0);
        }

        public volatile MessageLite.Builder mergeFrom(byte abyte0[], int i, int j)
            throws InvalidProtocolBufferException
        {
            return mergeFrom(abyte0, i, j);
        }

        public volatile MessageLite.Builder mergeFrom(byte abyte0[], int i, int j, ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return mergeFrom(abyte0, i, j, extensionregistrylite);
        }

        public volatile MessageLite.Builder mergeFrom(byte abyte0[], ExtensionRegistryLite extensionregistrylite)
            throws InvalidProtocolBufferException
        {
            return mergeFrom(abyte0, extensionregistrylite);
        }

        public Builder()
        {
        }
    }

    static final class Builder.a extends FilterInputStream
    {

        private int a;

        public int available()
            throws IOException
        {
            return Math.min(super.available(), a);
        }

        public int read()
            throws IOException
        {
            int i;
            if (a <= 0)
            {
                i = -1;
            } else
            {
                int j = super.read();
                i = j;
                if (j >= 0)
                {
                    a = a - 1;
                    return j;
                }
            }
            return i;
        }

        public int read(byte abyte0[], int i, int j)
            throws IOException
        {
            if (a <= 0)
            {
                i = -1;
            } else
            {
                j = super.read(abyte0, i, Math.min(j, a));
                i = j;
                if (j >= 0)
                {
                    a = a - j;
                    return j;
                }
            }
            return i;
        }

        public long skip(long l)
            throws IOException
        {
            l = super.skip(Math.min(l, a));
            if (l >= 0L)
            {
                a = (int)((long)a - l);
            }
            return l;
        }

        Builder.a(InputStream inputstream, int i)
        {
            super(inputstream);
            a = i;
        }
    }


    public AbstractMessageLite()
    {
    }

    public byte[] toByteArray()
    {
        byte abyte0[];
        try
        {
            abyte0 = new byte[getSerializedSize()];
            CodedOutputStream codedoutputstream = CodedOutputStream.newInstance(abyte0);
            writeTo(codedoutputstream);
            codedoutputstream.checkNoSpaceLeft();
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", ioexception);
        }
        return abyte0;
    }

    public ByteString toByteString()
    {
        Object obj;
        try
        {
            obj = ByteString.newCodedBuilder(getSerializedSize());
            writeTo(((ByteString.a) (obj)).b());
            obj = ((ByteString.a) (obj)).a();
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException("Serializing to a ByteString threw an IOException (should never happen).", ioexception);
        }
        return ((ByteString) (obj));
    }

    public void writeDelimitedTo(OutputStream outputstream)
        throws IOException
    {
        int i = getSerializedSize();
        outputstream = CodedOutputStream.newInstance(outputstream, CodedOutputStream.computePreferredBufferSize(CodedOutputStream.computeRawVarint32Size(i) + i));
        outputstream.writeRawVarint32(i);
        writeTo(outputstream);
        outputstream.flush();
    }

    public void writeTo(OutputStream outputstream)
        throws IOException
    {
        outputstream = CodedOutputStream.newInstance(outputstream, CodedOutputStream.computePreferredBufferSize(getSerializedSize()));
        writeTo(((CodedOutputStream) (outputstream)));
        outputstream.flush();
    }
}
