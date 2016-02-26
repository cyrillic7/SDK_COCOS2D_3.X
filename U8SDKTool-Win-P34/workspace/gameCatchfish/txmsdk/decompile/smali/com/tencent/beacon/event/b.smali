.class public Lcom/tencent/beacon/event/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/beacon/event/j;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/event/k;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/b;->b:Z

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/event/b;->c:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/event/b;->d:Ljava/lang/Object;

    .line 23
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/tencent/beacon/event/b;->f:J

    .line 26
    new-instance v0, Lcom/tencent/beacon/event/b$1;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/event/b$1;-><init>(Lcom/tencent/beacon/event/b;)V

    iput-object v0, p0, Lcom/tencent/beacon/event/b;->g:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/tencent/beacon/event/b$2;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/event/b$2;-><init>(Lcom/tencent/beacon/event/b;)V

    iput-object v0, p0, Lcom/tencent/beacon/event/b;->h:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcom/tencent/beacon/event/b;->a:Landroid/content/Context;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/beacon/event/b;->e:Ljava/util/List;

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZJJLjava/util/Map;)Lcom/tencent/beacon/event/k;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/beacon/event/k;"
        }
    .end annotation

    .prologue
    .line 195
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/tencent/beacon/event/b;->a(Landroid/content/Context;Ljava/lang/String;ZJJLjava/util/Map;Z)Lcom/tencent/beacon/event/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZJJLjava/util/Map;Z)Lcom/tencent/beacon/event/k;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/tencent/beacon/event/k;"
        }
    .end annotation

    .prologue
    .line 202
    if-nez p1, :cond_4

    .line 203
    const/4 v2, 0x0

    .line 273
    :goto_3
    return-object v2

    .line 205
    :cond_4
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v3

    .line 206
    if-nez v3, :cond_14

    .line 207
    const-string v2, "  CommonInfo have not been Created return null!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    const/4 v2, 0x0

    goto :goto_3

    .line 211
    :cond_14
    invoke-static {}, Lcom/tencent/beacon/event/UserAction;->getUserID()Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-virtual {v3}, Lcom/tencent/beacon/a/e;->h()J

    move-result-wide v6

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 213
    invoke-virtual {v3}, Lcom/tencent/beacon/a/e;->g()Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-static {p0}, Lcom/tencent/beacon/e/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 215
    if-nez v2, :cond_32

    .line 216
    const-string v2, "null"

    .line 218
    :cond_32
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 221
    sget-object v9, Lcom/tencent/beacon/event/UserAction;->a:Ljava/util/Map;

    if-eqz v9, :cond_40

    .line 222
    sget-object v9, Lcom/tencent/beacon/event/UserAction;->a:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 225
    :cond_40
    if-eqz p7, :cond_47

    .line 226
    move-object/from16 v0, p7

    invoke-interface {v8, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 229
    :cond_47
    const-string v9, "A1"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v4, "QQ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/beacon/event/UserAction;->getQQ()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v4, "A19"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v2, "A28"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v2, "A25"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v2, "A26"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v2, "A27"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v2, "A2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/beacon/a/e;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-static {p0}, Lcom/tencent/beacon/event/e;->a(Landroid/content/Context;)Lcom/tencent/beacon/event/e;

    move-result-object v2

    .line 239
    const-string v3, "A4"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/beacon/event/e;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v3, "A6"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/beacon/event/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v3, "A7"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/beacon/event/e;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v3, "A3"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/tencent/beacon/a/j;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/beacon/a/j;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v3, "A23"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/beacon/event/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v2, "A67"

    invoke-static {p0}, Lcom/tencent/beacon/a/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v2, "A76"

    invoke-static {}, Lcom/tencent/beacon/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v2, Lcom/tencent/beacon/event/k;

    invoke-direct {v2}, Lcom/tencent/beacon/event/k;-><init>()V

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/beacon/event/k;->b(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2, v6, v7}, Lcom/tencent/beacon/event/k;->b(J)V

    .line 252
    const-string v3, "UA"

    invoke-virtual {v2, v3}, Lcom/tencent/beacon/event/k;->a(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v2, v8}, Lcom/tencent/beacon/event/k;->a(Ljava/util/Map;)V

    .line 254
    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/tencent/beacon/event/k;->c(J)V

    .line 255
    move/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/tencent/beacon/event/k;->c(Z)V

    .line 257
    const/4 v3, 0x0

    .line 258
    const-wide/32 v4, 0x124f80

    cmp-long v4, p3, v4

    if-ltz v4, :cond_19c

    .line 259
    const/4 v3, 0x1

    .line 261
    :cond_19c
    const-wide/32 v4, 0x2faf080

    cmp-long v4, p5, v4

    if-ltz v4, :cond_1a5

    .line 262
    add-int/lit8 v3, v3, 0x1

    .line 264
    :cond_1a5
    if-lez v3, :cond_1b1

    .line 266
    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/tencent/beacon/event/k;->d(J)V

    .line 267
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/beacon/event/k;->b(Z)V

    goto/16 :goto_3

    .line 269
    :cond_1b1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/tencent/beacon/event/k;->d(J)V

    .line 270
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/beacon/event/k;->b(Z)V

    goto/16 :goto_3
.end method

.method public static b(Lcom/tencent/beacon/event/k;)Lcom/tencent/beacon/c/d/b;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 25
    if-eqz p0, :cond_10

    const-string v0, "IP"

    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    move-object v0, v1

    .line 62
    :goto_11
    return-object v0

    .line 27
    :cond_12
    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->e()Ljava/util/Map;

    move-result-object v3

    .line 28
    if-nez v3, :cond_1a

    move-object v0, v1

    .line 29
    goto :goto_11

    .line 33
    :cond_1a
    :try_start_1a
    new-instance v2, Lcom/tencent/beacon/c/d/b;

    invoke-direct {v2}, Lcom/tencent/beacon/c/d/b;-><init>()V

    .line 34
    const-string v0, "A19"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/beacon/c/d/b;->a:Ljava/lang/String;

    .line 35
    const-string v0, "A26"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    if-nez v0, :cond_35

    const-string v0, "-1"

    :cond_35
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/beacon/c/d/b;->e:J

    .line 37
    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->d()Ljava/lang/String;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 39
    const/4 v4, 0x0

    aget-object v4, v0, v4

    iput-object v4, v2, Lcom/tencent/beacon/c/d/b;->c:Ljava/lang/String;

    .line 40
    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/tencent/beacon/c/d/b;->d:I

    .line 42
    const-string v0, "A28"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/beacon/c/d/b;->b:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->c()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/beacon/c/d/b;->f:J

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    const-string v4, "A33"

    const-string v5, "A33"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v4, "A3"

    const-string v5, "A3"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v4, "A20"

    const-string v5, "A20"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v4, "A74"

    const-string v5, "A74"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v4, "test"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a3

    .line 52
    const-string v3, "test"

    const-string v4, "Y"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_a3
    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/beacon/c/d/b;->g:Ljava/lang/String;
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_a9} :catch_ac

    move-object v0, v2

    .line 57
    goto/16 :goto_11

    .line 58
    :catch_ac
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 62
    goto/16 :goto_11
