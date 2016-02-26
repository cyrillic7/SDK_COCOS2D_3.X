.class public final Lcom/tencent/beacon/event/c;
.super Lcom/tencent/beacon/upload/a;
.source "ProGuard"


# instance fields
.field private e:Landroid/content/Context;

.field private f:[Ljava/lang/Long;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:[B

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 40
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/beacon/upload/a;-><init>(Landroid/content/Context;II)V

    .line 29
    iput-object v2, p0, Lcom/tencent/beacon/event/c;->e:Landroid/content/Context;

    .line 30
    iput-object v2, p0, Lcom/tencent/beacon/event/c;->f:[Ljava/lang/Long;

    .line 32
    iput-object v2, p0, Lcom/tencent/beacon/event/c;->g:Ljava/util/List;

    .line 35
    iput-object v2, p0, Lcom/tencent/beacon/event/c;->h:[B

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/c;->i:Z

    .line 41
    iput-object p1, p0, Lcom/tencent/beacon/event/c;->e:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private a(Ljava/util/List;)Lcom/tencent/beacon/c/a/a;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/event/k;",
            ">;)",
            "Lcom/tencent/beacon/c/a/a;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 135
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_e

    :cond_c
    move-object v0, v1

    .line 256
    :goto_d
    return-object v0

    .line 140
    :cond_e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/event/c;->g:Ljava/util/List;

    move v4, v3

    .line 147
    :goto_2e
    if-ge v4, v9, :cond_13d

    .line 148
    :try_start_30
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/event/k;

    .line 149
    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->e()Ljava/util/Map;

    move-result-object v10

    .line 150
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, " bean.getTP: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    if-eqz v10, :cond_6a

    .line 152
    const-string v10, "IP"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_be

    .line 153
    invoke-static {v0}, Lcom/tencent/beacon/event/b;->b(Lcom/tencent/beacon/event/k;)Lcom/tencent/beacon/c/d/b;

    move-result-object v10

    .line 154
    if-eqz v10, :cond_6e

    .line 155
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_6a
    :goto_6a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2e

    .line 158
    :cond_6e
    iget-object v10, p0, Lcom/tencent/beacon/event/c;->g:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->a()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_7b} :catch_7c

    goto :goto_6a

    .line 202
    :catch_7c
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    const-string v0, " CommonRecordUploadDatas.encode2MixPackage() error1"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :goto_87
    :try_start_87
    new-instance v0, Lcom/tencent/beacon/c/d/c;

    invoke-direct {v0}, Lcom/tencent/beacon/c/d/c;-><init>()V

    .line 211
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_95

    .line 212
    iput-object v7, v0, Lcom/tencent/beacon/c/d/c;->c:Ljava/util/ArrayList;

    move v2, v3

    .line 216
    :cond_95
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9e

    .line 217
    iput-object v6, v0, Lcom/tencent/beacon/c/d/c;->b:Ljava/util/ArrayList;

    move v2, v3

    .line 221
    :cond_9e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a7

    .line 222
    iput-object v5, v0, Lcom/tencent/beacon/c/d/c;->a:Ljava/util/ArrayList;

    move v2, v3

    .line 226
    :cond_a7
    if-eqz v2, :cond_1fe

    move-object v2, v1

    .line 231
    :goto_aa
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1fb

    .line 232
    new-instance v0, Lcom/tencent/beacon/c/b/b;

    invoke-direct {v0}, Lcom/tencent/beacon/c/b/b;-><init>()V

    .line 233
    iput-object v8, v0, Lcom/tencent/beacon/c/b/b;->a:Ljava/util/ArrayList;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_b7} :catch_1ea

    .line 236
    :goto_b7
    if-nez v2, :cond_1c0

    if-nez v0, :cond_1c0

    move-object v0, v1

    .line 237
    goto/16 :goto_d

    .line 160
    :cond_be
    :try_start_be
    const-string v10, "DN"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e2

    .line 161
    invoke-static {v0}, Lcom/tencent/beacon/event/b;->c(Lcom/tencent/beacon/event/k;)Lcom/tencent/beacon/c/d/a;

    move-result-object v10

    .line 163
    if-eqz v10, :cond_d4

    .line 164
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 167
    :cond_d4
    iget-object v10, p0, Lcom/tencent/beacon/event/c;->g:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->a()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 169
    :cond_e2
    const-string v10, "HO"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_108

    .line 171
    invoke-static {v0}, Lcom/tencent/beacon/event/b;->d(Lcom/tencent/beacon/event/k;)Lcom/tencent/beacon/c/d/d;

    move-result-object v10

    .line 173
    if-eqz v10, :cond_f9

    .line 174
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    .line 177
    :cond_f9
    iget-object v10, p0, Lcom/tencent/beacon/event/c;->g:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->a()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    .line 179
    :cond_108
    const-string v10, "UA"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6a

    .line 180
    const-string v10, " Pack2Upload eventName:}%s "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->d()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/tencent/beacon/e/a;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-static {v0}, Lcom/tencent/beacon/event/b;->e(Lcom/tencent/beacon/event/k;)Lcom/tencent/beacon/c/b/a;

    move-result-object v10

    .line 184
    if-eqz v10, :cond_12e

    .line 185
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    .line 188
    :cond_12e
    iget-object v10, p0, Lcom/tencent/beacon/event/c;->g:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->a()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    .line 194
    :cond_13d
    iget-object v0, p0, Lcom/tencent/beacon/event/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15a

    .line 195
    iget-object v4, p0, Lcom/tencent/beacon/event/c;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/beacon/event/c;->g:Ljava/util/List;

    iget-object v9, p0, Lcom/tencent/beacon/event/c;->g:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/Long;

    invoke-interface {v0, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    invoke-static {v4, v0}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    .line 198
    :cond_15a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, " up hmList:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, " up dmList:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, " up ipList:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, " up erList:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1be
    .catch Ljava/lang/Throwable; {:try_start_be .. :try_end_1be} :catch_7c

    goto/16 :goto_87

    .line 239
    :cond_1c0
    :try_start_1c0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 240
    if-eqz v2, :cond_1d3

    .line 241
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2}, Lcom/tencent/beacon/c/d/c;->a()[B

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_1d3
    if-eqz v0, :cond_1e1

    .line 245
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/beacon/c/b/b;->a()[B

    move-result-object v0

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_1e1
    new-instance v0, Lcom/tencent/beacon/c/a/a;

    invoke-direct {v0}, Lcom/tencent/beacon/c/a/a;-><init>()V

    .line 249
    iput-object v4, v0, Lcom/tencent/beacon/c/a/a;->a:Ljava/util/Map;
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1e8} :catch_1ea

    goto/16 :goto_d

    .line 252
    :catch_1ea
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    const-string v0, " CommonRecordUploadDatas.encode2MixPackage() error2"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-virtual {p0}, Lcom/tencent/beacon/event/c;->b()V

    move-object v0, v1

    .line 256
    goto/16 :goto_d

    :cond_1fb
    move-object v0, v1

    goto/16 :goto_b7

    :cond_1fe
    move-object v2, v0

    goto/16 :goto_aa
.end method

.method private declared-synchronized f()Z
    .registers 2

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/beacon/event/c;->i:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/tencent/beacon/c/a/b;
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 54
    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/tencent/beacon/event/p;->g()Z

    move-result v2

    if-nez v2, :cond_19

    .line 56
    :cond_f
    const-string v0, " imposiable! ua not ready!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_28

    .line 130
    :goto_17
    monitor-exit p0

    return-object v1

    .line 60
    :cond_19
    :try_start_19
    invoke-virtual {v0}, Lcom/tencent/beacon/event/p;->i()Lcom/tencent/beacon/event/g;

    move-result-object v4

    .line 61
    if-nez v4, :cond_2b

    .line 62
    const-string v0, " imposiable! ua S not ready!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_28

    goto :goto_17

    .line 54
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_2b
    :try_start_2b
    invoke-direct {p0}, Lcom/tencent/beacon/event/c;->f()Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 71
    iget-object v0, p0, Lcom/tencent/beacon/event/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/a/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 72
    if-eqz v2, :cond_11a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11a

    .line 73
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 74
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/beacon/event/c;->d:Ljava/lang/String;

    move-object v2, v0

    .line 77
    :goto_52
    if-eqz v2, :cond_5d

    .line 78
    iget-object v0, p0, Lcom/tencent/beacon/event/c;->c:Landroid/content/Context;

    iget v3, p0, Lcom/tencent/beacon/event/c;->a:I

    invoke-static {v0, v3, v2}, Lcom/tencent/beacon/event/c;->a(Landroid/content/Context;I[B)Lcom/tencent/beacon/c/a/b;

    move-result-object v1

    goto :goto_17

    .line 81
    :cond_5d
    invoke-virtual {v4}, Lcom/tencent/beacon/event/g;->f()I

    move-result v0

    .line 83
    iget-object v4, p0, Lcom/tencent/beacon/event/c;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/beacon/e/b;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 84
    div-int/lit8 v0, v0, 0x2

    .line 87
    :cond_6b
    if-ltz v0, :cond_117

    .line 88
    iget-object v4, p0, Lcom/tencent/beacon/event/c;->e:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    .line 91
    :goto_75
    if-eqz v5, :cond_7d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_9b

    .line 92
    :cond_7d
    const-string v0, " no up datas"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_85} :catch_86
    .catchall {:try_start_2b .. :try_end_85} :catchall_28

    goto :goto_17

    .line 126
    :catch_86
    move-exception v0

    .line 127
    :try_start_87
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    const-string v2, " get req datas error: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_99
    .catchall {:try_start_87 .. :try_end_99} :catchall_28

    goto/16 :goto_17

    .line 95
    :cond_9b
    :try_start_9b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 96
    const-string v0, " size:%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v0, v4}, Lcom/tencent/beacon/e/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_ae} :catch_86
    .catchall {:try_start_9b .. :try_end_ae} :catchall_28

    .line 99
    :try_start_ae
    invoke-direct {p0, v5}, Lcom/tencent/beacon/event/c;->a(Ljava/util/List;)Lcom/tencent/beacon/c/a/a;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_d2
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b1} :catch_86
    .catchall {:try_start_ae .. :try_end_b1} :catchall_28

    move-result-object v0

    move-object v4, v0

    .line 104
    :goto_b3
    :try_start_b3
    new-array v0, v6, [Ljava/lang/Long;

    iput-object v0, p0, Lcom/tencent/beacon/event/c;->f:[Ljava/lang/Long;

    .line 105
    :goto_b7
    iget-object v0, p0, Lcom/tencent/beacon/event/c;->f:[Ljava/lang/Long;

    array-length v0, v0

    if-ge v3, v0, :cond_d8

    .line 106
    iget-object v6, p0, Lcom/tencent/beacon/event/c;->f:[Ljava/lang/Long;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/event/k;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v3

    .line 105
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b7

    .line 101
    :catch_d2
    move-exception v0

    invoke-virtual {p0}, Lcom/tencent/beacon/event/c;->b()V

    move-object v4, v1

    goto :goto_b3

    .line 108
    :cond_d8
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 109
    if-eqz v4, :cond_115

    .line 112
    invoke-virtual {v4}, Lcom/tencent/beacon/c/a/a;->a()[B

    move-result-object v0

    .line 113
    :goto_e1
    array-length v2, v0

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/tencent/beacon/event/c;->h:[B

    .line 114
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/beacon/event/c;->h:[B

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget-object v2, p0, Lcom/tencent/beacon/event/c;->c:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/tencent/beacon/b/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/beacon/event/c;->d:Ljava/lang/String;

    .line 117
    const-string v2, "comm rid:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/beacon/event/c;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_104} :catch_86
    .catchall {:try_start_b3 .. :try_end_104} :catchall_28

    .line 120
    :try_start_104
    iget-object v2, p0, Lcom/tencent/beacon/event/c;->c:Landroid/content/Context;

    iget v3, p0, Lcom/tencent/beacon/event/c;->a:I

    invoke-static {v2, v3, v0}, Lcom/tencent/beacon/event/c;->a(Landroid/content/Context;I[B)Lcom/tencent/beacon/c/a/b;
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_10b} :catch_10f
    .catch Ljava/lang/Throwable; {:try_start_104 .. :try_end_10b} :catch_86
    .catchall {:try_start_104 .. :try_end_10b} :catchall_28

    move-result-object v0

    :goto_10c
    move-object v1, v0

    .line 124
    goto/16 :goto_17

    .line 122
    :catch_10f
    move-exception v0

    :try_start_110
    invoke-virtual {p0}, Lcom/tencent/beacon/event/c;->b()V
    :try_end_113
    .catch Ljava/lang/Throwable; {:try_start_110 .. :try_end_113} :catch_86
    .catchall {:try_start_110 .. :try_end_113} :catchall_28

    move-object v0, v1

    goto :goto_10c

    :cond_115
    move-object v0, v2

    goto :goto_e1

    :cond_117
    move-object v5, v1

    goto/16 :goto_75

    :cond_11a
    move-object v2, v1

    goto/16 :goto_52
.end method

.method public final declared-synchronized a(Z)V
    .registers 6

    .prologue
    .line 275
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/c;->f:[Ljava/lang/Long;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/tencent/beacon/event/c;->f:[Ljava/lang/Long;

    array-length v0, v0

    if-lez v0, :cond_27

    .line 276
    iget-object v0, p0, Lcom/tencent/beacon/event/c;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/beacon/event/c;->f:[Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    move-result v0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " t_event remove num :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    :cond_27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/event/c;->f:[Ljava/lang/Long;

    .line 281
    if-eqz p1, :cond_3e

    invoke-direct {p0}, Lcom/tencent/beacon/event/c;->f()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 282
    iget-object v0, p0, Lcom/tencent/beacon/event/c;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/beacon/event/c;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/beacon/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 289
    :cond_39
    :goto_39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/event/c;->h:[B
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_5b

    .line 290
    monitor-exit p0

    return-void

    .line 284
    :cond_3e
    if-nez p1, :cond_39

    :try_start_40
    iget-object v0, p0, Lcom/tencent/beacon/event/c;->h:[B

    if-eqz v0, :cond_39

    .line 285
    const-string v0, "comm rid2:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/beacon/event/c;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/tencent/beacon/event/c;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/beacon/event/c;->h:[B

    iget-object v2, p0, Lcom/tencent/beacon/event/c;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a/a;->a(Landroid/content/Context;[BLjava/lang/String;)Z
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_5b

    goto :goto_39

    .line 275
    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .registers 4

    .prologue
    .line 264
    monitor-enter p0

    :try_start_1
    const-string v0, " encode failed, clear db data"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/tencent/beacon/event/c;->f:[Ljava/lang/Long;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/tencent/beacon/event/c;->f:[Ljava/lang/Long;

    array-length v0, v0

    if-lez v0, :cond_32

    .line 266
    iget-object v0, p0, Lcom/tencent/beacon/event/c;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/beacon/event/c;->f:[Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    move-result v0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " remove num :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/event/c;->f:[Ljava/lang/Long;
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 270
    :cond_32
    monitor-exit p0

    return-void

    .line 264
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Z)V
    .registers 3

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/tencent/beacon/event/c;->i:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 50
    monitor-exit p0

    return-void

    .line 49
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
