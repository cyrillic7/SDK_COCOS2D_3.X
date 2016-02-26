.class public Lcom/tencent/bugly/proguard/a;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field c:Lcom/tencent/bugly/proguard/h;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/a;->a:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/a;->d:Ljava/util/HashMap;

    .line 32
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/tencent/bugly/proguard/h;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/h;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/a;->c:Lcom/tencent/bugly/proguard/h;

    return-void
.end method

.method public static a(Lcom/tencent/bugly/proguard/x;Lcom/tencent/bugly/proguard/n;)Lcom/tencent/bugly/proguard/M;
    .registers 13

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 164
    if-eqz p0, :cond_8

    if-nez p1, :cond_11

    .line 166
    :cond_8
    const-string v0, "enExp args == null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v5

    .line 328
    :goto_10
    return-object v0

    .line 169
    :cond_11
    new-instance v4, Lcom/tencent/bugly/proguard/M;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/M;-><init>()V

    .line 170
    iget v0, p0, Lcom/tencent/bugly/proguard/x;->b:I

    packed-switch v0, :pswitch_data_4b0

    .line 199
    const-string v0, "crash type error! %d"

    new-array v1, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/tencent/bugly/proguard/x;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 203
    :goto_2a
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/x;->r:J

    iput-wide v0, v4, Lcom/tencent/bugly/proguard/M;->b:J

    .line 204
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->c:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->d:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->p:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->e:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->g:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->x:Ljava/util/Map;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->h:Ljava/util/Map;

    .line 209
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->c:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->i:Ljava/lang/String;

    .line 210
    iput-object v5, v4, Lcom/tencent/bugly/proguard/M;->j:Lcom/tencent/bugly/proguard/K;

    .line 211
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->m:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->l:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->e:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->m:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->z:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->f:Ljava/lang/String;

    .line 215
    iput-object v5, v4, Lcom/tencent/bugly/proguard/M;->n:Lcom/tencent/bugly/proguard/J;

    .line 216
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->i:Ljava/util/Map;

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_e9

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->o:Ljava/util/ArrayList;

    .line 219
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_73
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 221
    new-instance v7, Lcom/tencent/bugly/proguard/J;

    invoke-direct {v7}, Lcom/tencent/bugly/proguard/J;-><init>()V

    .line 222
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/o;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/o;->a:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/proguard/J;->a:Ljava/lang/String;

    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/o;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/o;->c:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/proguard/J;->b:Ljava/lang/String;

    .line 224
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/o;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/o;->b:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/proguard/J;->c:Ljava/lang/String;

    .line 225
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_73

    .line 174
    :pswitch_a8
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/x;->j:Z

    if-eqz v0, :cond_b2

    const-string v0, "203"

    :goto_ae
    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->a:Ljava/lang/String;

    goto/16 :goto_2a

    :cond_b2
    const-string v0, "103"

    goto :goto_ae

    .line 179
    :pswitch_b5
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/x;->j:Z

    if-eqz v0, :cond_bf

    const-string v0, "200"

    :goto_bb
    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->a:Ljava/lang/String;

    goto/16 :goto_2a

    :cond_bf
    const-string v0, "100"

    goto :goto_bb

    .line 184
    :pswitch_c2
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/x;->j:Z

    if-eqz v0, :cond_cc

    const-string v0, "201"

    :goto_c8
    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->a:Ljava/lang/String;

    goto/16 :goto_2a

    :cond_cc
    const-string v0, "101"

    goto :goto_c8

    .line 189
    :pswitch_cf
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/x;->j:Z

    if-eqz v0, :cond_d9

    const-string v0, "202"

    :goto_d5
    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->a:Ljava/lang/String;

    goto/16 :goto_2a

    :cond_d9
    const-string v0, "102"

    goto :goto_d5

    .line 194
    :pswitch_dc
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/x;->j:Z

    if-eqz v0, :cond_e6

    const-string v0, "204"

    :goto_e2
    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->a:Ljava/lang/String;

    goto/16 :goto_2a

    :cond_e6
    const-string v0, "104"

    goto :goto_e2

    .line 230
    :cond_e9
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->h:Ljava/util/Map;

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_13b

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->p:Ljava/util/ArrayList;

    .line 233
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_106
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 235
    new-instance v7, Lcom/tencent/bugly/proguard/J;

    invoke-direct {v7}, Lcom/tencent/bugly/proguard/J;-><init>()V

    .line 236
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/o;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/o;->a:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/proguard/J;->a:Ljava/lang/String;

    .line 237
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/o;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/o;->c:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/proguard/J;->b:Ljava/lang/String;

    .line 238
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/o;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/o;->b:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/proguard/J;->c:Ljava/lang/String;

    .line 239
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_106

    .line 244
    :cond_13b
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/x;->j:Z

    if-eqz v0, :cond_18c

    .line 246
    iget v0, p0, Lcom/tencent/bugly/proguard/x;->t:I

    iput v0, v4, Lcom/tencent/bugly/proguard/M;->k:I

    .line 247
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    if-eqz v0, :cond_16f

    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16f

    .line 249
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_15a

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->q:Ljava/util/ArrayList;

    .line 254
    :cond_15a
    :try_start_15a
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/bugly/proguard/L;

    const/4 v6, 0x1

    const-string v7, "alltimes.txt"

    iget-object v8, p0, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/tencent/bugly/proguard/L;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15a .. :try_end_16f} :catch_492

    .line 264
    :cond_16f
    :goto_16f
    new-array v1, v10, [Ljava/lang/Object;

    iget v0, v4, Lcom/tencent/bugly/proguard/M;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_49a

    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 267
    :cond_18c
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->w:Ljava/lang/String;

    if-eqz v0, :cond_1b0

    .line 269
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_19b

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->q:Ljava/util/ArrayList;

    .line 273
    :cond_19b
    :try_start_19b
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/bugly/proguard/L;

    const/4 v6, 0x1

    const-string v7, "log.txt"

    iget-object v8, p0, Lcom/tencent/bugly/proguard/x;->w:Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/tencent/bugly/proguard/L;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19b .. :try_end_1b0} :catch_49d

    .line 283
    :cond_1b0
    :goto_1b0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    .line 284
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lcom/tencent/bugly/proguard/x;->A:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A11"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lcom/tencent/bugly/proguard/x;->B:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A10"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lcom/tencent/bugly/proguard/x;->C:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A23"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/tencent/bugly/proguard/x;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A7"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/n;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A6"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/n;->v()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A5"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/n;->u()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A22"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/n;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lcom/tencent/bugly/proguard/x;->E:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lcom/tencent/bugly/proguard/x;->D:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A24"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/n;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A17"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lcom/tencent/bugly/proguard/x;->F:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/n;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A16"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/n;->p()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A25"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/n;->q()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A14"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/n;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A15"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/n;->x()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A13"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/n;->z()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A34"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/tencent/bugly/proguard/x;->y:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :try_start_36f
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A26"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/tencent/bugly/proguard/x;->G:Ljava/lang/String;

    const-string v8, "utf-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36f .. :try_end_38b} :catch_4a5

    .line 311
    :goto_38b
    iget v0, p0, Lcom/tencent/bugly/proguard/x;->b:I

    if-ne v0, v3, :cond_3d1

    .line 313
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A27"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/tencent/bugly/proguard/x;->I:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A28"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/tencent/bugly/proguard/x;->H:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A29"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/tencent/bugly/proguard/x;->k:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_3d1
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A30"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/tencent/bugly/proguard/x;->J:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v1, "A18"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lcom/tencent/bugly/proguard/x;->K:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v1, v4, Lcom/tencent/bugly/proguard/M;->r:Ljava/util/Map;

    const-string v6, "A36"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/x;->L:Z

    if-nez v0, :cond_4ab

    move v0, v3

    :goto_40b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iput-object v5, v4, Lcom/tencent/bugly/proguard/M;->s:Ljava/util/Map;

    .line 322
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    if-eqz v0, :cond_43b

    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_43b

    .line 324
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    iput-object v0, v4, Lcom/tencent/bugly/proguard/M;->s:Ljava/util/Map;

    .line 325
    const-string v0, "setted message size %d"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v5, v4, Lcom/tencent/bugly/proguard/M;->s:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 327
    :cond_43b
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/n;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-wide v6, p0, Lcom/tencent/bugly/proguard/x;->r:J

    iget-wide v8, p0, Lcom/tencent/bugly/proguard/x;->K:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v10

    const/4 v1, 0x3

    iget-boolean v5, p0, Lcom/tencent/bugly/proguard/x;->k:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v1, 0x4

    iget-boolean v5, p0, Lcom/tencent/bugly/proguard/x;->L:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v1, 0x5

    iget-boolean v5, p0, Lcom/tencent/bugly/proguard/x;->j:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v1, 0x6

    iget v5, p0, Lcom/tencent/bugly/proguard/x;->b:I

    if-ne v5, v3, :cond_4ae

    :goto_477
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/bugly/proguard/x;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    move-object v0, v4

    .line 328
    goto/16 :goto_10

    .line 256
    :catch_492
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 260
    iput-object v5, v4, Lcom/tencent/bugly/proguard/M;->q:Ljava/util/ArrayList;

    goto/16 :goto_16f

    :cond_49a
    move v0, v2

    .line 264
    goto/16 :goto_183

    .line 275
    :catch_49d
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 279
    iput-object v5, v4, Lcom/tencent/bugly/proguard/M;->q:Ljava/util/ArrayList;

    goto/16 :goto_1b0

    .line 307
    :catch_4a5
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_38b

    :cond_4ab
    move v0, v2

    .line 319
    goto/16 :goto_40b

    :cond_4ae
    move v3, v2

    .line 327
    goto :goto_477

    .line 170
    :pswitch_data_4b0
    .packed-switch 0x0
        :pswitch_b5
        :pswitch_c2
        :pswitch_cf
        :pswitch_a8
        :pswitch_dc
    .end packed-switch
