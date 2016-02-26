.class public final Lcom/tencent/map/b/k;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/map/b/k$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/map/b/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private static h:J

.field private static i:J

.field private static j:J

.field private static k:J

.field private static l:J

.field private static m:J

.field private static n:J

.field private static o:J

.field private static p:J

.field private static q:J

.field private static r:I

.field private static s:I

.field private static t:I

.field private static u:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x2710

    const/16 v1, 0x4e20

    const/16 v4, 0x61a8

    const/16 v3, 0x3a98

    .line 19
    sput v5, Lcom/tencent/map/b/k;->a:I

    .line 21
    sput v3, Lcom/tencent/map/b/k;->b:I

    .line 23
    const/16 v0, 0x1388

    sput v0, Lcom/tencent/map/b/k;->c:I

    .line 25
    sput v1, Lcom/tencent/map/b/k;->d:I

    .line 27
    sput v4, Lcom/tencent/map/b/k;->e:I

    .line 29
    sput v3, Lcom/tencent/map/b/k;->f:I

    .line 31
    const/16 v0, 0x2ee0

    sput v0, Lcom/tencent/map/b/k;->a:I

    sput v1, Lcom/tencent/map/b/k;->b:I

    const/16 v0, 0x1f40

    sput v0, Lcom/tencent/map/b/k;->c:I

    sput v1, Lcom/tencent/map/b/k;->d:I

    sput v4, Lcom/tencent/map/b/k;->e:I

    sput v3, Lcom/tencent/map/b/k;->f:I

    invoke-static {}, Lcom/tencent/map/b/l;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7e

    if-nez v1, :cond_7e

    invoke-static {}, Lcom/tencent/map/b/l;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_7e

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7e

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    sput v3, Lcom/tencent/map/b/k;->a:I

    sput v4, Lcom/tencent/map/b/k;->b:I

    sput v5, Lcom/tencent/map/b/k;->c:I

    sput v4, Lcom/tencent/map/b/k;->d:I

    const v0, 0x88b8

    sput v0, Lcom/tencent/map/b/k;->e:I

    sput v3, Lcom/tencent/map/b/k;->f:I

    .line 16
    :cond_7e
    return-void
.end method

.method public static a()I
    .registers 6

    .prologue
    const-wide/16 v4, 0x0

    .line 207
    sget v0, Lcom/tencent/map/b/k;->a:I

    .line 208
    sget-wide v2, Lcom/tencent/map/b/k;->j:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_9d

    sget-wide v2, Lcom/tencent/map/b/k;->k:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_9d

    .line 209
    sget-wide v0, Lcom/tencent/map/b/k;->m:J

    sget-wide v2, Lcom/tencent/map/b/k;->j:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/map/b/k;->k:J

    add-long/2addr v0, v2

    sget-wide v2, Lcom/tencent/map/b/k;->l:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    move v1, v0

    .line 212
    :goto_20
    invoke-static {}, Lcom/tencent/map/b/l;->b()Landroid/content/Context;

    move-result-object v0

    .line 213
    const-string v2, "connectivity"

    .line 212
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 214
    if-eqz v0, :cond_42

    .line 215
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_42

    .line 217
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_8b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 218
    sget v1, Lcom/tencent/map/b/k;->b:I

    .line 227
    :cond_42
    :goto_42
    sget v0, Lcom/tencent/map/b/k;->u:I

    sget v2, Lcom/tencent/map/b/k;->c:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 228
    sget v1, Lcom/tencent/map/b/k;->c:I

    if-gt v0, v1, :cond_4e

    .line 229
    sget v0, Lcom/tencent/map/b/k;->c:I

    .line 230
    :cond_4e
    int-to-long v2, v0

    sget-wide v4, Lcom/tencent/map/b/k;->k:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5c

    .line 231
    sget-wide v0, Lcom/tencent/map/b/k;->k:J

    sget v2, Lcom/tencent/map/b/k;->c:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 232
    :cond_5c
    sget v1, Lcom/tencent/map/b/k;->b:I

    if-lt v0, v1, :cond_62

    .line 233
    sget v0, Lcom/tencent/map/b/k;->b:I

    .line 235
    :cond_62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/map/b/k;->b(J)Lcom/tencent/map/b/k$a;

    move-result-object v1

    .line 236
    if-nez v1, :cond_7c

    .line 237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/map/b/k;->a(J)Lcom/tencent/map/b/k$a;

    move-result-object v1

    .line 238
    :cond_7c
    iget v2, v1, Lcom/tencent/map/b/k$a;->g:I

    sget v3, Lcom/tencent/map/b/k;->c:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_88

    .line 239
    iget v0, v1, Lcom/tencent/map/b/k$a;->g:I

    sget v2, Lcom/tencent/map/b/k;->c:I

    add-int/2addr v0, v2

    .line 240
    :cond_88
    iput v0, v1, Lcom/tencent/map/b/k$a;->g:I

    .line 242
    return v0

    .line 220
    :cond_8b
    sget-wide v2, Lcom/tencent/map/b/k;->k:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_42

    sget-wide v2, Lcom/tencent/map/b/k;->k:J

    sget v0, Lcom/tencent/map/b/k;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_42

    .line 221
    sget v1, Lcom/tencent/map/b/k;->c:I

    goto :goto_42

    :cond_9d
    move v1, v0

    goto :goto_20
