.class public Lcom/baidu/bdgame/sdk/obf/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/bs;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static a(I)Lcom/baidu/bdgame/sdk/obf/bs;
    .registers 5

    .prologue
    .line 42
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bs;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/bs;-><init>()V

    .line 43
    iput p0, v0, Lcom/baidu/bdgame/sdk/obf/bs;->a:I

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/bdgame/sdk/obf/bs;->b:J

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/bdgame/sdk/obf/bs;->c:J

    .line 46
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/bs;->d:Ljava/lang/String;

    .line 47
    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/bs;)I
    .registers 7

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/bs;->b:J

    .line 70
    iget-wide v2, p1, Lcom/baidu/bdgame/sdk/obf/bs;->b:J

    .line 71
    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_9

    :cond_10
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public a(Ljava/text/SimpleDateFormat;)Lorg/json/JSONObject;
    .registers 8

    .prologue
    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    :try_start_5
    const-string v1, "ID"

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/bs;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v1, "TIME"

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/baidu/bdgame/sdk/obf/bs;->b:J

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/kg;->b(J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bs;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 57
    const-string v1, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bs;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_33} :catch_34

    .line 63
    :cond_33
    :goto_33
    return-object v0

    .line 59
    :catch_34
    move-exception v1

    goto :goto_33
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/bs;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(Lcom/baidu/bdgame/sdk/obf/bs;)I

    move-result v0

    return v0
.end method
