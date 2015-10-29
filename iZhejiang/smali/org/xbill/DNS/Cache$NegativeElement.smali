.class Lorg/xbill/DNS/Cache$NegativeElement;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lorg/xbill/DNS/Cache$Element;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NegativeElement"
.end annotation


# instance fields
.field credibility:I

.field expire:I

.field name:Lorg/xbill/DNS/Name;

.field type:I


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;IJ)V
    .locals 3
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "soa"    # Lorg/xbill/DNS/SOARecord;
    .param p4, "cred"    # I
    .param p5, "maxttl"    # J

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/xbill/DNS/Cache$NegativeElement;->name:Lorg/xbill/DNS/Name;

    .line 91
    iput p2, p0, Lorg/xbill/DNS/Cache$NegativeElement;->type:I

    .line 92
    const-wide/16 v0, 0x0

    .line 93
    .local v0, "cttl":J
    if-eqz p3, :cond_0

    .line 94
    invoke-virtual {p3}, Lorg/xbill/DNS/SOARecord;->getMinimum()J

    move-result-wide v0

    .line 95
    :cond_0
    iput p4, p0, Lorg/xbill/DNS/Cache$NegativeElement;->credibility:I

    .line 96
    # invokes: Lorg/xbill/DNS/Cache;->limitExpire(JJ)I
    invoke-static {v0, v1, p5, p6}, Lorg/xbill/DNS/Cache;->access$0(JJ)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/Cache$NegativeElement;->expire:I

    .line 97
    return-void
.end method


# virtual methods
.method public final compareCredibility(I)I
    .locals 1
    .param p1, "cred"    # I

    .prologue
    .line 112
    iget v0, p0, Lorg/xbill/DNS/Cache$NegativeElement;->credibility:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final expired()Z
    .locals 5

    .prologue
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 107
    .local v0, "now":I
    iget v1, p0, Lorg/xbill/DNS/Cache$NegativeElement;->expire:I

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/xbill/DNS/Cache$NegativeElement;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/Cache$NegativeElement;->type:I

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NXDOMAIN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/xbill/DNS/Cache$NegativeElement;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    :goto_0
    const-string v1, " cl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget v1, p0, Lorg/xbill/DNS/Cache$NegativeElement;->credibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 121
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NXRRSET "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/xbill/DNS/Cache$NegativeElement;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/xbill/DNS/Cache$NegativeElement;->type:I

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
