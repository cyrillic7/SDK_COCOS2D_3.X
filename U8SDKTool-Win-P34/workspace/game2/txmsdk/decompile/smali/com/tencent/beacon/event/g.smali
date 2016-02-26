.class public final Lcom/tencent/beacon/event/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Z

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:J

.field private s:I

.field private t:I

.field private u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:I

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/16 v0, 0xc

    const/16 v4, 0x258

    const/16 v1, 0x3c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/tencent/beacon/event/g;->a:I

    .line 15
    iput v1, p0, Lcom/tencent/beacon/event/g;->b:I

    .line 16
    iput v0, p0, Lcom/tencent/beacon/event/g;->c:I

    .line 17
    iput v1, p0, Lcom/tencent/beacon/event/g;->d:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/beacon/event/g;->e:I

    .line 19
    const/high16 v0, 0x200000

    iput v0, p0, Lcom/tencent/beacon/event/g;->f:I

    .line 22
    iput v1, p0, Lcom/tencent/beacon/event/g;->g:I

    .line 23
    iput v4, p0, Lcom/tencent/beacon/event/g;->h:I

    .line 24
    iput-boolean v3, p0, Lcom/tencent/beacon/event/g;->i:Z

    .line 26
    iput-boolean v2, p0, Lcom/tencent/beacon/event/g;->j:Z

    .line 28
    iput-boolean v2, p0, Lcom/tencent/beacon/event/g;->k:Z

    .line 30
    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/beacon/event/g;->l:I

    .line 31
    iput-boolean v3, p0, Lcom/tencent/beacon/event/g;->m:Z

    .line 33
    iput-boolean v3, p0, Lcom/tencent/beacon/event/g;->n:Z

    .line 36
    iput-boolean v3, p0, Lcom/tencent/beacon/event/g;->o:Z

    .line 37
    iput-boolean v3, p0, Lcom/tencent/beacon/event/g;->p:Z

    .line 38
    const/high16 v0, 0x80000

    iput v0, p0, Lcom/tencent/beacon/event/g;->q:I

    .line 39
    const-wide/16 v0, 0x7

    iput-wide v0, p0, Lcom/tencent/beacon/event/g;->r:J

    .line 40
    const/16 v0, 0x32

    iput v0, p0, Lcom/tencent/beacon/event/g;->s:I

    .line 42
    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/tencent/beacon/event/g;->t:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/event/g;->u:Ljava/util/Set;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/event/g;->v:Ljava/util/Map;

    .line 50
    iput-boolean v2, p0, Lcom/tencent/beacon/event/g;->w:Z

    .line 51
    iput v4, p0, Lcom/tencent/beacon/event/g;->x:I

    .line 54
    iput-boolean v2, p0, Lcom/tencent/beacon/event/g;->y:Z

    .line 55
    const/16 v0, 0x19

    iput v0, p0, Lcom/tencent/beacon/event/g;->z:I

    .line 56
    iput v4, p0, Lcom/tencent/beacon/event/g;->A:I

    .line 59
    iput-boolean v2, p0, Lcom/tencent/beacon/event/g;->B:Z

    .line 60
    iput-boolean v2, p0, Lcom/tencent/beacon/event/g;->C:Z

    .line 61
    iput-boolean v2, p0, Lcom/tencent/beacon/event/g;->D:Z

    .line 62
    const/16 v0, 0xb4

    iput v0, p0, Lcom/tencent/beacon/event/g;->E:I

    .line 65
    iput-boolean v3, p0, Lcom/tencent/beacon/event/g;->F:Z

    return-void
.end method

