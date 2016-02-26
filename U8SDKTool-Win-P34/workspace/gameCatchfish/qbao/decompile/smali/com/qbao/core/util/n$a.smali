.class public Lcom/qbao/core/util/n$a;
.super Ljava/lang/Object;
.source "SyncedStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qbao/core/util/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic cH:Lcom/qbao/core/util/n;


# direct methods
.method public constructor <init>(Lcom/qbao/core/util/n;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/qbao/core/util/n$a;->cH:Lcom/qbao/core/util/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commit()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qbao/core/util/n$a;->cH:Lcom/qbao/core/util/n;

    invoke-virtual {v0}, Lcom/qbao/core/util/n;->save()V

    .line 57
    iget-object v0, p0, Lcom/qbao/core/util/n$a;->cH:Lcom/qbao/core/util/n;

    invoke-static {v0}, Lcom/qbao/core/util/n;->b(Lcom/qbao/core/util/n;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 58
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 38
    const-string v0, "DistributedPrefs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "putString.k|v="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/qbao/core/util/n$a;->cH:Lcom/qbao/core/util/n;

    invoke-static {v0}, Lcom/qbao/core/util/n;->a(Lcom/qbao/core/util/n;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 48
    const-string v0, "DistributedPrefs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove.k="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/qbao/core/util/n$a;->cH:Lcom/qbao/core/util/n;

    invoke-static {v0}, Lcom/qbao/core/util/n;->a(Lcom/qbao/core/util/n;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method
