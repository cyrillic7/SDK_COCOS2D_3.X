.class public Lcom/baidu/bdgame/sdk/obf/ci;
.super Lcom/baidu/bdgame/sdk/obf/cd;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Landroid/view/LayoutInflater;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/baidu/platformsdk/widget/AmazingListView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/baidu/bdgame/sdk/obf/ch;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ci;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ci;)Lcom/baidu/platformsdk/widget/AmazingListView;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->f:Lcom/baidu/platformsdk/widget/AmazingListView;

    return-object v0
.end method

.method private f()V
    .registers 6

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ci;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v0

    .line 81
    const/4 v1, 0x1

    if-ne v0, v1, :cond_83

    .line 82
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ci;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_title_land"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 86
    :goto_15
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ci;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 87
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ci;->b:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ci;->a:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ci;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_tv_title"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->c:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ci;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_btn_back"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->d:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ci;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_iv_close"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ci;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_order_list_title_baidu_bean"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void

    .line 84
    :cond_83
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ci;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_15
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ci;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_view_controller_pay_baidu_bean_detail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ci;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->a:Landroid/view/LayoutInflater;

    .line 44
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ci;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "bdp_paycenter_title_frame"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->b:Landroid/widget/FrameLayout;

    .line 45
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ci;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alsv_baidu_bean"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/widget/AmazingListView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->f:Lcom/baidu/platformsdk/widget/AmazingListView;

    .line 46
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ci;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_empty"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->g:Landroid/widget/TextView;

    .line 47
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ci;->f()V

    .line 48
    return-object v1
.end method

.method protected a()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ci;->f()V

    .line 75
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/cd;->a()V

    .line 76
    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 53
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ci;->k()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->h:Lcom/baidu/bdgame/sdk/obf/ch;

    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->f:Lcom/baidu/platformsdk/widget/AmazingListView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ci;->h:Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/widget/AmazingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->h:Lcom/baidu/bdgame/sdk/obf/ch;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ci$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ci$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ci;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Lcom/baidu/bdgame/sdk/obf/bz;)V

    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->h:Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->i()V

    .line 69
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 70
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->d:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ci;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_b

    .line 101
    :cond_8
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ci;->j()V

    .line 103
    :cond_b
    return-void
.end method
