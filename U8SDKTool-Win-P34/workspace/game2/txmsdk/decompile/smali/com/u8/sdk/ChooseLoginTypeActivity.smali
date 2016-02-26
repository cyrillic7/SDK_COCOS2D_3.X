.class public Lcom/u8/sdk/ChooseLoginTypeActivity;
.super Landroid/app/Activity;
.source "ChooseLoginTypeActivity.java"


# instance fields
.field private btnQQ:Landroid/widget/Button;

.field private btnWX:Landroid/widget/Button;

.field listener:Landroid/content/DialogInterface$OnClickListener;

.field private mExitHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    new-instance v0, Lcom/u8/sdk/ChooseLoginTypeActivity$1;

    invoke-direct {v0, p0}, Lcom/u8/sdk/ChooseLoginTypeActivity$1;-><init>(Lcom/u8/sdk/ChooseLoginTypeActivity;)V

    iput-object v0, p0, Lcom/u8/sdk/ChooseLoginTypeActivity;->listener:Landroid/content/DialogInterface$OnClickListener;

    .line 99
    new-instance v0, Lcom/u8/sdk/ChooseLoginTypeActivity$2;

    invoke-direct {v0, p0}, Lcom/u8/sdk/ChooseLoginTypeActivity$2;-><init>(Lcom/u8/sdk/ChooseLoginTypeActivity;)V

    iput-object v0, p0, Lcom/u8/sdk/ChooseLoginTypeActivity;->mExitHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method


# virtual methods
.method public exit()V
    .registers 4

    .prologue
    .line 135
    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v1

    const-string v2, "exit"

    invoke-virtual {v1, v2}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 136
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/ChooseLoginTypeActivity$5;

    invoke-direct {v2, p0}, Lcom/u8/sdk/ChooseLoginTypeActivity$5;-><init>(Lcom/u8/sdk/ChooseLoginTypeActivity;)V

    invoke-virtual {v1, v2}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 171
    :goto_18
    return-void

    .line 145
    :cond_19
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u9000\u51fa\u786e\u8ba4"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 147
    const-string v1, "\u6b27\u5df4\uff0c\u73b0\u5728\u8fd8\u65e9\uff0c\u8981\u4e0d\u8981\u518d\u73a9\u4e00\u4f1a\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 148
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 149
    const-string v1, "\u597d\u5427"

    .line 150
    new-instance v2, Lcom/u8/sdk/ChooseLoginTypeActivity$6;

    invoke-direct {v2, p0}, Lcom/u8/sdk/ChooseLoginTypeActivity$6;-><init>(Lcom/u8/sdk/ChooseLoginTypeActivity;)V

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    const-string v1, "\u4e00\u4f1a\u518d\u73a9"

    .line 157
    new-instance v2, Lcom/u8/sdk/ChooseLoginTypeActivity$7;

    invoke-direct {v2, p0}, Lcom/u8/sdk/ChooseLoginTypeActivity$7;-><init>(Lcom/u8/sdk/ChooseLoginTypeActivity;)V

    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 169
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_18
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 175
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/u8/sdk/ChooseLoginTypeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "u8_layout_login_choice"

    const-string v3, "layout"

    invoke-virtual {p0}, Lcom/u8/sdk/ChooseLoginTypeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 34
    .local v0, "layoutID":I
    invoke-virtual {p0, v0}, Lcom/u8/sdk/ChooseLoginTypeActivity;->setContentView(I)V

    .line 35
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

    .line 36
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

    .line 38
    iget-object v1, p0, Lcom/u8/sdk/ChooseLoginTypeActivity;->btnQQ:Landroid/widget/Button;

    new-instance v2, Lcom/u8/sdk/ChooseLoginTypeActivity$3;

    invoke-direct {v2, p0}, Lcom/u8/sdk/ChooseLoginTypeActivity$3;-><init>(Lcom/u8/sdk/ChooseLoginTypeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v1, p0, Lcom/u8/sdk/ChooseLoginTypeActivity;->btnWX:Landroid/widget/Button;

    new-instance v2, Lcom/u8/sdk/ChooseLoginTypeActivity$4;

    invoke-direct {v2, p0}, Lcom/u8/sdk/ChooseLoginTypeActivity$4;-><init>(Lcom/u8/sdk/ChooseLoginTypeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 58
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 74
    invoke-virtual {p0}, Lcom/u8/sdk/ChooseLoginTypeActivity;->exit()V

    .line 77
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
