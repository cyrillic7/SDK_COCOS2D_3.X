.class public Lcom/qbao/core/util/n$b;
.super Ljava/lang/Object;
.source "SyncedStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qbao/core/util/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic cH:Lcom/qbao/core/util/n;


# direct methods
.method public constructor <init>(Lcom/qbao/core/util/n;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/qbao/core/util/n$b;->cH:Lcom/qbao/core/util/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/qbao/core/util/n$b;->cH:Lcom/qbao/core/util/n;

    invoke-static {v0}, Lcom/qbao/core/util/n;->b(Lcom/qbao/core/util/n;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 97
    return-void
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 87
    iget-object v0, p0, Lcom/qbao/core/util/n$b;->cH:Lcom/qbao/core/util/n;

    invoke-static {v0}, Lcom/qbao/core/util/n;->a(Lcom/qbao/core/util/n;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    const-string v1, "DistributedPrefs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "k|v="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-eqz v0, :cond_2d

    :goto_2c
    return-object v0

    :cond_2d
    move-object v0, p2

    goto :goto_2c
.end method