.method private declared-synchronized E()Lcom/tencent/beacon/event/g;
    .registers 3

    .prologue
    .line 619
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/tencent/beacon/event/g;

    invoke-direct {v0}, Lcom/tencent/beacon/event/g;-><init>()V

    .line 620
    iget v1, p0, Lcom/tencent/beacon/event/g;->d:I

    invoke-direct {v0, v1}, Lcom/tencent/beacon/event/g;->d(I)V

    .line 621
    iget v1, p0, Lcom/tencent/beacon/event/g;->c:I

    invoke-direct {v0, v1}, Lcom/tencent/beacon/event/g;->c(I)V

    .line 622
    iget v1, p0, Lcom/tencent/beacon/event/g;->e:I

    invoke-direct {v0, v1}, Lcom/tencent/beacon/event/g;->e(I)V

    .line 623
    iget v1, p0, Lcom/tencent/beacon/event/g;->f:I

    invoke-direct {v0, v1}, Lcom/tencent/beacon/event/g;->f(I)V

    .line 624
    iget v1, p0, Lcom/tencent/beacon/event/g;->b:I

    invoke-direct {v0, v1}, Lcom/tencent/beacon/event/g;->b(I)V

    .line 625
    iget v1, p0, Lcom/tencent/beacon/event/g;->a:I

    invoke-direct {v0, v1}, Lcom/tencent/beacon/event/g;->a(I)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 626
    monitor-exit p0

    return-object v0

    .line 619
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(I)V
    .registers 3

    .prologue
    .line 353
    monitor-enter p0

    if-lez p1, :cond_5

    .line 354
    :try_start_3
    iput p1, p0, Lcom/tencent/beacon/event/g;->a:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 355
    :cond_5
    monitor-exit p0

    return-void

    .line 353
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(I)V
    .registers 3

    .prologue
    .line 367
    monitor-enter p0

    if-lez p1, :cond_5

    .line 368
    :try_start_3
    iput p1, p0, Lcom/tencent/beacon/event/g;->b:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 369
    :cond_5
    monitor-exit p0

    return-void

    .line 367
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(I)V
    .registers 3

    .prologue
    .line 389
    monitor-enter p0

    if-lez p1, :cond_5

    .line 390
    :try_start_3
    iput p1, p0, Lcom/tencent/beacon/event/g;->c:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 391
    :cond_5
    monitor-exit p0

    return-void

    .line 389
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(I)V
    .registers 3

    .prologue
    .line 403
    monitor-enter p0

    if-lez p1, :cond_5

    .line 404
    :try_start_3
    iput p1, p0, Lcom/tencent/beacon/event/g;->d:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 405
    :cond_5
    monitor-exit p0

    return-void

    .line 403
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e(I)V
    .registers 3

    .prologue
    .line 417
    monitor-enter p0

    if-lez p1, :cond_5

    .line 418
    :try_start_3
    iput p1, p0, Lcom/tencent/beacon/event/g;->e:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 419
    :cond_5
    monitor-exit p0

    return-void

    .line 417
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f(I)V
    .registers 3

    .prologue
    .line 431
    monitor-enter p0

    if-lez p1, :cond_5

    .line 432
    :try_start_3
    iput p1, p0, Lcom/tencent/beacon/event/g;->f:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 433
    :cond_5
    monitor-exit p0

    return-void

    .line 431
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A()Z
    .registers 2

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/tencent/beacon/event/g;->C:Z

    return v0
.end method

.method public final B()Z
    .registers 2

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/tencent/beacon/event/g;->D:Z

    return v0
.end method

.method public final C()I
    .registers 2

    .prologue
    .line 610
    iget v0, p0, Lcom/tencent/beacon/event/g;->E:I

    return v0
.end method

.method public final D()Z
    .registers 2

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/tencent/beacon/event/g;->F:Z

    return v0
.end method

