.class final Lcom/tencent/beacon/event/i$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/event/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/beacon/event/i;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/event/i;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tencent/beacon/event/i$1;->a:Lcom/tencent/beacon/event/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/event/i$1;->a:Lcom/tencent/beacon/event/i;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/i;->a()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 40
    :goto_5
    return-void

    .line 37
    :catch_6
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method
