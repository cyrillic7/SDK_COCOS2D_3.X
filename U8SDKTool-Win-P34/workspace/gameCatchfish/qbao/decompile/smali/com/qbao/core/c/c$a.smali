.class final Lcom/qbao/core/c/c$a;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qbao/core/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic S:Lcom/qbao/core/c/c;


# direct methods
.method constructor <init>(Lcom/qbao/core/c/c;)V
    .registers 11

    .prologue
    .line 102
    iput-object p1, p0, Lcom/qbao/core/c/c$a;->S:Lcom/qbao/core/c/c;

    .line 103
    const/4 v2, 0x2

    const/4 v3, 0x4

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/qbao/core/c/c$a$1;

    invoke-direct {v8, p1}, Lcom/qbao/core/c/c$a$1;-><init>(Lcom/qbao/core/c/c;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 108
    return-void
.end method