.end method

.method private static a(J)Lcom/tencent/map/b/k$a;
    .registers 16

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    .line 576
    sget-object v1, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 577
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    .line 579
    :cond_e
    sget-object v4, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    monitor-enter v4

    .line 580
    :try_start_11
    sget-object v1, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_af

    .line 582
    sget-object v1, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v0

    move v1, v0

    move v2, v0

    .line 585
    :goto_24
    div-int/lit8 v0, v5, 0x2

    if-lt v3, v0, :cond_bd

    .line 594
    if-eqz v1, :cond_af

    .line 595
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/map/b/k;->h:J

    .line 596
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/map/b/k;->i:J

    .line 597
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/k$a;

    iget-wide v0, v0, Lcom/tencent/map/b/k$a;->c:J

    sput-wide v0, Lcom/tencent/map/b/k;->k:J

    .line 598
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/k$a;

    iget-wide v0, v0, Lcom/tencent/map/b/k$a;->c:J

    sput-wide v0, Lcom/tencent/map/b/k;->l:J

    .line 599
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/k$a;

    iget-wide v0, v0, Lcom/tencent/map/b/k$a;->d:J

    sput-wide v0, Lcom/tencent/map/b/k;->o:J

    .line 600
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/k$a;

    iget-wide v0, v0, Lcom/tencent/map/b/k$a;->d:J

    sput-wide v0, Lcom/tencent/map/b/k;->p:J

    .line 601
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/k$a;

    iget-wide v0, v0, Lcom/tencent/map/b/k$a;->f:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_9f

    .line 602
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/k$a;

    iget v0, v0, Lcom/tencent/map/b/k$a;->e:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/k$a;

    iget-wide v0, v0, Lcom/tencent/map/b/k$a;->f:J

    div-long v0, v2, v0

    long-to-int v0, v0

    sput v0, Lcom/tencent/map/b/k;->r:I

    .line 603
    :cond_9f
    sget v0, Lcom/tencent/map/b/k;->r:I

    sput v0, Lcom/tencent/map/b/k;->s:I

    .line 604
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a9
    :goto_a9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f5

    .line 628
    :cond_af
    new-instance v0, Lcom/tencent/map/b/k$a;

    invoke-direct {v0}, Lcom/tencent/map/b/k$a;-><init>()V

    .line 629
    iput-wide p0, v0, Lcom/tencent/map/b/k$a;->a:J

    .line 630
    sget-object v1, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    monitor-exit v4

    return-object v0

    .line 586
    :cond_bd
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/k$a;

    iget-wide v6, v0, Lcom/tencent/map/b/k$a;->f:J

    cmp-long v0, v6, v10

    if-gtz v0, :cond_e1

    .line 587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/k$a;

    iget-wide v8, v0, Lcom/tencent/map/b/k$a;->b:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x927c0

    cmp-long v0, v6, v8

    if-lez v0, :cond_ef

    .line 589
    :cond_e1
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 590
    const/4 v0, 0x1

    move v1, v2

    .line 585
    :goto_e8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_24

    .line 592
    :cond_ef
    add-int/lit8 v0, v2, 0x1

    move v12, v1

    move v1, v0

    move v0, v12

    goto :goto_e8

    .line 604
    :cond_f5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/k$a;

    .line 605
    sget-wide v2, Lcom/tencent/map/b/k;->h:J

    cmp-long v2, v10, v2

    if-lez v2, :cond_105

    .line 606
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/tencent/map/b/k;->h:J

    .line 607
    :cond_105
    sget-wide v2, Lcom/tencent/map/b/k;->i:J

    cmp-long v2, v10, v2

    if-gez v2, :cond_10f

    .line 608
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/tencent/map/b/k;->i:J

    .line 609
    :cond_10f
    iget-wide v2, v0, Lcom/tencent/map/b/k$a;->c:J

    sget-wide v6, Lcom/tencent/map/b/k;->k:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_11b

    .line 610
    iget-wide v2, v0, Lcom/tencent/map/b/k$a;->c:J

    sput-wide v2, Lcom/tencent/map/b/k;->k:J

    .line 611
    :cond_11b
    iget-wide v2, v0, Lcom/tencent/map/b/k$a;->c:J

    sget-wide v6, Lcom/tencent/map/b/k;->l:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_127

    .line 612
    iget-wide v2, v0, Lcom/tencent/map/b/k$a;->c:J

    sput-wide v2, Lcom/tencent/map/b/k;->l:J

    .line 613
    :cond_127
    iget-wide v2, v0, Lcom/tencent/map/b/k$a;->d:J

    sget-wide v6, Lcom/tencent/map/b/k;->o:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_133

    .line 614
    iget-wide v2, v0, Lcom/tencent/map/b/k$a;->d:J

    sput-wide v2, Lcom/tencent/map/b/k;->o:J

    .line 615
    :cond_133
    iget-wide v2, v0, Lcom/tencent/map/b/k$a;->d:J

    sget-wide v6, Lcom/tencent/map/b/k;->p:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_13f

    .line 616
    iget-wide v2, v0, Lcom/tencent/map/b/k$a;->d:J

    sput-wide v2, Lcom/tencent/map/b/k;->p:J

    .line 617
    :cond_13f
    iget-wide v2, v0, Lcom/tencent/map/b/k$a;->f:J

    cmp-long v2, v2, v10

    if-lez v2, :cond_a9

    .line 618
    iget v2, v0, Lcom/tencent/map/b/k$a;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iget-wide v6, v0, Lcom/tencent/map/b/k$a;->f:J

    div-long/2addr v2, v6

    long-to-int v0, v2

    .line 619
    sget v2, Lcom/tencent/map/b/k;->r:I

    if-le v0, v2, :cond_154

    .line 620
    sput v0, Lcom/tencent/map/b/k;->r:I

    .line 621
    :cond_154
    sget v2, Lcom/tencent/map/b/k;->s:I

    if-ge v0, v2, :cond_a9

    .line 622
    sput v0, Lcom/tencent/map/b/k;->s:I
    :try_end_15a
    .catchall {:try_start_11 .. :try_end_15a} :catchall_15c

    goto/16 :goto_a9

    .line 579
    :catchall_15c
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static a(I)V
    .registers 7

    .prologue
    .line 542
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/map/b/k;->b(J)Lcom/tencent/map/b/k$a;

    move-result-object v2

    .line 543
    if-nez v2, :cond_f

    .line 570
    :goto_e
    return-void

    .line 545
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, v2, Lcom/tencent/map/b/k$a;->b:J

    sub-long/2addr v0, v4

    iput-wide v0, v2, Lcom/tencent/map/b/k$a;->f:J

    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/tencent/map/b/k$a;->b:J

    .line 547
    iput p0, v2, Lcom/tencent/map/b/k$a;->e:I

    .line 548
    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_7a

    const-wide/16 v0, 0x1

    .line 549
    :goto_2a
    mul-int/lit16 v3, p0, 0x3e8

    int-to-long v4, v3

    div-long v0, v4, v0

    long-to-int v0, v0

    .line 550
    sput v0, Lcom/tencent/map/b/k;->t:I

    sget v1, Lcom/tencent/map/b/k;->r:I

    if-le v0, v1, :cond_7d

    sget v0, Lcom/tencent/map/b/k;->t:I

    :goto_38
    sput v0, Lcom/tencent/map/b/k;->r:I

    .line 551
    sget v0, Lcom/tencent/map/b/k;->t:I

    sget v1, Lcom/tencent/map/b/k;->s:I

    if-ge v0, v1, :cond_80

    sget v0, Lcom/tencent/map/b/k;->t:I

    :goto_42
    sput v0, Lcom/tencent/map/b/k;->s:I

    .line 553
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_58

    .line 556
    sget-object v1, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    monitor-enter v1

    .line 557
    :try_start_4b
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 556
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_95

    .line 562
    :cond_58
    sget v0, Lcom/tencent/map/b/k;->u:I

    if-lez v0, :cond_74

    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->c:J

    sget v3, Lcom/tencent/map/b/k;->c:I

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-gez v0, :cond_74

    .line 566
    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->d:J

    sget v3, Lcom/tencent/map/b/k;->f:I

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-gez v0, :cond_74

    .line 567
    sget v0, Lcom/tencent/map/b/k;->u:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/tencent/map/b/k;->u:I

    .line 568
    :cond_74
    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->c:J

    long-to-int v0, v0

    iput v0, v2, Lcom/tencent/map/b/k$a;->g:I

    goto :goto_e

    .line 548
    :cond_7a
    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->f:J

    goto :goto_2a

    .line 550
    :cond_7d
    sget v0, Lcom/tencent/map/b/k;->r:I

    goto :goto_38

    .line 552
    :cond_80
    sget v0, Lcom/tencent/map/b/k;->s:I

    if-nez v0, :cond_87

    sget v0, Lcom/tencent/map/b/k;->t:I

    goto :goto_42

    :cond_87
    sget v0, Lcom/tencent/map/b/k;->s:I

    goto :goto_42

    .line 557
    :cond_8a
    :try_start_8a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/k$a;

    .line 558
    iget v4, v0, Lcom/tencent/map/b/k$a;->e:I

    .line 559
    iget-wide v4, v0, Lcom/tencent/map/b/k$a;->f:J
    :try_end_94
    .catchall {:try_start_8a .. :try_end_94} :catchall_95

    goto :goto_51

    .line 556
    :catchall_95
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/net/HttpURLConnection;)V
    .registers 5

    .prologue
    .line 463
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/map/b/k;->b(J)Lcom/tencent/map/b/k$a;

    move-result-object v0

    .line 464
    if-nez v0, :cond_1a

    .line 465
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/map/b/k;->a(J)Lcom/tencent/map/b/k$a;

    move-result-object v0

    .line 466
    :cond_1a
    if-nez v0, :cond_1d

    .line 470
    :goto_1c
    return-void

    .line 468
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/map/b/k$a;->b:J

    goto :goto_1c