.end method

.method private declared-synchronized b()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/event/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/b;->e:Ljava/util/List;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/beacon/event/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    invoke-direct {p0}, Lcom/tencent/beacon/event/b;->c()Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_3f

    move-result v0

    if-nez v0, :cond_16

    .line 65
    :cond_13
    const/4 v0, 0x0

    .line 71
    :goto_14
    monitor-exit p0

    return-object v0

    .line 67
    :cond_16
    :try_start_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/tencent/beacon/event/b;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    iget-object v1, p0, Lcom/tencent/beacon/event/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " get MN:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_16 .. :try_end_3e} :catchall_3f

    goto :goto_14

    .line 64
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static c(Lcom/tencent/beacon/event/k;)Lcom/tencent/beacon/c/d/a;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 67
    if-eqz p0, :cond_f

    const-string v0, "DN"

    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_f
    move-object v0, v1

    .line 106
    :goto_10
    return-object v0

    .line 69
    :cond_11
    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->e()Ljava/util/Map;

    move-result-object v3

    .line 70
    if-nez v3, :cond_19

    move-object v0, v1

    .line 71
    goto :goto_10

    .line 74
    :cond_19
    :try_start_19
    new-instance v2, Lcom/tencent/beacon/c/d/a;

    invoke-direct {v2}, Lcom/tencent/beacon/c/d/a;-><init>()V

    .line 75
    const-string v0, "A19"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/beacon/c/d/a;->a:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/beacon/c/d/a;->c:Ljava/lang/String;

    .line 77
    const-string v0, "A34"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/beacon/c/d/a;->j:Ljava/lang/String;

    .line 78
    const-string v0, "A35"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/beacon/c/d/a;->d:J

    .line 79
    const-string v0, "A36"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/beacon/c/d/a;->f:J

    .line 81
    const-string v0, "A37"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/beacon/c/d/a;->g:J

    .line 83
    const-string v0, "A38"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/beacon/c/d/a;->h:J

    .line 85
    const-string v0, "A28"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/beacon/c/d/a;->b:Ljava/lang/String;

    .line 86
    const-string v0, "A39"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/beacon/c/d/a;->i:Ljava/lang/String;

    .line 87
    const-string v0, "A40"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/beacon/c/d/a;->e:J

    .line 88
    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->c()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/beacon/c/d/a;->k:J

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    const-string v4, "A33"

    const-string v5, "A33"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v4, "A3"

    const-string v5, "A3"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v4, "A20"

    const-string v5, "A20"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v4, "A74"

    const-string v5, "A74"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v4, "test"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d8

    .line 97
    const-string v3, "test"

    const-string v4, "Y"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_d8
    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/beacon/c/d/a;->l:Ljava/lang/String;
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_de} :catch_e1

    move-object v0, v2

    .line 101
    goto/16 :goto_10

    .line 102
    :catch_e1
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 106
    goto/16 :goto_10
