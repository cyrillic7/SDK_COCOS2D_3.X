.class public Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/util/DkNoProguard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/floatview/DKFloatWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JSBridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duoku/platform/floatview/DKFloatWebView;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/floatview/DKFloatWebView;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/duoku/platform/floatview/DKFloatWebView;Landroid/os/Handler;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 108
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p2, p1, Lcom/duoku/platform/floatview/DKFloatWebView;->b:Landroid/os/Handler;

    .line 110
    invoke-static {p1, p3}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;Landroid/content/Context;)V

    .line 111
    return-void
.end method


# virtual methods
.method public bindPhoneNumber()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 265
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "cp_account_bind_phonenumber"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 271
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->j(Landroid/content/Context;)Z

    .line 278
    :goto_39
    return-void

    .line 275
    :cond_3a
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->k(Landroid/content/Context;)Z

    goto :goto_39
.end method

.method public changeAccount()V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 221
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v1, "16"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "cp_account_change_accountid"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->finish()V

    .line 225
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    const/16 v1, 0x7d5

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/duoku/platform/f/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/duoku/platform/DKProCallbackListener;->onSuspendWindowChangeUser(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public closeFloatView()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 288
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->finish()V

    .line 289
    return-void
.end method

.method public closeProgressView()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_35

    .line 317
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->e(Lcom/duoku/platform/floatview/DKFloatWebView;)Lcom/duoku/platform/view/c;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->e(Lcom/duoku/platform/floatview/DKFloatWebView;)Lcom/duoku/platform/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 321
    :try_start_2c
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->e(Lcom/duoku/platform/floatview/DKFloatWebView;)Lcom/duoku/platform/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->dismiss()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_35} :catch_36

    .line 329
    :cond_35
    :goto_35
    return-void

    .line 323
    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method public copy(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 124
    const-string v1, "text"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 126
    return-void
.end method

.method public dial(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method public getPublicParameter()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->h(Lcom/duoku/platform/floatview/DKFloatWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 341
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->h(Lcom/duoku/platform/floatview/DKFloatWebView;)Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_e
    return-object v0

    :cond_f
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/f/a;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getRechargeHistory()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 369
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 371
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->m(Landroid/content/Context;)Z

    .line 373
    :cond_19
    return-void
.end method

.method public hasBindPhoneNum()Z
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 251
    :try_start_0
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->i(Landroid/content/Context;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result v0

    .line 255
    :goto_10
    return v0

    .line 253
    :catch_11
    move-exception v0

    .line 255
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public declared-synchronized isInstall(Ljava/lang/String;)Z
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 151
    monitor-enter p0

    .line 155
    :try_start_2
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_10} :catch_16
    .catchall {:try_start_2 .. :try_end_10} :catchall_19

    move-result-object v1

    .line 161
    :goto_11
    if-eqz v1, :cond_14

    .line 163
    const/4 v0, 0x1

    .line 165
    :cond_14
    monitor-exit p0

    return v0

    .line 157
    :catch_16
    move-exception v1

    .line 159
    const/4 v1, 0x0

    goto :goto_11

    .line 151
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public modifyPassword()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v1, "14"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "cp_account_modify_password"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->h(Landroid/content/Context;)Z

    .line 239
    return-void
.end method

.method public sessionFailedCallBack()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 357
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 358
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->e()V

    .line 359
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 381
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->i(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 383
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->i(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    :cond_17
    return-void
.end method

.method public showProgressView(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->e(Lcom/duoku/platform/floatview/DKFloatWebView;)Lcom/duoku/platform/view/c;

    move-result-object v0

    if-nez v0, :cond_27

    .line 299
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    new-instance v1, Lcom/duoku/platform/view/c;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/duoku/platform/view/c;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;Lcom/duoku/platform/view/c;)V

    .line 300
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->e(Lcom/duoku/platform/floatview/DKFloatWebView;)Lcom/duoku/platform/view/c;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWebView;->f(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/c;->setContentView(Landroid/view/View;)V

    .line 302
    :cond_27
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->g(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 304
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->g(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_3e
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->e(Lcom/duoku/platform/floatview/DKFloatWebView;)Lcom/duoku/platform/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->show()V

    .line 307
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 213
    :goto_7
    return-void

    .line 195
    :cond_8
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->b(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_56

    .line 197
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;Landroid/widget/Toast;)V

    .line 203
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->c(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->b(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWebView;->d(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 210
    :goto_38
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->b(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 211
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->b(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 212
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->b(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 208
    :cond_56
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->c(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38
.end method

.method public startApp(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_19

    .line 181
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$JSBridge;->this$0:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 183
    :cond_19
    return-void
.end method