.end method

.method public static a(Z)V
    .registers 3

    .prologue
    .line 422
    if-nez p0, :cond_8

    .line 423
    sget v0, Lcom/tencent/map/b/k;->u:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/map/b/k;->u:I

    .line 424
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/map/b/k;->c(J)Lcom/tencent/map/b/k$a;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_18

    .line 426
    iget-wide v0, v0, Lcom/tencent/map/b/k$a;->b:J

    .line 429
    :cond_18
    return-void
.end method

.method public static b()I
    .registers 6

    .prologue
    const-wide/16 v4, 0x0

    .line 246
    sget v0, Lcom/tencent/map/b/k;->d:I

    .line 247
    sget-wide v2, Lcom/tencent/map/b/k;->n:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_9d

    sget-wide v2, Lcom/tencent/map/b/k;->o:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_9d

    .line 248
    sget-wide v0, Lcom/tencent/map/b/k;->q:J

    sget-wide v2, Lcom/tencent/map/b/k;->n:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/map/b/k;->o:J

    add-long/2addr v0, v2

    sget-wide v2, Lcom/tencent/map/b/k;->p:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    move v1, v0

    .line 251
    :goto_20
    invoke-static {}, Lcom/tencent/map/b/l;->b()Landroid/content/Context;

    move-result-object v0

    .line 252
    const-string v2, "connectivity"

    .line 251
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 253
    if-eqz v0, :cond_42

    .line 254
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_42

    .line 256
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_8b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 257
    sget v1, Lcom/tencent/map/b/k;->e:I

    .line 266
    :cond_42
    :goto_42
    sget v0, Lcom/tencent/map/b/k;->u:I

    sget v2, Lcom/tencent/map/b/k;->c:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 267
    sget v1, Lcom/tencent/map/b/k;->f:I

    if-gt v0, v1, :cond_4e

    .line 268
    sget v0, Lcom/tencent/map/b/k;->f:I

    .line 269
    :cond_4e
    int-to-long v2, v0

    sget-wide v4, Lcom/tencent/map/b/k;->o:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5c

    .line 270
    sget-wide v0, Lcom/tencent/map/b/k;->o:J

    sget v2, Lcom/tencent/map/b/k;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 271
    :cond_5c
    sget v1, Lcom/tencent/map/b/k;->e:I

    if-lt v0, v1, :cond_62

    .line 272
    sget v0, Lcom/tencent/map/b/k;->e:I

    .line 274
    :cond_62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/map/b/k;->b(J)Lcom/tencent/map/b/k$a;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_8a

    .line 276
    iget v2, v1, Lcom/tencent/map/b/k$a;->h:I

    sget v3, Lcom/tencent/map/b/k;->f:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_7c

    .line 277
    iget v0, v1, Lcom/tencent/map/b/k$a;->h:I

    sget v2, Lcom/tencent/map/b/k;->f:I

    add-int/2addr v0, v2

    .line 278
    :cond_7c
    iget v2, v1, Lcom/tencent/map/b/k$a;->g:I

    sget v3, Lcom/tencent/map/b/k;->f:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_88

    .line 279
    iget v0, v1, Lcom/tencent/map/b/k$a;->g:I

    sget v2, Lcom/tencent/map/b/k;->f:I

    add-int/2addr v0, v2

    .line 280
    :cond_88
    iput v0, v1, Lcom/tencent/map/b/k$a;->h:I

    .line 283
    :cond_8a
    return v0

    .line 259
    :cond_8b
    sget-wide v2, Lcom/tencent/map/b/k;->o:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_42

    sget-wide v2, Lcom/tencent/map/b/k;->o:J

    sget v0, Lcom/tencent/map/b/k;->f:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_42

    .line 260
    sget v1, Lcom/tencent/map/b/k;->f:I

    goto :goto_42

    :cond_9d
    move v1, v0

    goto :goto_20
