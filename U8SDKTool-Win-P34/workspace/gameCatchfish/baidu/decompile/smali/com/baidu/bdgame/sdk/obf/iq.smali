.class public abstract Lcom/baidu/bdgame/sdk/obf/iq;
.super Lcom/baidu/bdgame/sdk/obf/ir;
.source "SourceFile"


# static fields
.field private static k:Ljava/lang/String;


# instance fields
.field private h:I

.field private i:I

.field private j:Lcom/baidu/bdgame/sdk/obf/it;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/it;)V
    .registers 5

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ir;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/it;)V

    .line 38
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/iq;->j:Lcom/baidu/bdgame/sdk/obf/it;

    .line 39
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/iq;->d(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/iq;)Lcom/baidu/bdgame/sdk/obf/it;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq;->j:Lcom/baidu/bdgame/sdk/obf/it;

    return-object v0
.end method

.method private a(Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    const/4 v3, -0x1

    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq;->c:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/iq;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 65
    if-eqz v0, :cond_19

    .line 66
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/iq;->b(Landroid/view/ViewGroup;)V

    .line 67
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :cond_19
    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .registers 7

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_customer_service_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/iq;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/iq;->b:Landroid/app/Activity;

    const-string v3, "bdp_color_custom_hotline"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v4, Lcom/baidu/bdgame/sdk/obf/iq;->k:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    invoke-static {p1, v1, v2, v3, v0}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 118
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/iq$2;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/iq$2;-><init>(Lcom/baidu/bdgame/sdk/obf/iq;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/iq;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/iq;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method private b(Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    const/4 v3, -0x1

    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq;->c:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/iq;->i:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 76
    if-eqz v0, :cond_19

    .line 77
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/iq;->a(Landroid/view/ViewGroup;)V

    .line 78
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    :cond_19
    return-void
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sput-object p0, Lcom/baidu/bdgame/sdk/obf/iq;->k:Ljava/lang/String;

    return-object p0
.end method

.method private d(Landroid/view/ViewGroup;)V
    .registers 5

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_baidu_logo"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iq;->b:Landroid/app/Activity;

    const-string v2, "tv_customer_number"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/iq;->k:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 90
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/iq;->a(Landroid/widget/TextView;)V

    .line 108
    :goto_21
    return-void

    .line 93
    :cond_22
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iq;->b:Landroid/app/Activity;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/iq$1;

    invoke-direct {v2, p0, v0}, Lcom/baidu/bdgame/sdk/obf/iq$1;-><init>(Lcom/baidu/bdgame/sdk/obf/iq;Landroid/widget/TextView;)V

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    goto :goto_21
.end method

.method private s()V
    .registers 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq;->e:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iq;->j:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/it;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq;->e:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/iq$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/iq$3;-><init>(Lcom/baidu/bdgame/sdk/obf/iq;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a(Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$b;)V

    .line 207
    return-void
.end method

.method private t()V
    .registers 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq;->e:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iq;->j:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/it;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq;->e:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iq;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_tips_back"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->b(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq;->e:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/iq$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/iq$4;-><init>(Lcom/baidu/bdgame/sdk/obf/iq;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a(Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$b;)V

    .line 221
    return-void
.end method

.method static synthetic v()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/iq;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(I)V
    .registers 3

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ir;->a(I)V

    .line 188
    if-nez p1, :cond_9

    .line 189
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->s()V

    .line 193
    :cond_8
    :goto_8
    return-void

    .line 190
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 191
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->t()V

    goto :goto_8
.end method

.method protected abstract a(Landroid/view/ViewGroup;)V
.end method

.method protected b(I)V
    .registers 2

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ir;->b(I)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/iq;->a(I)V

    .line 183
    return-void
.end method

.method protected abstract b(Landroid/view/ViewGroup;)V
.end method

.method protected abstract c(Landroid/view/ViewGroup;)V
.end method

.method public e(I)V
    .registers 2

    .prologue
    .line 158
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/iq;->h:I

    .line 159
    return-void
.end method

.method protected e(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_paycontent"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 50
    invoke-direct {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/iq;->a(Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    .line 52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_layout_list"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 54
    invoke-direct {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/iq;->b(Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/iq;->d(Landroid/view/ViewGroup;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/iq;->c(Landroid/view/ViewGroup;)V

    .line 58
    return-void
.end method

.method public f(I)V
    .registers 2

    .prologue
    .line 167
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/iq;->i:I

    .line 168
    return-void
.end method

.method protected u()V
    .registers 2

    .prologue
    .line 173
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/ir;->u()V

    .line 174
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq;->j:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->T()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 175
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/iq;->s()V

    .line 177
    :cond_e
    return-void
.end method
