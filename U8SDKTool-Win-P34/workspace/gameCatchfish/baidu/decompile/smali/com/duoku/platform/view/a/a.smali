.class public Lcom/duoku/platform/view/a/a;
.super Lcom/duoku/platform/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/a/a$a;,
        Lcom/duoku/platform/view/a/a$b;,
        Lcom/duoku/platform/view/a/a$c;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/FrameLayout;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Lcom/duoku/a/a/a/a/a;

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Lcom/duoku/platform/view/a/a$b;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Lcom/duoku/platform/view/a/a$a;

.field private L:Z

.field private M:Z

.field private N:I

.field private O:Z

.field private P:Landroid/view/View$OnClickListener;

.field private Q:Landroid/view/View$OnClickListener;

.field private R:Landroid/view/View$OnClickListener;

.field private S:Landroid/view/View$OnClickListener;

.field private T:Landroid/view/View$OnClickListener;

.field private U:Landroid/os/Handler;

.field private a:Lcom/duoku/platform/e/a;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/ListView;

.field private t:Landroid/widget/ImageView;

.field private u:I

.field private v:Landroid/widget/ProgressBar;

.field private w:Ljava/lang/String;

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a;-><init>(Landroid/content/Context;)V

    .line 93
    iput-boolean v1, p0, Lcom/duoku/platform/view/a/a;->L:Z

    .line 94
    iput-boolean v1, p0, Lcom/duoku/platform/view/a/a;->M:Z

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/duoku/platform/view/a/a;->N:I

    .line 149
    iput-boolean v1, p0, Lcom/duoku/platform/view/a/a;->O:Z

    .line 471
    new-instance v0, Lcom/duoku/platform/view/a/a$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/a$1;-><init>(Lcom/duoku/platform/view/a/a;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->P:Landroid/view/View$OnClickListener;

    .line 495
    new-instance v0, Lcom/duoku/platform/view/a/a$4;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/a$4;-><init>(Lcom/duoku/platform/view/a/a;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->Q:Landroid/view/View$OnClickListener;

    .line 508
    new-instance v0, Lcom/duoku/platform/view/a/a$5;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/a$5;-><init>(Lcom/duoku/platform/view/a/a;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->R:Landroid/view/View$OnClickListener;

    .line 552
    new-instance v0, Lcom/duoku/platform/view/a/a$6;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/a$6;-><init>(Lcom/duoku/platform/view/a/a;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->S:Landroid/view/View$OnClickListener;

    .line 603
    new-instance v0, Lcom/duoku/platform/view/a/a$7;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/a$7;-><init>(Lcom/duoku/platform/view/a/a;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->T:Landroid/view/View$OnClickListener;

    .line 614
    new-instance v0, Lcom/duoku/platform/view/a/a$8;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/a$8;-><init>(Lcom/duoku/platform/view/a/a;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->U:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/a;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->q:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/a;I)V
    .registers 2

    .prologue
    .line 73
    iput p1, p0, Lcom/duoku/platform/view/a/a;->u:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/a;Lcom/duoku/a/a/a/a/a;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/duoku/platform/view/a/a;->E:Lcom/duoku/a/a/a/a/a;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/duoku/platform/view/a/a;->B:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/a;Z)V
    .registers 2

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/duoku/platform/view/a/a;->O:Z

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->B:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)V
    .registers 6

    .prologue
    .line 395
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_1b

    .line 399
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 400
    invoke-direct {p0}, Lcom/duoku/platform/view/a/a;->p()V

    .line 443
    :cond_1b
    :goto_1b
    return-void

    .line 402
    :cond_1c
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v1

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-eq v1, v2, :cond_2e

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 404
    invoke-static {}, Lcom/duoku/platform/util/q;->a()Z

    goto :goto_1b

    .line 406
    :cond_2e
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v1

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v1, v2, :cond_51

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_48

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 409
    :cond_48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/view/a/a;->O:Z

    .line 410
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;)V

    goto :goto_1b

    .line 412
    :cond_51
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "com.duoku.game.helper"

    iget-object v2, p0, Lcom/duoku/platform/view/a/a;->J:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/util/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 415
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 416
    const-string v0, "dk_dialog_install_content_msg"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/a/a;->w:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/view/a/a;->J:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/duoku/platform/ui/b/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 422
    :cond_82
    const/4 v0, 0x2

    iput v0, p0, Lcom/duoku/platform/view/a/a;->F:I

    .line 423
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v1

    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/a;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/f/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    :try_start_99
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->E:Lcom/duoku/a/a/a/a/a;

    if-eqz v0, :cond_1b

    .line 431
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/a;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 433
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->E:Lcom/duoku/a/a/a/a/a;

    iget v2, p0, Lcom/duoku/platform/view/a/a;->F:I

    invoke-interface {v0, v2, v1}, Lcom/duoku/a/a/a/a/a;->a(ILjava/lang/String;)I

    move-result v0

    .line 434
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_d7} :catch_d9

    goto/16 :goto_1b

    .line 437
    :catch_d9
    move-exception v0

    .line 439
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1b
.end method

.method static synthetic b(Lcom/duoku/platform/view/a/a;I)V
    .registers 2

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/a;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/a/a;Z)V
    .registers 2

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/duoku/platform/view/a/a;->M:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/16 v4, 0x8

    .line 306
    iget v0, p0, Lcom/duoku/platform/view/a/a;->N:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    .line 308
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->A:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v2, "dk_btn_customer_retry"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 309
    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->A:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v3, "dk_tv_network_error"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 310
    if-eqz p1, :cond_2c

    .line 312
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :cond_2c
    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 316
    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->A:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 317
    new-instance v1, Lcom/duoku/platform/view/a/a$9;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/a/a$9;-><init>(Lcom/duoku/platform/view/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    :cond_44
    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/a/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method private c(I)V
    .registers 7

    .prologue
    .line 486
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 488
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->z:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->y:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 491
    :cond_10
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->d:Lcom/duoku/platform/c/c;

    sget-object v2, Lcom/duoku/platform/c/b;->E:Lcom/duoku/platform/c/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/duoku/platform/view/a/a;->g()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    .line 492
    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/a/a;I)V
    .registers 2

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/a;->b(I)V

    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/view/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->J:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/duoku/platform/view/a/a;)I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/duoku/platform/view/a/a;->u:I

    return v0
