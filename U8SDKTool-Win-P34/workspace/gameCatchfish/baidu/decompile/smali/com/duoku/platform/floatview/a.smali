.class public Lcom/duoku/platform/floatview/a;
.super Lcom/duoku/platform/view/common/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/floatview/a$a;
    }
.end annotation


# static fields
.field public static a:Lcom/duoku/platform/h/t;


# instance fields
.field private final A:I

.field private final B:I

.field private final C:I

.field private D:Lcom/duoku/platform/floatview/a$a;

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:Landroid/os/Handler;

.field private H:Landroid/view/View$OnTouchListener;

.field private I:Landroid/view/View$OnLongClickListener;

.field private J:Landroid/view/View$OnClickListener;

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Landroid/content/Context;

.field private s:Landroid/view/Display;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/view/LayoutInflater;

.field private w:Landroid/view/WindowManager;

.field private x:Landroid/view/WindowManager$LayoutParams;

.field private y:Lcom/duoku/platform/view/common/b;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/common/a;-><init>(Landroid/content/Context;)V

    .line 48
    iput v2, p0, Lcom/duoku/platform/floatview/a;->m:F

    iput v2, p0, Lcom/duoku/platform/floatview/a;->n:F

    .line 49
    iput-boolean v1, p0, Lcom/duoku/platform/floatview/a;->o:Z

    .line 50
    iput-boolean v3, p0, Lcom/duoku/platform/floatview/a;->p:Z

    .line 53
    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    .line 54
    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->s:Landroid/view/Display;

    .line 55
    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->t:Landroid/view/View;

    .line 56
    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->u:Landroid/widget/LinearLayout;

    .line 58
    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->w:Landroid/view/WindowManager;

    .line 61
    iput-boolean v1, p0, Lcom/duoku/platform/floatview/a;->z:Z

    .line 62
    iput v1, p0, Lcom/duoku/platform/floatview/a;->A:I

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/duoku/platform/floatview/a;->B:I

    .line 64
    const/16 v0, 0xa

    iput v0, p0, Lcom/duoku/platform/floatview/a;->C:I

    .line 67
    iput-boolean v3, p0, Lcom/duoku/platform/floatview/a;->E:Z

    .line 370
    new-instance v0, Lcom/duoku/platform/floatview/a$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/a$1;-><init>(Lcom/duoku/platform/floatview/a;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->G:Landroid/os/Handler;

    .line 394
    new-instance v0, Lcom/duoku/platform/floatview/a$2;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/a$2;-><init>(Lcom/duoku/platform/floatview/a;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->H:Landroid/view/View$OnTouchListener;

    .line 573
    new-instance v0, Lcom/duoku/platform/floatview/a$3;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/a$3;-><init>(Lcom/duoku/platform/floatview/a;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->I:Landroid/view/View$OnLongClickListener;

    .line 584
    new-instance v0, Lcom/duoku/platform/floatview/a$4;

    invoke-direct {v0, p0}, Lcom/duoku/platform/floatview/a$4;-><init>(Lcom/duoku/platform/floatview/a;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->J:Landroid/view/View$OnClickListener;

    .line 78
    iput-object p1, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    .line 79
    invoke-virtual {p0}, Lcom/duoku/platform/floatview/a;->b()V

    .line 81
    invoke-static {p1}, Lcom/duoku/platform/util/c;->a(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/a;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->u:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/a;F)V
    .registers 2

    .prologue
    .line 48
    iput p1, p0, Lcom/duoku/platform/floatview/a;->m:F

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/a;I)V
    .registers 2

    .prologue
    .line 45
    iput p1, p0, Lcom/duoku/platform/floatview/a;->i:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/a;Z)V
    .registers 2

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/duoku/platform/floatview/a;->p:Z

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/floatview/a;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(I)V
    .registers 1

    .prologue
    .line 43
    sput p0, Lcom/duoku/platform/floatview/a;->b:I

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/floatview/a;F)V
    .registers 2

    .prologue
    .line 48
    iput p1, p0, Lcom/duoku/platform/floatview/a;->n:F

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/floatview/a;I)V
    .registers 2

    .prologue
    .line 45
    iput p1, p0, Lcom/duoku/platform/floatview/a;->j:I

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/floatview/a;Z)V
    .registers 2

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/duoku/platform/floatview/a;->o:Z

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/floatview/a;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/duoku/platform/floatview/a;F)V
    .registers 2

    .prologue
    .line 46
    iput p1, p0, Lcom/duoku/platform/floatview/a;->k:F

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/floatview/a;Z)V
    .registers 2

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/duoku/platform/floatview/a;->E:Z

    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/floatview/a;)I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/duoku/platform/floatview/a;->q:I

    return v0
