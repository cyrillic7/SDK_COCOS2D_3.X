.class final Lcom/tencent/beacon/event/l$a;
.super Lcom/tencent/beacon/upload/a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/event/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
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

.field private f:Landroid/content/Context;

.field private g:[Ljava/lang/Long;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/event/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 187
    invoke-direct {p0, p1, v2, v4}, Lcom/tencent/beacon/upload/a;-><init>(Landroid/content/Context;II)V

    .line 181
    iput-object v0, p0, Lcom/tencent/beacon/event/l$a;->e:Ljava/util/List;

    .line 183
    iput-object v0, p0, Lcom/tencent/beacon/event/l$a;->g:[Ljava/lang/Long;

    .line 184
    iput-boolean v3, p0, Lcom/tencent/beacon/event/l$a;->h:Z

    .line 189
    iput-object p2, p0, Lcom/tencent/beacon/event/l$a;->e:Ljava/util/List;

    .line 190
    iput-object p1, p0, Lcom/tencent/beacon/event/l$a;->f:Landroid/content/Context;

    .line 191
    iget-object v0, p0, Lcom/tencent/beacon/event/l$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2f

    const-string v1, "rqd_heartbeat"

    iget-object v0, p0, Lcom/tencent/beacon/event/l$a;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/event/k;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 192
    iput-boolean v2, p0, Lcom/tencent/beacon/event/l$a;->h:Z

    .line 195
    :cond_2f
    invoke-static {p1, v4}, Lcom/tencent/beacon/b/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/l$a;->d:Ljava/lang/String;

    .line 196
    const-string v0, "real rid:%s"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/beacon/event/l$a;->d:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/tencent/beacon/c/a/b;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 204
    monitor-enter p0

    :try_start_2
    const-string v0, " TUUD.GetUD start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/tencent/beacon/event/l$a;->e:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/beacon/event/l$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_34

    move-result v0

    if-gtz v0, :cond_19

    :cond_16
    move-object v0, v1

    .line 217
    :cond_17
    :goto_17
    monitor-exit p0

    return-object v0

    .line 208
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/tencent/beacon/event/l$a;->f:Landroid/content/Context;

    iget v2, p0, Lcom/tencent/beacon/event/l$a;->a:I

    iget-object v3, p0, Lcom/tencent/beacon/event/l$a;->e:Ljava/util/List;

    invoke-static {v0, v2, v3}, Lcom/tencent/beacon/event/m;->a(Landroid/content/Context;ILjava/util/List;)Lcom/tencent/beacon/c/a/b;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_22} :catch_27
    .catchall {:try_start_19 .. :try_end_22} :catchall_34

    move-result-object v0

    .line 211
    if-nez v0, :cond_17

    :goto_25
    move-object v0, v1

    .line 217
    goto :goto_17

    .line 213
    :catch_27
    move-exception v0

    .line 214
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    const-string v0, " TUUD.GetUD start error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_34

    goto :goto_25

    .line 204
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .registers 6

    .prologue
    .line 222
    monitor-enter p0

    :try_start_1
    const-string v0, " TimeUpUploadDatas.done(), result:%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/tencent/beacon/event/l$a;->e:Ljava/util/List;

    if-eqz v0, :cond_2f

    if-nez p1, :cond_2f

    .line 225
    const-string v0, " upload failed, save to db"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-boolean v0, p0, Lcom/tencent/beacon/event/l$a;->h:Z

    if-nez v0, :cond_2f

    .line 228
    iget-object v0, p0, Lcom/tencent/beacon/event/l$a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/beacon/event/l$a;->e:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/beacon/applog/a;->c(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/l$a;->g:[Ljava/lang/Long;

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/event/l$a;->e:Ljava/util/List;

    .line 234
    :cond_2f
    if-eqz p1, :cond_52

    iget-boolean v0, p0, Lcom/tencent/beacon/event/l$a;->h:Z

    if-eqz v0, :cond_52

    .line 235
    iget-object v0, p0, Lcom/tencent/beacon/event/l$a;->f:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    const/16 v2, 0x6c

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/beacon/a/d;->a(IZ)V

    const-string v1, "HEART_DENGTA"

    invoke-static {}, Lcom/tencent/beacon/b/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "heartbeat uploaded sucess!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :cond_52
    if-eqz p1, :cond_5f

    iget-object v0, p0, Lcom/tencent/beacon/event/l$a;->g:[Ljava/lang/Long;

    if-eqz v0, :cond_5f

    .line 240
    iget-object v0, p0, Lcom/tencent/beacon/event/l$a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/beacon/event/l$a;->g:[Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    .line 244
    :cond_5f
    if-eqz p1, :cond_6c

    iget-object v0, p0, Lcom/tencent/beacon/event/l$a;->g:[Ljava/lang/Long;

    if-nez v0, :cond_6c

    .line 245
    iget-object v0, p0, Lcom/tencent/beacon/event/l$a;->e:Ljava/util/List;

    if-eqz v0, :cond_6c

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/event/l$a;->e:Ljava/util/List;
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_6e

    .line 248
    :cond_6c
    monitor-exit p0

    return-void

    .line 222
    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
