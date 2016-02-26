.class final Lcom/tencent/beacon/event/p$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/event/p;->a(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/event/p;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 312
    iput-object p2, p0, Lcom/tencent/beacon/event/p$1;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 316
    iget-object v0, p0, Lcom/tencent/beacon/event/p$1;->a:[Ljava/lang/String;

    if-eqz v0, :cond_90

    .line 317
    const-string v0, " start to ip test:"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    iget-object v10, p0, Lcom/tencent/beacon/event/p$1;->a:[Ljava/lang/String;

    array-length v11, v10

    move v9, v8

    :goto_13
    if-ge v9, v11, :cond_90

    aget-object v1, v10, v9

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " ip:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    const-wide/16 v2, -0x1

    .line 322
    :try_start_2d
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_39

    array-length v6, v0

    const/4 v12, 0x2

    if-eq v6, v12, :cond_7a

    .line 324
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, " ip wrong format ,not ip:port "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_4e} :catch_89

    .line 333
    :goto_4e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, " elapse:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 336
    const-string v0, "A29"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v0, "rqd_ipSpeed"

    cmp-long v1, v2, v4

    if-lez v1, :cond_8e

    move v1, v7

    :goto_73
    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/p;->a(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    .line 318
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_13

    .line 327
    :cond_7a
    const/4 v6, 0x0

    :try_start_7b
    aget-object v6, v0, v6

    const/4 v12, 0x1

    aget-object v0, v0, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v6, v0}, Lcom/tencent/beacon/b/a;->a(Ljava/lang/String;I)J
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_87} :catch_89

    move-result-wide v2

    goto :goto_4e

    .line 330
    :catch_89
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4e

    :cond_8e
    move v1, v8

    .line 337
    goto :goto_73

    .line 343
    :cond_90
    return-void
.end method