.end method

.method static synthetic d(Lcom/duoku/platform/floatview/a;F)V
    .registers 2

    .prologue
    .line 47
    iput p1, p0, Lcom/duoku/platform/floatview/a;->l:F

    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/floatview/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/floatview/a;)Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/a;->E:Z

    return v0
.end method

.method static synthetic g(Lcom/duoku/platform/floatview/a;)F
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/duoku/platform/floatview/a;->m:F

    return v0
.end method

.method static synthetic g()Landroid/widget/ImageView;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/duoku/platform/floatview/a;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/duoku/platform/floatview/a;)F
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/duoku/platform/floatview/a;->n:F

    return v0
.end method

.method private h()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 125
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v2

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v2

    .line 126
    if-nez v2, :cond_15

    .line 162
    :cond_14
    :goto_14
    return-void

    .line 130
    :cond_15
    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v3

    .line 131
    if-eqz v3, :cond_14

    .line 136
    sget-object v4, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v3, v4, :cond_53

    .line 138
    const/4 v3, 0x3

    iput v3, p0, Lcom/duoku/platform/floatview/a;->q:I

    .line 139
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v3

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/bdgame/sdk/obf/k;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 141
    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 143
    iput v1, p0, Lcom/duoku/platform/floatview/a;->q:I

    .line 157
    :cond_3c
    :goto_3c
    sget-object v2, Lcom/duoku/platform/floatview/a;->a:Lcom/duoku/platform/h/t;

    if-eqz v2, :cond_14

    .line 159
    sget-object v2, Lcom/duoku/platform/floatview/a;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v2}, Lcom/duoku/platform/h/t;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/duoku/platform/floatview/a;->F:Ljava/lang/String;

    .line 160
    sget-object v2, Lcom/duoku/platform/floatview/a;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v2}, Lcom/duoku/platform/h/t;->b()I

    move-result v2

    if-ne v2, v0, :cond_62

    :goto_50
    iput-boolean v0, p0, Lcom/duoku/platform/floatview/a;->E:Z

    goto :goto_14

    .line 147
    :cond_53
    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->_91:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v3, v2, :cond_5b

    .line 149
    const/4 v2, 0x2

    iput v2, p0, Lcom/duoku/platform/floatview/a;->q:I

    goto :goto_3c

    .line 151
    :cond_5b
    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Duoku:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v3, v2, :cond_3c

    .line 153
    iput v0, p0, Lcom/duoku/platform/floatview/a;->q:I

    goto :goto_3c

    :cond_62
    move v0, v1

    .line 160
    goto :goto_50
.end method

