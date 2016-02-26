.class public Lcom/baidu/bdgame/sdk/obf/da;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/da;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 26
    if-eqz p1, :cond_b

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 63
    :cond_b
    :goto_b
    return-void

    .line 30
    :cond_c
    :try_start_c
    const-string v1, "ActivityList"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 31
    if-eqz v2, :cond_b

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/da;->a:Ljava/util/List;

    move v1, v0

    .line 33
    :goto_1c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 34
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 35
    const-string v0, "ActivityId"

    invoke-static {v3, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 33
    :goto_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    .line 39
    :cond_36
    const-string v0, "IsExpire"

    invoke-static {v3, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 41
    const-string v0, "0"

    .line 43
    :cond_44
    const-string v5, "BeginTime"

    invoke-static {v3, v5}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    const-string v6, "EndTime"

    invoke-static {v3, v6}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 46
    new-instance v7, Lcom/baidu/bdgame/sdk/obf/dc;

    invoke-direct {v7}, Lcom/baidu/bdgame/sdk/obf/dc;-><init>()V

    .line 47
    invoke-virtual {v7, v4}, Lcom/baidu/bdgame/sdk/obf/dc;->a(Ljava/lang/String;)V

    .line 48
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 49
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/baidu/bdgame/sdk/obf/dc;->a(Z)V

    .line 53
    :goto_64
    invoke-virtual {v7, v5}, Lcom/baidu/bdgame/sdk/obf/dc;->b(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v7, v6}, Lcom/baidu/bdgame/sdk/obf/dc;->c(Ljava/lang/String;)V

    .line 55
    const-string v0, "ActivityInfo"

    invoke-static {v3, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/baidu/bdgame/sdk/obf/dc;->d(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/da;->a:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_78} :catch_79

    goto :goto_32

    .line 60
    :catch_79
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 51
    :cond_7e
    const/4 v0, 0x1

    :try_start_7f
    invoke-virtual {v7, v0}, Lcom/baidu/bdgame/sdk/obf/dc;->a(Z)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_79

    goto :goto_64
.end method
