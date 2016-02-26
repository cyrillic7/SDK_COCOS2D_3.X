.class public Lcom/qbao/sdk/b/d;
.super Lcom/qbao/core/c/a;
.source "NetRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 26
    invoke-static {}, Lcom/qbao/sdk/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/qbao/sdk/a/f;->ao()Lcom/qbao/core/c/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/qbao/core/c/a;-><init>(Landroid/content/Context;Lcom/qbao/core/c/c;Lcom/qbao/core/c/f;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qbao/core/c/c;)V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/qbao/core/c/a;-><init>(Landroid/content/Context;Lcom/qbao/core/c/c;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/qbao/core/c/f;)V
    .registers 4

    .prologue
    .line 34
    invoke-static {}, Lcom/qbao/sdk/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/qbao/sdk/a/f;->ao()Lcom/qbao/core/c/c;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/qbao/core/c/a;-><init>(Landroid/content/Context;Lcom/qbao/core/c/c;Lcom/qbao/core/c/f;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 71
    return-void
.end method

.method public a(I[B[Lorg/apache/http/Header;)V
    .registers 9

    .prologue
    const/4 v4, -0x2

    .line 83
    if-nez p2, :cond_a

    .line 84
    const/4 v0, -0x2

    :try_start_4
    const-string v1, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    invoke-virtual {p0, v0, v1}, Lcom/qbao/sdk/b/d;->a(ILjava/lang/String;)V

    .line 116
    :goto_9
    return-void

    .line 88
    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 90
    const/16 v1, 0x12c

    if-ge p1, v1, :cond_17

    const/16 v1, 0xc8

    if-ge p1, v1, :cond_38

    .line 91
    :cond_17
    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0}, Lcom/qbao/sdk/b/d;->a(ILjava/lang/String;)V
    :try_end_1b
    .catch Lcom/qbao/sdk/b/b; {:try_start_4 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_56

    goto :goto_9

    .line 106
    :catch_1c
    move-exception v0

    move-object v2, v0

    .line 107
    invoke-virtual {v2}, Lcom/qbao/sdk/b/b;->aw()Lcom/qbao/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/b/e;->getResponseCode()I

    move-result v1

    .line 108
    invoke-virtual {v2}, Lcom/qbao/sdk/b/b;->aw()Lcom/qbao/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/b/e;->getErrorCode()I

    move-result v0

    .line 109
    if-eqz v0, :cond_64

    :goto_30
    invoke-virtual {v2}, Lcom/qbao/sdk/b/b;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qbao/sdk/b/d;->a(ILjava/lang/String;)V

    goto :goto_9

    .line 95
    :cond_38
    :try_start_38
    const-string v1, "Request"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "response="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/qbao/sdk/b/d;->aa(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_5f

    .line 100
    invoke-virtual {p0, v1}, Lcom/qbao/sdk/b/d;->a(Ljava/lang/Object;)V
    :try_end_55
    .catch Lcom/qbao/sdk/b/b; {:try_start_38 .. :try_end_55} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_55} :catch_56

    goto :goto_9

    .line 112
    :catch_56
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/qbao/sdk/b/d;->a(ILjava/lang/String;)V

    goto :goto_9

    .line 102
    :cond_5f
    const/4 v1, -0x2

    :try_start_60
    invoke-virtual {p0, v1, v0}, Lcom/qbao/sdk/b/d;->a(ILjava/lang/String;)V
    :try_end_63
    .catch Lcom/qbao/sdk/b/b; {:try_start_60 .. :try_end_63} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_56

    goto :goto_9

    :cond_64
    move v0, v1

    .line 109
    goto :goto_30
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 64
    return-void
.end method

.method protected aa(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/qbao/sdk/b/d;->t()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 121
    const-string v1, "&"

    const-string v2, "&amp;"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 125
    :cond_f
    invoke-static {p1}, Lcom/qbao/core/util/d;->o(Ljava/lang/String;)Lcom/qbao/core/util/e;

    move-result-object v1

    .line 128
    if-nez v1, :cond_16

    .line 142
    :cond_15
    :goto_15
    return-object v0

    .line 133
    :cond_16
    const-string v2, "responseCode"

    invoke-virtual {v1, v2}, Lcom/qbao/core/util/e;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 134
    const-string v3, "errorMsg"

    invoke-virtual {v1, v3}, Lcom/qbao/core/util/e;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    const-string v4, "errorCode"

    invoke-virtual {v1, v4}, Lcom/qbao/core/util/e;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 137
    const/4 v5, -0x1

    if-eq v5, v2, :cond_15

    .line 141
    const/16 v0, 0x3e8

    if-ne v2, v0, :cond_41

    move-object v0, v1

    .line 142
    goto :goto_15

    .line 145
    :cond_41
    new-instance v0, Lcom/qbao/sdk/b/b;

    invoke-direct {v0, v3, v2}, Lcom/qbao/sdk/b/b;-><init>(Ljava/lang/String;I)V

    .line 146
    new-instance v1, Lcom/qbao/sdk/b/e;

    invoke-direct {v1, v2, v4, v3}, Lcom/qbao/sdk/b/e;-><init>(IILjava/lang/String;)V

    .line 147
    invoke-virtual {v0, v1}, Lcom/qbao/sdk/b/b;->a(Lcom/qbao/sdk/b/e;)V

    .line 148
    throw v0
.end method

.method public ay()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcom/qbao/sdk/b/d$1;

    invoke-direct {v0, p0}, Lcom/qbao/sdk/b/d$1;-><init>(Lcom/qbao/sdk/b/d;)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    return-void
.end method

.method public r()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "qbaonew-android/sdk"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/qbao/sdk/e/a;->VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "devType"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "versionCode"

    sget-object v2, Lcom/qbao/sdk/e/a;->fx:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "devId"

    sget-object v2, Lcom/qbao/sdk/e/a;->fw:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "channel"

    const-string v2, "qbappstore"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "version"

    sget-object v2, Lcom/qbao/sdk/e/a;->VERSION:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-object v0
.end method