.method public final declared-synchronized a()I
    .registers 2

    .prologue
    .line 345
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/beacon/event/g;->a:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x1e

    const/16 v7, 0xa

    const/16 v6, 0x12c

    .line 72
    monitor-enter p0

    if-eqz p1, :cond_32c

    .line 74
    :try_start_9
    const-string v0, "realNumUp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    if-eqz v0, :cond_23

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 77
    if-lez v0, :cond_23

    const/16 v1, 0x32

    if-gt v0, v1, :cond_23

    .line 78
    iput v0, p0, Lcom/tencent/beacon/event/g;->a:I

    .line 82
    :cond_23
    const-string v0, "realDelayUp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    if-eqz v0, :cond_3d

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 85
    if-lt v0, v7, :cond_3d

    const/16 v1, 0x258

    if-gt v0, v1, :cond_3d

    .line 86
    iput v0, p0, Lcom/tencent/beacon/event/g;->b:I

    .line 89
    :cond_3d
    const-string v0, "comNumDB"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    if-eqz v0, :cond_57

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    if-lez v0, :cond_57

    const/16 v1, 0x32

    if-gt v0, v1, :cond_57

    .line 93
    iput v0, p0, Lcom/tencent/beacon/event/g;->c:I

    .line 97
    :cond_57
    const-string v0, "comDelayDB"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    if-eqz v0, :cond_71

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 100
    if-lt v0, v2, :cond_71

    const/16 v1, 0x258

    if-gt v0, v1, :cond_71

    .line 101
    iput v0, p0, Lcom/tencent/beacon/event/g;->d:I

    .line 105
    :cond_71
    const-string v0, "comNumUp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    if-eqz v0, :cond_8b

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 108
    if-lez v0, :cond_8b

    const/16 v1, 0x64

    if-gt v0, v1, :cond_8b

    .line 109
    iput v0, p0, Lcom/tencent/beacon/event/g;->e:I

    .line 113
    :cond_8b
    const-string v0, "dailyNetFlowLimit"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    if-eqz v0, :cond_a8

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    const v1, 0x32000

    if-lt v0, v1, :cond_a8

    const/high16 v1, 0xa00000

    if-gt v0, v1, :cond_a8

    .line 117
    iput v0, p0, Lcom/tencent/beacon/event/g;->f:I

    .line 121
    :cond_a8
    const-string v0, "runInfoPeriod"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    if-eqz v0, :cond_c0

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 124
    if-lt v0, v2, :cond_c0

    if-gt v0, v6, :cond_c0

    .line 125
    iput v0, p0, Lcom/tencent/beacon/event/g;->g:I

    .line 129
    :cond_c0
    const-string v0, "useTimeUpPeriod"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    if-eqz v0, :cond_da

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    if-lt v0, v6, :cond_da

    const/16 v1, 0x708

    if-gt v0, v1, :cond_da

    .line 133
    iput v0, p0, Lcom/tencent/beacon/event/g;->h:I

    .line 137
    :cond_da
    const-string v0, "useTimeOnOff"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    if-eqz v0, :cond_f3

    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32e

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->i:Z

    .line 146
    :cond_f3
    :goto_f3
    const-string v0, "proChangePeriod"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    if-eqz v0, :cond_10b

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 149
    if-lt v0, v7, :cond_10b

    if-gt v0, v6, :cond_10b

    .line 150
    iput v0, p0, Lcom/tencent/beacon/event/g;->l:I

    .line 154
    :cond_10b
    const-string v0, "proChangeOnOff"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    if-eqz v0, :cond_124

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_347

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->m:Z

    .line 163
    :cond_124
    :goto_124
    const-string v0, "heartOnOff"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    if-eqz v0, :cond_13d

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_358

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->n:Z

    .line 172
    :cond_13d
    :goto_13d
    const-string v0, "appLogUploadOnOff"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    if-eqz v0, :cond_1f4

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37a

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->o:Z

    .line 177
    const-string v0, "appLogRealTimeUpload"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    if-eqz v0, :cond_16f

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_369

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->p:Z

    .line 186
    :cond_16f
    :goto_16f
    const-string v0, "appLogOutDay"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    if-eqz v0, :cond_18f

    .line 188
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 189
    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_18f

    const-wide/16 v4, 0x1e

    cmp-long v1, v2, v4

    if-gtz v1, :cond_18f

    .line 190
    iput-wide v2, p0, Lcom/tencent/beacon/event/g;->r:J

    .line 194
    :cond_18f
    const-string v1, "logDailyConsumeLimit"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 195
    if-eqz v1, :cond_1ab

    .line 196
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 197
    const/16 v1, 0x2800

    if-lt v0, v1, :cond_1ab

    const/high16 v1, 0x1400000

    if-gt v0, v1, :cond_1ab

    .line 198
    iput v0, p0, Lcom/tencent/beacon/event/g;->t:I

    .line 202
    :cond_1ab
    const-string v0, "appLogSizeLimit"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    if-eqz v0, :cond_1c8

    .line 204
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 205
    const v1, 0x19000

    if-lt v0, v1, :cond_1c8

    const/high16 v1, 0x100000

    if-gt v0, v1, :cond_1c8

    .line 206
    iput v0, p0, Lcom/tencent/beacon/event/g;->q:I

    .line 210
    :cond_1c8
    const-string v0, "appLogRecordMax"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    if-eqz v0, :cond_1e3

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 213
    const/4 v1, 0x5

    if-lt v0, v1, :cond_1e3

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1e3

    .line 214
    iput v0, p0, Lcom/tencent/beacon/event/g;->s:I

    .line 218
    :cond_1e3
    const-string v0, "appLogFileTotalMaxSize"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    if-eqz v0, :cond_1f4

    .line 220
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 231
    :cond_1f4
    :goto_1f4
    const-string v0, "appNetConOnOff"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    if-eqz v0, :cond_20d

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38b

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->w:Z

    .line 240
    :cond_20d
    :goto_20d
    const-string v0, "netConQuePeriod"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    if-eqz v0, :cond_229

    .line 242
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 243
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_229

    const/16 v1, 0x4b0

    if-gt v0, v1, :cond_229

    .line 244
    iput v0, p0, Lcom/tencent/beacon/event/g;->x:I

    .line 248
    :cond_229
    const-string v0, "memOnOff"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    if-eqz v0, :cond_242

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39c

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->j:Z

    .line 257
    :cond_242
    :goto_242
    const-string v0, "cpuOnOff"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    if-eqz v0, :cond_25b

    .line 259
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3ad

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->k:Z

    .line 266
    :cond_25b
    :goto_25b
    const-string v0, "heatmapOnOff"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    if-eqz v0, :cond_274

    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3be

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->y:Z

    .line 275
    :cond_274
    :goto_274
    const-string v0, "heatmapUpMax"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    if-eqz v0, :cond_28e

    .line 277
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 278
    if-lt v0, v7, :cond_28e

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_28e

    .line 279
    iput v0, p0, Lcom/tencent/beacon/event/g;->z:I

    .line 283
    :cond_28e
    const-string v0, "heatmapPeriod"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    if-eqz v0, :cond_2a8

    .line 285
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 286
    if-lt v0, v6, :cond_2a8

    const/16 v1, 0x708

    if-gt v0, v1, :cond_2a8

    .line 287
    iput v0, p0, Lcom/tencent/beacon/event/g;->A:I

    .line 291
    :cond_2a8
    const-string v0, "installOnOff"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    if-eqz v0, :cond_2c1

    .line 293
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3cf

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->B:Z

    .line 300
    :cond_2c1
    :goto_2c1
    const-string v0, "useAppOnOff"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    if-eqz v0, :cond_2da

    .line 302
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e0

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->C:Z

    .line 309
    :cond_2da
    :goto_2da
    const-string v0, "isAllApp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    if-eqz v0, :cond_2f3

    .line 311
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f1

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->D:Z

    .line 318
    :cond_2f3
    :goto_2f3
    iget-boolean v0, p0, Lcom/tencent/beacon/event/g;->C:Z

    if-eqz v0, :cond_313

    .line 319
    const-string v0, "useAppCollPer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 320
    if-eqz v0, :cond_313

    .line 321
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 322
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_313

    const/16 v1, 0xe10

    if-gt v0, v1, :cond_313

    .line 323
    iput v0, p0, Lcom/tencent/beacon/event/g;->E:I

    .line 328
    :cond_313
    const-string v0, "upQa"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 329
    if-eqz v0, :cond_32c

    .line 330
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_402

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->F:Z
    :try_end_32c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_32c} :catch_33f
    .catchall {:try_start_9 .. :try_end_32c} :catchall_344

    .line 341
    :cond_32c
    :goto_32c
    monitor-exit p0

    return-void

    .line 141
    :cond_32e
    :try_start_32e
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->i:Z
    :try_end_33d
    .catch Ljava/lang/Exception; {:try_start_32e .. :try_end_33d} :catch_33f
    .catchall {:try_start_32e .. :try_end_33d} :catchall_344

    goto/16 :goto_f3

    .line 337
    :catch_33f
    move-exception v0

    .line 338
    :try_start_340
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_343
    .catchall {:try_start_340 .. :try_end_343} :catchall_344

    goto :goto_32c

    .line 72
    :catchall_344
    move-exception v0

    monitor-exit p0

    throw v0

    .line 158
    :cond_347
    :try_start_347
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->m:Z

    goto/16 :goto_124

    .line 167
    :cond_358
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->n:Z

    goto/16 :goto_13d

    .line 181
    :cond_369
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->p:Z

    goto/16 :goto_16f

    .line 221
    :cond_37a
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->o:Z

    goto/16 :goto_1f4

    .line 235
    :cond_38b
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20d

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->w:Z

    goto/16 :goto_20d

    .line 252
    :cond_39c
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_242

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->j:Z

    goto/16 :goto_242

    .line 261
    :cond_3ad
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25b

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->k:Z

    goto/16 :goto_25b

    .line 270
    :cond_3be
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_274

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->y:Z

    goto/16 :goto_274

    .line 295
    :cond_3cf
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c1

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->B:Z

    goto/16 :goto_2c1

    .line 304
    :cond_3e0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2da

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->C:Z

    goto/16 :goto_2da

    .line 313
    :cond_3f1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f3

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->D:Z

    goto/16 :goto_2f3

    .line 332
    :cond_402
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32c

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->F:Z
    :try_end_411
    .catch Ljava/lang/Exception; {:try_start_347 .. :try_end_411} :catch_33f
    .catchall {:try_start_347 .. :try_end_411} :catchall_344

    goto/16 :goto_32c