.end method

.method private declared-synchronized c()Z
    .registers 2

    .prologue
    .line 185
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/beacon/event/b;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static d(Lcom/tencent/beacon/event/k;)Lcom/tencent/beacon/c/d/d;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 111
    if-eqz p0, :cond_10

    const-string v0, "HO"

    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    move-object v0, v1

    .line 151
    :goto_11
    return-object v0

    .line 113
    :cond_12
    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->e()Ljava/util/Map;

    move-result-object v3

    .line 114
    if-nez v3, :cond_1a

    move-object v0, v1

    .line 115
    goto :goto_11

    .line 119
    :cond_1a
    :try_start_1a
    new-instance v2, Lcom/tencent/beacon/c/d/d;

    invoke-direct {v2}, Lcom/tencent/beacon/c/d/d;-><init>()V

    .line 120
    const-string v0, "A19"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/beacon/c/d/d;->a:Ljava/lang/String;

    .line 122
    const-string v0, "hostip"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 123
    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/tencent/beacon/c/d/d;->m:I

    .line 124
    const-string v0, "A28"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/beacon/c/d/d;->b:Ljava/lang/String;

    .line 125
    const-string v0, "A34"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/beacon/c/d/d;->c:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput-object v0, v2, Lcom/tencent/beacon/c/d/d;->k:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/beacon/c/d/d;->l:Ljava/lang/String;

    .line 128
    const-string v0, "A35"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/beacon/c/d/d;->d:J

    .line 129
    const-string v0, "A40"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/beacon/c/d/d;->e:J

    .line 130
    const-string v0, "A36"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/beacon/c/d/d;->f:J

    .line 132
    const-string v0, "A37"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/beacon/c/d/d;->g:J

    .line 134
    const-string v0, "A38"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/beacon/c/d/d;->h:J

    .line 136
    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->c()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/beacon/c/d/d;->j:J

    .line 137
    const-string v0, "A39"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/beacon/c/d/d;->i:Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    const-string v4, "A33"

    const-string v5, "A33"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v4, "A3"

    const-string v5, "A3"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v4, "A20"

    const-string v5, "A20"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v4, "A74"

    const-string v5, "A74"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/beacon/c/d/d;->n:Ljava/lang/String;
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_ec} :catch_ef

    move-object v0, v2

    .line 146
    goto/16 :goto_11

    .line 147
    :catch_ef
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 151
    goto/16 :goto_11
