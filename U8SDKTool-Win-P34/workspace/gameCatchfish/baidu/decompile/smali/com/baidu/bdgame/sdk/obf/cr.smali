.class public Lcom/baidu/bdgame/sdk/obf/cr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x64

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x4

.field public static final l:I = 0x5

.field public static final m:I = 0x64


# instance fields
.field public f:I

.field public n:I

.field private o:J

.field private p:J

.field private q:J

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ic;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/baidu/bdgame/sdk/obf/ic;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->f:I

    .line 39
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->n:I

    return-void
.end method

.method private A()Z
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cr;->l()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cr;->m()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private x()Z
    .registers 5

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private y()J
    .registers 3

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cr;->z()Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    .line 174
    if-nez v0, :cond_9

    .line 175
    const-wide/16 v0, 0x0

    .line 177
    :goto_8
    return-wide v0

    :cond_9
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J

    move-result-wide v0

    goto :goto_8
.end method

.method private z()Lcom/baidu/bdgame/sdk/obf/ic;
    .registers 9

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->r:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 183
    :cond_c
    const/4 v1, 0x0

    .line 193
    :cond_d
    return-object v1

    .line 185
    :cond_e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->r:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ic;

    .line 186
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cr;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ic;

    .line 187
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J

    move-result-wide v4

    .line 188
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ic;->b()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J

    move-result-wide v6

    .line 189
    cmp-long v3, v4, v6

    if-lez v3, :cond_40

    :goto_3e
    move-object v1, v0

    .line 192
    goto :goto_1e

    :cond_40
    move-object v0, v1

    goto :goto_3e
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .prologue
    .line 282
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/cr;->f:I

    .line 283
    return-void
.end method

.method public a(JJLjava/util/List;ZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ic;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/cr;->o:J

    .line 71
    iput-wide p3, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    .line 72
    iput-object p5, p0, Lcom/baidu/bdgame/sdk/obf/cr;->r:Ljava/util/List;

    .line 73
    iput-boolean p6, p0, Lcom/baidu/bdgame/sdk/obf/cr;->t:Z

    .line 74
    iput-boolean p7, p0, Lcom/baidu/bdgame/sdk/obf/cr;->u:Z

    .line 75
    if-nez p7, :cond_17

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_17

    .line 76
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    .line 78
    :cond_17
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ic;)V
    .registers 4

    .prologue
    .line 201
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cr;->s:Lcom/baidu/bdgame/sdk/obf/ic;

    .line 202
    if-eqz p1, :cond_e

    .line 203
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ic;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->q:J

    .line 205
    :cond_e
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 414
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cr;->w:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/cr;->v:Z

    .line 87
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->v:Z

    return v0
.end method

.method public a(D)Z
    .registers 8

    .prologue
    .line 162
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J

    move-result-wide v0

    .line 163
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public b()J
    .registers 3

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    return-wide v0
.end method

.method public c()Z
    .registers 5

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->o:J

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public d()J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 116
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->o:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_f

    .line 133
    :cond_e
    :goto_e
    :pswitch_e
    return-wide v0

    .line 119
    :cond_f
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cr;->q()I

    move-result v2

    packed-switch v2, :pswitch_data_24

    goto :goto_e

    .line 123
    :pswitch_17
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    goto :goto_e

    .line 125
    :pswitch_1a
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->o:J

    goto :goto_e

    .line 131
    :pswitch_1d
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->q:J

    sub-long/2addr v0, v2

    goto :goto_e

    .line 119
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_e
        :pswitch_17
        :pswitch_1a
        :pswitch_e
        :pswitch_e
        :pswitch_1d
    .end packed-switch
.end method

.method public e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cr;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .registers 5

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->o:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    .line 147
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->o:J

    sub-long/2addr v0, v2

    .line 149
    :goto_d
    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    goto :goto_d
.end method