.end method

.method private static b(J)Lcom/tencent/map/b/k$a;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 636
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 645
    :goto_6
    return-object v0

    .line 639
    :cond_7
    sget-object v2, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    monitor-enter v2

    .line 640
    :try_start_a
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    .line 639
    monitor-exit v2

    move-object v0, v1

    .line 645
    goto :goto_6

    .line 640
    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/k$a;

    .line 641
    iget-wide v4, v0, Lcom/tencent/map/b/k$a;->a:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_10

    .line 642
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_27

    goto :goto_6

    .line 639
    :catchall_27
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static c(J)Lcom/tencent/map/b/k$a;
    .registers 8

    .prologue
    .line 649
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    .line 650
    sget-object v2, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    monitor-enter v2

    .line 651
    :try_start_7
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_2d

    move-result v0

    .line 652
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_10
    if-gez v1, :cond_15

    .line 650
    monitor-exit v2

    .line 659
    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0

    .line 653
    :cond_15
    :try_start_15
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/k$a;

    iget-wide v4, v0, Lcom/tencent/map/b/k$a;->a:J

    cmp-long v0, v4, p0

    if-nez v0, :cond_30

    .line 654
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/k$a;

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_2d

    goto :goto_14

    .line 650
    :catchall_2d
    move-exception v0

    monitor-exit v2

    throw v0

    .line 652
    :cond_30
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_10
.end method