.end method

.method public static e(Lcom/tencent/beacon/event/k;)Lcom/tencent/beacon/c/b/a;
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 156
    if-eqz p0, :cond_11

    const-string v0, "UA"

    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_11
    move-object v0, v1

    .line 189
    :goto_12
    return-object v0

    .line 158
    :cond_13
    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->e()Ljava/util/Map;

    move-result-object v5

    .line 159
    if-nez v5, :cond_1b

    move-object v0, v1

    .line 160
    goto :goto_12

    .line 163
    :cond_1b
    :try_start_1b
    new-instance v2, Lcom/tencent/beacon/c/b/a;

    invoke-direct {v2}, Lcom/tencent/beacon/c/b/a;-><init>()V

    .line 164
    const-string v0, "A19"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/beacon/c/b/a;->a:Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/beacon/c/b/a;->c:Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->c()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/tencent/beacon/c/b/a;->h:J

    .line 167
    const-string v0, "A28"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/beacon/c/b/a;->b:Ljava/lang/String;

    .line 168
    const-string v0, "A26"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/tencent/beacon/c/b/a;->f:J

    .line 169
    const-string v0, "A25"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/tencent/beacon/c/b/a;->d:Z

    .line 171
    const-string v0, "A27"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/tencent/beacon/c/b/a;->e:J

    .line 172
    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->h()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 173
    const-string v0, "C9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->i()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_86
    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->f()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 176
    const-string v0, "C3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->g()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_a2
    invoke-static {v5}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/beacon/c/b/a;->g:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcom/tencent/beacon/event/k;->f()Z

    move-result v0

    if-eqz v0, :cond_cf

    move v0, v3

    :goto_af
    iput v0, v2, Lcom/tencent/beacon/c/b/a;->i:I

    .line 183
    const-string v0, "new event record:\neventName:%s\neventResult:%b\neventValue:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v2, Lcom/tencent/beacon/c/b/a;->c:Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-boolean v6, v2, Lcom/tencent/beacon/c/b/a;->d:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    iget-object v6, v2, Lcom/tencent/beacon/c/b/a;->g:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_cc} :catch_d1

    move-object v0, v2

    .line 184
    goto/16 :goto_12

    :cond_cf
    move v0, v4

    .line 181
    goto :goto_af

    .line 185
    :catch_d1
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 189
    goto/16 :goto_12
.end method


