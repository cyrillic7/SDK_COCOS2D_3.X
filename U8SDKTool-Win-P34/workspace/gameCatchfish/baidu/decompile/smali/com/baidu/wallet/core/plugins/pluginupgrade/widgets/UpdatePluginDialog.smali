.class public Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;
.super Landroid/app/Dialog;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/view/View$OnClickListener;

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "EbpayPromptDialog"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->style(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/a;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/a;-><init>(Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->i:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/a;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/a;-><init>(Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->i:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->mContext:Landroid/content/Context;

    const-string v1, "wallet_base_update_layout_dialog_base"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->setContentView(I)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->mContext:Landroid/content/Context;

    const-string v1, "dialog_right_title"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->mContext:Landroid/content/Context;

    const-string v1, "dialog_title"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->mContext:Landroid/content/Context;

    const-string v1, "network_type_tips"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->mContext:Landroid/content/Context;

    const-string v1, "content_view"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->mContext:Landroid/content/Context;

    const-string v1, "positive_btn"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->mContext:Landroid/content/Context;

    const-string v1, "negative_btn"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->mContext:Landroid/content/Context;

    const-string v1, "dialog_button_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    sget-object v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog. onCreate. savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftTitleText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->e:Landroid/widget/TextView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public setNegativeBtn(ILandroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->g:Landroid/widget/Button;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->g:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->g:Landroid/widget/Button;

    if-nez p2, :cond_f

    iget-object p2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->i:Landroid/view/View$OnClickListener;

    :cond_f
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    return-void
.end method

.method public setNegativeBtn(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->g:Landroid/widget/Button;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->g:Landroid/widget/Button;

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->i:Landroid/view/View$OnClickListener;

    :cond_a
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    return-void
.end method

.method public setNegativeBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->g:Landroid/widget/Button;

    if-eqz v0, :cond_18

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->g:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->g:Landroid/widget/Button;

    if-nez p2, :cond_15

    iget-object p2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->i:Landroid/view/View$OnClickListener;

    :cond_15
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    return-void
.end method

.method public setNegativeBtnText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->g:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->g:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setNetworkTypeText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->c:Landroid/widget/TextView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public setNetworkTyptViewVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->c:Landroid/widget/TextView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method public setOnclickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 2

    return-void
.end method

.method public setPositiveBtn(ILandroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->f:Landroid/widget/Button;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->f:Landroid/widget/Button;

    if-nez p2, :cond_f

    iget-object p2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->i:Landroid/view/View$OnClickListener;

    :cond_f
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    return-void
.end method

.method public setPositiveBtn(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->f:Landroid/widget/Button;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->f:Landroid/widget/Button;

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->i:Landroid/view/View$OnClickListener;

    :cond_a
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    return-void
.end method

.method public setPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->f:Landroid/widget/Button;

    if-eqz v0, :cond_18

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->f:Landroid/widget/Button;

    if-nez p2, :cond_15

    iget-object p2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->i:Landroid/view/View$OnClickListener;

    :cond_15
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    return-void
.end method

.method public setPositiveBtnText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->f:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setRightTitleText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->b:Landroid/widget/TextView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method
