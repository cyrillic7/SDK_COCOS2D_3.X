.class public Lcom/baidu/bdgame/sdk/obf/gu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/gt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 74
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_e
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_e} :catch_10

    move-result-wide v0

    .line 79
    :goto_f
    return-wide v0

    .line 76
    :catch_10
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 79
    const-wide/16 v0, 0x0

    goto :goto_f
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/gu;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 24
    .line 26
    const-string v0, "AnnounceList"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 27
    if-eqz v2, :cond_7e

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_72

    .line 31
    :try_start_15
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 32
    const-string v5, "AnnounceId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 67
    :cond_25
    :goto_25
    return-object v1

    .line 36
    :cond_26
    const-string v6, "Content"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 41
    const-string v7, "LinkUrl"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    const-string v8, "BeginTime"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 44
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_25

    .line 47
    const-string v9, "EndTime"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_25

    .line 51
    new-instance v9, Lcom/baidu/bdgame/sdk/obf/gt;

    invoke-direct {v9}, Lcom/baidu/bdgame/sdk/obf/gt;-><init>()V

    .line 52
    invoke-virtual {v9, v5}, Lcom/baidu/bdgame/sdk/obf/gt;->a(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v9, v6}, Lcom/baidu/bdgame/sdk/obf/gt;->b(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v9, v7}, Lcom/baidu/bdgame/sdk/obf/gt;->c(Ljava/lang/String;)V

    .line 55
    invoke-static {v8}, Lcom/baidu/bdgame/sdk/obf/gu;->a(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v9, v6, v7}, Lcom/baidu/bdgame/sdk/obf/gt;->a(J)V

    .line 56
    invoke-static {v4}, Lcom/baidu/bdgame/sdk/obf/gu;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Lcom/baidu/bdgame/sdk/obf/gt;->b(J)V

    .line 58
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_6f} :catch_7c

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 63
    :cond_72
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gu;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/gu;-><init>()V

    .line 64
    invoke-direct {v0, v3}, Lcom/baidu/bdgame/sdk/obf/gu;->a(Ljava/util/List;)V

    :goto_7a
    move-object v1, v0

    .line 67
    goto :goto_25

    .line 59
    :catch_7c
    move-exception v0

    goto :goto_25

    :cond_7e
    move-object v0, v1

    goto :goto_7a
.end method

.method private a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/gt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gu;->a:Ljava/util/List;

    .line 104
    return-void
.end method


# virtual methods
.method public a(J)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gu;->a:Ljava/util/List;

    if-nez v0, :cond_c

    move-object v0, v2

    .line 99
    :goto_b
    return-object v0

    .line 87
    :cond_c
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_49

    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gu;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/gt;

    .line 89
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gt;->d()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-gtz v3, :cond_2e

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gt;->e()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-gez v3, :cond_32

    .line 87
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 94
    :cond_32
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/hg;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/hg;-><init>()V

    .line 95
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gt;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/bdgame/sdk/obf/hg;->a(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/hg;->b(Ljava/lang/String;)V

    .line 97
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_49
    move-object v0, v2

    .line 99
    goto :goto_b
.end method
