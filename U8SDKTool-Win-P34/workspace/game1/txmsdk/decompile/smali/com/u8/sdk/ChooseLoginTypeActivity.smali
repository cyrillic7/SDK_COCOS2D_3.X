.class public Lcom/u8/sdk/ChooseLoginTypeActivity;
.super Landroid/app/Activity;
.source "ChooseLoginTypeActivity.java"


# instance fields
.field private btnQQ:Landroid/widget/Button;

.field private btnWX:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 58
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/u8/sdk/ChooseLoginTypeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "u8_layout_login_choice"

    const-string v3, "layout"

    invoke-virtual {p0}, Lcom/u8/sdk/ChooseLoginTypeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 26
    .local v0, "layoutID":I
    invoke-virtual {p0, v0}, Lcom/u8/sdk/ChooseLoginTypeActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/u8/sdk/ChooseLoginTypeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "btn_qq"

    const-string v3, "id"

    invoke-virtual {p0}, Lcom/u8/sdk/ChooseLoginTypeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/u8/sdk/ChooseLoginTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/u8/sdk/ChooseLoginTypeActivity;->btnQQ:Landroid/widget/Button;

    .line 28
    invoke-virtual {p0}, Lcom/u8/sdk/ChooseLoginTypeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "btn_wx"

    const-string v3, "id"

    invoke-virtual {p0}, Lcom/u8/sdk/ChooseLoginTypeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/u8/sdk/ChooseLoginTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/u8/sdk/ChooseLoginTypeActivity;->btnWX:Landroid/widget/Button;

    .line 30
    iget-object v1, p0, Lcom/u8/sdk/ChooseLoginTypeActivity;->btnQQ:Landroid/widget/Button;

    new-instance v2, Lcom/u8/sdk/ChooseLoginTypeActivity$1;

    invoke-direct {v2, p0}, Lcom/u8/sdk/ChooseLoginTypeActivity$1;-><init>(Lcom/u8/sdk/ChooseLoginTypeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v1, p0, Lcom/u8/sdk/ChooseLoginTypeActivity;->btnWX:Landroid/widget/Button;

    new-instance v2, Lcom/u8/sdk/ChooseLoginTypeActivity$2;

    invoke-direct {v2, p0}, Lcom/u8/sdk/ChooseLoginTypeActivity$2;-><init>(Lcom/u8/sdk/ChooseLoginTypeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