.method public g()Ljava/lang/String;
    .registers 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cr;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .registers 5

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cr;->y()J

    move-result-wide v0

    .line 169
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public i()Lcom/baidu/bdgame/sdk/obf/ic;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->s:Lcom/baidu/bdgame/sdk/obf/ic;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 3

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cr;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()J
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 219
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->q:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_f

    .line 225
    :cond_e
    :goto_e
    return-wide v0

    .line 222
    :cond_f
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    iget-wide v4, p0, Lcom/baidu/bdgame/sdk/obf/cr;->q:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    .line 223
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->q:J

    sub-long/2addr v0, v2

    goto :goto_e
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->u:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cr;->x()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->t:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public m()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 238
    iget-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/cr;->u:Z

    if-nez v1, :cond_6

    .line 249
    :cond_5
    :goto_5
    return v0

    .line 242
    :cond_6
    iget-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/cr;->t:Z

    if-nez v1, :cond_5

    .line 246
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cr;->r:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cr;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 249
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public n()Z
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 254
    .line 255
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ic;

    .line 256
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->b()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/baidu/bdgame/sdk/obf/cr;->o:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_2b

    move v0, v3

    :goto_24
    move v1, v0

    .line 257
    goto :goto_9

    .line 260
    :cond_26
    if-nez v1, :cond_29

    .line 263
    :goto_28
    return v3

    :cond_29
    move v3, v2

    goto :goto_28

    :cond_2b
    move v0, v1

    goto :goto_24
.end method

.method public o()I
    .registers 2

    .prologue
    .line 278
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->f:I

    return v0
.end method

.method public p()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->r:Ljava/util/List;

    return-object v0
.end method

.method public q()I
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/16 v1, 0x64

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 291
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->f:I

    if-nez v0, :cond_11

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->n:I

    .line 312
    :cond_e
    :goto_e
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->n:I

    return v0

    .line 293
    :cond_11
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->f:I

    if-ne v0, v2, :cond_23

    .line 294
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cr;->f()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_20

    .line 295
    iput v3, p0, Lcom/baidu/bdgame/sdk/obf/cr;->n:I

    goto :goto_e

    .line 297
    :cond_20
    iput v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->n:I

    goto :goto_e

    .line 299
    :cond_23
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->f:I

    if-ne v0, v3, :cond_36

    .line 300
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cr;->k()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_33

    .line 301
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->n:I

    goto :goto_e

    .line 303
    :cond_33
    iput v4, p0, Lcom/baidu/bdgame/sdk/obf/cr;->n:I

    goto :goto_e

    .line 305
    :cond_36
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->f:I

    if-ne v0, v4, :cond_3e

    .line 306
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->n:I

    goto :goto_e

    .line 307
    :cond_3e
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->f:I

    if-ne v0, v1, :cond_e

    .line 308
    iput v1, p0, Lcom/baidu/bdgame/sdk/obf/cr;->n:I

    goto :goto_e
.end method

.method public r()Z
    .registers 2

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->u:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cr;->A()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public s()Z
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 349
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->o:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_a

    .line 364
    :cond_9
    :goto_9
    return v0

    .line 352
    :cond_a
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->q:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_9

    .line 358
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->q:J

    iget-wide v4, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_9

    .line 361
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->q:J

    iget-wide v4, p0, Lcom/baidu/bdgame/sdk/obf/cr;->o:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_9

    .line 362
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public t()Z
    .registers 7

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cr;->l()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cr;->m()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 376
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cr;->y()J

    move-result-wide v0

    .line 377
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->o:J

    iget-wide v4, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_29

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_29

    .line 378
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->o:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_29

    .line 379
    const/4 v0, 0x1

    .line 383
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public u()J
    .registers 5

    .prologue
    .line 388
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->o:J

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_b

    .line 389
    const-wide/16 v0, 0x0

    .line 391
    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->p:J

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->o:J

    sub-long/2addr v0, v2

    goto :goto_a
.end method

.method public v()Z
    .registers 2

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cr;->x()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->u:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public w()Ljava/lang/String;
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->w:Ljava/lang/String;

    return-object v0
.end method