.end method

.method public final declared-synchronized a(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/beacon/event/g;->u:Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 481
    monitor-exit p0

    return-void

    .line 480
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .registers 3

    .prologue
    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/g;->i:Z

    .line 449
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 484
    monitor-enter p0

    const/4 v0, 0x0

    .line 485
    :try_start_2
    iget-object v1, p0, Lcom/tencent/beacon/event/g;->u:Ljava/util/Set;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/tencent/beacon/event/g;->u:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 486
    iget-object v0, p0, Lcom/tencent/beacon/event/g;->u:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_16

    move-result v0

    .line 488
    :cond_14
    monitor-exit p0

    return v0

    .line 484
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()I
    .registers 2

    .prologue
    .line 359
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/beacon/event/g;->b:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/g;->v:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 493
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/event/g;->v:Ljava/util/Map;

    .line 495
    :cond_c
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 496
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 497
    array-length v2, v0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_52

    .line 498
    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    .line 500
    const/4 v2, 0x1

    :try_start_27
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v2, v3

    .line 501
    iget-object v3, p0, Lcom/tencent/beacon/event/g;->v:Ljava/util/Map;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4d} :catch_4e
    .catchall {:try_start_27 .. :try_end_4d} :catchall_52

    goto :goto_10

    :catch_4e
    move-exception v0

    goto :goto_10

    .line 506
    :cond_50
    monitor-exit p0

    return-void

    .line 492
    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 509
    monitor-enter p0

    .line 510
    :try_start_2
    iget-object v0, p0, Lcom/tencent/beacon/event/g;->v:Ljava/util/Map;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/beacon/event/g;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_36

    move-result-object v0

    if-nez v0, :cond_11

    :cond_e
    move v0, v1

    .line 518
    :goto_f
    monitor-exit p0

    return v0

    .line 513
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/tencent/beacon/event/g;->v:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x447a0000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 514
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_36

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le v2, v0, :cond_39

    .line 516
    const/4 v0, 0x0

    goto :goto_f

    .line 509
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_39
    move v0, v1

    goto :goto_f
