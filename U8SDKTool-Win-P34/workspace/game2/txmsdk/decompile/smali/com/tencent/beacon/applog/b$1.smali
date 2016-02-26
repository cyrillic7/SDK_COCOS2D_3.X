.class final Lcom/tencent/beacon/applog/b$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/applog/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/beacon/applog/b;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/applog/b;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tencent/beacon/applog/b$1;->a:Lcom/tencent/beacon/applog/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 44
    :try_start_2
    iget-object v0, p0, Lcom/tencent/beacon/applog/b$1;->a:Lcom/tencent/beacon/applog/b;

    invoke-static {}, Lcom/tencent/beacon/applog/b;->c()I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_94

    move-result v0

    if-lez v0, :cond_84

    .line 46
    :try_start_a
    iget-object v0, p0, Lcom/tencent/beacon/applog/b$1;->a:Lcom/tencent/beacon/applog/b;

    iget-object v0, v0, Lcom/tencent/beacon/applog/b;->b:Lcom/tencent/beacon/upload/g;

    if-eqz v0, :cond_84

    .line 47
    sget-object v0, Lcom/tencent/beacon/applog/b;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v0, v1, v3, v4}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1d
    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/b/a;

    .line 51
    invoke-virtual {v0}, Lcom/tencent/beacon/b/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/beacon/applog/a;->a(Ljava/lang/String;)[B

    move-result-object v7

    if-eqz v7, :cond_85

    invoke-static {}, Lcom/tencent/beacon/a/b/e;->a()Lcom/tencent/beacon/a/b/e;

    move-result-object v8

    const/4 v3, 0x2

    const-string v1, "*^@K#K@!"

    if-eqz v8, :cond_99

    invoke-virtual {v8}, Lcom/tencent/beacon/a/b/e;->i()B

    move-result v4

    invoke-virtual {v8}, Lcom/tencent/beacon/a/b/e;->j()B

    move-result v3

    invoke-virtual {v8}, Lcom/tencent/beacon/a/b/e;->k()Ljava/lang/String;

    move-result-object v1

    :goto_48
    invoke-static {v7, v3, v4, v1}, Lcom/tencent/beacon/b/a;->b([BIILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_92

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    :goto_54
    if-eqz v1, :cond_1d

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 54
    invoke-virtual {v0, v1}, Lcom/tencent/beacon/b/a;->e(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/tencent/beacon/applog/b$1;->a:Lcom/tencent/beacon/applog/b;

    iget-object v1, v1, Lcom/tencent/beacon/applog/b;->b:Lcom/tencent/beacon/upload/g;

    new-instance v3, Lcom/tencent/beacon/applog/c;

    sget-object v4, Lcom/tencent/beacon/applog/b;->a:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v0, v7}, Lcom/tencent/beacon/applog/c;-><init>(Landroid/content/Context;Lcom/tencent/beacon/b/a;Z)V

    invoke-interface {v1, v3}, Lcom/tencent/beacon/upload/g;->a(Lcom/tencent/beacon/upload/a;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_70} :catch_71

    goto :goto_1d

    .line 60
    :catch_71
    move-exception v0

    .line 61
    :try_start_72
    const-string v1, " up common error }%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_84} :catch_94

    .line 68
    :cond_84
    :goto_84
    return-void

    .line 51
    :cond_85
    :try_start_85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/tencent/beacon/applog/b;->a:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/tencent/beacon/applog/a;->b(Landroid/content/Context;Ljava/util/List;)I
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_92} :catch_71

    :cond_92
    move-object v1, v2

    goto :goto_54

    .line 65
    :catch_94
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_84

    :cond_99
    move v4, v5

    goto :goto_48
.end method
