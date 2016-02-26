.class public final Lcom/tencent/bugly/proguard/B;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/bugly/proguard/y;

.field private c:Lcom/tencent/bugly/crashreport/common/strategy/c;

.field private d:Lcom/tencent/bugly/proguard/n;

.field private e:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/y;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)V
    .registers 6

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/tencent/bugly/proguard/B;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/tencent/bugly/proguard/B;->b:Lcom/tencent/bugly/proguard/y;

    .line 49
    iput-object p3, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    .line 50
    iput-object p4, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    .line 51
    iput-object p5, p0, Lcom/tencent/bugly/proguard/B;->e:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    .line 52
    return-void
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/x;
    .registers 16

    .prologue
    .line 133
    new-instance v5, Lcom/tencent/bugly/proguard/x;

    invoke-direct {v5}, Lcom/tencent/bugly/proguard/x;-><init>()V

    .line 136
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->i()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/proguard/x;->A:J

    .line 137
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->g()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/proguard/x;->B:J

    .line 138
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->k()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/proguard/x;->C:J

    .line 139
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->s()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/proguard/x;->D:J

    .line 140
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->r()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/proguard/x;->E:J

    .line 141
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->t()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/proguard/x;->F:J

    .line 142
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->a:Landroid/content/Context;

    const/16 v3, 0x4e20

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->w:Ljava/lang/String;

    .line 145
    const/4 v2, 0x4

    iput v2, v5, Lcom/tencent/bugly/proguard/x;->b:I

    .line 146
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->l()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->e:Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->f:Ljava/lang/String;

    .line 148
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->x()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->g:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->m:Ljava/lang/String;

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    .line 153
    const-string v2, ""

    .line 154
    if-eqz p4, :cond_8c

    .line 156
    const-string v3, "\n"

    invoke-virtual {p4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 157
    if-eqz v3, :cond_8c

    array-length v4, v3

    if-lez v4, :cond_8c

    .line 159
    const/4 v2, 0x0

    aget-object v2, v3, v2

    .line 163
    :cond_8c
    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->p:Ljava/lang/String;

    .line 164
    iput-object p4, v5, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    .line 165
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/proguard/x;->r:J

    .line 166
    iget-object v2, v5, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/bugly/proguard/a;->c([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->u:Ljava/lang/String;

    .line 167
    const/16 v2, 0x4e20

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/a;->a(IZ)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->x:Ljava/util/Map;

    .line 169
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->y:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->z:Ljava/lang/String;

    .line 171
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->A()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->G:Ljava/lang/String;

    .line 172
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->w()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->h:Ljava/util/Map;

    .line 173
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->d:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->b()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/bugly/proguard/x;->K:J

    .line 174
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/a;->d(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v5, Lcom/tencent/bugly/proguard/x;->L:Z

    .line 176
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->e:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    if-eqz v2, :cond_1ea

    .line 180
    :try_start_e6
    const-string v2, "start notify crashHandleCallback!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 181
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->e:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    const/4 v3, 0x3

    iget-object v4, v5, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    iget-object v6, v5, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    iget-object v7, v5, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;->onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 182
    if-eqz v6, :cond_1ea

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1ea

    .line 185
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v5, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    .line 186
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_116
    :goto_116
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_204

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 188
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1eb

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1eb

    const/4 v2, 0x0

    :goto_137
    if-nez v2, :cond_116

    .line 189
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v8, 0x64

    if-le v4, v8, :cond_162

    .line 195
    const/4 v4, 0x0

    const/16 v8, 0x64

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 196
    const-string v4, "setted key length is over limit %d substring to %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-static {v4, v8}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_162
    move-object v4, v2

    .line 199
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1ee

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1ee

    const/4 v2, 0x0

    :goto_176
    if-nez v2, :cond_1f0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v8, 0x7530

    if-le v2, v8, :cond_1f0

    .line 202
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, -0x7530

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    const-string v3, "setted %s value length is over limit %d substring"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x7530

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v3, v8}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 210
    :goto_1b0
    iget-object v3, v5, Lcom/tencent/bugly/proguard/x;->M:Ljava/util/Map;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v3, "add setted key %s value size:%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    invoke-static {v3, v8}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1cb
    .catch Ljava/lang/Throwable; {:try_start_e6 .. :try_end_1cb} :catch_1cd

    goto/16 :goto_116

    .line 216
    :catch_1cd
    move-exception v2

    .line 218
    const-string v3, "crash handle callback somthing wrong! %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 219
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1ea

    .line 221
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 226
    :cond_1ea
    :goto_1ea
    return-object v5

    .line 188
    :cond_1eb
    const/4 v2, 0x1

    goto/16 :goto_137

    .line 199
    :cond_1ee
    const/4 v2, 0x1

    goto :goto_176

    .line 207
    :cond_1f0
    :try_start_1f0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b0

    .line 213
    :cond_204
    invoke-interface {v6, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_207
    .catch Ljava/lang/Throwable; {:try_start_1f0 .. :try_end_207} :catch_1cd

    goto :goto_1ea
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 232
    monitor-enter p0

    :try_start_3
    const-string v2, "Java Crash Happen"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_136

    .line 235
    :try_start_b
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/crashreport/common/strategy/b;

    .line 236
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z

    move-result v2

    if-nez v2, :cond_33

    .line 239
    const-string v2, "waiting for remote sync"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 241
    :cond_20
    iget-object v2, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_25} :catch_123
    .catchall {:try_start_b .. :try_end_25} :catchall_2bf

    move-result v2

    if-nez v2, :cond_33

    .line 243
    const-wide/16 v2, 0x1f4

    :try_start_2a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2d} :catch_11d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_123
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2bf

    .line 244
    :goto_2d
    add-int/lit16 v1, v1, 0x1f4

    .line 245
    const/16 v2, 0x1388

    if-lt v1, v2, :cond_20

    .line 246
    :cond_33
    :try_start_33
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z

    move-result v1

    if-nez v1, :cond_43

    .line 256
    const-string v1, "no remote but still store!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 259
    :cond_43
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/crashreport/common/strategy/b;

    move-result-object v1

    .line 260
    iget-boolean v1, v1, Lcom/tencent/bugly/crashreport/common/strategy/b;->d:Z

    if-nez v1, :cond_13e

    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 262
    const-string v0, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/tencent/bugly/proguard/B;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v0

    const-string v1, "#++++++++++Simple Record By Bugly++++++++++#"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# PKG NAME: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# APP VER: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH TYPE: JAVA"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH TIME: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH PROCESS: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH THREAD: %s"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p1, :cond_139

    const-string v0, "UNKNOWN"

    :goto_cf
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# CRASH STACK: "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "#++++++++++++++++++++++++++++++++++++++++++#"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    const-string v1, "remoteClose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V
    :try_end_113
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_113} :catch_123
    .catchall {:try_start_33 .. :try_end_113} :catchall_2bf

    .line 288
    :try_start_113
    const-string v0, "handle end"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_11b
    .catchall {:try_start_113 .. :try_end_11b} :catchall_136

    .line 289
    :goto_11b
    monitor-exit p0

    return-void

    .line 243
    :catch_11d
    move-exception v2

    :try_start_11e
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_121
    .catch Ljava/lang/Throwable; {:try_start_11e .. :try_end_121} :catch_123
    .catchall {:try_start_11e .. :try_end_121} :catchall_2bf

    goto/16 :goto_2d

    .line 279
    :catch_123
    move-exception v0

    .line 281
    :try_start_124
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_12d

    .line 283
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12d
    .catchall {:try_start_124 .. :try_end_12d} :catchall_2bf

    .line 288
    :cond_12d
    :try_start_12d
    const-string v0, "handle end"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_135
    .catchall {:try_start_12d .. :try_end_135} :catchall_136

    goto :goto_11b

    .line 232
    :catchall_136
    move-exception v0

    monitor-exit p0

    throw v0

    .line 263
    :cond_139
    :try_start_139
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_cf

    .line 268
    :cond_13e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/B;->b(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/x;

    move-result-object v3

    .line 269
    if-nez v3, :cond_15d

    .line 271
    const-string v0, "pkg crash datas fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/tencent/bugly/proguard/B;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    const-string v1, "packageFail"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V
    :try_end_154
    .catch Ljava/lang/Throwable; {:try_start_139 .. :try_end_154} :catch_123
    .catchall {:try_start_139 .. :try_end_154} :catchall_2bf

    .line 288
    :try_start_154
    const-string v0, "handle end"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_15c
    .catchall {:try_start_154 .. :try_end_15c} :catchall_136

    goto :goto_11b

    .line 276
    :cond_15d
    :try_start_15d
    iget-object v1, p0, Lcom/tencent/bugly/proguard/B;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v4

    const-string v1, "#++++++++++Detail Record By Bugly++++++++++#"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# You can go to Bugly(http:\\\\bugly.qq.com) to see more detail of this Report!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# REPORT ID: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v3, Lcom/tencent/bugly/proguard/x;->c:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# PKG NAME: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->f()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# APP VER: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget v1, v3, Lcom/tencent/bugly/proguard/x;->b:I

    packed-switch v1, :pswitch_data_2ca

    const-string v1, "UNKNOWN"

    move-object v2, v1

    :goto_1a6
    const-string v5, "# LAUNCH TIME:%s"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v1, Ljava/util/Date;

    iget-wide v8, v3, Lcom/tencent/bugly/proguard/x;->K:J

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    if-nez v1, :cond_29d

    move-object v1, v0

    :goto_1b6
    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH TYPE: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v1, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH TIME: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/util/Date;

    iget-wide v8, v3, Lcom/tencent/bugly/proguard/x;->r:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    if-nez v6, :cond_2ac

    :goto_1d5
    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# CRASH PROCESS: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# CRASH THREAD: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, v3, Lcom/tencent/bugly/proguard/x;->z:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "# CRASH DEVICE: %s %s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->i()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    const/4 v5, 0x1

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->z()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2bb

    const-string v0, "ROOTED"

    :goto_20f
    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# RUNTIME AVAIL RAM:%d ROM:%d SD:%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, v3, Lcom/tencent/bugly/proguard/x;->A:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-wide v4, v3, Lcom/tencent/bugly/proguard/x;->B:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-wide v4, v3, Lcom/tencent/bugly/proguard/x;->C:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# RUNTIME TOTAL RAM:%d ROM:%d SD:%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, v3, Lcom/tencent/bugly/proguard/x;->D:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-wide v4, v3, Lcom/tencent/bugly/proguard/x;->E:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-wide v4, v3, Lcom/tencent/bugly/proguard/x;->F:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# EXCEPTION TYPE: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, v3, Lcom/tencent/bugly/proguard/x;->n:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# EXCEPTION MSG: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, v3, Lcom/tencent/bugly/proguard/x;->o:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "# EXCEPTION STACK:\n %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, v3, Lcom/tencent/bugly/proguard/x;->q:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "#++++++++++++++++++++++++++++++++++++++++++#"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/tencent/bugly/proguard/B;->b:Lcom/tencent/bugly/proguard/y;

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/y;->a(Lcom/tencent/bugly/proguard/x;)V
    :try_end_28e
    .catch Ljava/lang/Throwable; {:try_start_15d .. :try_end_28e} :catch_123
    .catchall {:try_start_15d .. :try_end_28e} :catchall_2bf

    .line 288
    :try_start_28e
    const-string v0, "handle end"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_296
    .catchall {:try_start_28e .. :try_end_296} :catchall_136

    goto/16 :goto_11b

    .line 276
    :pswitch_298
    :try_start_298
    const-string v1, "U3D_CRASH"

    move-object v2, v1

    goto/16 :goto_1a6

    :cond_29d
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v8, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1b6

    :cond_2ac
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1d5

    :cond_2bb
    const-string v0, "UNROOT"
    :try_end_2bd
    .catch Ljava/lang/Throwable; {:try_start_298 .. :try_end_2bd} :catch_123
    .catchall {:try_start_298 .. :try_end_2bd} :catchall_2bf

    goto/16 :goto_20f

    .line 288
    :catchall_2bf
    move-exception v0

    :try_start_2c0
    const-string v1, "handle end"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw v0
    :try_end_2c9
    .catchall {:try_start_2c0 .. :try_end_2c9} :catchall_136

    .line 276
    nop

    :pswitch_data_2ca
    .packed-switch 0x4
        :pswitch_298
    .end packed-switch
.end method
