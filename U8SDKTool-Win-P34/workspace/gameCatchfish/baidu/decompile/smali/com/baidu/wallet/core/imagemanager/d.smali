.class Lcom/baidu/wallet/core/imagemanager/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/imagemanager/f$a;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/imagemanager/h;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/imagemanager/h;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/imagemanager/d;->a:Lcom/baidu/wallet/core/imagemanager/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Ljava/util/List;
    .registers 12

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :cond_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x337f9800

    sub-long/2addr v4, v6

    array-length v3, v2

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v3, :cond_d

    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-gez v7, :cond_30

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method
