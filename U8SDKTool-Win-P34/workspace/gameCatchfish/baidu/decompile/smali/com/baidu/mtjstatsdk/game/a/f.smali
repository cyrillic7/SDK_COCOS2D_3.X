.class public Lcom/baidu/mtjstatsdk/game/a/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mtjstatsdk/game/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mtjstatsdk/game/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mtjstatsdk/game/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mtjstatsdk/game/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mtjstatsdk/game/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->d:I

    iput v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->f:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->d:I

    iput v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->f:I

    :try_start_8
    const-string v0, "d"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->a:Ljava/lang/String;

    const-string v0, "n"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->b:Ljava/lang/String;

    const-string v0, "a"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->c:I

    const-string v0, "t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->d:I

    const-string v0, "l"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->e:I

    const-string v0, "g"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->f:I
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_38} :catch_66

    :goto_38
    :try_start_38
    const-string v0, "chg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mtjstatsdk/game/a/f;->a(Lorg/json/JSONArray;)V
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_41} :catch_6b

    :goto_41
    :try_start_41
    const-string v0, "pch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mtjstatsdk/game/a/f;->b(Lorg/json/JSONArray;)V
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_4a} :catch_70

    :goto_4a
    :try_start_4a
    const-string v0, "lev"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mtjstatsdk/game/a/f;->d(Lorg/json/JSONArray;)V
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_53} :catch_75

    :goto_53
    :try_start_53
    const-string v0, "tsk"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mtjstatsdk/game/a/f;->e(Lorg/json/JSONArray;)V
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_5c} :catch_7a

    :goto_5c
    :try_start_5c
    const-string v0, "use"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mtjstatsdk/game/a/f;->c(Lorg/json/JSONArray;)V
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_5c .. :try_end_65} :catch_7f

    :goto_65
    return-void

    :catch_66
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_38

    :catch_6b
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_41

    :catch_70
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4a

    :catch_75
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_53

    :catch_7a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5c

    :catch_7f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_65
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/a/a;
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    move-object v0, v1

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_10
    if-ltz v2, :cond_2a

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/game/a/a;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_26
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_10

    :cond_2a
    move-object v0, v1

    goto :goto_6
.end method

.method public a()Lorg/json/JSONArray;
    .registers 9

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_13
    if-ge v2, v3, :cond_71

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/game/a/a;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "o"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "i"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "a"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/a;->c()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "va"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/a;->d()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "p"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "t"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/a;->f()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "v"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "r"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/a;->g()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    :cond_71
    move-object v0, v1

    goto :goto_5
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->a:Ljava/lang/String;

    if-nez v0, :cond_13

    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/game/BDGStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getAccountIDWithAppKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->a:Ljava/lang/String;

    :cond_13
    const-string v2, "d"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->a:Ljava/lang/String;

    if-nez v0, :cond_87

    const-string v0, ""

    :goto_1b
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "n"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->b:Ljava/lang/String;

    if-nez v0, :cond_8a

    const-string v0, ""

    :goto_26
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "a"

    iget v2, p0, Lcom/baidu/mtjstatsdk/game/a/f;->c:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "t"

    iget v2, p0, Lcom/baidu/mtjstatsdk/game/a/f;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "l"

    iget v2, p0, Lcom/baidu/mtjstatsdk/game/a/f;->e:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "g"

    iget v2, p0, Lcom/baidu/mtjstatsdk/game/a/f;->f:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/game/a/f;->a()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_8d

    const-string v0, "chg"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_52
    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/game/a/f;->b()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_93

    const-string v0, "pch"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_5f
    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/game/a/f;->c()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_99

    const-string v0, "use"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_6c
    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/game/a/f;->d()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_9f

    const-string v0, "lev"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_79
    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/game/a/f;->e()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_a5

    const-string v0, "tsk"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_86
    return-object v1

    :cond_87
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->a:Ljava/lang/String;

    goto :goto_1b

    :cond_8a
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->b:Ljava/lang/String;

    goto :goto_26

    :cond_8d
    const-string v2, "chg"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_52

    :cond_93
    const-string v2, "pch"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5f

    :cond_99
    const-string v2, "use"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6c

    :cond_9f
    const-string v2, "lev"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_79

    :cond_a5
    const-string v2, "tsk"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_86
.end method

.method public a(I)V
    .registers 3

    const/16 v0, 0x64

    if-le p1, v0, :cond_5

    move p1, v0

    :cond_5
    iput p1, p0, Lcom/baidu/mtjstatsdk/game/a/f;->c:I

    return-void
.end method

