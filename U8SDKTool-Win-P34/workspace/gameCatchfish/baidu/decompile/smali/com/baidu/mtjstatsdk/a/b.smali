.class public Lcom/baidu/mtjstatsdk/a/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mtjstatsdk/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/a/b;->b:J

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/a/b;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mtjstatsdk/a/b;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/a/b;->a:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mtjstatsdk/a/b;->a(J)V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/a/b;->b:J

    return-wide v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/mtjstatsdk/a/b;->d:I

    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/baidu/mtjstatsdk/a/b;->b:J

    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .registers 14

    new-instance v1, Lcom/baidu/mtjstatsdk/a/c;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/baidu/mtjstatsdk/a/c;-><init>(Lcom/baidu/mtjstatsdk/a/b;Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/a/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/a/b;->b:J

    iput-wide v0, p0, Lcom/baidu/mtjstatsdk/a/b;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mtjstatsdk/a/b;->d:I

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mtjstatsdk/a/b;->a(J)V

    return-void
.end method

.method public b(J)V
    .registers 4

    iput-wide p1, p0, Lcom/baidu/mtjstatsdk/a/b;->c:J

    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .registers 11

    const-wide/16 v2, 0x0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v0, "s"

    iget-wide v6, p0, Lcom/baidu/mtjstatsdk/a/b;->b:J

    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "e"

    iget-wide v6, p0, Lcom/baidu/mtjstatsdk/a/b;->c:J

    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "i"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "c"

    iget v1, p0, Lcom/baidu/mtjstatsdk/a/b;->d:I

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v4, v0

    :goto_2c
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_7b

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "n"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/a/b;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/a/c;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "d"

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/a/b;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/a/c;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/a/c;->b()J

    move-result-wide v8

    invoke-virtual {v7, v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/a/b;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/a/c;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/a/c;->c()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/baidu/mtjstatsdk/a/b;->b:J

    sub-long/2addr v0, v8

    cmp-long v8, v0, v2

    if-gez v8, :cond_6f

    move-wide v0, v2

    :cond_6f
    const-string v8, "ps"

    invoke-virtual {v7, v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2c

    :cond_7b
    const-string v0, "p"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_80} :catch_81

    :goto_80
    return-object v5

    :catch_81
    move-exception v0

    const-string v0, "statsdk"

    const-string v1, "StatSession.constructJSONObject() failed"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/baidu/mtjstatsdk/a/b;->d:I

    return v0
.end method
