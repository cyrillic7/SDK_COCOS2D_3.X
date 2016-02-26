.class final Lcom/tencent/msdk/stat/MsdkStat$1;
.super Lcom/tencent/msdk/Singleton;
.source "MsdkStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/stat/MsdkStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/msdk/Singleton",
        "<",
        "Lcom/tencent/msdk/stat/MsdkStat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/msdk/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/tencent/msdk/stat/MsdkStat;
    .registers 3

    .prologue
    .line 28
    new-instance v0, Lcom/tencent/msdk/stat/MsdkStat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/msdk/stat/MsdkStat;-><init>(Lcom/tencent/msdk/stat/MsdkStat$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/tencent/msdk/stat/MsdkStat$1;->create()Lcom/tencent/msdk/stat/MsdkStat;

    move-result-object v0

    return-object v0
.end method