.end method

.method public static a(Ljava/util/List;Lcom/tencent/bugly/proguard/n;)Lcom/tencent/bugly/proguard/N;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/x;",
            ">;",
            "Lcom/tencent/bugly/proguard/n;",
            ")",
            "Lcom/tencent/bugly/proguard/N;"
        }
    .end annotation

    .prologue
    .line 340
    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_14

    .line 342
    :cond_a
    const-string v0, "enEXPPkg args == null!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 343
    const/4 v0, 0x0

    .line 352
    :goto_13
    return-object v0

    .line 346
    :cond_14
    new-instance v1, Lcom/tencent/bugly/proguard/N;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/N;-><init>()V

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/tencent/bugly/proguard/N;->a:Ljava/util/ArrayList;

    .line 348
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/x;

    .line 350
    iget-object v3, v1, Lcom/tencent/bugly/proguard/N;->a:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/a;->a(Lcom/tencent/bugly/proguard/x;Lcom/tencent/bugly/proguard/n;)Lcom/tencent/bugly/proguard/M;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_3a
    move-object v0, v1

    .line 352
    goto :goto_13
.end method

.method public static a(I[BLcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/crashreport/common/strategy/b;)Lcom/tencent/bugly/proguard/O;
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 395
    if-eqz p2, :cond_6

    if-nez p3, :cond_e

    .line 397
    :cond_6
    const-string v1, "illigle access to create req pkg!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 440
    :cond_d
    :goto_d
    return-object v0

    .line 404
    :cond_e
    :try_start_e
    new-instance v1, Lcom/tencent/bugly/proguard/O;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/O;-><init>()V

    .line 406
    monitor-enter p2
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_14} :catch_84

    .line 408
    :try_start_14
    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/n;->c()B

    move-result v2

    iput v2, v1, Lcom/tencent/bugly/proguard/O;->a:I

    .line 409
    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/n;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/O;->b:Ljava/lang/String;

    .line 410
    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/n;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/O;->c:Ljava/lang/String;

    .line 411
    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/O;->d:Ljava/lang/String;

    .line 412
    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/n;->y()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/O;->e:Ljava/lang/String;

    .line 413
    invoke-static {}, Lcom/tencent/bugly/proguard/n;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/O;->f:Ljava/lang/String;

    .line 414
    iput p0, v1, Lcom/tencent/bugly/proguard/O;->g:I

    .line 415
    if-nez p1, :cond_90

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    :goto_42
    iput-object v2, v1, Lcom/tencent/bugly/proguard/O;->h:[B

    .line 416
    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/n;->i()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/O;->i:Ljava/lang/String;

    .line 417
    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/n;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/O;->j:Ljava/lang/String;

    .line 418
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/tencent/bugly/proguard/O;->k:Ljava/util/Map;

    .line 419
    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/n;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/O;->l:Ljava/lang/String;

    .line 420
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/tencent/bugly/proguard/O;->l:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 421
    monitor-exit p2
    :try_end_69
    .catchall {:try_start_14 .. :try_end_69} :catchall_92

    .line 423
    if-eqz p1, :cond_95

    .line 426
    :try_start_6b
    iget-object v2, v1, Lcom/tencent/bugly/proguard/O;->h:[B

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, p3, Lcom/tencent/bugly/crashreport/common/strategy/b;->i:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/a;->a([BIILjava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/O;->h:[B

    .line 427
    iget-object v2, v1, Lcom/tencent/bugly/proguard/O;->h:[B

    if-nez v2, :cond_95

    .line 429
    const-string v1, "reqPkg sbuffer error!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_83} :catch_84

    goto :goto_d

    .line 436
    :catch_84
    move-exception v1

    .line 438
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 439
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_d

    :cond_90
    move-object v2, p1

    .line 415
    goto :goto_42

    .line 421
    :catchall_92
    move-exception v1

    :try_start_93
    monitor-exit p2

    throw v1
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_95} :catch_84

    :cond_95
    move-object v0, v1

    .line 434
    goto/16 :goto_d
.end method

.method public static a([BLcom/tencent/bugly/crashreport/common/strategy/b;)Lcom/tencent/bugly/proguard/P;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 479
    if-eqz p0, :cond_6d

    .line 483
    :try_start_3
    new-instance v0, Lcom/tencent/bugly/proguard/d;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/d;-><init>()V

    .line 484
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/d;->o()V

    .line 485
    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/d;->a(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/d;->a([B)V

    .line 487
    const-string v2, "detail"

    new-instance v3, Lcom/tencent/bugly/proguard/P;

    invoke-direct {v3}, Lcom/tencent/bugly/proguard/P;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/bugly/proguard/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 490
    const-class v2, Lcom/tencent/bugly/proguard/P;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 492
    const-class v2, Lcom/tencent/bugly/proguard/P;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/P;

    .line 495
    :goto_2e
    if-eqz v0, :cond_62

    iget-object v2, v0, Lcom/tencent/bugly/proguard/P;->c:[B

    if-eqz v2, :cond_62

    iget-object v2, v0, Lcom/tencent/bugly/proguard/P;->c:[B

    array-length v2, v2

    if-lez v2, :cond_62

    .line 497
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/tencent/bugly/proguard/P;->c:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 499
    iget-object v2, v0, Lcom/tencent/bugly/proguard/P;->c:[B

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/tencent/bugly/crashreport/common/strategy/b;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/a;->b([BIILjava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/proguard/P;->c:[B

    .line 500
    iget-object v2, v0, Lcom/tencent/bugly/proguard/P;->c:[B

    if-nez v2, :cond_62

    .line 502
    const-string v0, "resp sbuffer error!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_61} :catch_63

    move-object v0, v1

    .line 515
    :cond_62
    :goto_62
    return-object v0

    .line 508
    :catch_63
    move-exception v0

    .line 510
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 511
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6d
    move-object v0, v1

    .line 515
    goto :goto_62

    :cond_6f
    move-object v0, v1

    goto :goto_2e
.end method

.method public static a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    array-length v0, p0

    invoke-virtual {v1, p0, v2, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 167
    :try_start_c
    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_16
    .catchall {:try_start_c .. :try_end_f} :catchall_21

    move-result-object v0

    .line 176
    if-eqz v1, :cond_15

    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_15
    :goto_15
    return-object v0

    .line 169
    :catch_16
    move-exception v0

    .line 171
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_21

    .line 172
    if-eqz v1, :cond_1f

    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_1f
    const/4 v0, 0x0

    goto :goto_15

    .line 176
    :catchall_21
    move-exception v0

    if-eqz v1, :cond_27

    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_27
    throw v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 32
    if-nez p0, :cond_4

    .line 33
    const/4 v0, 0x0

    .line 45
    :goto_3
    return-object v0

    .line 36
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    goto :goto_3

    .line 38
    :catch_9
    move-exception v0

    .line 40
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    :cond_13
    const-string v0, "fail"

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 368
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 370
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 372
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_10

    .line 374
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 377
    :goto_22
    return-object v0

    :cond_23
    const-string v0, "unknown"

    goto :goto_22
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 52
    if-nez p0, :cond_5

    .line 53
    const-string v0, ""

    .line 67
    :goto_4
    return-object v0

    .line 57
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 58
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_4

    .line 61
    :catch_1b
    move-exception v0

    .line 63
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    :cond_25
    const-string v0, "fail"

    goto :goto_4
.end method

.method public static a(Ljava/lang/Throwable;I)Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v3, 0x3e8

    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 39
    const-string v0, ""

    .line 47
    :goto_a
    return-object v0

    .line 41
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_1a

    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 47
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n[Message over limit size:1000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", has been cutted!]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    .line 87
    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d2

    .line 88
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "java.lang.Integer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "int"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    :cond_23
    const-string v0, "int32"

    :cond_25
    :goto_25
    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 88
    :cond_2c
    const-string v4, "java.lang.Boolean"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string v4, "boolean"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    :cond_3c
    const-string v0, "bool"

    goto :goto_25

    :cond_3f
    const-string v4, "java.lang.Byte"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    const-string v4, "byte"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    :cond_4f
    const-string v0, "char"

    goto :goto_25

    :cond_52
    const-string v4, "java.lang.Double"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    const-string v4, "double"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    :cond_62
    const-string v0, "double"

    goto :goto_25

    :cond_65
    const-string v4, "java.lang.Float"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    const-string v4, "float"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    :cond_75
    const-string v0, "float"

    goto :goto_25

    :cond_78
    const-string v4, "java.lang.Long"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_88

    const-string v4, "long"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    :cond_88
    const-string v0, "int64"

    goto :goto_25

    :cond_8b
    const-string v4, "java.lang.Short"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9b

    const-string v4, "short"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    :cond_9b
    const-string v0, "short"

    goto :goto_25

    :cond_9e
    const-string v4, "java.lang.Character"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not support java.lang.Character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ae
    const-string v4, "java.lang.String"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ba

    const-string v0, "string"

    goto/16 :goto_25

    :cond_ba
    const-string v4, "java.util.List"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c6

    const-string v0, "list"

    goto/16 :goto_25

    :cond_c6
    const-string v4, "java.util.Map"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v0, "map"

    goto/16 :goto_25

    .line 90
    :cond_d2
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    move v1, v2

    .line 91
    :goto_d6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1af

    .line 92
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    const-string v4, "list"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_126

    .line 94
    add-int/lit8 v4, v1, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_122
    :goto_122
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d6

    .line 96
    :cond_126
    const-string v4, "map"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16d

    .line 97
    add-int/lit8 v4, v1, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_122

    .line 99
    :cond_16d
    const-string v4, "Array"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 100
    add-int/lit8 v4, v1, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_122

    .line 104
    :cond_1af
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 105
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b6

    .line 108
    :cond_1c6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 652
    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 659
    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 660
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1c} :catch_8e
    .catchall {:try_start_6 .. :try_end_1c} :catchall_72

    .line 661
    :goto_1c
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 663
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_25} :catch_26
    .catchall {:try_start_1c .. :try_end_25} :catchall_89

    goto :goto_1c

    .line 672
    :catch_26
    move-exception v0

    move-object v2, v1

    .line 674
    :goto_28
    :try_start_28
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 675
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_8b

    .line 676
    :cond_31
    if-eqz v3, :cond_36

    .line 684
    :try_start_33
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_68

    .line 693
    :cond_36
    :goto_36
    if-eqz v2, :cond_3b

    .line 697
    :try_start_38
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_6d

    :cond_3b
    :goto_3b
    move-object v0, v1

    .line 706
    :goto_3c
    return-object v0

    .line 666
    :cond_3d
    :try_start_3d
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_4b} :catch_26
    .catchall {:try_start_3d .. :try_end_4b} :catchall_89

    .line 667
    :goto_4b
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_57

    .line 669
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_54} :catch_55
    .catchall {:try_start_4b .. :try_end_54} :catchall_8b

    goto :goto_4b

    .line 672
    :catch_55
    move-exception v0

    goto :goto_28

    .line 680
    :cond_57
    :try_start_57
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_63

    .line 693
    :goto_5a
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_3c

    .line 699
    :catch_5e
    move-exception v1

    .line 702
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    .line 686
    :catch_63
    move-exception v1

    .line 689
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a

    .line 686
    :catch_68
    move-exception v0

    .line 689
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 699
    :catch_6d
    move-exception v0

    .line 702
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 680
    :catchall_72
    move-exception v0

    move-object v3, v1

    :goto_74
    if-eqz v3, :cond_79

    .line 684
    :try_start_76
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7f

    .line 693
    :cond_79
    :goto_79
    if-eqz v1, :cond_7e

    .line 697
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_84

    .line 703
    :cond_7e
    :goto_7e
    throw v0

    .line 686
    :catch_7f
    move-exception v2

    .line 689
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_79

    .line 699
    :catch_84
    move-exception v1

    .line 702
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7e

    .line 680
    :catchall_89
    move-exception v0

    goto :goto_74

    :catchall_8b
    move-exception v0

    move-object v1, v2

    goto :goto_74

    .line 672
    :catch_8e
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_28
.end method

.method public static a(IZ)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x4e20

    const/4 v4, 0x0

    .line 236
    new-instance v2, Ljava/util/HashMap;

    const/16 v0, 0xc

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 237
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 238
    if-nez v0, :cond_12

    .line 239
    const/4 v0, 0x0

    .line 266
    :goto_11
    return-object v0

    .line 241
    :cond_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_26
    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    array-length v1, v1

    if-eqz v1, :cond_26

    .line 250
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    array-length v7, v1

    move v3, v4

    :goto_4c
    if-ge v3, v7, :cond_6e

    aget-object v8, v1, v3

    .line 254
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lt v9, v10, :cond_a7

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\n[Stack over limit size :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , has been cutted !]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_6e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 261
    :cond_a7
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_b7
    move-object v0, v2

    .line 266
    goto/16 :goto_11
.end method

.method public static a(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/o;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 74
    if-nez v2, :cond_9

    .line 93
    :goto_8
    return-object v1

    .line 76
    :cond_9
    const-string v3, "pluginKeys"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 77
    const-string v4, "pluginValues"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 80
    if-eqz v3, :cond_49

    if-eqz v2, :cond_49

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_49

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 83
    :goto_2c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_46

    .line 85
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lcom/tencent/bugly/proguard/o;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_46
    move-object v0, v1

    :goto_47
    move-object v1, v0

    .line 93
    goto :goto_8

    .line 90
    :cond_49
    const-string v2, "map plugin parcel error!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_47
.end method

.method public static a(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    if-eqz p1, :cond_a

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_f

    .line 54
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 69
    :goto_e
    return-void

    .line 57
    :cond_f
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 65
    :cond_40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    const-string v3, "pluginKeys"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 67
    const-string v1, "pluginValues"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 68
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_e
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 279
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only byte[] is supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_27
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3a

    .line 283
    const-string v0, "java.util.List"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 318
    :goto_39
    return-void

    .line 286
    :cond_3a
    const-string v0, "Array"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 290
    :cond_45
    instance-of v0, p2, Ljava/lang/reflect/Array;

    if-eqz v0, :cond_51

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not support Array, please use List"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_51
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_70

    .line 293
    const-string v0, "java.util.List"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    check-cast p2, Ljava/util/List;

    .line 295
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6a

    .line 296
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_39

    .line 298
    :cond_6a
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 301
    :cond_70
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_ab

    .line 302
    const-string v0, "java.util.Map"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    check-cast p2, Ljava/util/Map;

    .line 304
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a0

    .line 305
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 307
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 308
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-direct {p0, p1, v1}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_39

    .line 311
    :cond_a0
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 316
    :cond_ab
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 83
    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_10

    .line 110
    :cond_f
    :goto_f
    return v0

    .line 88
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 89
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 91
    if-eqz v2, :cond_f

    .line 93
    array-length v3, v2

    move v1, v0

    :goto_24
    if-ge v1, v3, :cond_f

    aget-object v4, v2, v1

    .line 95
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_2b} :catch_33

    move-result v4

    if-eqz v4, :cond_30

    .line 96
    const/4 v0, 0x1

    goto :goto_f

    .line 93
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 101
    :catch_33
    move-exception v1

    .line 103
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 105
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f
.end method

.method public static a(J)[B
    .registers 4

    .prologue
    .line 959
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    .line 965
    :goto_13
    return-object v0

    .line 961
    :catch_14
    move-exception v0

    .line 963
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 965
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static a(Lcom/tencent/bugly/proguard/O;)[B
    .registers 3

    .prologue
    .line 454
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/d;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/d;-><init>()V

    .line 455
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/d;->o()V

    .line 456
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/d;->a(Ljava/lang/String;)V

    .line 457
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/d;->a(I)V

    .line 458
    const-string v1, "RqdServer"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/d;->c(Ljava/lang/String;)V

    .line 459
    const-string v1, "sync"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/d;->d(Ljava/lang/String;)V

    .line 460
    const-string v1, "detail"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/bugly/proguard/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/d;->a()[B
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_25

    move-result-object v0

    .line 468
    :goto_24
    return-object v0

    .line 463
    :catch_25
    move-exception v0

    .line 465
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 466
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 468
    :cond_2f
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public static a(Lcom/tencent/bugly/proguard/j;)[B
    .registers 3

    .prologue
    .line 528
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/i;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i;-><init>()V

    .line 529
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(Lcom/tencent/bugly/proguard/i;)V

    .line 531
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/i;->b()[B
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    .line 538
    :goto_11
    return-object v0

    .line 533
    :catch_12
    move-exception v0

    .line 535
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 536
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 538
    :cond_1c
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static a([BI)[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 291
    if-eqz p0, :cond_6

    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    .line 313
    :cond_6
    :goto_6
    return-object p0

    .line 294
    :cond_7
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 301
    :try_start_1c
    invoke-static {p1}, Lcom/tencent/bugly/proguard/C;->a(I)Lcom/tencent/bugly/proguard/D;

    move-result-object v1

    .line 302
    if-nez v1, :cond_24

    move-object p0, v0

    .line 303
    goto :goto_6

    .line 305
    :cond_24
    invoke-interface {v1, p0}, Lcom/tencent/bugly/proguard/D;->a([B)[B
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_27} :catch_29

    move-result-object p0

    goto :goto_6

    .line 309
    :catch_29
    move-exception v1

    .line 311
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 312
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_33
    move-object p0, v0

    .line 313
    goto :goto_6
.end method

.method public static a([BIILjava/lang/String;)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 349
    if-nez p0, :cond_4

    .line 364
    :cond_3
    :goto_3
    return-object v0

    .line 354
    :cond_4
    const/4 v1, 0x2

    :try_start_5
    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/a;->a([BI)[B

    move-result-object v1

    .line 356
    const/4 v2, 0x1

    invoke-static {v1, v2, p3}, Lcom/tencent/bugly/proguard/a;->a([BILjava/lang/String;)[B
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_3

    .line 360
    :catch_f
    move-exception v1

    .line 362
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 363
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static a([BILjava/lang/String;)[B
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 233
    if-eqz p0, :cond_7

    const/4 v1, -0x1

    if-ne p1, v1, :cond_8

    .line 255
    :cond_7
    :goto_7
    return-object p0

    .line 236
    :cond_8
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 242
    if-ne p1, v4, :cond_27

    :try_start_1e
    new-instance v1, Lcom/tencent/bugly/proguard/H;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/H;-><init>()V

    .line 243
    :goto_23
    if-nez v1, :cond_3e

    move-object p0, v0

    .line 244
    goto :goto_7

    .line 242
    :cond_27
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3c

    new-instance v1, Lcom/tencent/bugly/proguard/G;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/G;-><init>()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_2f} :catch_30

    goto :goto_23

    .line 251
    :catch_30
    move-exception v1

    .line 253
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 254
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3a
    move-object p0, v0

    .line 255
    goto :goto_7

    :cond_3c
    move-object v1, v0

    .line 242
    goto :goto_23

    .line 246
    :cond_3e
    :try_start_3e
    invoke-interface {v1, p2}, Lcom/tencent/bugly/proguard/I;->a(Ljava/lang/String;)V

    .line 247
    invoke-interface {v1, p0}, Lcom/tencent/bugly/proguard/I;->b([B)[B
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_44} :catch_30

    move-result-object p0

    goto :goto_7
.end method

.method public static b([B)Lcom/tencent/bugly/proguard/R;
    .registers 4

    .prologue
    .line 365
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/R;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/R;-><init>()V

    .line 366
    new-instance v1, Lcom/tencent/bugly/proguard/h;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/h;-><init>([B)V

    .line 367
    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)I

    .line 368
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/R;->a(Lcom/tencent/bugly/proguard/h;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 377
    :goto_12
    return-object v0

    .line 372
    :catch_13
    move-exception v0

    .line 374
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 375
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 377
    :cond_1d
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    .line 60
    :goto_2
    return-object v0

    .line 55
    :catch_3
    move-exception v0

    .line 57
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    :cond_d
    const-string v0, "fail"

    goto :goto_2
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 59
    const-class v1, Lcom/tencent/bugly/proguard/a;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/tencent/bugly/proguard/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 61
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_12} :catch_14
    .catchall {:try_start_3 .. :try_end_12} :catchall_21

    .line 71
    :goto_12
    monitor-exit v1

    return-object v0

    .line 64
    :catch_14
    move-exception v0

    .line 66
    :try_start_15
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    :cond_1e
    const-string v0, "fail"
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_21

    goto :goto_12

    .line 59
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 160
    invoke-static {p0}, Lcom/tencent/bugly/proguard/a;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 162
    const-string v1, "no read_log permission!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 220
    :cond_f
    :goto_f
    return-object v0

    .line 166
    :cond_10
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "logcat"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "-d"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "-v"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "threadtime"

    aput-object v3, v1, v2

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    :try_start_2b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_32} :catch_114
    .catchall {:try_start_2b .. :try_end_32} :catchall_e5

    move-result-object v2

    .line 172
    :try_start_33
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 174
    :cond_41
    :goto_41
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ae

    .line 176
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v4, 0x4e20

    if-le v1, v4, :cond_41

    .line 179
    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit16 v4, v4, -0x4e20

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_62} :catch_63
    .catchall {:try_start_33 .. :try_end_62} :catchall_10f

    goto :goto_41

    .line 184
    :catch_63
    move-exception v0

    move-object v1, v2

    .line 186
    :goto_65
    :try_start_65
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 187
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    :cond_6e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\n[error:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8e
    .catchall {:try_start_65 .. :try_end_8e} :catchall_111

    move-result-object v0

    .line 192
    if-eqz v1, :cond_f

    .line 196
    :try_start_91
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_98} :catch_db

    .line 205
    :goto_98
    :try_start_98
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9f} :catch_e0

    .line 214
    :goto_9f
    :try_start_9f
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a6} :catch_a8

    goto/16 :goto_f

    .line 216
    :catch_a8
    move-exception v1

    .line 219
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    .line 182
    :cond_ae
    :try_start_ae
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b1} :catch_63
    .catchall {:try_start_ae .. :try_end_b1} :catchall_10f

    move-result-object v0

    .line 192
    if-eqz v2, :cond_f

    .line 196
    :try_start_b4
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_bb} :catch_d1

    .line 205
    :goto_bb
    :try_start_bb
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c2} :catch_d6

    .line 214
    :goto_c2
    :try_start_c2
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c9} :catch_cb

    goto/16 :goto_f

    .line 216
    :catch_cb
    move-exception v1

    .line 219
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    .line 198
    :catch_d1
    move-exception v1

    .line 201
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_bb

    .line 207
    :catch_d6
    move-exception v1

    .line 210
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c2

    .line 198
    :catch_db
    move-exception v2

    .line 201
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_98

    .line 207
    :catch_e0
    move-exception v2

    .line 210
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9f

    .line 192
    :catchall_e5
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_e8
    if-eqz v2, :cond_ff

    .line 196
    :try_start_ea
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_f1} :catch_100

    .line 205
    :goto_f1
    :try_start_f1
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f8} :catch_105

    .line 214
    :goto_f8
    :try_start_f8
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_ff} :catch_10a

    .line 220
    :cond_ff
    :goto_ff
    throw v0

    .line 198
    :catch_100
    move-exception v1

    .line 201
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f1

    .line 207
    :catch_105
    move-exception v1

    .line 210
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f8

    .line 216
    :catch_10a
    move-exception v1

    .line 219
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ff

    .line 192
    :catchall_10f
    move-exception v0

    goto :goto_e8

    :catchall_111
    move-exception v0

    move-object v2, v1

    goto :goto_e8

    .line 184
    :catch_114
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_65
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 716
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 718
    :cond_f
    const-string v0, ""

    .line 726
    :goto_11
    return-object v0

    .line 721
    :cond_12
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/bin/sh"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getprop "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/bugly/proguard/a;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 722
    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_43

    .line 724
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_11

    .line 726
    :cond_43
    const-string v0, "fail"

    goto :goto_11
.end method

.method public static b(Ljava/lang/Throwable;I)Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v6, 0x4e20

    .line 111
    if-nez p0, :cond_6

    .line 112
    const/4 v0, 0x0

    .line 130
    :goto_5
    return-object v0

    .line 114
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 117
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v3, :cond_4e

    aget-object v4, v2, v0

    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lt v5, v6, :cond_3e

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\n[Stack over limit size :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , has been cutted !]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 126
    :cond_3e
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 130
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static b(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 122
    if-nez v2, :cond_9

    .line 142
    :goto_8
    return-object v1

    .line 126
    :cond_9
    const-string v3, "keys"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 127
    const-string v4, "values"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 129
    if-eqz v3, :cond_43

    if-eqz v2, :cond_43

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_43

    .line 131
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 132
    :goto_2c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_40

    .line 134
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_40
    move-object v0, v1

    :goto_41
    move-object v1, v0

    .line 142
    goto :goto_8

    .line 139
    :cond_43
    const-string v2, "map parcel error!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_41
.end method

.method public static b(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    if-eqz p1, :cond_a

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_f

    .line 100
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 117
    :goto_e
    return-void

    .line 104
    :cond_f
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 113
    :cond_40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    const-string v3, "keys"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 115
    const-string v1, "values"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 116
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_e
.end method

.method public static b([BI)[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 320
    if-eqz p0, :cond_6

    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    .line 342
    :cond_6
    :goto_6
    return-object p0

    .line 323
    :cond_7
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 330
    :try_start_1c
    invoke-static {p1}, Lcom/tencent/bugly/proguard/C;->a(I)Lcom/tencent/bugly/proguard/D;

    move-result-object v1

    .line 331
    if-nez v1, :cond_24

    move-object p0, v0

    .line 332
    goto :goto_6

    .line 334
    :cond_24
    invoke-interface {v1, p0}, Lcom/tencent/bugly/proguard/D;->b([B)[B
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_27} :catch_29

    move-result-object p0

    goto :goto_6

    .line 338
    :catch_29
    move-exception v1

    .line 340
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 341
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_33
    move-object p0, v0

    .line 342
    goto :goto_6
.end method

.method public static b([BIILjava/lang/String;)[B
    .registers 6

    .prologue
    .line 373
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0, p3}, Lcom/tencent/bugly/proguard/a;->b([BILjava/lang/String;)[B

    move-result-object v0

    .line 375
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/a;->b([BI)[B
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v0

    .line 382
    :goto_a
    return-object v0

    .line 378
    :catch_b
    move-exception v0

    .line 380
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 381
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 382
    :cond_15
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static b([BILjava/lang/String;)[B
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 262
    if-eqz p0, :cond_7

    const/4 v1, -0x1

    if-ne p1, v1, :cond_8

    .line 284
    :cond_7
    :goto_7
    return-object p0

    .line 269
    :cond_8
    if-ne p1, v5, :cond_13

    :try_start_a
    new-instance v1, Lcom/tencent/bugly/proguard/H;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/H;-><init>()V

    .line 270
    :goto_f
    if-nez v1, :cond_3b

    move-object p0, v0

    .line 271
    goto :goto_7

    .line 269
    :cond_13
    const/4 v1, 0x3

    if-ne p1, v1, :cond_39

    new-instance v1, Lcom/tencent/bugly/proguard/G;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/G;-><init>()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1b} :catch_1c

    goto :goto_f

    .line 279
    :catch_1c
    move-exception v1

    .line 281
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 282
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 283
    :cond_26
    const-string v1, "encrytype %d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object p0, v0

    .line 284
    goto :goto_7

    :cond_39
    move-object v1, v0

    .line 269
    goto :goto_f

    .line 273
    :cond_3b
    :try_start_3b
    invoke-interface {v1, p2}, Lcom/tencent/bugly/proguard/I;->a(Ljava/lang/String;)V

    .line 274
    invoke-interface {v1, p0}, Lcom/tencent/bugly/proguard/I;->a([B)[B
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_41} :catch_1c

    move-result-object p0

    goto :goto_7
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    .line 74
    :goto_2
    return-object v0

    .line 69
    :catch_3
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    :cond_d
    const-string v0, "fail"

    goto :goto_2
.end method

.method public static c([B)Ljava/lang/String;
    .registers 7

    .prologue
    .line 452
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_8

    .line 453
    :cond_5
    const-string v0, "NULL"

    .line 466
    :goto_7
    return-object v0

    .line 458
    :cond_8
    :try_start_8
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 459
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 460
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    if-nez v1, :cond_1a

    const-string v0, ""

    goto :goto_7

    :cond_1a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_20
    array-length v3, v1

    if-ge v0, v3, :cond_3d

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_37

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_44
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_44} :catch_46

    move-result-object v0

    goto :goto_7

    .line 462
    :catch_46
    move-exception v0

    .line 464
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 465
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 466
    :cond_50
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 121
    const-class v1, Lcom/tencent/bugly/proguard/a;

    monitor-enter v1

    :try_start_3
    const-string v0, "android.permission.READ_LOGS"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d()I
    .registers 2

    .prologue
    .line 81
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    .line 88
    :goto_2
    return v0

    .line 83
    :catch_3
    move-exception v0

    .line 85
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    :cond_d
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public static d([B)J
    .registers 5

    .prologue
    const-wide/16 v0, -0x1

    .line 975
    if-nez p0, :cond_8

    array-length v2, p0

    if-nez v2, :cond_8

    .line 986
    :goto_7
    return-wide v0

    .line 980
    :cond_8
    :try_start_8
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_12} :catch_14

    move-result-wide v0

    goto :goto_7

    .line 982
    :catch_14
    move-exception v2

    .line 984
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_7
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 191
    if-nez p0, :cond_6

    move-object v0, v1

    .line 223
    :goto_5
    return-object v0

    .line 196
    :cond_6
    :try_start_6
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 197
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_20

    .line 200
    :cond_1a
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    .line 203
    :cond_20
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 207
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v3, :cond_28

    .line 208
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_44

    const/4 v0, 0x1

    :goto_3f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    :cond_44
    move v0, v2

    goto :goto_3f

    .line 214
    :cond_46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_4a} :catch_4c

    move-result-object v0

    goto :goto_5

    .line 216
    :catch_4c
    move-exception v0

    .line 218
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 220
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_56
    move-object v0, v1

    .line 223
    goto :goto_5
.end method

.method public static e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    :try_start_0
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    .line 234
    :goto_13
    return-object v0

    .line 229
    :catch_14
    move-exception v0

    .line 231
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 232
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 234
    :cond_1e
    const-string v0, "fail"

    goto :goto_13
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 386
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/a;->a(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 392
    :goto_8
    return-object v0

    .line 388
    :catch_9
    move-exception v0

    .line 390
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 392
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static f()J
    .registers 6

    .prologue
    .line 244
    const-wide/16 v0, -0x1

    .line 247
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 248
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 250
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_17} :catch_1b

    move-result v0

    int-to-long v0, v0

    .line 251
    mul-long/2addr v0, v4

    .line 258
    :cond_1a
    :goto_1a
    return-wide v0

    .line 253
    :catch_1b
    move-exception v2

    .line 255
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 256
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 94
    const-string v1, "fail"

    .line 95
    if-nez p0, :cond_6

    move-object v0, v1

    .line 118
    :cond_5
    :goto_5
    return-object v0

    .line 102
    :cond_6
    :try_start_6
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 103
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 104
    if-nez v1, :cond_17

    .line 106
    const-string v0, "null"

    goto :goto_5

    .line 110
    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1a} :catch_1c

    move-result-object v0

    goto :goto_5

    .line 113
    :catch_1c
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 115
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 116
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public static g()J
    .registers 6

    .prologue
    .line 268
    const-wide/16 v0, -0x1

    .line 271
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 272
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 274
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_17} :catch_1b

    move-result v0

    int-to-long v0, v0

    .line 275
    mul-long/2addr v0, v4

    .line 282
    :cond_1a
    :goto_1a
    return-wide v0

    .line 277
    :catch_1b
    move-exception v2

    .line 279
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 280
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 124
    const-string v1, "fail"

    .line 125
    if-nez p0, :cond_6

    move-object v0, v1

    .line 147
    :cond_5
    :goto_5
    return-object v0

    .line 131
    :cond_6
    :try_start_6
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 132
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 133
    if-nez v1, :cond_17

    .line 135
    const-string v0, "null"

    goto :goto_5

    .line 139
    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1a} :catch_1c

    move-result-object v0

    goto :goto_5

    .line 142
    :catch_1c
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 144
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 145
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public static h()J
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 292
    const-string v0, "/proc/meminfo"

    .line 297
    :try_start_3
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_51
    .catchall {:try_start_3 .. :try_end_8} :catchall_7f

    .line 298
    :try_start_8
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v0, 0x800

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_ac
    .catchall {:try_start_8 .. :try_end_f} :catchall_a3

    .line 299
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 300
    const-string v1, ":\\s+"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 301
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string v1, "kb"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_30} :catch_af
    .catchall {:try_start_f .. :try_end_30} :catchall_a6

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    .line 304
    :try_start_34
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_3b

    .line 326
    :cond_37
    :goto_37
    :try_start_37
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_46

    .line 340
    :cond_3a
    :goto_3a
    return-wide v0

    .line 320
    :catch_3b
    move-exception v2

    .line 322
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 323
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    .line 332
    :catch_46
    move-exception v2

    .line 334
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 335
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    .line 306
    :catch_51
    move-exception v0

    move-object v2, v1

    .line 308
    :goto_53
    :try_start_53
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 309
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_a8

    .line 314
    :cond_5c
    if-eqz v1, :cond_61

    .line 318
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_69

    .line 326
    :cond_61
    :goto_61
    if-eqz v2, :cond_66

    .line 330
    :try_start_63
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_74

    .line 340
    :cond_66
    :goto_66
    const-wide/16 v0, -0x2

    goto :goto_3a

    .line 320
    :catch_69
    move-exception v0

    .line 322
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 323
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_61

    .line 332
    :catch_74
    move-exception v0

    .line 334
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 335
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66

    .line 314
    :catchall_7f
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_82
    if-eqz v2, :cond_87

    .line 318
    :try_start_84
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_8d

    .line 326
    :cond_87
    :goto_87
    if-eqz v3, :cond_8c

    .line 330
    :try_start_89
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_98

    .line 336
    :cond_8c
    :goto_8c
    throw v0

    .line 320
    :catch_8d
    move-exception v1

    .line 322
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 323
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87

    .line 332
    :catch_98
    move-exception v1

    .line 334
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_8c

    .line 335
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8c

    .line 314
    :catchall_a3
    move-exception v0

    move-object v2, v1

    goto :goto_82

    :catchall_a6
    move-exception v0

    goto :goto_82

    :catchall_a8
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_82

    .line 306
    :catch_ac
    move-exception v0

    move-object v2, v3

    goto :goto_53

    :catch_af
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_53
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 153
    const-string v0, "fail"

    .line 154
    if-nez p0, :cond_5

    .line 176
    :cond_4
    :goto_4
    return-object v0

    .line 161
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_e} :catch_19

    move-result-object v1

    .line 162
    if-nez v1, :cond_14

    .line 164
    :try_start_11
    const-string v0, "null"

    goto :goto_4

    .line 168
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_17} :catch_24

    move-result-object v0

    goto :goto_4

    .line 171
    :catch_19
    move-exception v1

    .line 173
    :goto_1a
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 174
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 171
    :catch_24
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1a
.end method

.method public static i()J
    .registers 12

    .prologue
    const/4 v1, 0x0

    const-wide/16 v10, 0x3e8

    .line 350
    const-string v0, "/proc/meminfo"

    .line 355
    :try_start_5
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_9c
    .catchall {:try_start_5 .. :try_end_a} :catchall_ca

    .line 356
    :try_start_a
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v0, 0x800

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_11} :catch_f7
    .catchall {:try_start_a .. :try_end_11} :catchall_ee

    .line 357
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 358
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 359
    const-string v1, ":\\s+"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 360
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 361
    const-string v1, "kb"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v10

    .line 364
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 365
    const-string v5, ":\\s+"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 366
    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 367
    const-string v5, "kb"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v10

    .line 370
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 371
    const-string v7, ":\\s+"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 372
    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 373
    const-string v7, "kb"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 374
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_7b} :catch_fa
    .catchall {:try_start_11 .. :try_end_7b} :catchall_f1

    move-result-wide v6

    mul-long/2addr v6, v10

    .line 376
    add-long/2addr v0, v4

    add-long/2addr v0, v6

    .line 386
    :try_start_7f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_86

    .line 398
    :cond_82
    :goto_82
    :try_start_82
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_91

    .line 412
    :cond_85
    :goto_85
    return-wide v0

    .line 392
    :catch_86
    move-exception v2

    .line 394
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_82

    .line 395
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_82

    .line 404
    :catch_91
    move-exception v2

    .line 406
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 407
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_85

    .line 378
    :catch_9c
    move-exception v0

    move-object v2, v1

    .line 380
    :goto_9e
    :try_start_9e
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 381
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a7
    .catchall {:try_start_9e .. :try_end_a7} :catchall_f3

    .line 386
    :cond_a7
    if-eqz v1, :cond_ac

    .line 390
    :try_start_a9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_b4

    .line 398
    :cond_ac
    :goto_ac
    if-eqz v2, :cond_b1

    .line 402
    :try_start_ae
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_bf

    .line 412
    :cond_b1
    :goto_b1
    const-wide/16 v0, -0x2

    goto :goto_85

    .line 392
    :catch_b4
    move-exception v0

    .line 394
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 395
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ac

    .line 404
    :catch_bf
    move-exception v0

    .line 406
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_b1

    .line 407
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b1

    .line 386
    :catchall_ca
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_cd
    if-eqz v2, :cond_d2

    .line 390
    :try_start_cf
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d8

    .line 398
    :cond_d2
    :goto_d2
    if-eqz v3, :cond_d7

    .line 402
    :try_start_d4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_e3

    .line 408
    :cond_d7
    :goto_d7
    throw v0

    .line 392
    :catch_d8
    move-exception v1

    .line 394
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_d2

    .line 395
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d2

    .line 404
    :catch_e3
    move-exception v1

    .line 406
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_d7

    .line 407
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d7

    .line 386
    :catchall_ee
    move-exception v0

    move-object v2, v1

    goto :goto_cd

    :catchall_f1
    move-exception v0

    goto :goto_cd

    :catchall_f3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_cd

    .line 378
    :catch_f7
    move-exception v0

    move-object v2, v3

    goto :goto_9e

    :catch_fa
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_9e
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 182
    const-string v1, "fail"

    .line 183
    if-nez p0, :cond_6

    move-object v0, v1

    .line 207
    :cond_5
    :goto_5
    return-object v0

    .line 190
    :cond_6
    :try_start_6
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 191
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 193
    if-nez v1, :cond_1b

    .line 195
    const-string v0, "null"

    goto :goto_5

    .line 199
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1e} :catch_20

    move-result-object v0

    goto :goto_5

    .line 202
    :catch_20
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 204
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 205
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public static j()J
    .registers 4

    .prologue
    .line 418
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_d
    if-nez v0, :cond_14

    .line 420
    const-wide/16 v0, 0x0

    .line 435
    :goto_11
    return-wide v0

    .line 418
    :cond_12
    const/4 v0, 0x0

    goto :goto_d

    .line 425
    :cond_14
    :try_start_14
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 427
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_28} :catch_2d

    move-result v0

    int-to-long v2, v0

    .line 428
    int-to-long v0, v1

    mul-long/2addr v0, v2

    goto :goto_11

    .line 430
    :catch_2d
    move-exception v0

    .line 432
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 433
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 435
    :cond_37
    const-wide/16 v0, -0x2

    goto :goto_11
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 529
    const-string v1, "unknown"

    .line 532
    :try_start_2
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 533
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 534
    if-nez v0, :cond_12

    .line 535
    const/4 v1, 0x0

    .line 604
    :cond_11
    :goto_11
    return-object v1

    .line 536
    :cond_12
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 538
    const-string v1, "WIFI"

    goto :goto_11

    .line 540
    :cond_1c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_82

    .line 542
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 543
    if-eqz v0, :cond_82

    .line 545
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 546
    packed-switch v0, :pswitch_data_84

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MOBILE("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_48
    move-object v1, v0

    .line 603
    goto :goto_11

    .line 549
    :pswitch_4a
    const-string v1, "GPRS"

    goto :goto_11

    .line 552
    :pswitch_4d
    const-string v1, "EDGE"

    goto :goto_11

    .line 555
    :pswitch_50
    const-string v1, "UMTS"

    goto :goto_11

    .line 558
    :pswitch_53
    const-string v1, "HSDPA"

    goto :goto_11

    .line 561
    :pswitch_56
    const-string v1, "HSUPA"

    goto :goto_11

    .line 564
    :pswitch_59
    const-string v1, "HSPA"

    goto :goto_11

    .line 567
    :pswitch_5c
    const-string v1, "CDMA"

    goto :goto_11

    .line 570
    :pswitch_5f
    const-string v1, "EVDO_0"

    goto :goto_11

    .line 573
    :pswitch_62
    const-string v1, "EVDO_A"

    goto :goto_11

    .line 576
    :pswitch_65
    const-string v1, "1xRTT"

    goto :goto_11

    .line 579
    :pswitch_68
    const-string v1, "iDen"

    goto :goto_11

    .line 582
    :pswitch_6b
    const-string v1, "EVDO_B"

    goto :goto_11

    .line 585
    :pswitch_6e
    const-string v1, "LTE"

    goto :goto_11

    .line 588
    :pswitch_71
    const-string v1, "eHRPD"

    goto :goto_11

    .line 591
    :pswitch_74
    const-string v1, "HSPA+"
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_76} :catch_77

    goto :goto_11

    .line 599
    :catch_77
    move-exception v0

    .line 601
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 602
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    :cond_82
    move-object v0, v1

    goto :goto_48

    .line 546
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
        :pswitch_5c
        :pswitch_5f
        :pswitch_62
        :pswitch_65
        :pswitch_53
        :pswitch_56
        :pswitch_59
        :pswitch_68
        :pswitch_6b
        :pswitch_6e
        :pswitch_71
        :pswitch_74
    .end packed-switch
.end method

.method public static k()J
    .registers 4

    .prologue
    .line 441
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_d
    if-nez v0, :cond_14

    .line 443
    const-wide/16 v0, 0x0

    .line 458
    :goto_11
    return-wide v0

    .line 441
    :cond_12
    const/4 v0, 0x0

    goto :goto_d

    .line 448
    :cond_14
    :try_start_14
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 450
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_28} :catch_2d

    move-result v0

    int-to-long v2, v0

    .line 451
    int-to-long v0, v1

    mul-long/2addr v0, v2

    goto :goto_11

    .line 453
    :catch_2d
    move-exception v0

    .line 455
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 456
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 458
    :cond_37
    const-wide/16 v0, -0x2

    goto :goto_11
.end method

.method public static l()Ljava/lang/String;
    .registers 3

    .prologue
    .line 468
    const-string v0, "fail"

    .line 471
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_b

    move-result-object v0

    .line 478
    :cond_a
    :goto_a
    return-object v0

    .line 473
    :catch_b
    move-exception v1

    .line 475
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 476
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a
.end method

.method public static m()Ljava/lang/String;
    .registers 3

    .prologue
    .line 508
    const-string v0, "fail"

    .line 511
    :try_start_2
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4} :catch_5

    .line 518
    :cond_4
    :goto_4
    return-object v0

    .line 513
    :catch_5
    move-exception v1

    .line 515
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 516
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method public static n()J
    .registers 3

    .prologue
    .line 390
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 391
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-wide v0

    .line 399
    :goto_1a
    return-wide v0

    .line 394
    :catch_1b
    move-exception v0

    .line 396
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 397
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 399
    :cond_25
    const-wide/16 v0, -0x1

    goto :goto_1a
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 86
    if-nez p1, :cond_b

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "put key can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_b
    if-nez p2, :cond_15

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "put value can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_15
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_21

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not support Set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_21
    new-instance v0, Lcom/tencent/bugly/proguard/i;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;I)V

    .line 98
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/i;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/k;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-direct {p0, v2, p2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 102
    invoke-static {v2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/tencent/bugly/proguard/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/tencent/bugly/proguard/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public a([B)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 328
    iget-object v0, p0, Lcom/tencent/bugly/proguard/a;->c:Lcom/tencent/bugly/proguard/h;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/h;->a([B)V

    .line 329
    iget-object v0, p0, Lcom/tencent/bugly/proguard/a;->c:Lcom/tencent/bugly/proguard/h;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)I

    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 331
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 332
    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Lcom/tencent/bugly/proguard/a;->c:Lcom/tencent/bugly/proguard/h;

    invoke-virtual {v1, v0, v4, v4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/a;->a:Ljava/util/HashMap;

    .line 335
    return-void
.end method

.method public a()[B
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 321
    new-instance v0, Lcom/tencent/bugly/proguard/i;

    invoke-direct {v0, v2}, Lcom/tencent/bugly/proguard/i;-><init>(I)V

    .line 322
    iget-object v1, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/tencent/bugly/proguard/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;I)V

    .line 324
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/i;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/k;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method