.end method

.method public final declared-synchronized c()I
    .registers 2

    .prologue
    .line 372
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/beacon/event/g;->t:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tencent/beacon/event/g;->E()Lcom/tencent/beacon/event/g;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized d()I
    .registers 2

    .prologue
    .line 381
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/beacon/event/g;->c:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()I
    .registers 2

    .prologue
    .line 395
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/beacon/event/g;->d:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()I
    .registers 2

    .prologue
    .line 409
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/beacon/event/g;->e:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()I
    .registers 2

    .prologue
    .line 423
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/beacon/event/g;->f:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()I
    .registers 2

    .prologue
    .line 436
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/beacon/event/g;->h:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i()I
    .registers 2

    .prologue
    .line 440
    iget v0, p0, Lcom/tencent/beacon/event/g;->g:I

    return v0
.end method

.method public final j()Z
    .registers 2

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/tencent/beacon/event/g;->i:Z

    return v0
.end method

.method public final k()I
    .registers 2

    .prologue
    .line 452
    iget v0, p0, Lcom/tencent/beacon/event/g;->l:I

    return v0
.end method

.method public final l()Z
    .registers 2

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/tencent/beacon/event/g;->m:Z

    return v0
.end method

.method public final m()Z
    .registers 2

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/tencent/beacon/event/g;->n:Z

    return v0
