.class public Lcom/alipay/sdk/protocol/FrameFactoryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alipay/sdk/protocol/FrameData;)Lcom/alipay/sdk/protocol/FrameData;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;,
            Lcom/alipay/sdk/exception/FailOperatingException;,
            Lcom/alipay/sdk/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 20
    if-nez p0, :cond_c

    .line 21
    new-instance v0, Lcom/alipay/sdk/exception/AppErrorException;

    const-class v1, Lcom/alipay/sdk/protocol/FrameFactoryManager;

    const-string v2, "frame data is null"

    invoke-direct {v0, v1, v2}, Lcom/alipay/sdk/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_c
    new-instance v1, Lcom/alipay/sdk/protocol/MiniFrameFactory;

    invoke-direct {v1}, Lcom/alipay/sdk/protocol/MiniFrameFactory;-><init>()V

    .line 25
    invoke-static {p0}, Lcom/alipay/sdk/protocol/MiniFrameFactory;->a(Lcom/alipay/sdk/protocol/FrameData;)Lcom/alipay/sdk/protocol/MiniWindowFrame;

    move-result-object v0

    .line 26
    if-nez v0, :cond_1b

    .line 29
    :goto_17
    invoke-virtual {v1, p0}, Lcom/alipay/sdk/protocol/MiniFrameFactory;->b(Lcom/alipay/sdk/protocol/FrameData;)V

    .line 31
    return-object p0

    :cond_1b
    move-object p0, v0

    goto :goto_17
.end method
