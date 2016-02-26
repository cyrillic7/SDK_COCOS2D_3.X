.class public Lcom/baidu/paysdk/login/Login;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/api/IWalletListener;


# instance fields
.field mContext:Landroid/content/Context;

.field private mSafePay:Lcom/baidu/android/pay/SafePay;

.field private mUser:Lcom/baidu/wallet/base/datamodel/AccountManager$User;

.field private weiView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/login/Login;->mUser:Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    iput-object p1, p0, Lcom/baidu/paysdk/login/Login;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/login/Login;->mSafePay:Lcom/baidu/android/pay/SafePay;

    return-void
.end method


# virtual methods
.method public getLoginData()Ljava/util/Map;
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/login/Login;->mContext:Landroid/content/Context;

    const-string v1, "login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLoginToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/login/Login;->mUser:Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/paysdk/login/Login;->mUser:Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/AccountManager$User;->tokenValue:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method public getLoginType()I
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/login/Login;->mUser:Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/paysdk/login/Login;->mUser:Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    iget v0, v0, Lcom/baidu/wallet/base/datamodel/AccountManager$User;->userType:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public getWeiView()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/login/Login;->weiView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public handlerWalletError(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlerWalletError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/core/utils/LogUtil;->traces()V

    const/16 v0, 0x138b

    if-ne p1, v0, :cond_26

    iget-object v0, p0, Lcom/baidu/paysdk/login/Login;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->logout()V

    :cond_26
    return-void
.end method

.method public isLogin()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/paysdk/login/Login;->mContext:Landroid/content/Context;

    const-string v3, "cookie"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "bduss_cookie"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, p0, Lcom/baidu/paysdk/login/Login;->mSafePay:Lcom/baidu/android/pay/SafePay;

    invoke-virtual {v3, v2}, Lcom/baidu/android/pay/SafePay;->localDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    iget-object v4, p0, Lcom/baidu/paysdk/login/Login;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, v1, v2}, Lcom/baidu/wallet/base/datamodel/AccountManager$User;-><init>(Lcom/baidu/wallet/base/datamodel/AccountManager;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/baidu/paysdk/login/Login;->mUser:Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/paysdk/storage/PayDataCache;->setIsOwnLogin(Z)V

    :cond_35
    iget-object v2, p0, Lcom/baidu/paysdk/login/Login;->mUser:Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    if-eqz v2, :cond_3a

    :goto_39
    return v0

    :cond_3a
    move v0, v1

    goto :goto_39
.end method

.method public login(Lcom/baidu/wallet/api/ILoginBackListener;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/login/Login;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->logout()V

    sput-object p1, Lcom/baidu/paysdk/login/LoginActivity;->litenter:Lcom/baidu/wallet/api/ILoginBackListener;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/paysdk/login/Login;->mContext:Landroid/content/Context;

    const-class v2, Lcom/baidu/paysdk/login/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/paysdk/login/Login;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onLoginChanaged(Landroid/content/Context;Ljava/util/Map;)V
    .registers 6

    const-string v0, "login"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pass_uid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pass_user_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pass_bduss"

    iget-object v2, p0, Lcom/baidu/paysdk/login/Login;->mUser:Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/AccountManager$User;->tokenValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "loginType"

    iget-object v2, p0, Lcom/baidu/paysdk/login/Login;->mUser:Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    iget v2, v2, Lcom/baidu/wallet/base/datamodel/AccountManager$User;->userType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setWeiView(Landroid/webkit/WebView;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/login/Login;->weiView:Landroid/webkit/WebView;

    return-void
.end method

.method public startPage(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Demo. startPage. url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/Login;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/paysdk/login/Login;->mContext:Landroid/content/Context;

    const-class v2, Lcom/baidu/paysdk/ui/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "jump_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/paysdk/login/Login;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
