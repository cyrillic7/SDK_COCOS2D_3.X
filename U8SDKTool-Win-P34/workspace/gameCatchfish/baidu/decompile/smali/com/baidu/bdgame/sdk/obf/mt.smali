.class public Lcom/baidu/bdgame/sdk/obf/mt;
.super Lcom/baidu/bdgame/sdk/obf/cd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/mt$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/AutoCompleteTextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/Button;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Lcom/baidu/platformsdk/BDPlatformUser;

.field private r:Lcom/baidu/bdgame/sdk/obf/mt$a;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 4

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->p:Z

    .line 69
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->q:Lcom/baidu/platformsdk/BDPlatformUser;

    .line 70
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->q:Lcom/baidu/platformsdk/BDPlatformUser;

    if-nez v0, :cond_1b

    .line 71
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->j()V

    .line 73
    :cond_1b
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/AutoCompleteTextView;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->d:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 382
    if-nez p1, :cond_9f

    .line 384
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_10

    .line 386
    invoke-virtual {v0, v4}, Lcom/baidu/bdgame/sdk/obf/ai;->a(Ljava/lang/String;)V

    .line 389
    :cond_10
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->l()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_passport_visitor_bind"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/baidu/bdgame/sdk/obf/mt;->a(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 393
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 394
    const-string v0, "bundle_key_title"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bdp_account_visitor_bind_title"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v0, "bundle_key_account"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mt;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v0, "bundle_key_tip"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bdp_account_visitor_bind_success_tip"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lf;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 401
    const-string v0, "bdp_account_visitor_bind_success_remark_phone"

    .line 405
    :goto_77
    const-string v2, "bundle_key_remark"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mn;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baidu/bdgame/sdk/obf/mn;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/mt;->b(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 416
    :goto_98
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->m()V

    .line 417
    return-void

    .line 403
    :cond_9c
    const-string v0, "bdp_account_visitor_bind_success_remark_mail"

    goto :goto_77

    .line 409
    :cond_9f
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_b0

    .line 411
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->l()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 414
    :cond_b0
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_98
.end method

.method private a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 420
    if-nez p1, :cond_64

    .line 422
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_10

    .line 424
    invoke-virtual {v0, v4}, Lcom/baidu/bdgame/sdk/obf/ai;->a(Ljava/lang/String;)V

    .line 426
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_passport_visitor_bind"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/baidu/bdgame/sdk/obf/mt;->a(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 428
    if-eqz p3, :cond_60

    instance-of v0, p3, Lcom/baidu/bdgame/sdk/obf/ag;

    if-eqz v0, :cond_60

    .line 429
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ag;

    .line 430
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ag;->d()Lcom/baidu/bdgame/sdk/obf/ah;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 431
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mq;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v1

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ag;->d()Lcom/baidu/bdgame/sdk/obf/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ag;->d()Lcom/baidu/bdgame/sdk/obf/ah;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ah;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/mq;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mt$15;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mt$15;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mq;->a(Lcom/baidu/bdgame/sdk/obf/mq$a;)V

    .line 439
    invoke-virtual {p0, v0, v4}, Lcom/baidu/bdgame/sdk/obf/mt;->b(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 449
    :goto_58
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->m()V

    .line 450
    return-void

    .line 441
    :cond_5c
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->j()V

    goto :goto_58

    .line 444
    :cond_60
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->j()V

    goto :goto_58

    .line 447
    :cond_64
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_58
.end method

.method private a(ILjava/lang/String;ZLjava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 360
    if-nez p1, :cond_46

    .line 361
    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/mt;->o:Ljava/lang/String;

    .line 363
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->f()V

    .line 364
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mt$a;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/mt$a;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->r:Lcom/baidu/bdgame/sdk/obf/mt$a;

    .line 366
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->r:Lcom/baidu/bdgame/sdk/obf/mt$a;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mt$a;->a()V

    .line 367
    if-eqz p3, :cond_31

    .line 368
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->m:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_sent_tip_sms"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 379
    :goto_30
    return-void

    .line 371
    :cond_31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_sent_tip_mail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_30

    .line 375
    :cond_46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->k:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 376
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->k:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_verifycode_get"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 377
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_30
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mt;ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/mt;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mt;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/mt;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mt;ILjava/lang/String;ZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/mt;->a(ILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mt;Z)Z
    .registers 2

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/mt;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 462
    :cond_7
    :goto_7
    return v0

    .line 456
    :cond_8
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mt;->o:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 459
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/lf;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/kx;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 462
    :cond_1c
    const/4 v0, 0x1

    goto :goto_7
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/mt;)V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->f()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/mt;)Lcom/baidu/bdgame/sdk/obf/mt$a;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->r:Lcom/baidu/bdgame/sdk/obf/mt$a;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 340
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->d:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mt;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mt;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/mt;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 344
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->n:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 356
    :goto_2e
    return-void

    .line 347
    :cond_2f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 348
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->n:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2e

    .line 351
    :cond_3b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 352
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->n:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2e

    .line 355
    :cond_47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->n:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2e
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/mt;)Z
    .registers 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->p:Z

    return v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/mt;)Lcom/baidu/platformsdk/BDPlatformUser;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->q:Lcom/baidu/platformsdk/BDPlatformUser;

    return-object v0
.end method

.method static synthetic l(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->k:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic m(Lcom/baidu/bdgame/sdk/obf/mt;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->l:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_view_controller_account_visitor_bind"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_title"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->a:Landroid/widget/TextView;

    .line 79
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_close"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->b:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_tip"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->c:Landroid/widget/TextView;

    .line 81
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "actv_account"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->d:Landroid/widget/AutoCompleteTextView;

    .line 82
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_account_del"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->e:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "edt_password"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->f:Landroid/widget/EditText;

    .line 84
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_password_del"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->g:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_password_show"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->h:Landroid/widget/ImageView;

    .line 86
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "edt_verifycode"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->i:Landroid/widget/EditText;

    .line 87
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_verifycode_del"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->j:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "btn_get_verifycode"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->k:Landroid/widget/Button;

    .line 89
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_sent_tip"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->l:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_login_mail"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->m:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "btn_complete"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->n:Landroid/widget/Button;

    .line 92
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->d:Landroid/widget/AutoCompleteTextView;

    const-string v1, "bdp_color_text_hint"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->q:Lcom/baidu/platformsdk/BDPlatformUser;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 100
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_title"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_tip"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->d:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_hint_account"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 110
    :goto_49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mt$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mt$1;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->d:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kt;->a(Landroid/widget/EditText;)V

    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->d:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mt$16;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mt$16;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->d:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mt$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mt$2;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mt$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mt$3;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mt$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mt$4;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mt$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mt$5;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 188
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mt$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mt$6;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 196
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mt$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mt$7;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mt$8;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mt$8;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mt$9;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mt$9;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 238
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mt$10;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mt$10;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 249
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mt$11;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mt$11;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->k:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mt$12;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mt$12;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->m:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mt$13;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mt$13;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->n:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mt$14;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mt$14;-><init>(Lcom/baidu/bdgame/sdk/obf/mt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->f()V

    .line 336
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 337
    return-void

    .line 106
    :cond_eb
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_title_not_baidu"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_tip_not_baidu"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt;->d:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_hint_account_not_baidu"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    goto/16 :goto_49
.end method
