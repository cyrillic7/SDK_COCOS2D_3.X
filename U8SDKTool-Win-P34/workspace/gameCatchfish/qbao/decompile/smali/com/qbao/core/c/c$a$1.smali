.class Lcom/qbao/core/c/c$a$1;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/core/c/c$a;-><init>(Lcom/qbao/core/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic X:Lcom/qbao/core/c/c;


# direct methods
.method constructor <init>(Lcom/qbao/core/c/c;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/core/c/c$a$1;->X:Lcom/qbao/core/c/c;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 6

    .prologue
    .line 105
    const-string v0, "HTTPClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t submit runnable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method