.method public a(ILjava/lang/String;J)V
    .registers 8

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->j:Ljava/util/ArrayList;

    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_1c

    new-instance v0, Lcom/baidu/mtjstatsdk/game/a/b;

    invoke-direct {v0, p1, p2}, Lcom/baidu/mtjstatsdk/game/a/b;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/a/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1b
    return-void

    :cond_1c
    new-instance v0, Lcom/baidu/mtjstatsdk/game/a/b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/baidu/mtjstatsdk/game/a/b;-><init>(ILjava/lang/String;J)V

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/a/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method public a(Lcom/baidu/mtjstatsdk/game/a/a;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->g:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/baidu/mtjstatsdk/game/a/c;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->h:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/baidu/mtjstatsdk/game/a/d;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->i:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/baidu/mtjstatsdk/game/a/e;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->k:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .registers 16

    const/4 v0, 0x0

    move v13, v0

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v13, v0, :cond_4a

    invoke-virtual {p1, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/baidu/mtjstatsdk/game/a/a;

    const-string v2, "o"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "i"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "a"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "va"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v8, "p"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "v"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "t"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v12, "r"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct/range {v1 .. v12}, Lcom/baidu/mtjstatsdk/game/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {p0, v1}, Lcom/baidu/mtjstatsdk/game/a/f;->a(Lcom/baidu/mtjstatsdk/game/a/a;)V

    add-int/lit8 v0, v13, 0x1

    move v13, v0

    goto :goto_2

    :cond_4a
    return-void
.end method

.method public b()Lorg/json/JSONArray;
    .registers 9

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_13
    if-ge v2, v3, :cond_56

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/game/a/c;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "i"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "n"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/c;->c()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "p"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/c;->d()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "t"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/c;->e()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "v"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    :cond_56
    move-object v0, v1

    goto :goto_5
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/mtjstatsdk/game/a/f;->d:I

    return-void
.end method

.method public b(ILjava/lang/String;J)V
    .registers 6

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_5

    move p1, v0

    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/mtjstatsdk/game/a/f;->a(ILjava/lang/String;J)V

    iput p1, p0, Lcom/baidu/mtjstatsdk/game/a/f;->e:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/a/f;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lorg/json/JSONArray;)V
    .registers 11

    const/4 v0, 0x0

    move v8, v0

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_39

    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/json/JSONObject;

    new-instance v0, Lcom/baidu/mtjstatsdk/game/a/c;

    const-string v1, "i"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "n"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "p"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v5, "v"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "t"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mtjstatsdk/game/a/c;-><init>(Ljava/lang/String;IDLjava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/baidu/mtjstatsdk/game/a/f;->a(Lcom/baidu/mtjstatsdk/game/a/c;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_39
    return-void
.end method

.method public c()Lorg/json/JSONArray;
    .registers 9

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_13
    if-ge v2, v3, :cond_4d

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/game/a/e;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "i"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "n"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/e;->b()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "t"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/e;->c()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "v"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    :cond_4d
    move-object v0, v1

    goto :goto_5
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/mtjstatsdk/game/a/f;->f:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/a/f;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Lorg/json/JSONArray;)V
    .registers 9

    const/4 v0, 0x0

    move v6, v0

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_33

    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/json/JSONObject;

    new-instance v0, Lcom/baidu/mtjstatsdk/game/a/e;

    const-string v1, "i"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "n"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "v"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "t"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/game/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/baidu/mtjstatsdk/game/a/f;->a(Lcom/baidu/mtjstatsdk/game/a/e;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_33
    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/a/d;
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    move-object v0, v1

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_10
    if-ltz v2, :cond_2a

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/game/a/d;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_26
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_10

    :cond_2a
    move-object v0, v1

    goto :goto_6
.end method

.method public d()Lorg/json/JSONArray;
    .registers 9

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_13
    if-ge v2, v3, :cond_44

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/game/a/b;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "l"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/b;->a()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "t"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/b;->b()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "v"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    :cond_44
    move-object v0, v1

    goto :goto_5
.end method

.method public d(Lorg/json/JSONArray;)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_27

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "l"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "v"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "t"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/baidu/mtjstatsdk/game/a/f;->a(ILjava/lang/String;J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_27
    return-void
.end method

.method public e()Lorg/json/JSONArray;
    .registers 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    :goto_13
    if-ge v4, v5, :cond_6d

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/a/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/game/a/d;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "i"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/d;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "s"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/d;->c()J

    move-result-wide v8

    invoke-virtual {v6, v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "e"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/d;->d()J

    move-result-wide v8

    invoke-virtual {v6, v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "r"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/d;->e()Z

    move-result v1

    if-eqz v1, :cond_66

    const/4 v1, 0x1

    :goto_4f
    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "m"

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/d;->f()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_68

    const-string v0, ""

    :goto_5c
    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_13

    :cond_66
    move v1, v2

    goto :goto_4f

    :cond_68
    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/game/a/d;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_5c

    :cond_6d
    move-object v0, v3

    goto :goto_6
.end method

.method public e(Lorg/json/JSONArray;)V
    .registers 8

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_4f

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v3, Lcom/baidu/mtjstatsdk/game/a/d;

    const-string v4, "v"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "i"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/baidu/mtjstatsdk/game/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "e"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/baidu/mtjstatsdk/game/a/d;->b(J)V

    const-string v4, "s"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/baidu/mtjstatsdk/game/a/d;->a(J)V

    const-string v4, "m"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mtjstatsdk/game/a/d;->a(Ljava/lang/String;)V

    const-string v4, "r"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4d

    move v0, v2

    :goto_43
    invoke-virtual {v3, v0}, Lcom/baidu/mtjstatsdk/game/a/d;->a(Z)V

    invoke-virtual {p0, v3}, Lcom/baidu/mtjstatsdk/game/a/f;->a(Lcom/baidu/mtjstatsdk/game/a/d;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4d
    const/4 v0, 0x1

    goto :goto_43

    :cond_4f
    return-void
.end method