# virtual methods
.method protected final a()V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/tencent/beacon/event/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_4
    invoke-direct {p0}, Lcom/tencent/beacon/event/b;->c()Z

    move-result v2

    if-nez v2, :cond_14

    .line 127
    const-string v0, " err su 1R"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    monitor-exit v1

    .line 159
    :goto_13
    return-void

    .line 132
    :cond_14
    invoke-direct {p0}, Lcom/tencent/beacon/event/b;->b()Ljava/util/List;

    move-result-object v2

    .line 134
    if-eqz v2, :cond_97

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_97

    .line 136
    iget-object v3, p0, Lcom/tencent/beacon/event/b;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tencent/beacon/applog/a;->c(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/Long;

    move-result-object v2

    .line 139
    iget-object v3, p0, Lcom/tencent/beacon/event/b;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/beacon/upload/h;->a(Landroid/content/Context;)Lcom/tencent/beacon/upload/h;

    move-result-object v4

    .line 141
    if-eqz v2, :cond_97

    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/beacon/event/p;->i()Lcom/tencent/beacon/event/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/beacon/event/g;->f()I

    move-result v2

    int-to-long v2, v2

    iget-object v5, p0, Lcom/tencent/beacon/event/b;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/beacon/e/b;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5b

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " onwifi, so half mSZ "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v6, 0x2

    div-long/2addr v2, v6

    :cond_5b
    iget-object v5, p0, Lcom/tencent/beacon/event/b;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/beacon/applog/a;->g(Landroid/content/Context;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "countCommomRecordNum: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-long v6, v5

    cmp-long v2, v6, v2

    if-ltz v2, :cond_7c

    const/4 v0, 0x1

    :cond_7c
    if-eqz v0, :cond_97

    invoke-virtual {v4}, Lcom/tencent/beacon/upload/h;->a()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-virtual {v4}, Lcom/tencent/beacon/upload/h;->b()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 149
    iget-object v0, p0, Lcom/tencent/beacon/event/b;->h:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 151
    const-string v0, " max Up"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :cond_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_4 .. :try_end_98} :catchall_9a

    goto/16 :goto_13

    :catchall_9a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .registers 10

    .prologue
    .line 193
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/beacon/event/b;->b:Z

    if-eq v0, p1, :cond_29

    .line 194
    if-eqz p1, :cond_2b

    .line 195
    iput-boolean p1, p0, Lcom/tencent/beacon/event/b;->b:Z

    .line 197
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/event/p;->i()Lcom/tencent/beacon/event/g;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->e()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/beacon/event/b;->f:J

    .line 200
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    const/16 v2, 0x66

    iget-object v3, p0, Lcom/tencent/beacon/event/b;->g:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/tencent/beacon/event/b;->f:J

    iget-wide v6, p0, Lcom/tencent/beacon/event/b;->f:J

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/beacon/a/d;->a(ILjava/lang/Runnable;JJ)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_45

    .line 211
    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    .line 205
    :cond_2b
    :try_start_2b
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    const/16 v1, 0x66

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/beacon/a/d;->a(IZ)V

    .line 206
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    const/16 v1, 0x70

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/beacon/a/d;->a(IZ)V

    .line 207
    invoke-virtual {p0}, Lcom/tencent/beacon/event/b;->a()V

    .line 208
    iput-boolean p1, p0, Lcom/tencent/beacon/event/b;->b:Z
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_45

    goto :goto_29

    .line 193
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/tencent/beacon/event/k;)Z
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 83
    iget-object v9, p0, Lcom/tencent/beacon/event/b;->c:Ljava/lang/Object;

    monitor-enter v9

    .line 84
    :try_start_5
    const-string v2, " BF eN:%s   isRT:%b  isCR:%b"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_3a

    const-string v1, "null"

    :goto_f
    aput-object v1, v3, v4

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    if-nez p1, :cond_3f

    move v1, v0

    :goto_1d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v1, p0, Lcom/tencent/beacon/event/b;->a:Landroid/content/Context;

    if-eqz v1, :cond_30

    if-eqz p1, :cond_30

    iget-boolean v1, p0, Lcom/tencent/beacon/event/b;->b:Z

    if-nez v1, :cond_44

    .line 89
    :cond_30
    const-string v1, " err BF 1R"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    monitor-exit v9

    .line 119
    :goto_39
    return v0

    .line 84
    :cond_3a
    invoke-virtual {p1}, Lcom/tencent/beacon/event/k;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_3f
    invoke-virtual {p1}, Lcom/tencent/beacon/event/k;->f()Z

    move-result v1

    goto :goto_1d

    .line 93
    :cond_44
    invoke-direct {p0}, Lcom/tencent/beacon/event/b;->c()Z

    move-result v1

    if-nez v1, :cond_57

    .line 94
    const-string v1, " CommonProcess processUA return false, isEnable is false !"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    monitor-exit v9
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_54

    goto :goto_39

    .line 120
    :catchall_54
    move-exception v0

    monitor-exit v9

    throw v0

    .line 98
    :cond_57
    :try_start_57
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/event/p;->i()Lcom/tencent/beacon/event/g;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->d()I

    move-result v10

    .line 101
    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->e()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/beacon/event/b;->f:J

    .line 102
    iget-object v0, p0, Lcom/tencent/beacon/event/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 104
    if-lt v0, v10, :cond_94

    .line 105
    const-string v1, " BF mN!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/beacon/event/b;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    .line 109
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    const/16 v2, 0x66

    iget-object v3, p0, Lcom/tencent/beacon/event/b;->g:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/tencent/beacon/event/b;->f:J

    iget-wide v6, p0, Lcom/tencent/beacon/event/b;->f:J

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/beacon/a/d;->a(ILjava/lang/Runnable;JJ)V

    .line 114
    :cond_94
    iget-object v1, p0, Lcom/tencent/beacon/event/b;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lcom/tencent/beacon/event/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v10, :cond_b6

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " err BF 3R! list size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_b6
    const-string v0, "CommonprocessUA:true!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    monitor-exit v9
    :try_end_bf
    .catchall {:try_start_57 .. :try_end_bf} :catchall_54

    move v0, v8

    goto/16 :goto_39
