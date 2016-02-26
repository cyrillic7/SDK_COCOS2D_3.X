.class public Lcom/baidu/bdgame/sdk/obf/ja;
.super Lcom/baidu/bdgame/sdk/obf/cd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ja$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "bundle_key_index"

.field public static final b:I = 0x0

.field public static final c:I = 0x1


# instance fields
.field private d:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/support/v4/view/PagerAdapter;

.field private j:Lcom/baidu/bdgame/sdk/obf/ax;

.field private k:Lcom/baidu/bdgame/sdk/obf/ay;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ja;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ja;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ja;)Lcom/baidu/bdgame/sdk/obf/ay;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->k:Lcom/baidu/bdgame/sdk/obf/ay;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ja;)Lcom/baidu/bdgame/sdk/obf/ax;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->j:Lcom/baidu/bdgame/sdk/obf/ax;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ja;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->f:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_account_login_91"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 57
    const-string v0, "psts_title"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->d:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    .line 58
    const-string v0, "img_close"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->e:Landroid/widget/ImageView;

    .line 59
    const-string v0, "vp_view"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->f:Landroid/support/v4/view/ViewPager;

    .line 60
    const-string v0, "lin_customer_support"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->g:Landroid/widget/LinearLayout;

    .line 61
    const-string v0, "txt_customer_support"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->h:Landroid/widget/TextView;

    .line 62
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 7

    .prologue
    .line 67
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ay;-><init>(Lcom/baidu/bdgame/sdk/obf/cd;Z)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->k:Lcom/baidu/bdgame/sdk/obf/ay;

    .line 68
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ax;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ax;-><init>(Lcom/baidu/bdgame/sdk/obf/cd;Z)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->j:Lcom/baidu/bdgame/sdk/obf/ax;

    .line 69
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ja$a;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/ja$a;-><init>(Lcom/baidu/bdgame/sdk/obf/ja;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->i:Landroid/support/v4/view/PagerAdapter;

    .line 70
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->f:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ja;->i:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->f:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ja$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ja$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ja;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->d:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ja;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(Landroid/support/v4/view/ViewPager;)V

    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->d:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    const/16 v1, 0x28

    const/16 v2, 0x7b

    const/16 v3, 0xf3

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(I)V

    .line 86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ja$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ja$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ja;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cd;->a(ZLandroid/os/Bundle;)V

    .line 98
    if-eqz p1, :cond_26

    .line 99
    if-eqz p2, :cond_27

    const-string v0, "bundle_key_index"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 100
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->f:Landroid/support/v4/view/ViewPager;

    const-string v1, "bundle_key_index"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 111
    :goto_1a
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ja;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ja$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ja$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ja;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bl;->g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 130
    :cond_26
    return-void

    .line 102
    :cond_27
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ja;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_38

    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->f:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1a

    .line 106
    :cond_38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja;->f:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1a
.end method
