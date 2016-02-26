.class public final Lcom/tencent/beacon/a/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Ljava/lang/Runnable;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/Runnable;ZZZ)V
    .registers 9

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/beacon/a/c;->h:I

    .line 29
    iput-object p1, p0, Lcom/tencent/beacon/a/c;->a:Landroid/content/Context;

    .line 30
    iput p2, p0, Lcom/tencent/beacon/a/c;->b:I

    .line 31
    iput p3, p0, Lcom/tencent/beacon/a/c;->c:I

    .line 32
    iput-object p4, p0, Lcom/tencent/beacon/a/c;->d:Ljava/lang/Runnable;

    .line 33
    iput-boolean p5, p0, Lcom/tencent/beacon/a/c;->e:Z

    .line 34
    iput-boolean p6, p0, Lcom/tencent/beacon/a/c;->f:Z

    .line 35
    iput-boolean p7, p0, Lcom/tencent/beacon/a/c;->g:Z

    .line 36
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/beacon/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/a;->g(Landroid/content/Context;)Z

    move-result v10

    .line 41
    if-eqz v10, :cond_1b8

    const-string v0, "F"

    .line 42
    :goto_a
    iget-object v1, p0, Lcom/tencent/beacon/a/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/beacon/a/g;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/g;

    move-result-object v4

    .line 44
    iget v1, p0, Lcom/tencent/beacon/a/c;->b:I

    if-lez v1, :cond_127

    iget-boolean v1, p0, Lcom/tencent/beacon/a/c;->f:Z

    if-eqz v1, :cond_127

    .line 45
    const-wide/16 v2, 0x0

    .line 47
    :try_start_1a
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/beacon/a/e;->h()J

    move-result-wide v6

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v2, v6, v8
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_30} :catch_297

    .line 51
    :goto_30
    const/4 v1, 0x0

    .line 52
    iget-boolean v5, p0, Lcom/tencent/beacon/a/c;->f:Z

    if-eqz v5, :cond_2a3

    .line 53
    invoke-virtual {v4}, Lcom/tencent/beacon/a/g;->f()Ljava/lang/String;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_2a0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a0

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 60
    :goto_65
    const/4 v1, 0x0

    .line 61
    iget-boolean v4, p0, Lcom/tencent/beacon/a/c;->g:Z

    if-eqz v4, :cond_29d

    .line 62
    invoke-static {}, Lcom/tencent/beacon/a/g;->g()Ljava/lang/String;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_29a

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29a

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 69
    :goto_9a
    :try_start_9a
    iget-object v0, p0, Lcom/tencent/beacon/a/c;->a:Landroid/content/Context;

    const-string v1, "app_mem_info"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 70
    iget-object v0, p0, Lcom/tencent/beacon/a/c;->a:Landroid/content/Context;

    const-string v1, "app_cpu_info"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 72
    iget v0, p0, Lcom/tencent/beacon/a/c;->h:I

    if-nez v0, :cond_ba

    const-string v0, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    :cond_ba
    iget v0, p0, Lcom/tencent/beacon/a/c;->h:I

    iget v1, p0, Lcom/tencent/beacon/a/c;->c:I

    iget v2, p0, Lcom/tencent/beacon/a/c;->b:I

    div-int/2addr v1, v2

    if-lt v0, v1, :cond_20d

    .line 73
    :cond_c3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 74
    const-string v0, "A78"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    if-eqz v9, :cond_102

    .line 76
    const-string v0, "A77"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_102
    const-string v0, "rqd_res_occ"

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/p;->a(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 80
    iget-object v0, p0, Lcom/tencent/beacon/a/c;->a:Landroid/content/Context;

    const-string v1, "app_mem_info"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    if-eqz v9, :cond_124

    .line 82
    iget-object v0, p0, Lcom/tencent/beacon/a/c;->a:Landroid/content/Context;

    const-string v1, "app_cpu_info"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    :cond_124
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/beacon/a/c;->h:I
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_127} :catch_202

    .line 112
    :cond_127
    :goto_127
    iget v0, p0, Lcom/tencent/beacon/a/c;->b:I

    if-lez v0, :cond_1b7

    iget-boolean v0, p0, Lcom/tencent/beacon/a/c;->e:Z

    if-eqz v0, :cond_1b7

    .line 113
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 114
    iget-object v0, p0, Lcom/tencent/beacon/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->f(Landroid/content/Context;)Lcom/tencent/beacon/a/a/f;

    move-result-object v0

    .line 115
    if-nez v0, :cond_155

    .line 116
    new-instance v0, Lcom/tencent/beacon/a/a/f;

    invoke-direct {v0}, Lcom/tencent/beacon/a/a/f;-><init>()V

    .line 117
    invoke-virtual {v0, v2, v3}, Lcom/tencent/beacon/a/a/f;->c(J)V

    .line 118
    invoke-virtual {v0, v2, v3}, Lcom/tencent/beacon/a/a/f;->d(J)V

    .line 119
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/tencent/beacon/a/a/f;->b(J)V

    .line 120
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/tencent/beacon/a/a/f;->a(J)V

    .line 123
    :cond_155
    invoke-virtual {v0}, Lcom/tencent/beacon/a/a/f;->a()J

    move-result-wide v4

    iget v1, p0, Lcom/tencent/beacon/a/c;->b:I

    div-int/lit8 v1, v1, 0x3c

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/tencent/beacon/a/a/f;->a(J)V

    .line 124
    if-eqz v10, :cond_171

    .line 125
    invoke-virtual {v0}, Lcom/tencent/beacon/a/a/f;->b()J

    move-result-wide v4

    iget v1, p0, Lcom/tencent/beacon/a/c;->b:I

    div-int/lit8 v1, v1, 0x3c

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/tencent/beacon/a/a/f;->b(J)V

    .line 127
    :cond_171
    invoke-virtual {v0, v2, v3}, Lcom/tencent/beacon/a/a/f;->d(J)V

    .line 128
    iget-object v7, p0, Lcom/tencent/beacon/a/c;->a:Landroid/content/Context;

    if-eqz v7, :cond_17a

    if-nez v0, :cond_273

    .line 129
    :cond_17a
    :goto_17a
    const-string v1, " used:%d  seen:%d  next:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/a/f;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/tencent/beacon/a/a/f;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/tencent/beacon/a/c;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v0}, Lcom/tencent/beacon/a/a/f;->a()J

    move-result-wide v0

    iget v2, p0, Lcom/tencent/beacon/a/c;->c:I

    div-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1b7

    .line 131
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/a/c;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    .line 134
    :cond_1b7
    return-void

    .line 41
    :cond_1b8
    const-string v0, "B"

    goto/16 :goto_a

    .line 86
    :cond_1bc
    :try_start_1bc
    iget-object v0, p0, Lcom/tencent/beacon/a/c;->a:Landroid/content/Context;

    const-string v1, "app_mem_info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    if-eqz v9, :cond_1fa

    .line 88
    iget-object v0, p0, Lcom/tencent/beacon/a/c;->a:Landroid/content/Context;

    const-string v1, "app_cpu_info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    :cond_1fa
    iget v0, p0, Lcom/tencent/beacon/a/c;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/beacon/a/c;->h:I
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_200} :catch_202

    goto/16 :goto_127

    .line 108
    :catch_202
    move-exception v0

    const-string v0, "get resinfo from sp failed! "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_127

    .line 93
    :cond_20d
    :try_start_20d
    const-string v0, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_235

    .line 94
    iget-object v0, p0, Lcom/tencent/beacon/a/c;->a:Landroid/content/Context;

    const-string v1, "app_mem_info"

    invoke-static {v0, v1, v8}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    :goto_21c
    if-eqz v9, :cond_22d

    .line 99
    const-string v0, ""

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_254

    .line 100
    iget-object v0, p0, Lcom/tencent/beacon/a/c;->a:Landroid/content/Context;

    const-string v1, "app_cpu_info"

    invoke-static {v0, v1, v9}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    :cond_22d
    :goto_22d
    iget v0, p0, Lcom/tencent/beacon/a/c;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/beacon/a/c;->h:I

    goto/16 :goto_127

    .line 96
    :cond_235
    iget-object v0, p0, Lcom/tencent/beacon/a/c;->a:Landroid/content/Context;

    const-string v1, "app_mem_info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_21c

    .line 102
    :cond_254
    iget-object v0, p0, Lcom/tencent/beacon/a/c;->a:Landroid/content/Context;

    const-string v1, "app_cpu_info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_272
    .catch Ljava/lang/Exception; {:try_start_20d .. :try_end_272} :catch_202

    goto :goto_22d

    .line 128
    :cond_273
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/beacon/a/a/a;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/a/f;->d()J

    move-result-wide v4

    invoke-static {v0}, Lcom/tencent/beacon/b/a;->a(Ljava/lang/Object;)[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/tencent/beacon/a/a/a;-><init>(IIJ[B)V

    invoke-virtual {v0}, Lcom/tencent/beacon/a/a/f;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/beacon/a/a/a;->a(J)Lcom/tencent/beacon/a/a/a;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v8}, Lcom/tencent/beacon/a/a/a;->b(Landroid/content/Context;Ljava/util/List;)Z

    goto/16 :goto_17a

    :catch_297
    move-exception v1

    goto/16 :goto_30

    :cond_29a
    move-object v9, v1

    goto/16 :goto_9a

    :cond_29d
    move-object v9, v1

    goto/16 :goto_9a

    :cond_2a0
    move-object v8, v1

    goto/16 :goto_65

    :cond_2a3
    move-object v8, v1

    goto/16 :goto_65
.end method
