.class public Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/by;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$1;,
        Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$b;,
        Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:I

.field private g:I

.field private h:Landroid/content/Context;

.field private i:Z

.field private j:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->i:Z

    .line 50
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->i:Z

    .line 39
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->i:Z

    .line 45
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;)Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$b;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->j:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$b;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 54
    iput-object p1, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->h:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->h:Landroid/content/Context;

    const-string v2, "bdp_paycenter_loading_view"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 59
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->h:Landroid/content/Context;

    const-string v2, "bdp_paycenter_layout_progress"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a:Landroid/widget/LinearLayout;

    .line 61
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->h:Landroid/content/Context;

    const-string v2, "bdp_paycenter_layout_net_error"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->b:Landroid/widget/LinearLayout;

    .line 63
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->h:Landroid/content/Context;

    const-string v2, "bdp_paycenter_btn_retry"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->c:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->h:Landroid/content/Context;

    const-string v2, "bdp_paycenter_iv_network_error"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->d:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->h:Landroid/content/Context;

    const-string v2, "bdp_paycenter_tv_network_error"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->e:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->h:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tip_payment_network_error"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->f:I

    .line 71
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->h:Landroid/content/Context;

    const-string v1, "bdp_paycenter_retry"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->g:I

    .line 73
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->c:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$a;

    invoke-direct {v1, p0, v3}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$a;-><init>(Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0, v3}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->setVisibility(I)V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;Z)Z
    .registers 2

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->i:Z

    return p1
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0, v2}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    invoke-virtual {p0, v2}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->setBackgroundColor(I)V

    .line 83
    return-void
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    return-void
.end method

.method public a(Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$b;)V
    .registers 2

    .prologue
    .line 141
    iput-object p1, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->j:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$b;

    .line 142
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->b()V

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 110
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    :goto_14
    return-void

    .line 112
    :cond_15
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14
.end method

.method public b()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->i:Z

    .line 87
    invoke-virtual {p0, v1}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->h:Landroid/content/Context;

    const-string v1, "bdp_bg"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->setBackgroundColor(I)V

    .line 91
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->c:Landroid/widget/Button;

    if-nez v0, :cond_5

    .line 124
    :goto_4
    return-void

    .line 119
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 120
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 122
    :cond_17
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public c()V
    .registers 2

    .prologue
    .line 98
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->setVisibility(I)V

    .line 99
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->i:Z

    return v0
.end method