.method static synthetic i(Lcom/duoku/platform/floatview/a;)Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->x:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private i()V
    .registers 4

    .prologue
    .line 268
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/duoku/platform/floatview/a$5;

    invoke-direct {v2, p0}, Lcom/duoku/platform/floatview/a$5;-><init>(Lcom/duoku/platform/floatview/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/k;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z

    .line 283
    return-void
.end method

.method static synthetic j(Lcom/duoku/platform/floatview/a;)I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lcom/duoku/platform/floatview/a;->i:I

    return v0
.end method

.method private j()V
    .registers 5

    .prologue
    .line 355
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duoku/platform/floatview/a;->h:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/duoku/platform/floatview/a;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    return-void
.end method

.method private k()I
    .registers 3

    .prologue
    .line 560
    .line 561
    iget v0, p0, Lcom/duoku/platform/floatview/a;->q:I

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/duoku/platform/floatview/a;->E:Z

    if-nez v0, :cond_1e

    .line 563
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/a;->o:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v1, "dk_suspension_btn_left_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 569
    :goto_14
    return v0

    .line 563
    :cond_15
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v1, "dk_suspension_btn_right_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_14

    .line 567
    :cond_1e
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/a;->o:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v1, "dk_suspension_btn_hint_left_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_14

    :cond_2b
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v1, "dk_suspension_btn_hint_right_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_14
.end method

.method static synthetic k(Lcom/duoku/platform/floatview/a;)Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->w:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic l(Lcom/duoku/platform/floatview/a;)Landroid/view/Display;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->s:Landroid/view/Display;

    return-object v0
.end method

.method private l()V
    .registers 4

    .prologue
    .line 646
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->D:Lcom/duoku/platform/floatview/a$a;

    if-nez v0, :cond_27

    .line 648
    new-instance v0, Lcom/duoku/platform/floatview/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/floatview/a$a;-><init>(Lcom/duoku/platform/floatview/a;Lcom/duoku/platform/floatview/a$a;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->D:Lcom/duoku/platform/floatview/a$a;

    .line 649
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 650
    const-string v1, "com.duoku.ACTION_GIFT_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 651
    const-string v1, "com.duoku.ACTION_MESSAGE_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    const-string v1, "com.duoku.ACTION_VISITOR_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/floatview/a;->D:Lcom/duoku/platform/floatview/a$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 655
    :cond_27
    return-void
.end method

.method static synthetic m(Lcom/duoku/platform/floatview/a;)F
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/duoku/platform/floatview/a;->k:F

    return v0
.end method

.method private m()V
    .registers 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->D:Lcom/duoku/platform/floatview/a$a;

    if-eqz v0, :cond_b

    .line 661
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/floatview/a;->D:Lcom/duoku/platform/floatview/a$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 663
    :cond_b
    return-void
.end method

.method static synthetic n(Lcom/duoku/platform/floatview/a;)F
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/duoku/platform/floatview/a;->l:F

    return v0
.end method

.method static synthetic o(Lcom/duoku/platform/floatview/a;)Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->J:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic p(Lcom/duoku/platform/floatview/a;)I
    .registers 2

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/duoku/platform/floatview/a;->k()I

    move-result v0

    return v0
.end method

.method static synthetic q(Lcom/duoku/platform/floatview/a;)V
    .registers 1

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/duoku/platform/floatview/a;->j()V

    return-void
.end method

.method static synthetic r(Lcom/duoku/platform/floatview/a;)Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/a;->p:Z

    return v0
.end method

.method static synthetic s(Lcom/duoku/platform/floatview/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->F:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/duoku/platform/floatview/a;->c()V

    .line 97
    return-void
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/duoku/platform/floatview/a;->c()V

    .line 92
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    const/4 v2, -0x2

    .line 104
    invoke-direct {p0}, Lcom/duoku/platform/floatview/a;->l()V

    .line 106
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->w:Landroid/view/WindowManager;

    .line 107
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->w:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->s:Landroid/view/Display;

    .line 108
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->x:Landroid/view/WindowManager$LayoutParams;

    .line 109
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->x:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 110
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->x:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 111
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->x:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 112
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->x:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 113
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->x:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xa8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 115
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->x:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 117
    invoke-virtual {p0}, Lcom/duoku/platform/floatview/a;->d()V

    .line 118
    return-void
.end method

.method public c()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Lcom/duoku/platform/floatview/a;->h()V

    .line 170
    iget v2, p0, Lcom/duoku/platform/floatview/a;->q:I

    if-nez v2, :cond_3b

    .line 173
    sget-object v0, Lcom/duoku/platform/floatview/a;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v3, "dk_suspension_window_visitor_hint"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->t:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v3, "dk_float_window_bg"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 194
    :goto_23
    invoke-direct {p0}, Lcom/duoku/platform/floatview/a;->k()I

    move-result v0

    sput v0, Lcom/duoku/platform/floatview/a;->b:I

    .line 196
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->y:Lcom/duoku/platform/view/common/b;

    if-eqz v0, :cond_37

    .line 198
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->y:Lcom/duoku/platform/view/common/b;

    invoke-virtual {v0}, Lcom/duoku/platform/view/common/b;->b()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->y:Lcom/duoku/platform/view/common/b;

    .line 200
    sput-boolean v1, Lcom/duoku/platform/floatview/a;->c:Z

    .line 202
    :cond_37
    invoke-direct {p0}, Lcom/duoku/platform/floatview/a;->j()V

    .line 203
    return-void

    .line 178
    :cond_3b
    sget-object v2, Lcom/duoku/platform/floatview/a;->a:Lcom/duoku/platform/h/t;

    if-eqz v2, :cond_51

    .line 180
    sget-object v2, Lcom/duoku/platform/floatview/a;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v2}, Lcom/duoku/platform/h/t;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/duoku/platform/floatview/a;->F:Ljava/lang/String;

    .line 181
    sget-object v2, Lcom/duoku/platform/floatview/a;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v2}, Lcom/duoku/platform/h/t;->b()I

    move-result v2

    if-ne v2, v0, :cond_63

    :goto_4f
    iput-boolean v0, p0, Lcom/duoku/platform/floatview/a;->E:Z

    .line 184
    :cond_51
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/a;->E:Z

    if-nez v0, :cond_65

    .line 186
    sget-object v0, Lcom/duoku/platform/floatview/a;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v3, "dk_suspension_btn_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_23

    :cond_63
    move v0, v1

    .line 181
    goto :goto_4f

    .line 190
    :cond_65
    sget-object v0, Lcom/duoku/platform/floatview/a;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v3, "dk_suspension_btn_hint_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_23
.end method

.method public d()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    invoke-direct {p0}, Lcom/duoku/platform/floatview/a;->h()V

    .line 212
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->u:Landroid/widget/LinearLayout;

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->e:Landroid/os/Handler;

    .line 214
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->v:Landroid/view/LayoutInflater;

    .line 216
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/floatview/a;->d:Landroid/widget/ImageView;

    .line 217
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->v:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v4, "dk_suspension_window_view"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->t:Landroid/view/View;

    .line 219
    iget v0, p0, Lcom/duoku/platform/floatview/a;->q:I

    if-nez v0, :cond_59

    .line 222
    sget-object v0, Lcom/duoku/platform/floatview/a;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v4, "dk_suspension_window_visitor_hint"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->t:Landroid/view/View;

    iget-object v3, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v4, "dk_float_window_bg"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 225
    :cond_59
    sget-object v0, Lcom/duoku/platform/floatview/a;->a:Lcom/duoku/platform/h/t;

    if-eqz v0, :cond_70

    .line 227
    sget-object v0, Lcom/duoku/platform/floatview/a;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->F:Ljava/lang/String;

    .line 228
    sget-object v0, Lcom/duoku/platform/floatview/a;->a:Lcom/duoku/platform/h/t;

    invoke-virtual {v0}, Lcom/duoku/platform/h/t;->b()I

    move-result v0

    if-ne v0, v1, :cond_b3

    move v0, v1

    :goto_6e
    iput-boolean v0, p0, Lcom/duoku/platform/floatview/a;->E:Z

    .line 231
    :cond_70
    iget-boolean v0, p0, Lcom/duoku/platform/floatview/a;->E:Z

    if-nez v0, :cond_b5

    .line 233
    sget-object v0, Lcom/duoku/platform/floatview/a;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v3, "dk_suspension_window_normal"

    invoke-static {v1, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->t:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v3, "dk_float_window_bg"

    invoke-static {v1, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 242
    :goto_8e
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->u:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/floatview/a;->H:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->u:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/floatview/a;->I:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 244
    invoke-direct {p0}, Lcom/duoku/platform/floatview/a;->k()I

    move-result v0

    sput v0, Lcom/duoku/platform/floatview/a;->b:I

    .line 245
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->u:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/duoku/platform/floatview/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 246
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->w:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoku/platform/floatview/a;->u:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/floatview/a;->x:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    return-void

    :cond_b3
    move v0, v2

    .line 228
    goto :goto_6e

    .line 238
    :cond_b5
    sget-object v0, Lcom/duoku/platform/floatview/a;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v3, "dk_suspension_window_normal_hint"

    invoke-static {v1, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->t:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/floatview/a;->r:Landroid/content/Context;

    const-string v3, "dk_float_window_bg"

    invoke-static {v1, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8e
.end method

.method public e()V
    .registers 2

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/duoku/platform/floatview/a;->i()V

    .line 255
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->y:Lcom/duoku/platform/view/common/b;

    if-eqz v0, :cond_12

    .line 257
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->y:Lcom/duoku/platform/view/common/b;

    invoke-virtual {v0}, Lcom/duoku/platform/view/common/b;->b()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/floatview/a;->y:Lcom/duoku/platform/view/common/b;

    .line 259
    const/4 v0, 0x0

    sput-boolean v0, Lcom/duoku/platform/floatview/a;->c:Z

    .line 262
    :cond_12
    invoke-direct {p0}, Lcom/duoku/platform/floatview/a;->j()V

    .line 263
    return-void
.end method

.method public f()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 329
    sget-object v0, Lcom/duoku/platform/floatview/a;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    sput-object v2, Lcom/duoku/platform/floatview/a;->d:Landroid/widget/ImageView;

    .line 332
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->y:Lcom/duoku/platform/view/common/b;

    if-eqz v0, :cond_14

    .line 334
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->y:Lcom/duoku/platform/view/common/b;

    invoke-virtual {v0}, Lcom/duoku/platform/view/common/b;->b()V

    .line 335
    iput-object v2, p0, Lcom/duoku/platform/floatview/a;->y:Lcom/duoku/platform/view/common/b;

    .line 338
    :cond_14
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 339
    iget-object v0, p0, Lcom/duoku/platform/floatview/a;->w:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoku/platform/floatview/a;->u:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 341
    iput-object v2, p0, Lcom/duoku/platform/floatview/a;->u:Landroid/widget/LinearLayout;

    .line 342
    iput-object v2, p0, Lcom/duoku/platform/floatview/a;->w:Landroid/view/WindowManager;

    .line 344
    invoke-direct {p0}, Lcom/duoku/platform/floatview/a;->m()V

    .line 345
    return-void
.end method
