.class public Lcom/baidu/bdgame/sdk/obf/mn;
.super Lcom/baidu/bdgame/sdk/obf/cd;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "bundle_key_title"

.field public static final b:Ljava/lang/String; = "bundle_key_account"

.field public static final c:Ljava/lang/String; = "bundle_key_tip"

.field public static final d:Ljava/lang/String; = "bundle_key_remark"


# instance fields
.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mn;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_view_controller_account_success_tip"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mn;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_title"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mn;->e:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mn;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_close"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mn;->f:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mn;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_account"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mn;->g:Landroid/widget/TextView;

    .line 43
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mn;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_tip"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mn;->h:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mn;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_remark"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mn;->i:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mn;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "btn_ok"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mn;->j:Landroid/widget/Button;

    .line 46
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mn;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mn$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mn$1;-><init>(Lcom/baidu/bdgame/sdk/obf/mn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mn;->j:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mn$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mn$2;-><init>(Lcom/baidu/bdgame/sdk/obf/mn;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 66
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 70
    if-eqz p1, :cond_30

    if-eqz p2, :cond_30

    .line 71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mn;->e:Landroid/widget/TextView;

    const-string v1, "bundle_key_title"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mn;->g:Landroid/widget/TextView;

    const-string v1, "bundle_key_account"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mn;->h:Landroid/widget/TextView;

    const-string v1, "bundle_key_tip"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mn;->i:Landroid/widget/TextView;

    const-string v1, "bundle_key_remark"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_30
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cd;->a(ZLandroid/os/Bundle;)V

    .line 77
    return-void
.end method
