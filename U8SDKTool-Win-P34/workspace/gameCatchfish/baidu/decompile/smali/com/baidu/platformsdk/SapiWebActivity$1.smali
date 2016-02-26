.class final Lcom/baidu/platformsdk/SapiWebActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/SapiWebActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/SapiWebActivity;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/SapiWebActivity;)V
    .registers 2

    .prologue
    .line 120
    iput-object p1, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 124
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 126
    :cond_14
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->finish()V

    .line 147
    :goto_19
    return-void

    .line 129
    :cond_1a
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->a()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v1}, Lcom/baidu/platformsdk/SapiWebActivity;->a(Lcom/baidu/platformsdk/SapiWebActivity;)I

    move-result v1

    packed-switch v1, :pswitch_data_84

    .line 144
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->c(Lcom/baidu/platformsdk/SapiWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 132
    :pswitch_33
    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v1}, Lcom/baidu/platformsdk/SapiWebActivity;->b(Lcom/baidu/platformsdk/SapiWebActivity;)Lcom/baidu/sapi2/SapiWebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/SapiWebView;->loadModifyPwd(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->c(Lcom/baidu/platformsdk/SapiWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    const-string v2, "bdp_account_pwd_modify_title"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_19

    .line 136
    :pswitch_4e
    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v1}, Lcom/baidu/platformsdk/SapiWebActivity;->b(Lcom/baidu/platformsdk/SapiWebActivity;)Lcom/baidu/sapi2/SapiWebView;

    move-result-object v1

    sget-object v2, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->BIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/sapi2/SapiWebView;->loadBindWidget(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->c(Lcom/baidu/platformsdk/SapiWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->BIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 140
    :pswitch_69
    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v1}, Lcom/baidu/platformsdk/SapiWebActivity;->b(Lcom/baidu/platformsdk/SapiWebActivity;)Lcom/baidu/sapi2/SapiWebView;

    move-result-object v1

    sget-object v2, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->REBIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/sapi2/SapiWebView;->loadBindWidget(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->c(Lcom/baidu/platformsdk/SapiWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->REBIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 130
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_33
        :pswitch_4e
        :pswitch_69
    .end packed-switch
.end method
