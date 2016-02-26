.class public Lcom/unionpay/mobile/android/nocard/views/l;
.super Lcom/unionpay/mobile/android/nocard/views/b;

# interfaces
.implements Lcom/unionpay/mobile/android/utils/n$a;


# instance fields
.field private A:Landroid/app/Activity;

.field private B:Z

.field private C:Z

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/widget/ProgressBar;

.field private s:Ljava/lang/String;

.field private t:I

.field private volatile u:I

.field private v:Z

.field private w:Z

.field private x:Lorg/json/JSONArray;

.field private y:Lcom/unionpay/mobile/android/model/d;

.field private z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/lang/String;

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->t:I

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->u:I

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->p:Ljava/util/List;

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->q:Ljava/util/List;

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->v:Z

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->w:Z

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->f:I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->d()V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->A:Landroid/app/Activity;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->A:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/nocard/utils/a;->a(Landroid/content/Intent;Lcom/unionpay/mobile/android/model/b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->B:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aC:Z

    if-eqz v0, :cond_43

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    :cond_43
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->r()V

    return-void
.end method

.method private final declared-synchronized A()V
    .registers 9

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_4
    const-string v2, "uppay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "showContentView() +++"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->u:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->u:I

    if-eq v2, v5, :cond_50

    iget-boolean v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->w:Z

    if-nez v2, :cond_4c

    move v3, v0

    :goto_23
    iget-boolean v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->w:Z

    if-eqz v2, :cond_4e

    const-string v2, "1"

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->ai:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4e

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget v2, v2, Lcom/unionpay/mobile/android/model/b;->aj:I

    invoke-direct {p0, v2}, Lcom/unionpay/mobile/android/nocard/views/l;->f(I)Z
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_bc

    move-result v4

    if-eqz v4, :cond_1db

    const v4, 0x11101

    and-int/2addr v2, v4

    if-nez v2, :cond_1db

    move v2, v0

    :goto_44
    if-nez v2, :cond_4e

    :goto_46
    if-nez v3, :cond_4a

    if-eqz v0, :cond_50

    :cond_4a
    :goto_4a
    monitor-exit p0

    return-void

    :cond_4c
    move v3, v1

    goto :goto_23

    :cond_4e
    move v0, v1

    goto :goto_46

    :cond_50
    :try_start_50
    iget-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->v:Z

    if-nez v0, :cond_4a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->v:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aC:Z

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    :cond_62
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget v1, v0, Lcom/unionpay/mobile/android/model/b;->aj:I

    const-string v0, "1"

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->ai:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->au:Z

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    :cond_7d
    :goto_7d
    const-string v0, "0"

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->ai:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_145

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_145

    :cond_99
    invoke-direct {p0, v1}, Lcom/unionpay/mobile/android/nocard/views/l;->f(I)Z

    move-result v0

    if-nez v0, :cond_145

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    const-string v1, "fail"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b1

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iput-object v1, v2, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    :cond_b1
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Ljava/lang/String;Z)V
    :try_end_bb
    .catchall {:try_start_50 .. :try_end_bb} :catchall_bc

    goto :goto_4a

    :catchall_bc
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_bf
    :try_start_bf
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->p:Ljava/util/List;

    iput-object v2, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    goto :goto_7d

    :cond_c6
    const-string v0, "0"

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->ai:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10d

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->q:Ljava/util/List;

    iput-object v2, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    :cond_d8
    :goto_d8
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7d

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f0
    :goto_f0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result v3

    if-eqz v3, :cond_f0

    invoke-interface {v0}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_f0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_f0

    :cond_10d
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->au:Z

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->q:Ljava/util/List;

    iput-object v2, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    goto :goto_d8

    :cond_11a
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->q:Ljava/util/List;

    if-eqz v0, :cond_12f

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12f

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12f
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->p:Ljava/util/List;

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d8

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->p:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_d8

    :cond_145
    const-string v0, "1"

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_14e
    .catchall {:try_start_bf .. :try_end_14e} :catchall_bc

    move-result v0

    if-nez v0, :cond_1b0

    :try_start_151
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->x:Lorg/json/JSONArray;

    if-eqz v0, :cond_1bf

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->x:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_15c
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->x:Lorg/json/JSONArray;

    if-eqz v0, :cond_1c4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->x:Lorg/json/JSONArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_167
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->x:Lorg/json/JSONArray;

    if-eqz v0, :cond_1c9

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->x:Lorg/json/JSONArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_172
    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->z()Z

    move-result v0

    if-eqz v0, :cond_1ce

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->x:Lorg/json/JSONArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_17f
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    if-eqz v0, :cond_1b0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_18d
    :goto_18d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result v1

    if-eqz v1, :cond_18d

    const-string v1, ""

    invoke-interface {v0}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result v7

    sparse-switch v7, :sswitch_data_1de

    :goto_1a8
    invoke-interface {v0, v1}, Lcom/unionpay/mobile/android/model/c;->a(Ljava/lang/String;)V
    :try_end_1ab
    .catch Lorg/json/JSONException; {:try_start_151 .. :try_end_1ab} :catch_1ac
    .catchall {:try_start_151 .. :try_end_1ab} :catchall_bc

    goto :goto_18d

    :catch_1ac
    move-exception v0

    :try_start_1ad
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1b0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->y:Lcom/unionpay/mobile/android/model/d;

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/l;->a(ILcom/unionpay/mobile/android/model/d;)V

    const-string v0, "uppay"

    const-string v1, "showContentView() ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bd
    .catchall {:try_start_1ad .. :try_end_1bd} :catchall_bc

    goto/16 :goto_4a

    :cond_1bf
    :try_start_1bf
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v0, Lcom/unionpay/mobile/android/languages/c;->ak:Ljava/lang/String;

    goto :goto_15c

    :cond_1c4
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v0, Lcom/unionpay/mobile/android/languages/c;->aj:Ljava/lang/String;

    goto :goto_167

    :cond_1c9
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v0, Lcom/unionpay/mobile/android/languages/c;->ai:Ljava/lang/String;

    goto :goto_172

    :cond_1ce
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v5, v0, Lcom/unionpay/mobile/android/languages/c;->al:Ljava/lang/String;
    :try_end_1d2
    .catch Lorg/json/JSONException; {:try_start_1bf .. :try_end_1d2} :catch_1ac
    .catchall {:try_start_1bf .. :try_end_1d2} :catchall_bc

    goto :goto_17f

    :sswitch_1d3
    move-object v1, v2

    goto :goto_1a8

    :sswitch_1d5
    move-object v1, v3

    goto :goto_1a8

    :sswitch_1d7
    move-object v1, v4

    goto :goto_1a8

    :sswitch_1d9
    move-object v1, v5

    goto :goto_1a8

    :cond_1db
    move v2, v1

    goto/16 :goto_44

    :sswitch_data_1de
    .sparse-switch
        0x1 -> :sswitch_1d9
        0x4 -> :sswitch_1d7
        0x8 -> :sswitch_1d5
        0x10 -> :sswitch_1d3
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/m;

    invoke-direct {v1, p0, p3}, Lcom/unionpay/mobile/android/nocard/views/m;-><init>(Lcom/unionpay/mobile/android/nocard/views/l;Ljava/lang/String;)V

    new-instance v2, Lcom/unionpay/mobile/android/nocard/views/n;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/nocard/views/n;-><init>(Lcom/unionpay/mobile/android/nocard/views/l;)V

    const-string v0, "01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->ae:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->af:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return-void

    :cond_2c
    const/4 v0, 0x1

    goto :goto_13

    :cond_2e
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->af:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method private b(ILjava/lang/String;)V
    .registers 5

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iput-object p2, v0, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    :cond_e
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/l;->c(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private f(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_b

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v0, v1, Lcom/unionpay/mobile/android/model/b;->ar:Z

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method private final z()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->x:Lorg/json/JSONArray;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->x:Lorg/json/JSONArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_c
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_19} :catch_20

    move-result v1

    if-nez v1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    const/4 v1, 0x0

    goto :goto_c

    :catch_20
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1d
.end method


# virtual methods
.method public final a(I[B)V
    .registers 9

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->j()V

    if-eqz p1, :cond_a

    invoke-direct {p0, p1, v4}, Lcom/unionpay/mobile/android/nocard/views/l;->b(ILjava/lang/String;)V

    :cond_a
    const-string v0, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_35

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move v0, v1

    :cond_2e
    if-nez v0, :cond_36

    const/16 v0, 0x9

    invoke-direct {p0, v0, v4}, Lcom/unionpay/mobile/android/nocard/views/l;->b(ILjava/lang/String;)V

    :cond_35
    :goto_35
    return-void

    :cond_36
    invoke-static {p2}, Lcom/unionpay/mobile/android/utils/m;->a([B)Z

    move-result v0

    if-ne v0, v1, :cond_9b

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UPPay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UPPayPluginEx.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uppay"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "apk path:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_35

    :cond_9b
    const/16 v0, 0x15

    invoke-direct {p0, v0, v4}, Lcom/unionpay/mobile/android/nocard/views/l;->b(ILjava/lang/String;)V

    goto :goto_35
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 13

    const/4 v1, 0x1

    const/4 v10, 0x2

    const/4 v2, 0x0

    const-string v0, "uppay"

    const-string v3, "init.parserParamJsonObj() +++"

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_10

    invoke-virtual {p0, v10}, Lcom/unionpay/mobile/android/nocard/views/l;->b(I)V

    :goto_f
    return-void

    :cond_10
    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->t:I

    packed-switch v0, :pswitch_data_22e

    :goto_15
    const-string v0, "uppay"

    const-string v1, "init.parserParamJsonObj() ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :pswitch_1d
    const-string v0, "secret"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "sec_sign"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v3, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->d(Ljava/lang/String;)Z

    const-string v0, "upgrade_info"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/g;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "type"

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/lang/String;

    const-string v3, "desc"

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "url"

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/lang/String;

    const-string v3, "02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_57
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "title"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "init_button"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->g:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "order"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->e:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "risk_info"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->f:Lorg/json/JSONObject;

    const-string v0, "cards"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/g;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_98

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_98

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->p:Ljava/util/List;

    :cond_98
    move v3, v2

    :goto_99
    if-eqz v6, :cond_cd

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_cd

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, v10}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/unionpay/mobile/android/model/a;

    invoke-direct {v9, v7, v8, v0, v2}, Lcom/unionpay/mobile/android/model/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->p:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_99

    :cond_cd
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "bank_url"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "input_info"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->o:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "account_info"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->q:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "other_card_info"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->r:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "user_id"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v3, "sid"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v3, "secret"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;)V

    const-string v0, "secret"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_125

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object v0, v3, Lcom/unionpay/mobile/android/model/b;->i:Ljava/lang/String;

    :cond_125
    const-string v0, "uid"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_138

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_138

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_138
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->t()Z

    move-result v0

    if-eqz v0, :cond_187

    const-string v0, "cards_desc"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/g;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->x:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "trade_privilege"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->ai:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "upcard_msg"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iput v2, v0, Lcom/unionpay/mobile/android/model/b;->aj:I

    const-string v0, "upcard_support_type"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v6, v6, Lcom/unionpay/mobile/android/model/b;->ai:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_180

    if-eqz v0, :cond_180

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_180

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/unionpay/mobile/android/model/b;->aj:I

    :cond_180
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aj:I

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->f(I)Z

    :cond_187
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "ad"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->am:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "pay_tip"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->ao:Ljava/lang/String;

    const-string v0, "sup_pay_method"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b1

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "01"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v3, Lcom/unionpay/mobile/android/model/b;->au:Z

    :cond_1b1
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "find_pwd_url"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->ap:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "reg_url"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/g;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->T:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v0, "0"

    const-string v6, "sup_nfc"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e9

    move v0, v1

    :goto_1d6
    iput-boolean v0, v3, Lcom/unionpay/mobile/android/model/b;->at:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/lang/String;

    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1eb

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_1e9
    move v0, v2

    goto :goto_1d6

    :cond_1eb
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20c

    iput v10, p0, Lcom/unionpay/mobile/android/nocard/views/l;->t:I

    const-string v0, "\"user_id\":\"%s\""

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->k(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_20c
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->u()V

    goto/16 :goto_15

    :pswitch_211
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->c(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;)Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->b(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;)I

    move-result v0

    if-eqz v0, :cond_223

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->b(I)V

    goto/16 :goto_15

    :cond_223
    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/d;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->y:Lcom/unionpay/mobile/android/model/d;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->u()V

    goto/16 :goto_15

    :pswitch_data_22e
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_211
    .end packed-switch
.end method

.method public final b(I)V
    .registers 5

    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "doErrHappended() +++"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "fail"

    invoke-direct {p0, p1, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->b(ILjava/lang/String;)V

    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "doErrHappended() ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/unionpay/mobile/android/utils/n;

    invoke-direct {v0, p1, p0}, Lcom/unionpay/mobile/android/utils/n;-><init>(Ljava/lang/String;Lcom/unionpay/mobile/android/utils/n$a;)V

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/utils/n;->a()V

    return-void
.end method

.method protected final d()V
    .registers 10

    const/4 v8, 0x1

    const/16 v7, 0xe

    const/4 v6, -0x1

    const/4 v5, -0x2

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->d()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v1, 0xbc0

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->I:I

    div-int/lit8 v0, v0, 0x2

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v3, 0x403

    invoke-virtual {v2, v3, v0, v6}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->j:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const v0, 0x3e99999a

    sget v3, Lcom/unionpay/mobile/android/global/a;->t:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v1, v2}, Lcom/unionpay/mobile/android/nocard/views/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1010287

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->d:I

    mul-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->b:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41600000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41800000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->t:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-wide v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:J

    invoke-virtual {v0, v2, v3}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(J)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0, p0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$a;)V

    return-void
.end method

.method public final l()V
    .registers 1

    return-void
.end method

.method protected r()V
    .registers 1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->s()V

    return-void
.end method

.method public final s()V
    .registers 13

    const-wide/16 v10, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:Z

    if-nez v0, :cond_58

    iput-boolean v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:Z

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->v()V

    iput-boolean v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->w:Z

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->A:Landroid/app/Activity;

    iget-boolean v7, p0, Lcom/unionpay/mobile/android/nocard/views/l;->B:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v4, v4, Lcom/unionpay/mobile/android/model/b;->c:Z

    if-eqz v4, :cond_59

    :goto_21
    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-boolean v4, v4, Lcom/unionpay/mobile/android/plugin/c;->d:Z

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, v5, Lcom/unionpay/mobile/android/model/b;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget v6, v6, Lcom/unionpay/mobile/android/model/b;->aE:I

    invoke-virtual/range {v0 .. v6}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->initJNIEnv(Landroid/app/Activity;IIZLjava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:J

    if-eqz v7, :cond_5b

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5b

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->y()V

    :cond_58
    :goto_58
    return-void

    :cond_59
    move v2, v3

    goto :goto_21

    :cond_5b
    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_66

    const/4 v0, 0x7

    invoke-direct {p0, v0, v8}, Lcom/unionpay/mobile/android/nocard/views/l;->b(ILjava/lang/String;)V

    goto :goto_58

    :cond_66
    if-nez v7, :cond_58

    const/4 v0, 0x5

    invoke-direct {p0, v0, v8}, Lcom/unionpay/mobile/android/nocard/views/l;->b(ILjava/lang/String;)V

    goto :goto_58
.end method

.method public t()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final u()V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->k()V

    :goto_d
    return-void

    :cond_e
    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->u:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->w:Z

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->A()V

    goto :goto_d
.end method

.method public v()V
    .registers 1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->w()V

    return-void
.end method

.method protected final w()V
    .registers 2

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->u:I

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->A()V

    return-void
.end method

.method public final x()V
    .registers 2

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Landroid/widget/ProgressBar;

    return-void
.end method

.method public y()V
    .registers 2

    const-string v0, "000"

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->d(Ljava/lang/String;)V

    return-void
.end method