.end method

.method public final varargs declared-synchronized a(Ljava/lang/String;ZJJ[Lcom/tencent/beacon/event/d;)Z
    .registers 21

    .prologue
    .line 238
    monitor-enter p0

    :try_start_1
    const-string v2, " onUAC %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    const/4 v3, 0x0

    .line 241
    if-eqz p1, :cond_13

    iget-object v2, p0, Lcom/tencent/beacon/event/b;->a:Landroid/content/Context;

    if-nez v2, :cond_34

    .line 242
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " err 1R "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/beacon/event/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_31

    const-string v2, "context"

    :goto_28
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_12b

    .line 243
    const/4 v2, 0x0

    .line 353
    :goto_2f
    monitor-exit p0

    return v2

    .line 242
    :cond_31
    :try_start_31
    const-string v2, "en"

    goto :goto_28

    .line 246
    :cond_34
    iget-object v2, p0, Lcom/tencent/beacon/event/b;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/beacon/event/k;

    .line 247
    invoke-virtual {v2}, Lcom/tencent/beacon/event/k;->f()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual {v2}, Lcom/tencent/beacon/event/k;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    move-object v3, v2

    .line 253
    :cond_57
    if-nez v3, :cond_12e

    .line 254
    const-string v2, " onUAC add new"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 258
    if-eqz p7, :cond_83

    move-object/from16 v0, p7

    array-length v2, v0

    if-lez v2, :cond_83

    .line 259
    move-object/from16 v0, p7

    array-length v3, v0

    const/4 v2, 0x0

    :goto_71
    if-ge v2, v3, :cond_83

    aget-object v4, p7, v2

    .line 260
    iget-object v5, v4, Lcom/tencent/beacon/event/d;->a:Ljava/lang/String;

    iget-wide v6, v4, Lcom/tencent/beacon/event/d;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 265
    :cond_83
    iget-object v3, p0, Lcom/tencent/beacon/event/b;->a:Landroid/content/Context;

    const/4 v11, 0x0

    move-object v4, p1

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-static/range {v3 .. v11}, Lcom/tencent/beacon/event/b;->a(Landroid/content/Context;Ljava/lang/String;ZJJLjava/util/Map;Z)Lcom/tencent/beacon/event/k;

    move-result-object v2

    .line 267
    if-nez v2, :cond_94

    .line 268
    const/4 v2, 0x0

    goto :goto_2f

    .line 270
    :cond_94
    invoke-virtual {v2}, Lcom/tencent/beacon/event/k;->e()Ljava/util/Map;

    move-result-object v3

    .line 272
    const-string v4, "C1"

    invoke-virtual {v2}, Lcom/tencent/beacon/event/k;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v4, "C2"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    if-eqz p2, :cond_f7

    .line 278
    const-string v4, "C4"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v4, "C5"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v4, "C6"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v4, "C7"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v4, "C8"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :goto_e5
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/beacon/event/k;->a(Z)V

    .line 299
    const-string v3, " add record, return!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-virtual {p0, v2}, Lcom/tencent/beacon/event/b;->a(Lcom/tencent/beacon/event/k;)Z

    move-result v2

    goto/16 :goto_2f

    .line 288
    :cond_f7
    const-string v4, "C4"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v4, "C5"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v4, "C6"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v4, "C7"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v4, "C8"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12a
    .catchall {:try_start_31 .. :try_end_12a} :catchall_12b

    goto :goto_e5

    .line 238
    :catchall_12b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 302
    :cond_12e
    :try_start_12e
    const-string v2, " onUAC up O"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-virtual {v3}, Lcom/tencent/beacon/event/k;->g()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/tencent/beacon/event/k;->c(J)V

    .line 304
    const-wide/32 v4, 0x124f80

    cmp-long v2, p3, v4

    if-ltz v2, :cond_155

    .line 305
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/tencent/beacon/event/k;->b(Z)V

    .line 306
    invoke-virtual {v3}, Lcom/tencent/beacon/event/k;->i()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/tencent/beacon/event/k;->d(J)V

    .line 308
    :cond_155
    const-wide/32 v4, 0x2faf080

    cmp-long v2, p5, v4

    if-ltz v2, :cond_16a

    .line 309
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/tencent/beacon/event/k;->b(Z)V

    .line 310
    invoke-virtual {v3}, Lcom/tencent/beacon/event/k;->i()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/tencent/beacon/event/k;->d(J)V

    .line 313
    :cond_16a
    invoke-virtual {v3}, Lcom/tencent/beacon/event/k;->e()Ljava/util/Map;

    move-result-object v2

    .line 314
    if-nez v2, :cond_1f1

    .line 316
    const-string v2, " err ? ep==null: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/tencent/beacon/event/k;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 318
    invoke-virtual {v3, v2}, Lcom/tencent/beacon/event/k;->a(Ljava/util/Map;)V

    move-object v3, v2

    .line 322
    :goto_188
    const-string v2, "C1"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v2, "A26"

    move-wide/from16 v0, p3

    invoke-static {v3, v2, v0, v1}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 326
    const-string v2, "A27"

    move-wide/from16 v0, p5

    invoke-static {v3, v2, v0, v1}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 327
    const-string v2, "C2"

    const-wide/16 v4, 0x1

    invoke-static {v3, v2, v4, v5}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 330
    if-eqz p2, :cond_1d8

    .line 332
    const-string v2, "C4"

    move-wide/from16 v0, p3

    invoke-static {v3, v2, v0, v1}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 334
    const-string v2, "C5"

    move-wide/from16 v0, p5

    invoke-static {v3, v2, v0, v1}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 346
    :goto_1bf
    if-eqz p7, :cond_1ee

    move-object/from16 v0, p7

    array-length v2, v0

    if-lez v2, :cond_1ee

    .line 348
    move-object/from16 v0, p7

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1ca
    if-ge v2, v4, :cond_1ee

    aget-object v5, p7, v2

    .line 349
    iget-object v6, v5, Lcom/tencent/beacon/event/d;->a:Ljava/lang/String;

    iget-wide v8, v5, Lcom/tencent/beacon/event/d;->b:J

    invoke-static {v3, v6, v8, v9}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_1ca

    .line 338
    :cond_1d8
    const-string v2, "C6"

    const-wide/16 v4, 0x1

    invoke-static {v3, v2, v4, v5}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 340
    const-string v2, "C7"

    move-wide/from16 v0, p3

    invoke-static {v3, v2, v0, v1}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 342
    const-string v2, "C8"

    move-wide/from16 v0, p5

    invoke-static {v3, v2, v0, v1}, Lcom/tencent/beacon/applog/a;->a(Ljava/util/Map;Ljava/lang/String;J)V
    :try_end_1ed
    .catchall {:try_start_12e .. :try_end_1ed} :catchall_12b

    goto :goto_1bf

    .line 353
    :cond_1ee
    const/4 v2, 0x1

    goto/16 :goto_2f

    :cond_1f1
    move-object v3, v2

    goto :goto_188
.end method