.method public static c()V
    .registers 10

    .prologue
    const-wide/16 v8, 0x0

    .line 473
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/map/b/k;->b(J)Lcom/tencent/map/b/k$a;

    move-result-object v2

    .line 474
    if-nez v2, :cond_11

    .line 495
    :cond_10
    :goto_10
    return-void

    .line 476
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, v2, Lcom/tencent/map/b/k$a;->b:J

    sub-long/2addr v0, v4

    iput-wide v0, v2, Lcom/tencent/map/b/k$a;->c:J

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/tencent/map/b/k$a;->b:J

    .line 478
    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->c:J

    sput-wide v0, Lcom/tencent/map/b/k;->m:J

    .line 479
    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->c:J

    sget-wide v4, Lcom/tencent/map/b/k;->k:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_5f

    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->c:J

    :goto_2e
    sput-wide v0, Lcom/tencent/map/b/k;->k:J

    .line 480
    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->c:J

    sget-wide v4, Lcom/tencent/map/b/k;->l:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_62

    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->c:J

    :goto_3a
    sput-wide v0, Lcom/tencent/map/b/k;->l:J

    .line 482
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 483
    sget-object v2, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    monitor-enter v2

    .line 484
    const/4 v0, 0x0

    .line 485
    :try_start_44
    sget-object v1, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_4b
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 491
    if-lez v1, :cond_5a

    .line 492
    sget-wide v4, Lcom/tencent/map/b/k;->j:J

    int-to-long v0, v1

    div-long v0, v4, v0

    sput-wide v0, Lcom/tencent/map/b/k;->j:J

    .line 483
    :cond_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_5c

    goto :goto_10

    :catchall_5c
    move-exception v0

    monitor-exit v2

    throw v0

    .line 479
    :cond_5f
    sget-wide v0, Lcom/tencent/map/b/k;->k:J

    goto :goto_2e

    .line 481
    :cond_62
    sget-wide v0, Lcom/tencent/map/b/k;->l:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_6b

    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->c:J

    goto :goto_3a

    :cond_6b
    sget-wide v0, Lcom/tencent/map/b/k;->l:J

    goto :goto_3a

    .line 485
    :cond_6e
    :try_start_6e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/k$a;

    .line 486
    iget-wide v4, v0, Lcom/tencent/map/b/k$a;->c:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_4b

    .line 487
    sget-wide v4, Lcom/tencent/map/b/k;->j:J

    iget-wide v6, v0, Lcom/tencent/map/b/k$a;->c:J

    add-long/2addr v4, v6

    sput-wide v4, Lcom/tencent/map/b/k;->j:J
    :try_end_81
    .catchall {:try_start_6e .. :try_end_81} :catchall_5c

    .line 488
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4b
.end method