.end method

.method public final n()Z
    .registers 2

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/tencent/beacon/event/g;->o:Z

    return v0
.end method

.method public final o()I
    .registers 2

    .prologue
    .line 472
    iget v0, p0, Lcom/tencent/beacon/event/g;->q:I

    return v0
.end method

.method public final p()J
    .registers 3

    .prologue
    .line 522
    iget-wide v0, p0, Lcom/tencent/beacon/event/g;->r:J

    return-wide v0
.end method

.method public final q()I
    .registers 2

    .prologue
    .line 530
    iget v0, p0, Lcom/tencent/beacon/event/g;->s:I

    return v0
.end method

.method public final r()Z
    .registers 2

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/tencent/beacon/event/g;->p:Z

    return v0
.end method

.method public final s()Z
    .registers 3

    .prologue
    .line 567
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_c

    .line 568
    const/4 v0, 0x0

    .line 570
    :goto_b
    return v0

    :cond_c
    iget-boolean v0, p0, Lcom/tencent/beacon/event/g;->w:Z

    goto :goto_b
.end method

.method public final t()I
    .registers 2

    .prologue
    .line 574
    iget v0, p0, Lcom/tencent/beacon/event/g;->x:I

    return v0
.end method

.method public final u()Z
    .registers 2

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/tencent/beacon/event/g;->k:Z

    return v0
.end method

.method public final v()Z
    .registers 2

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/tencent/beacon/event/g;->j:Z

    return v0
.end method

.method public final w()Z
    .registers 2

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/tencent/beacon/event/g;->y:Z

    return v0
.end method

.method public final x()I
    .registers 2

    .prologue
    .line 590
    iget v0, p0, Lcom/tencent/beacon/event/g;->z:I

    return v0
.end method

.method public final y()I
    .registers 2

    .prologue
    .line 594
    iget v0, p0, Lcom/tencent/beacon/event/g;->A:I

    return v0
.end method

.method public final z()Z
    .registers 2

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/tencent/beacon/event/g;->B:Z

    return v0
.end method
