.class public abstract Lcom/qbao/core/c/d;
.super Lcom/qbao/core/c/a;
.source "DownloadRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qbao/core/c/c;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/qbao/core/c/a;-><init>(Landroid/content/Context;Lcom/qbao/core/c/c;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qbao/core/c/c;Lcom/qbao/core/c/f;)V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/qbao/core/c/a;-><init>(Landroid/content/Context;Lcom/qbao/core/c/c;Lcom/qbao/core/c/f;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServerException="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public a(I[B[Lorg/apache/http/Header;)V
    .registers 5

    .prologue
    .line 55
    const/16 v0, 0xc8

    if-gt v0, p1, :cond_e

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_e

    if-eqz p2, :cond_e

    .line 56
    invoke-virtual {p0, p2, p3}, Lcom/qbao/core/c/d;->a([B[Lorg/apache/http/Header;)V

    .line 65
    :goto_d
    return-void

    .line 60
    :cond_e
    const-string v0, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    .line 61
    if-eqz p2, :cond_17

    .line 62
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 64
    :cond_17
    invoke-virtual {p0, p1, v0}, Lcom/qbao/core/c/d;->a(ILjava/lang/String;)V

    goto :goto_d
.end method

.method protected abstract a([B[Lorg/apache/http/Header;)V
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    const-string v0, "GET"

    return-object v0
.end method

.method public timeout()J
    .registers 4

    .prologue
    const-wide/32 v0, 0x1d4c0

    .line 34
    iget-object v2, p0, Lcom/qbao/core/c/d;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/qbao/core/b/g;->i(Landroid/content/Context;)I

    move-result v2

    .line 35
    packed-switch v2, :pswitch_data_16

    .line 45
    :goto_c
    :pswitch_c
    return-wide v0

    .line 37
    :pswitch_d
    const-wide/32 v0, 0x493e0

    goto :goto_c

    .line 41
    :pswitch_11
    const-wide/32 v0, 0xea60

    goto :goto_c

    .line 35
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_c
        :pswitch_11
    .end packed-switch
.end method