.method public static d()V
    .registers 10

    .prologue
    const-wide/16 v8, 0x0

    .line 516
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/map/b/k;->b(J)Lcom/tencent/map/b/k$a;

    move-result-object v2

    .line 517
    if-nez v2, :cond_11

    .line 539
    :cond_10
    :goto_10
    return-void

    .line 519
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, v2, Lcom/tencent/map/b/k$a;->b:J

    sub-long/2addr v0, v4

    iput-wide v0, v2, Lcom/tencent/map/b/k$a;->d:J

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/tencent/map/b/k$a;->b:J

    .line 521
    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->d:J

    sput-wide v0, Lcom/tencent/map/b/k;->q:J

    .line 522
    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->d:J

    sget-wide v4, Lcom/tencent/map/b/k;->o:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_5f

    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->d:J

    :goto_2e
    sput-wide v0, Lcom/tencent/map/b/k;->o:J

    .line 524
    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->d:J

    sget-wide v4, Lcom/tencent/map/b/k;->p:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_62

    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->d:J

    :goto_3a
    sput-wide v0, Lcom/tencent/map/b/k;->p:J

    .line 526
    sget-object v0, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 527
    sget-object v2, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    monitor-enter v2

    .line 528
    const/4 v0, 0x0

    .line 529
    :try_start_44
    sget-object v1, Lcom/tencent/map/b/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_4b
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 535
    if-lez v1, :cond_5a

    .line 536
    sget-wide v4, Lcom/tencent/map/b/k;->n:J

    int-to-long v0, v1

    div-long v0, v4, v0

    sput-wide v0, Lcom/tencent/map/b/k;->n:J

    .line 527
    :cond_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_5c

    goto :goto_10

    :catchall_5c
    move-exception v0

    monitor-exit v2

    throw v0

    .line 523
    :cond_5f
    sget-wide v0, Lcom/tencent/map/b/k;->o:J

    goto :goto_2e

    .line 525
    :cond_62
    sget-wide v0, Lcom/tencent/map/b/k;->p:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_6b

    iget-wide v0, v2, Lcom/tencent/map/b/k$a;->d:J

    goto :goto_3a

    :cond_6b
    sget-wide v0, Lcom/tencent/map/b/k;->p:J

    goto :goto_3a

    .line 529
    :cond_6e
    :try_start_6e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/k$a;

    .line 530
    iget-wide v4, v0, Lcom/tencent/map/b/k$a;->d:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_4b

    .line 531
    sget-wide v4, Lcom/tencent/map/b/k;->n:J

    iget-wide v6, v0, Lcom/tencent/map/b/k$a;->d:J

    add-long/2addr v4, v6

    sput-wide v4, Lcom/tencent/map/b/k;->n:J
    :try_end_81
    .catchall {:try_start_6e .. :try_end_81} :catchall_5c

    .line 532
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4b
.end method
