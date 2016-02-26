.class public abstract Lcom/baidu/bdgame/sdk/obf/ir;
.super Lcom/baidu/bdgame/sdk/obf/cc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ir$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/os/Handler;

.field protected b:Landroid/app/Activity;

.field protected c:Landroid/view/LayoutInflater;

.field protected d:Landroid/view/View;

.field protected e:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

.field protected f:Landroid/widget/ImageView;

.field protected g:Landroid/widget/ImageView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/FrameLayout;

.field private j:Lcom/baidu/bdgame/sdk/obf/it;

.field private k:Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;

.field private l:Landroid/widget/TextView;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/it;)V
    .registers 5

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cc;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/cb;)V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->o:Z

    .line 57
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->b:Landroid/app/Activity;

    .line 58
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->a:Landroid/os/Handler;

    .line 59
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ir;->j:Lcom/baidu/bdgame/sdk/obf/it;

    .line 60
    return-void
.end method

.method private C()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 143
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->c:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->m:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->p()I

    move-result v0

    :goto_b
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 146
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->h:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    return-void

    .line 143
    :cond_1d
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->q()I

    move-result v0

    goto :goto_b
.end method

.method private D()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ir;)Lcom/baidu/bdgame/sdk/obf/it;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->j:Lcom/baidu/bdgame/sdk/obf/it;

    return-object v0
.end method

.method private s()V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->D()V

    .line 103
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->n()V

    .line 104
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->C()V

    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ir;->e(Landroid/view/ViewGroup;)V

    .line 106
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->o()V

    .line 107
    return-void
.end method

.method private t()V
    .registers 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_loading_bar"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->e:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    .line 113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_layout_content"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->h:Landroid/widget/LinearLayout;

    .line 115
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_tv_title"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->l:Landroid/widget/TextView;

    .line 118
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->v()V

    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_btn_back"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->g:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_iv_close"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->f:Landroid/widget/ImageView;

    .line 123
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ir$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ir$a;-><init>(Lcom/baidu/bdgame/sdk/obf/ir;Lcom/baidu/bdgame/sdk/obf/ir$1;)V

    .line 124
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->e:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a()V

    .line 127
    return-void
.end method

.method private v()V
    .registers 4

    .prologue
    .line 130
    const-string v0, ""

    .line 131
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->n:Ljava/lang/String;

    .line 134
    :cond_c
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->b:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_DEBUG:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    if-ne v1, v2, :cond_25

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(DEBUG)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_25
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_2e

    .line 138
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_2e
    return-void
.end method


# virtual methods
.method public A()V
    .registers 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a()V

    .line 240
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->r()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 241
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->j:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->R()V

    .line 245
    :goto_12
    return-void

    .line 243
    :cond_13
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->c()Z

    goto :goto_12
.end method

.method protected B()Z
    .registers 2

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->m:Z

    return v0
.end method

.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->c:Landroid/view/LayoutInflater;

    .line 66
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->c:Landroid/view/LayoutInflater;

    const-string v1, "bdp_paycenter_main_frame"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->d:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_layout_main_frame"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->k:Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;

    .line 70
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_title_frame"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->i:Landroid/widget/FrameLayout;

    .line 74
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->m:Z

    if-eqz v0, :cond_5c

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_title_land"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 79
    :goto_47
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->i:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ir;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->d:Landroid/view/View;

    return-object v0

    .line 77
    :cond_5c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_47
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->t()V

    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->j:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->Q()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->j:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->g()V

    .line 93
    :goto_10
    return-void

    .line 91
    :cond_11
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->u()V

    goto :goto_10
.end method

.method protected a(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 211
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->a:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ir$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/ir$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ir;Landroid/view/View;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    return-void
.end method

.method protected a(Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;)V
    .registers 4

    .prologue
    .line 263
    if-eqz p1, :cond_c

    .line 264
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->k:Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ir$2;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/ir$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ir;Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->a(Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;)V

    .line 283
    :cond_c
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cc;->a(Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->x()V

    .line 181
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->m:Z

    .line 292
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 299
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ir;->n:Ljava/lang/String;

    .line 300
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->v()V

    .line 301
    return-void
.end method

.method protected abstract e(Landroid/view/ViewGroup;)V
.end method

.method protected g()V
    .registers 1

    .prologue
    .line 222
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/cc;->g()V

    .line 223
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->y()V

    .line 224
    return-void
.end method

.method protected abstract n()V
.end method

.method protected abstract o()V
.end method

.method protected abstract p()I
.end method

.method protected abstract q()I
.end method

.method protected r()Z
    .registers 2

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method protected u()V
    .registers 1

    .prologue
    .line 99
    return-void
.end method

.method protected w()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->o:Z

    return v0
.end method

.method protected declared-synchronized x()V
    .registers 2

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->o:Z

    if-nez v0, :cond_10

    .line 162
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->s()V

    .line 163
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->e:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->c()V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->o:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 166
    :cond_10
    monitor-exit p0

    return-void

    .line 161
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected y()V
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->j:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->Q()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->o:Z

    if-nez v0, :cond_11

    .line 173
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->j:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->g()V

    .line 175
    :cond_11
    return-void
.end method

.method protected z()V
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ir;->o:Z

    .line 185
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->x()V

    .line 186
    return-void
.end method
