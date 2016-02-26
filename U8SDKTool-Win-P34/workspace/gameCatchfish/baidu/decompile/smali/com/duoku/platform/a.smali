.class public final Lcom/duoku/platform/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicLong;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/duoku/platform/IDKSDKCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v2, 0x1d7b100000000L

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/duoku/platform/a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/a;->b:Ljava/util/Map;

    .line 12
    return-void
.end method

.method public static a(Lcom/duoku/platform/IDKSDKCallBack;)J
    .registers 5

    .prologue
    .line 15
    if-nez p0, :cond_8

    .line 16
    const-wide v0, -0x66a4049600000000L

    .line 20
    :goto_7
    return-wide v0

    .line 18
    :cond_8
    sget-object v0, Lcom/duoku/platform/a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 19
    sget-object v2, Lcom/duoku/platform/a;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method