.end method

.method static synthetic f(Lcom/duoku/platform/view/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/duoku/platform/view/a/a;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->U:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/duoku/platform/view/a/a;)V
    .registers 1

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/duoku/platform/view/a/a;->q()V

    return-void
.end method

.method static synthetic i(Lcom/duoku/platform/view/a/a;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->v:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic j(Lcom/duoku/platform/view/a/a;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->r:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/duoku/platform/view/a/a;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->x:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic l(Lcom/duoku/platform/view/a/a;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->A:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/duoku/platform/view/a/a;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->y:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/duoku/platform/view/a/a;)I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/duoku/platform/view/a/a;->N:I

    return v0
.end method

.method private n()V
    .registers 5

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    const-string v1, "com.duoku.game.helper"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "com.duoku.game.helper.ex.uservice.IDKUserService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    new-instance v1, Lcom/duoku/platform/view/a/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/duoku/platform/view/a/a$b;-><init>(Lcom/duoku/platform/view/a/a;Lcom/duoku/platform/view/a/a$b;)V

    iput-object v1, p0, Lcom/duoku/platform/view/a/a;->H:Lcom/duoku/platform/view/a/a$b;

    .line 125
    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/a;->H:Lcom/duoku/platform/view/a/a$b;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 126
    return-void
.end method

.method private o()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 171
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "dk_head"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->b:Landroid/widget/LinearLayout;

    .line 172
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v2, "dk_tv_title"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->c:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->c:Landroid/widget/TextView;

    const-string v1, "\u6d3b\u52a8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v2, "dk_payment_iv_close"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->l:Landroid/widget/ImageView;

    .line 175
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->T:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v2, "dk_iv_payment_back"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->k:Landroid/widget/ImageView;

    .line 177
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "dk_gifts_layout"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->o:Landroid/widget/RelativeLayout;

    .line 178
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "dk_activity_list"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->s:Landroid/widget/ListView;

    .line 179
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->s:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 180
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "dk_act_not_exist"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->p:Landroid/widget/RelativeLayout;

    .line 181
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "dk_act_not_exist_iv"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->m:Landroid/widget/ImageView;

    .line 182
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "dk_act_not_exist_tv"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->i:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "dk_act_tips"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->q:Landroid/widget/RelativeLayout;

    .line 184
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "dk_act_tips_iv"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->n:Landroid/widget/ImageView;

    .line 185
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "dk_act_tips_text"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->j:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "dk_act_tips_close"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->t:Landroid/widget/ImageView;

    .line 187
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "dk_act_progress"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->v:Landroid/widget/ProgressBar;

    .line 188
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "dk_act_tips_layout"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->r:Landroid/widget/RelativeLayout;

    .line 189
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->v:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 191
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->v:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "dk_layout_progress_account"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->y:Landroid/widget/LinearLayout;

    .line 193
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "dk_account_user_shodow"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->z:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "dk_layout_net_work_error"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->A:Landroid/widget/FrameLayout;

    .line 197
    invoke-virtual {p0}, Lcom/duoku/platform/view/a/a;->b()V

    .line 199
    iget v0, p0, Lcom/duoku/platform/view/a/a;->N:I

    invoke-direct {p0, v0}, Lcom/duoku/platform/view/a/a;->c(I)V

    .line 200
    return-void
.end method

.method static synthetic o(Lcom/duoku/platform/view/a/a;)Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/duoku/platform/view/a/a;->L:Z

    return v0
.end method

.method private p()V
    .registers 4

    .prologue
    .line 448
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/duoku/platform/view/a/a$3;

    invoke-direct {v2, p0}, Lcom/duoku/platform/view/a/a$3;-><init>(Lcom/duoku/platform/view/a/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/k;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z

    .line 469
    return-void
.end method

.method static synthetic p(Lcom/duoku/platform/view/a/a;)Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/duoku/platform/view/a/a;->M:Z

    return v0
.end method

.method private q()V
    .registers 5

    .prologue
    .line 581
    invoke-static {}, Lcom/duoku/platform/ui/b/d;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 600
    :cond_6
    :goto_6
    return-void

    .line 585
    :cond_7
    const/16 v0, 0x8

    iput v0, p0, Lcom/duoku/platform/view/a/a;->F:I

    .line 586
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->I:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/util/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/duoku/platform/util/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/f/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->G:Ljava/lang/String;

    .line 589
    :try_start_23
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->E:Lcom/duoku/a/a/a/a/a;

    if-eqz v0, :cond_6

    .line 593
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->E:Lcom/duoku/a/a/a/a/a;

    iget v1, p0, Lcom/duoku/platform/view/a/a;->F:I

    iget-object v2, p0, Lcom/duoku/platform/view/a/a;->G:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/duoku/a/a/a/a/a;->a(ILjava/lang/String;)I

    move-result v0

    .line 594
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_4f} :catch_50

    goto :goto_6

    .line 596
    :catch_50
    move-exception v0

    .line 598
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 740
    sget-object v0, Lcom/duoku/platform/c/c;->t:Lcom/duoku/platform/c/c;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->d:Lcom/duoku/platform/c/c;

    .line 741
    return-void
.end method

.method public a(Lcom/duoku/platform/c/b;Ljava/lang/Object;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    const-string v0, ""

    .line 206
    sget-object v0, Lcom/duoku/platform/c/b;->o:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_b9

    .line 208
    iput-boolean v4, p0, Lcom/duoku/platform/view/a/a;->M:Z

    .line 209
    iput-boolean v4, p0, Lcom/duoku/platform/view/a/a;->L:Z

    .line 210
    check-cast p2, Lcom/duoku/platform/ui/a/b;

    .line 214
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->w:Ljava/lang/String;

    .line 215
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/b;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->C:Ljava/lang/String;

    .line 216
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->D:Ljava/lang/String;

    .line 217
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->I:Ljava/lang/String;

    .line 218
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->J:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7b

    .line 226
    :cond_46
    iget v0, p0, Lcom/duoku/platform/view/a/a;->N:I

    if-ne v0, v4, :cond_76

    .line 228
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->x:Ljava/util/ArrayList;

    .line 229
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->s:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 258
    :goto_5a
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v1, "com.duoku.game.helper"

    iget-object v2, p0, Lcom/duoku/platform/view/a/a;->J:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/util/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 260
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 266
    :goto_6b
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->z:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :cond_75
    :goto_75
    return-void

    .line 235
    :cond_76
    iput-boolean v3, p0, Lcom/duoku/platform/view/a/a;->L:Z

    .line 236
    iput-boolean v3, p0, Lcom/duoku/platform/view/a/a;->M:Z

    goto :goto_5a

    .line 242
    :cond_7b
    iget v0, p0, Lcom/duoku/platform/view/a/a;->N:I

    if-ne v0, v4, :cond_a4

    .line 244
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->x:Ljava/util/ArrayList;

    .line 245
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->s:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 247
    new-instance v0, Lcom/duoku/platform/view/a/a$a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/a$a;-><init>(Lcom/duoku/platform/view/a/a;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->K:Lcom/duoku/platform/view/a/a$a;

    .line 248
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->s:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->K:Lcom/duoku/platform/view/a/a$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    :goto_9d
    iget v0, p0, Lcom/duoku/platform/view/a/a;->N:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/duoku/platform/view/a/a;->N:I

    goto :goto_5a

    .line 253
    :cond_a4
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->x:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/b;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 254
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->K:Lcom/duoku/platform/view/a/a$a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a/a$a;->notifyDataSetChanged()V

    goto :goto_9d

    .line 264
    :cond_b3
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_6b

    .line 270
    :cond_b9
    sget-object v0, Lcom/duoku/platform/c/b;->z:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_cb

    .line 273
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v0

    if-nez v0, :cond_c7

    .line 275
    invoke-direct {p0, v1}, Lcom/duoku/platform/view/a/a;->b(Ljava/lang/String;)V

    goto :goto_75

    .line 279
    :cond_c7
    invoke-direct {p0, v1}, Lcom/duoku/platform/view/a/a;->b(Ljava/lang/String;)V

    goto :goto_75

    .line 282
    :cond_cb
    sget-object v0, Lcom/duoku/platform/c/b;->A:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_ea

    .line 284
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 285
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->e()V

    goto :goto_75

    .line 287
    :cond_ea
    sget-object v0, Lcom/duoku/platform/c/b;->B:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_10b

    .line 289
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v2, "dk_tip_payment_network_time_out"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-direct {p0, v0}, Lcom/duoku/platform/view/a/a;->b(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 292
    :cond_10b
    sget-object v0, Lcom/duoku/platform/c/b;->C:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_75

    .line 294
    check-cast p2, Lcom/duoku/platform/h/s;

    .line 296
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v2, "dk_user_request_error"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/duoku/platform/h/s;->getErrorString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-direct {p0, v0}, Lcom/duoku/platform/view/a/a;->b(Ljava/lang/String;)V

    goto/16 :goto_75
.end method

.method public a(Ljava/lang/Object;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 105
    new-instance v0, Lcom/duoku/platform/e/a;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duoku/platform/e/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->a:Lcom/duoku/platform/e/a;

    .line 106
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 108
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v2, "dk_activity_landscape"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->e:Landroid/view/ViewGroup;

    .line 115
    :goto_26
    invoke-direct {p0}, Lcom/duoku/platform/view/a/a;->o()V

    .line 116
    invoke-direct {p0}, Lcom/duoku/platform/view/a/a;->n()V

    .line 117
    return-void

    .line 112
    :cond_2d
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    const-string v2, "dk_activity_portrait"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->e:Landroid/view/ViewGroup;

    goto :goto_26
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->Q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->q:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->s:Landroid/widget/ListView;

    new-instance v1, Lcom/duoku/platform/view/a/a$10;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/a/a$10;-><init>(Lcom/duoku/platform/view/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 379
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->s:Landroid/widget/ListView;

    new-instance v1, Lcom/duoku/platform/view/a/a$2;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/a/a$2;-><init>(Lcom/duoku/platform/view/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 389
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 729
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->q:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->K:Lcom/duoku/platform/view/a/a$a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a/a$a;->notifyDataSetChanged()V

    .line 731
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->E:Lcom/duoku/a/a/a/a/a;

    if-nez v0, :cond_13

    .line 733
    invoke-direct {p0}, Lcom/duoku/platform/view/a/a;->n()V

    .line 735
    :cond_13
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 155
    invoke-super {p0}, Lcom/duoku/platform/view/a;->d()V

    .line 156
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->H:Lcom/duoku/platform/view/a/a$b;

    if-eqz v0, :cond_11

    .line 158
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a;->H:Lcom/duoku/platform/view/a/a$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/view/a/a;->H:Lcom/duoku/platform/view/a/a$b;

    .line 162
    :cond_11
    iget-boolean v0, p0, Lcom/duoku/platform/view/a/a;->O:Z

    if-nez v0, :cond_1d

    .line 164
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/a;->a(Z)V

    .line 167
    :cond_1d
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 131
    invoke-super {p0}, Lcom/duoku/platform/view/a;->h()V

    .line 133
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/a;->a(Z)V

    .line 135
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->K:Lcom/duoku/platform/view/a/a$a;

    if-eqz v0, :cond_14

    .line 137
    iget-object v0, p0, Lcom/duoku/platform/view/a/a;->K:Lcom/duoku/platform/view/a/a$a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a/a$a;->notifyDataSetChanged()V

    .line 139
    :cond_14
    return-void
.end method

.method public i()V
    .registers 3

    .prologue
    .line 144
    invoke-super {p0}, Lcom/duoku/platform/view/a;->i()V

    .line 146
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 147
    return-void
.end method
